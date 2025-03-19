; ModuleID = 'drivers/base/component.c'
source_filename = "drivers/base/component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall1.init..kmod_component__267_118_component_debug_init\22, \22a\22\09\09"
module asm "__initcall__kmod_component__267_118_component_debug_init1:\09\09\09"
module asm ".long\09__initstub__kmod_component__267_118_component_debug_init1 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_compare_of: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_compare_of ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_release_of: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_release_of ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_compare_dev: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_compare_dev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_compare_dev_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_compare_dev_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_match_add_release: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad component_match_add_release ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_match_add_typed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad component_match_add_typed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_master_add_with_match: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_master_add_with_match ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_master_del: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_master_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_unbind_all: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_unbind_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_bind_all: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_bind_all ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_add_typed: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_add_typed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_component_del: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad component_del ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_match = type { i64, i64, ptr }
%struct.component_match_array = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.aggregate_device = type { %struct.list_head, i8, ptr, ptr, ptr }
%struct.component = type { %struct.list_head, ptr, i8, ptr, i32, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.component_ops = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.13, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.14, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.15, ptr, %struct.address_space, %struct.list_head, %union.anon.16, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.13 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.14 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.15 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.16 = type { ptr }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_component__267_118_component_debug_init1268 = internal global ptr @__initstub__kmod_component__267_118_component_debug_init1, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_component_compare_of269 = internal global ptr @component_compare_of, section ".discard.addressable", align 8, !dbg !4475
@__UNIQUE_ID___addressable_component_release_of270 = internal global ptr @component_release_of, section ".discard.addressable", align 8, !dbg !4477
@__UNIQUE_ID___addressable_component_compare_dev271 = internal global ptr @component_compare_dev, section ".discard.addressable", align 8, !dbg !4479
@__UNIQUE_ID___addressable_component_compare_dev_name272 = internal global ptr @component_compare_dev_name, section ".discard.addressable", align 8, !dbg !4481
@__UNIQUE_ID___addressable_component_match_add_release275 = internal global ptr @component_match_add_release, section ".discard.addressable", align 8, !dbg !4483
@__UNIQUE_ID___addressable_component_match_add_typed276 = internal global ptr @component_match_add_typed, section ".discard.addressable", align 8, !dbg !4485
@component_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @component_mutex, i64 16), ptr getelementptr (i8, ptr @component_mutex, i64 16) } }, align 8, !dbg !4562
@aggregate_devices = internal global %struct.list_head { ptr @aggregate_devices, ptr @aggregate_devices }, align 8, !dbg !4564
@__UNIQUE_ID___addressable_component_master_add_with_match277 = internal global ptr @component_master_add_with_match, section ".discard.addressable", align 8, !dbg !4487
@__UNIQUE_ID___addressable_component_master_del278 = internal global ptr @component_master_del, section ".discard.addressable", align 8, !dbg !4489
@.str = private unnamed_addr constant [25 x i8] c"drivers/base/component.c\00", align 1, !dbg !4491
@__UNIQUE_ID___addressable_component_unbind_all279 = internal global ptr @component_unbind_all, section ".discard.addressable", align 8, !dbg !4496
@__UNIQUE_ID___addressable_component_bind_all280 = internal global ptr @component_bind_all, section ".discard.addressable", align 8, !dbg !4498
@__UNIQUE_ID___addressable_component_add_typed281 = internal global ptr @component_add_typed, section ".discard.addressable", align 8, !dbg !4500
@__UNIQUE_ID___addressable_component_add282 = internal global ptr @component_add, section ".discard.addressable", align 8, !dbg !4502
@component_list = internal global %struct.list_head { ptr @component_list, ptr @component_list }, align 8, !dbg !4576
@__UNIQUE_ID___addressable_component_del283 = internal global ptr @component_del, section ".discard.addressable", align 8, !dbg !4504
@.str.1 = private unnamed_addr constant [17 x i8] c"device_component\00", align 1, !dbg !4506
@component_debugfs_dir = internal global ptr null, align 8, !dbg !4511
@.str.2 = private unnamed_addr constant [29 x i8] c"devm_component_match_release\00", align 1, !dbg !4513
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4518
@component_devices_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @component_devices_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4523
@.str.4 = private unnamed_addr constant [12 x i8] c"%-40s %20s\0A\00", align 1, !dbg !4525
@.str.5 = private unnamed_addr constant [22 x i8] c"aggregate_device name\00", align 1, !dbg !4528
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1, !dbg !4533
@.str.7 = private unnamed_addr constant [63 x i8] c"-------------------------------------------------------------\0A\00", align 1, !dbg !4536
@.str.8 = private unnamed_addr constant [13 x i8] c"%-40s %20s\0A\0A\00", align 1, !dbg !4541
@.str.9 = private unnamed_addr constant [6 x i8] c"bound\00", align 1, !dbg !4546
@.str.10 = private unnamed_addr constant [10 x i8] c"not bound\00", align 1, !dbg !4548
@.str.11 = private unnamed_addr constant [12 x i8] c"device name\00", align 1, !dbg !4553
@.str.12 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1, !dbg !4555
@.str.13 = private unnamed_addr constant [15 x i8] c"not registered\00", align 1, !dbg !4557
@.str.14 = private unnamed_addr constant [22 x i8] c"adev bind failed: %d\0A\00", align 1, !dbg !4566
@.str.15 = private unnamed_addr constant [20 x i8] c"bound %s (ops %ps)\0A\00", align 1, !dbg !4568
@.str.16 = private unnamed_addr constant [33 x i8] c"failed to bind %s (ops %ps): %d\0A\00", align 1, !dbg !4571
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_component__267_118_component_debug_init1268, ptr @__UNIQUE_ID___addressable_component_compare_of269, ptr @__UNIQUE_ID___addressable_component_release_of270, ptr @__UNIQUE_ID___addressable_component_compare_dev271, ptr @__UNIQUE_ID___addressable_component_compare_dev_name272, ptr @__UNIQUE_ID___addressable_component_match_add_release275, ptr @__UNIQUE_ID___addressable_component_match_add_typed276, ptr @__UNIQUE_ID___addressable_component_master_add_with_match277, ptr @__UNIQUE_ID___addressable_component_master_del278, ptr @__UNIQUE_ID___addressable_component_unbind_all279, ptr @__UNIQUE_ID___addressable_component_bind_all280, ptr @__UNIQUE_ID___addressable_component_add_typed281, ptr @__UNIQUE_ID___addressable_component_add282, ptr @__UNIQUE_ID___addressable_component_del283], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_component__267_118_component_debug_init1() #0 section ".init.text" align 16 !dbg !4587 {
entry:
  %call = call i32 @component_debug_init() #17, !dbg !4588
  ret i32 %call, !dbg !4588
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @component_debug_init() #0 section ".init.text" align 16 !dbg !4589 {
entry:
  %call = call ptr @debugfs_create_dir(ptr noundef @.str.1, ptr noundef null) #18, !dbg !4590
  store ptr %call, ptr @component_debugfs_dir, align 8, !dbg !4591
  ret i32 0, !dbg !4592
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_compare_of(ptr noundef %dev, ptr noundef %data) #1 align 16 !dbg !4593 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4595, metadata !DIExpression()), !dbg !4597
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4596, metadata !DIExpression()), !dbg !4598
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4599
  %1 = load ptr, ptr %data.addr, align 8, !dbg !4600
  %call = call i32 @device_match_of_node(ptr noundef %0, ptr noundef %1) #18, !dbg !4601
  ret i32 %call, !dbg !4602
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4603 dso_local i32 @device_match_of_node(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @component_release_of(ptr noundef %dev, ptr noundef %data) #1 align 16 !dbg !4606 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4608, metadata !DIExpression()), !dbg !4610
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4609, metadata !DIExpression()), !dbg !4611
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4612
  call void @of_node_put(ptr noundef %0) #18, !dbg !4613
  ret void, !dbg !4614
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_node_put(ptr noundef %node) #4 align 16 !dbg !4615 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  ret void, !dbg !4621
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_compare_dev(ptr noundef %dev, ptr noundef %data) #1 align 16 !dbg !4622 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4624, metadata !DIExpression()), !dbg !4626
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4625, metadata !DIExpression()), !dbg !4627
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4628
  %1 = load ptr, ptr %data.addr, align 8, !dbg !4629
  %cmp = icmp eq ptr %0, %1, !dbg !4630
  %conv = zext i1 %cmp to i32, !dbg !4630
  ret i32 %conv, !dbg !4631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_compare_dev_name(ptr noundef %dev, ptr noundef %data) #1 align 16 !dbg !4632 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4634, metadata !DIExpression()), !dbg !4636
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4635, metadata !DIExpression()), !dbg !4637
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4638
  %1 = load ptr, ptr %data.addr, align 8, !dbg !4639
  %call = call i32 @device_match_name(ptr noundef %0, ptr noundef %1) #18, !dbg !4640
  ret i32 %call, !dbg !4641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4642 dso_local i32 @device_match_name(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @component_match_add_release(ptr noundef %parent, ptr noundef %matchptr, ptr noundef %release, ptr noundef %compare, ptr noundef %compare_data) #1 align 16 !dbg !4643 {
entry:
  %parent.addr = alloca ptr, align 8
  %matchptr.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  %compare.addr = alloca ptr, align 8
  %compare_data.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4648, metadata !DIExpression()), !dbg !4653
  store ptr %matchptr, ptr %matchptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %matchptr.addr, metadata !4649, metadata !DIExpression()), !dbg !4654
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !4650, metadata !DIExpression()), !dbg !4655
  store ptr %compare, ptr %compare.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare.addr, metadata !4651, metadata !DIExpression()), !dbg !4656
  store ptr %compare_data, ptr %compare_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare_data.addr, metadata !4652, metadata !DIExpression()), !dbg !4657
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4658
  %1 = load ptr, ptr %matchptr.addr, align 8, !dbg !4659
  %2 = load ptr, ptr %release.addr, align 8, !dbg !4660
  %3 = load ptr, ptr %compare.addr, align 8, !dbg !4661
  %4 = load ptr, ptr %compare_data.addr, align 8, !dbg !4662
  call void @__component_match_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef %4) #18, !dbg !4663
  ret void, !dbg !4664
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__component_match_add(ptr noundef %parent, ptr noundef %matchptr, ptr noundef %release, ptr noundef %compare, ptr noundef %compare_typed, ptr noundef %compare_data) #1 align 16 !dbg !4665 {
entry:
  %parent.addr = alloca ptr, align 8
  %matchptr.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  %compare.addr = alloca ptr, align 8
  %compare_typed.addr = alloca ptr, align 8
  %compare_data.addr = alloca ptr, align 8
  %match = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %new_size = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4669, metadata !DIExpression()), !dbg !4680
  store ptr %matchptr, ptr %matchptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %matchptr.addr, metadata !4670, metadata !DIExpression()), !dbg !4681
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !4671, metadata !DIExpression()), !dbg !4682
  store ptr %compare, ptr %compare.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare.addr, metadata !4672, metadata !DIExpression()), !dbg !4683
  store ptr %compare_typed, ptr %compare_typed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare_typed.addr, metadata !4673, metadata !DIExpression()), !dbg !4684
  store ptr %compare_data, ptr %compare_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare_data.addr, metadata !4674, metadata !DIExpression()), !dbg !4685
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #19, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %match, metadata !4675, metadata !DIExpression()), !dbg !4687
  %0 = load ptr, ptr %matchptr.addr, align 8, !dbg !4688
  %1 = load ptr, ptr %0, align 8, !dbg !4689
  store ptr %1, ptr %match, align 8, !dbg !4687
  %2 = load ptr, ptr %match, align 8, !dbg !4690
  %call = call zeroext i1 @IS_ERR(ptr noundef %2) #18, !dbg !4692
  br i1 %call, label %if.then, label %if.end, !dbg !4693

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !4694

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %match, align 8, !dbg !4695
  %tobool = icmp ne ptr %3, null, !dbg !4695
  br i1 %tobool, label %if.end7, label %if.then1, !dbg !4697

if.then1:                                         ; preds = %if.end
  %call2 = call noalias ptr @__devres_alloc_node(ptr noundef @devm_component_match_release, i64 noundef 24, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.2) #18, !dbg !4698
  store ptr %call2, ptr %match, align 8, !dbg !4700
  %4 = load ptr, ptr %match, align 8, !dbg !4701
  %tobool3 = icmp ne ptr %4, null, !dbg !4701
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !4703

if.then4:                                         ; preds = %if.then1
  %call5 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !4704
  %5 = load ptr, ptr %matchptr.addr, align 8, !dbg !4706
  store ptr %call5, ptr %5, align 8, !dbg !4707
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup35, !dbg !4708

if.end6:                                          ; preds = %if.then1
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !4709
  %7 = load ptr, ptr %match, align 8, !dbg !4710
  call void @devres_add(ptr noundef %6, ptr noundef %7) #18, !dbg !4711
  %8 = load ptr, ptr %match, align 8, !dbg !4712
  %9 = load ptr, ptr %matchptr.addr, align 8, !dbg !4713
  store ptr %8, ptr %9, align 8, !dbg !4714
  br label %if.end7, !dbg !4715

if.end7:                                          ; preds = %if.end6, %if.end
  %10 = load ptr, ptr %match, align 8, !dbg !4716
  %num = getelementptr inbounds %struct.component_match, ptr %10, i32 0, i32 1, !dbg !4717
  %11 = load i64, ptr %num, align 8, !dbg !4717
  %12 = load ptr, ptr %match, align 8, !dbg !4718
  %alloc = getelementptr inbounds %struct.component_match, ptr %12, i32 0, i32 0, !dbg !4719
  %13 = load i64, ptr %alloc, align 8, !dbg !4719
  %cmp = icmp eq i64 %11, %13, !dbg !4720
  br i1 %cmp, label %if.then8, label %if.end16, !dbg !4721

if.then8:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_size) #19, !dbg !4722
  call void @llvm.dbg.declare(metadata ptr %new_size, metadata !4676, metadata !DIExpression()), !dbg !4723
  %14 = load ptr, ptr %match, align 8, !dbg !4724
  %alloc9 = getelementptr inbounds %struct.component_match, ptr %14, i32 0, i32 0, !dbg !4725
  %15 = load i64, ptr %alloc9, align 8, !dbg !4725
  %add = add i64 %15, 16, !dbg !4726
  store i64 %add, ptr %new_size, align 8, !dbg !4723
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4727
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4679, metadata !DIExpression()), !dbg !4728
  %16 = load ptr, ptr %match, align 8, !dbg !4729
  %17 = load i64, ptr %new_size, align 8, !dbg !4730
  %call10 = call i32 @component_match_realloc(ptr noundef %16, i64 noundef %17) #18, !dbg !4731
  store i32 %call10, ptr %ret, align 4, !dbg !4732
  %18 = load i32, ptr %ret, align 4, !dbg !4733
  %tobool11 = icmp ne i32 %18, 0, !dbg !4733
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4735

if.then12:                                        ; preds = %if.then8
  %19 = load i32, ptr %ret, align 4, !dbg !4736
  %conv = sext i32 %19 to i64, !dbg !4736
  %call13 = call ptr @ERR_PTR(i64 noundef %conv) #18, !dbg !4738
  %20 = load ptr, ptr %matchptr.addr, align 8, !dbg !4739
  store ptr %call13, ptr %20, align 8, !dbg !4740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4741

if.end14:                                         ; preds = %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4742
  br label %cleanup, !dbg !4742

cleanup:                                          ; preds = %if.end14, %if.then12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4742
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_size) #19, !dbg !4742
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16, !dbg !4743

if.end16:                                         ; preds = %cleanup.cont, %if.end7
  %21 = load ptr, ptr %compare.addr, align 8, !dbg !4744
  %22 = load ptr, ptr %match, align 8, !dbg !4745
  %compare17 = getelementptr inbounds %struct.component_match, ptr %22, i32 0, i32 2, !dbg !4746
  %23 = load ptr, ptr %compare17, align 8, !dbg !4746
  %24 = load ptr, ptr %match, align 8, !dbg !4747
  %num18 = getelementptr inbounds %struct.component_match, ptr %24, i32 0, i32 1, !dbg !4748
  %25 = load i64, ptr %num18, align 8, !dbg !4748
  %arrayidx = getelementptr %struct.component_match_array, ptr %23, i64 %25, !dbg !4745
  %compare19 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx, i32 0, i32 1, !dbg !4749
  store ptr %21, ptr %compare19, align 8, !dbg !4750
  %26 = load ptr, ptr %compare_typed.addr, align 8, !dbg !4751
  %27 = load ptr, ptr %match, align 8, !dbg !4752
  %compare20 = getelementptr inbounds %struct.component_match, ptr %27, i32 0, i32 2, !dbg !4753
  %28 = load ptr, ptr %compare20, align 8, !dbg !4753
  %29 = load ptr, ptr %match, align 8, !dbg !4754
  %num21 = getelementptr inbounds %struct.component_match, ptr %29, i32 0, i32 1, !dbg !4755
  %30 = load i64, ptr %num21, align 8, !dbg !4755
  %arrayidx22 = getelementptr %struct.component_match_array, ptr %28, i64 %30, !dbg !4752
  %compare_typed23 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx22, i32 0, i32 2, !dbg !4756
  store ptr %26, ptr %compare_typed23, align 8, !dbg !4757
  %31 = load ptr, ptr %release.addr, align 8, !dbg !4758
  %32 = load ptr, ptr %match, align 8, !dbg !4759
  %compare24 = getelementptr inbounds %struct.component_match, ptr %32, i32 0, i32 2, !dbg !4760
  %33 = load ptr, ptr %compare24, align 8, !dbg !4760
  %34 = load ptr, ptr %match, align 8, !dbg !4761
  %num25 = getelementptr inbounds %struct.component_match, ptr %34, i32 0, i32 1, !dbg !4762
  %35 = load i64, ptr %num25, align 8, !dbg !4762
  %arrayidx26 = getelementptr %struct.component_match_array, ptr %33, i64 %35, !dbg !4759
  %release27 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx26, i32 0, i32 3, !dbg !4763
  store ptr %31, ptr %release27, align 8, !dbg !4764
  %36 = load ptr, ptr %compare_data.addr, align 8, !dbg !4765
  %37 = load ptr, ptr %match, align 8, !dbg !4766
  %compare28 = getelementptr inbounds %struct.component_match, ptr %37, i32 0, i32 2, !dbg !4767
  %38 = load ptr, ptr %compare28, align 8, !dbg !4767
  %39 = load ptr, ptr %match, align 8, !dbg !4768
  %num29 = getelementptr inbounds %struct.component_match, ptr %39, i32 0, i32 1, !dbg !4769
  %40 = load i64, ptr %num29, align 8, !dbg !4769
  %arrayidx30 = getelementptr %struct.component_match_array, ptr %38, i64 %40, !dbg !4766
  %data = getelementptr inbounds %struct.component_match_array, ptr %arrayidx30, i32 0, i32 0, !dbg !4770
  store ptr %36, ptr %data, align 8, !dbg !4771
  %41 = load ptr, ptr %match, align 8, !dbg !4772
  %compare31 = getelementptr inbounds %struct.component_match, ptr %41, i32 0, i32 2, !dbg !4773
  %42 = load ptr, ptr %compare31, align 8, !dbg !4773
  %43 = load ptr, ptr %match, align 8, !dbg !4774
  %num32 = getelementptr inbounds %struct.component_match, ptr %43, i32 0, i32 1, !dbg !4775
  %44 = load i64, ptr %num32, align 8, !dbg !4775
  %arrayidx33 = getelementptr %struct.component_match_array, ptr %42, i64 %44, !dbg !4772
  %component = getelementptr inbounds %struct.component_match_array, ptr %arrayidx33, i32 0, i32 4, !dbg !4776
  store ptr null, ptr %component, align 8, !dbg !4777
  %45 = load ptr, ptr %match, align 8, !dbg !4778
  %num34 = getelementptr inbounds %struct.component_match, ptr %45, i32 0, i32 1, !dbg !4779
  %46 = load i64, ptr %num34, align 8, !dbg !4780
  %inc = add i64 %46, 1, !dbg !4780
  store i64 %inc, ptr %num34, align 8, !dbg !4780
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4781
  br label %cleanup35, !dbg !4781

cleanup35:                                        ; preds = %if.end16, %cleanup, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #19, !dbg !4781
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont37
    i32 1, label %cleanup.cont37
  ]

cleanup.cont37:                                   ; preds = %cleanup35, %cleanup35
  ret void, !dbg !4781

unreachable:                                      ; preds = %cleanup35
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @component_match_add_typed(ptr noundef %parent, ptr noundef %matchptr, ptr noundef %compare_typed, ptr noundef %compare_data) #1 align 16 !dbg !4782 {
entry:
  %parent.addr = alloca ptr, align 8
  %matchptr.addr = alloca ptr, align 8
  %compare_typed.addr = alloca ptr, align 8
  %compare_data.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4786, metadata !DIExpression()), !dbg !4790
  store ptr %matchptr, ptr %matchptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %matchptr.addr, metadata !4787, metadata !DIExpression()), !dbg !4791
  store ptr %compare_typed, ptr %compare_typed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare_typed.addr, metadata !4788, metadata !DIExpression()), !dbg !4792
  store ptr %compare_data, ptr %compare_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %compare_data.addr, metadata !4789, metadata !DIExpression()), !dbg !4793
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4794
  %1 = load ptr, ptr %matchptr.addr, align 8, !dbg !4795
  %2 = load ptr, ptr %compare_typed.addr, align 8, !dbg !4796
  %3 = load ptr, ptr %compare_data.addr, align 8, !dbg !4797
  call void @__component_match_add(ptr noundef %0, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %2, ptr noundef %3) #18, !dbg !4798
  ret void, !dbg !4799
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_master_add_with_match(ptr noundef %parent, ptr noundef %ops, ptr noundef %match) #1 align 16 !dbg !4800 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %match.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4804, metadata !DIExpression()), !dbg !4809
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !4805, metadata !DIExpression()), !dbg !4810
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !4806, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #19, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !4807, metadata !DIExpression()), !dbg !4813
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4814
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4808, metadata !DIExpression()), !dbg !4815
  %0 = load ptr, ptr %match.addr, align 8, !dbg !4816
  %1 = load ptr, ptr %match.addr, align 8, !dbg !4817
  %num = getelementptr inbounds %struct.component_match, ptr %1, i32 0, i32 1, !dbg !4818
  %2 = load i64, ptr %num, align 8, !dbg !4818
  %call = call i32 @component_match_realloc(ptr noundef %0, i64 noundef %2) #18, !dbg !4819
  store i32 %call, ptr %ret, align 4, !dbg !4820
  %3 = load i32, ptr %ret, align 4, !dbg !4821
  %tobool = icmp ne i32 %3, 0, !dbg !4821
  br i1 %tobool, label %if.then, label %if.end, !dbg !4823

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !4824
  store i32 %4, ptr %retval, align 4, !dbg !4825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4825

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #20, !dbg !4826
  store ptr %call1, ptr %adev, align 8, !dbg !4827
  %5 = load ptr, ptr %adev, align 8, !dbg !4828
  %tobool2 = icmp ne ptr %5, null, !dbg !4828
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4830

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4831

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !4832
  %7 = load ptr, ptr %adev, align 8, !dbg !4833
  %parent5 = getelementptr inbounds %struct.aggregate_device, ptr %7, i32 0, i32 3, !dbg !4834
  store ptr %6, ptr %parent5, align 8, !dbg !4835
  %8 = load ptr, ptr %ops.addr, align 8, !dbg !4836
  %9 = load ptr, ptr %adev, align 8, !dbg !4837
  %ops6 = getelementptr inbounds %struct.aggregate_device, ptr %9, i32 0, i32 2, !dbg !4838
  store ptr %8, ptr %ops6, align 8, !dbg !4839
  %10 = load ptr, ptr %match.addr, align 8, !dbg !4840
  %11 = load ptr, ptr %adev, align 8, !dbg !4841
  %match7 = getelementptr inbounds %struct.aggregate_device, ptr %11, i32 0, i32 4, !dbg !4842
  store ptr %10, ptr %match7, align 8, !dbg !4843
  %12 = load ptr, ptr %adev, align 8, !dbg !4844
  call void @component_debugfs_add(ptr noundef %12) #18, !dbg !4845
  call void @mutex_lock(ptr noundef @component_mutex) #18, !dbg !4846
  %13 = load ptr, ptr %adev, align 8, !dbg !4847
  %node = getelementptr inbounds %struct.aggregate_device, ptr %13, i32 0, i32 0, !dbg !4848
  call void @list_add(ptr noundef %node, ptr noundef @aggregate_devices) #18, !dbg !4849
  %14 = load ptr, ptr %adev, align 8, !dbg !4850
  %call8 = call i32 @try_to_bring_up_aggregate_device(ptr noundef %14, ptr noundef null) #18, !dbg !4851
  store i32 %call8, ptr %ret, align 4, !dbg !4852
  %15 = load i32, ptr %ret, align 4, !dbg !4853
  %cmp = icmp slt i32 %15, 0, !dbg !4855
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !4856

if.then9:                                         ; preds = %if.end4
  %16 = load ptr, ptr %adev, align 8, !dbg !4857
  call void @free_aggregate_device(ptr noundef %16) #18, !dbg !4858
  br label %if.end10, !dbg !4858

if.end10:                                         ; preds = %if.then9, %if.end4
  call void @mutex_unlock(ptr noundef @component_mutex) #18, !dbg !4859
  %17 = load i32, ptr %ret, align 4, !dbg !4860
  %cmp11 = icmp slt i32 %17, 0, !dbg !4861
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !4860

cond.true:                                        ; preds = %if.end10
  %18 = load i32, ptr %ret, align 4, !dbg !4862
  br label %cond.end, !dbg !4860

cond.false:                                       ; preds = %if.end10
  br label %cond.end, !dbg !4860

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 0, %cond.false ], !dbg !4860
  store i32 %cond, ptr %retval, align 4, !dbg !4863
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4863

cleanup:                                          ; preds = %cond.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !4864
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #19, !dbg !4864
  %19 = load i32, ptr %retval, align 4, !dbg !4864
  ret i32 %19, !dbg !4864
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @component_match_realloc(ptr noundef %match, i64 noundef %num) #1 align 16 !dbg !4865 {
entry:
  %retval = alloca i32, align 4
  %match.addr = alloca ptr, align 8
  %num.addr = alloca i64, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x273 = alloca i64, align 8
  %__UNIQUE_ID___y274 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %match, ptr %match.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %match.addr, metadata !4869, metadata !DIExpression()), !dbg !4877
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4870, metadata !DIExpression()), !dbg !4878
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #19, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %new, metadata !4871, metadata !DIExpression()), !dbg !4880
  %0 = load ptr, ptr %match.addr, align 8, !dbg !4881
  %alloc = getelementptr inbounds %struct.component_match, ptr %0, i32 0, i32 0, !dbg !4883
  %1 = load i64, ptr %alloc, align 8, !dbg !4883
  %2 = load i64, ptr %num.addr, align 8, !dbg !4884
  %cmp = icmp eq i64 %1, %2, !dbg !4885
  br i1 %cmp, label %if.then, label %if.end, !dbg !4886

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4887

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %num.addr, align 8, !dbg !4888
  %call = call noalias ptr @kmalloc_array(i64 noundef %3, i64 noundef 48, i32 noundef 3264) #21, !dbg !4889
  store ptr %call, ptr %new, align 8, !dbg !4890
  %4 = load ptr, ptr %new, align 8, !dbg !4891
  %tobool = icmp ne ptr %4, null, !dbg !4891
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4893

if.then1:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4894

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %match.addr, align 8, !dbg !4895
  %compare = getelementptr inbounds %struct.component_match, ptr %5, i32 0, i32 2, !dbg !4896
  %6 = load ptr, ptr %compare, align 8, !dbg !4896
  %tobool3 = icmp ne ptr %6, null, !dbg !4895
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !4897

if.then4:                                         ; preds = %if.end2
  %7 = load ptr, ptr %new, align 8, !dbg !4898
  %8 = load ptr, ptr %match.addr, align 8, !dbg !4899
  %compare5 = getelementptr inbounds %struct.component_match, ptr %8, i32 0, i32 2, !dbg !4900
  %9 = load ptr, ptr %compare5, align 8, !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x273) #19, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x273, metadata !4872, metadata !DIExpression()), !dbg !4901
  %10 = load ptr, ptr %match.addr, align 8, !dbg !4901
  %num6 = getelementptr inbounds %struct.component_match, ptr %10, i32 0, i32 1, !dbg !4901
  %11 = load i64, ptr %num6, align 8, !dbg !4901
  store i64 %11, ptr %__UNIQUE_ID___x273, align 8, !dbg !4901
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y274) #19, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y274, metadata !4876, metadata !DIExpression()), !dbg !4901
  %12 = load i64, ptr %num.addr, align 8, !dbg !4901
  store i64 %12, ptr %__UNIQUE_ID___y274, align 8, !dbg !4901
  %13 = load i64, ptr %__UNIQUE_ID___x273, align 8, !dbg !4901
  %14 = load i64, ptr %__UNIQUE_ID___y274, align 8, !dbg !4901
  %cmp7 = icmp ult i64 %13, %14, !dbg !4901
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !4901

cond.true:                                        ; preds = %if.then4
  %15 = load i64, ptr %__UNIQUE_ID___x273, align 8, !dbg !4901
  br label %cond.end, !dbg !4901

cond.false:                                       ; preds = %if.then4
  %16 = load i64, ptr %__UNIQUE_ID___y274, align 8, !dbg !4901
  br label %cond.end, !dbg !4901

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !4901
  store i64 %cond, ptr %tmp, align 8, !dbg !4901
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y274) #19, !dbg !4902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x273) #19, !dbg !4902
  %17 = load i64, ptr %tmp, align 8, !dbg !4901
  %mul = mul i64 48, %17, !dbg !4903
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 %mul, i1 false), !dbg !4904
  %18 = load ptr, ptr %match.addr, align 8, !dbg !4905
  %compare8 = getelementptr inbounds %struct.component_match, ptr %18, i32 0, i32 2, !dbg !4906
  %19 = load ptr, ptr %compare8, align 8, !dbg !4906
  call void @kfree(ptr noundef %19) #18, !dbg !4907
  br label %if.end9, !dbg !4908

if.end9:                                          ; preds = %cond.end, %if.end2
  %20 = load ptr, ptr %new, align 8, !dbg !4909
  %21 = load ptr, ptr %match.addr, align 8, !dbg !4910
  %compare10 = getelementptr inbounds %struct.component_match, ptr %21, i32 0, i32 2, !dbg !4911
  store ptr %20, ptr %compare10, align 8, !dbg !4912
  %22 = load i64, ptr %num.addr, align 8, !dbg !4913
  %23 = load ptr, ptr %match.addr, align 8, !dbg !4914
  %alloc11 = getelementptr inbounds %struct.component_match, ptr %23, i32 0, i32 0, !dbg !4915
  store i64 %22, ptr %alloc11, align 8, !dbg !4916
  store i32 0, ptr %retval, align 4, !dbg !4917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4917

cleanup:                                          ; preds = %if.end9, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #19, !dbg !4918
  %24 = load i32, ptr %retval, align 4, !dbg !4918
  ret i32 %24, !dbg !4918
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4919 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4923, metadata !DIExpression()), !dbg !4925
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4924, metadata !DIExpression()), !dbg !4926
  %0 = load i64, ptr %size.addr, align 8, !dbg !4927
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4928
  %or = or i32 %1, 256, !dbg !4929
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !4930
  ret ptr %call, !dbg !4931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @component_debugfs_add(ptr noundef %m) #1 align 16 !dbg !4932 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4938
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %0, i32 0, i32 3, !dbg !4939
  %1 = load ptr, ptr %parent, align 8, !dbg !4939
  %call = call ptr @dev_name(ptr noundef %1) #18, !dbg !4940
  %2 = load ptr, ptr @component_debugfs_dir, align 8, !dbg !4941
  %3 = load ptr, ptr %m.addr, align 8, !dbg !4942
  %call1 = call ptr @debugfs_create_file(ptr noundef %call, i16 noundef zeroext 292, ptr noundef %2, ptr noundef %3, ptr noundef @component_devices_fops) #18, !dbg !4943
  ret void, !dbg !4944
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4945 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !4949 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4954, metadata !DIExpression()), !dbg !4956
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4955, metadata !DIExpression()), !dbg !4957
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4958
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4959
  %2 = load ptr, ptr %head.addr, align 8, !dbg !4960
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !4961
  %3 = load ptr, ptr %next, align 8, !dbg !4961
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !4962
  ret void, !dbg !4963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_to_bring_up_aggregate_device(ptr noundef %adev, ptr noundef %component) #1 align 16 !dbg !4964 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %component.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !4968, metadata !DIExpression()), !dbg !4971
  store ptr %component, ptr %component.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %component.addr, metadata !4969, metadata !DIExpression()), !dbg !4972
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !4973
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4970, metadata !DIExpression()), !dbg !4974
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !4975
  %call = call i32 @find_components(ptr noundef %0) #18, !dbg !4977
  %tobool = icmp ne i32 %call, 0, !dbg !4977
  br i1 %tobool, label %if.then, label %if.end, !dbg !4978

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4979

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %component.addr, align 8, !dbg !4981
  %tobool1 = icmp ne ptr %1, null, !dbg !4981
  br i1 %tobool1, label %land.lhs.true, label %if.end4, !dbg !4983

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr %component.addr, align 8, !dbg !4984
  %adev2 = getelementptr inbounds %struct.component, ptr %2, i32 0, i32 1, !dbg !4985
  %3 = load ptr, ptr %adev2, align 8, !dbg !4985
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !4986
  %cmp = icmp ne ptr %3, %4, !dbg !4987
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !4988

if.then3:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !4989
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4989

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !4991
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %5, i32 0, i32 3, !dbg !4993
  %6 = load ptr, ptr %parent, align 8, !dbg !4993
  %7 = load ptr, ptr %adev.addr, align 8, !dbg !4994
  %call5 = call ptr @devres_open_group(ptr noundef %6, ptr noundef %7, i32 noundef 3264) #18, !dbg !4995
  %tobool6 = icmp ne ptr %call5, null, !dbg !4995
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4996

if.then7:                                         ; preds = %if.end4
  store i32 -12, ptr %retval, align 4, !dbg !4997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4997

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %adev.addr, align 8, !dbg !4998
  %ops = getelementptr inbounds %struct.aggregate_device, ptr %8, i32 0, i32 2, !dbg !4999
  %9 = load ptr, ptr %ops, align 8, !dbg !4999
  %bind = getelementptr inbounds %struct.component_master_ops, ptr %9, i32 0, i32 0, !dbg !5000
  %10 = load ptr, ptr %bind, align 8, !dbg !5000
  %11 = load ptr, ptr %adev.addr, align 8, !dbg !5001
  %parent9 = getelementptr inbounds %struct.aggregate_device, ptr %11, i32 0, i32 3, !dbg !5002
  %12 = load ptr, ptr %parent9, align 8, !dbg !5002
  %call10 = call i32 %10(ptr noundef %12) #18, !dbg !4998
  store i32 %call10, ptr %ret, align 4, !dbg !5003
  %13 = load i32, ptr %ret, align 4, !dbg !5004
  %cmp11 = icmp slt i32 %13, 0, !dbg !5006
  br i1 %cmp11, label %if.then12, label %if.end19, !dbg !5007

if.then12:                                        ; preds = %if.end8
  %14 = load ptr, ptr %adev.addr, align 8, !dbg !5008
  %parent13 = getelementptr inbounds %struct.aggregate_device, ptr %14, i32 0, i32 3, !dbg !5010
  %15 = load ptr, ptr %parent13, align 8, !dbg !5010
  %call14 = call i32 @devres_release_group(ptr noundef %15, ptr noundef null) #18, !dbg !5011
  %16 = load i32, ptr %ret, align 4, !dbg !5012
  %cmp15 = icmp ne i32 %16, -517, !dbg !5014
  br i1 %cmp15, label %if.then16, label %if.end18, !dbg !5015

if.then16:                                        ; preds = %if.then12
  br label %do.body, !dbg !5016

do.body:                                          ; preds = %if.then16
  br label %do.cond, !dbg !5018

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5018

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %adev.addr, align 8, !dbg !5016
  %parent17 = getelementptr inbounds %struct.aggregate_device, ptr %17, i32 0, i32 3, !dbg !5016
  %18 = load ptr, ptr %parent17, align 8, !dbg !5016
  %19 = load i32, ptr %ret, align 4, !dbg !5016
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef @.str.14, i32 noundef %19) #17, !dbg !5016
  br label %if.end18, !dbg !5020

if.end18:                                         ; preds = %do.end, %if.then12
  %20 = load i32, ptr %ret, align 4, !dbg !5021
  store i32 %20, ptr %retval, align 4, !dbg !5022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5022

if.end19:                                         ; preds = %if.end8
  %21 = load ptr, ptr %adev.addr, align 8, !dbg !5023
  %parent20 = getelementptr inbounds %struct.aggregate_device, ptr %21, i32 0, i32 3, !dbg !5024
  %22 = load ptr, ptr %parent20, align 8, !dbg !5024
  call void @devres_close_group(ptr noundef %22, ptr noundef null) #18, !dbg !5025
  %23 = load ptr, ptr %adev.addr, align 8, !dbg !5026
  %bound = getelementptr inbounds %struct.aggregate_device, ptr %23, i32 0, i32 1, !dbg !5027
  store i8 1, ptr %bound, align 8, !dbg !5028
  store i32 1, ptr %retval, align 4, !dbg !5029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5029

cleanup:                                          ; preds = %if.end19, %if.end18, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5030
  %24 = load i32, ptr %retval, align 4, !dbg !5030
  ret i32 %24, !dbg !5030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_aggregate_device(ptr noundef %adev) #1 align 16 !dbg !5031 {
entry:
  %adev.addr = alloca ptr, align 8
  %match = alloca ptr, align 8
  %i = alloca i32, align 4
  %c = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5033, metadata !DIExpression()), !dbg !5042
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #19, !dbg !5043
  call void @llvm.dbg.declare(metadata ptr %match, metadata !5034, metadata !DIExpression()), !dbg !5044
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5045
  %match1 = getelementptr inbounds %struct.aggregate_device, ptr %0, i32 0, i32 4, !dbg !5046
  %1 = load ptr, ptr %match1, align 8, !dbg !5046
  store ptr %1, ptr %match, align 8, !dbg !5044
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5035, metadata !DIExpression()), !dbg !5048
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !5049
  call void @component_debugfs_del(ptr noundef %2) #18, !dbg !5050
  %3 = load ptr, ptr %adev.addr, align 8, !dbg !5051
  %node = getelementptr inbounds %struct.aggregate_device, ptr %3, i32 0, i32 0, !dbg !5052
  call void @list_del(ptr noundef %node) #18, !dbg !5053
  %4 = load ptr, ptr %match, align 8, !dbg !5054
  %tobool = icmp ne ptr %4, null, !dbg !5054
  br i1 %tobool, label %if.then, label %if.end6, !dbg !5055

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5056
  br label %for.cond, !dbg !5057

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, ptr %i, align 4, !dbg !5058
  %conv = sext i32 %5 to i64, !dbg !5058
  %6 = load ptr, ptr %match, align 8, !dbg !5059
  %num = getelementptr inbounds %struct.component_match, ptr %6, i32 0, i32 1, !dbg !5060
  %7 = load i64, ptr %num, align 8, !dbg !5060
  %cmp = icmp ult i64 %conv, %7, !dbg !5061
  br i1 %cmp, label %for.body, label %for.end, !dbg !5062

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5036, metadata !DIExpression()), !dbg !5064
  %8 = load ptr, ptr %match, align 8, !dbg !5065
  %compare = getelementptr inbounds %struct.component_match, ptr %8, i32 0, i32 2, !dbg !5066
  %9 = load ptr, ptr %compare, align 8, !dbg !5066
  %10 = load i32, ptr %i, align 4, !dbg !5067
  %idxprom = sext i32 %10 to i64, !dbg !5065
  %arrayidx = getelementptr %struct.component_match_array, ptr %9, i64 %idxprom, !dbg !5065
  %component = getelementptr inbounds %struct.component_match_array, ptr %arrayidx, i32 0, i32 4, !dbg !5068
  %11 = load ptr, ptr %component, align 8, !dbg !5068
  store ptr %11, ptr %c, align 8, !dbg !5064
  %12 = load ptr, ptr %c, align 8, !dbg !5069
  %tobool3 = icmp ne ptr %12, null, !dbg !5069
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5071

if.then4:                                         ; preds = %for.body
  %13 = load ptr, ptr %c, align 8, !dbg !5072
  %adev5 = getelementptr inbounds %struct.component, ptr %13, i32 0, i32 1, !dbg !5073
  store ptr null, ptr %adev5, align 8, !dbg !5074
  br label %if.end, !dbg !5072

if.end:                                           ; preds = %if.then4, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !5075
  br label %for.inc, !dbg !5076

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !dbg !5077
  %inc = add i32 %14, 1, !dbg !5077
  store i32 %inc, ptr %i, align 4, !dbg !5077
  br label %for.cond, !dbg !5078, !llvm.loop !5079

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !5083

if.end6:                                          ; preds = %for.end, %entry
  %15 = load ptr, ptr %adev.addr, align 8, !dbg !5084
  call void @kfree(ptr noundef %15) #18, !dbg !5085
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !5086
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #19, !dbg !5086
  ret void, !dbg !5086
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5087 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @component_master_del(ptr noundef %parent, ptr noundef %ops) #1 align 16 !dbg !5088 {
entry:
  %parent.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5092, metadata !DIExpression()), !dbg !5095
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5093, metadata !DIExpression()), !dbg !5096
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #19, !dbg !5097
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5094, metadata !DIExpression()), !dbg !5098
  call void @mutex_lock(ptr noundef @component_mutex) #18, !dbg !5099
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5100
  %1 = load ptr, ptr %ops.addr, align 8, !dbg !5101
  %call = call ptr @__aggregate_find(ptr noundef %0, ptr noundef %1) #18, !dbg !5102
  store ptr %call, ptr %adev, align 8, !dbg !5103
  %2 = load ptr, ptr %adev, align 8, !dbg !5104
  %tobool = icmp ne ptr %2, null, !dbg !5104
  br i1 %tobool, label %if.then, label %if.end, !dbg !5106

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %adev, align 8, !dbg !5107
  call void @take_down_aggregate_device(ptr noundef %3) #18, !dbg !5109
  %4 = load ptr, ptr %adev, align 8, !dbg !5110
  call void @free_aggregate_device(ptr noundef %4) #18, !dbg !5111
  br label %if.end, !dbg !5112

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @component_mutex) #18, !dbg !5113
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #19, !dbg !5114
  ret void, !dbg !5114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__aggregate_find(ptr noundef %parent, ptr noundef %ops) #1 align 16 !dbg !5115 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5119, metadata !DIExpression()), !dbg !5128
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5120, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #19, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %m, metadata !5121, metadata !DIExpression()), !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5122, metadata !DIExpression()), !dbg !5132
  %0 = load ptr, ptr @aggregate_devices, align 8, !dbg !5132
  store ptr %0, ptr %__mptr, align 8, !dbg !5132
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5132
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5132
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !5133
  %2 = load ptr, ptr %tmp, align 8, !dbg !5132
  store ptr %2, ptr %m, align 8, !dbg !5133
  br label %for.cond, !dbg !5133

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %m, align 8, !dbg !5134
  %node = getelementptr inbounds %struct.aggregate_device, ptr %3, i32 0, i32 0, !dbg !5134
  %cmp = icmp eq ptr %node, @aggregate_devices, !dbg !5134
  %lnot = xor i1 %cmp, true, !dbg !5134
  br i1 %lnot, label %for.body, label %for.end, !dbg !5133

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %m, align 8, !dbg !5135
  %parent1 = getelementptr inbounds %struct.aggregate_device, ptr %4, i32 0, i32 3, !dbg !5137
  %5 = load ptr, ptr %parent1, align 8, !dbg !5137
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !5138
  %cmp2 = icmp eq ptr %5, %6, !dbg !5139
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !5140

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %ops.addr, align 8, !dbg !5141
  %tobool = icmp ne ptr %7, null, !dbg !5141
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5142

lor.lhs.false:                                    ; preds = %land.lhs.true
  %8 = load ptr, ptr %m, align 8, !dbg !5143
  %ops3 = getelementptr inbounds %struct.aggregate_device, ptr %8, i32 0, i32 2, !dbg !5144
  %9 = load ptr, ptr %ops3, align 8, !dbg !5144
  %10 = load ptr, ptr %ops.addr, align 8, !dbg !5145
  %cmp4 = icmp eq ptr %9, %10, !dbg !5146
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5147

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %11 = load ptr, ptr %m, align 8, !dbg !5148
  store ptr %11, ptr %retval, align 8, !dbg !5149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5149

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !5150

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #19, !dbg !5151
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5125, metadata !DIExpression()), !dbg !5151
  %12 = load ptr, ptr %m, align 8, !dbg !5151
  %node6 = getelementptr inbounds %struct.aggregate_device, ptr %12, i32 0, i32 0, !dbg !5151
  %next = getelementptr inbounds %struct.list_head, ptr %node6, i32 0, i32 0, !dbg !5151
  %13 = load ptr, ptr %next, align 8, !dbg !5151
  store ptr %13, ptr %__mptr5, align 8, !dbg !5151
  %14 = load ptr, ptr %__mptr5, align 8, !dbg !5151
  %add.ptr8 = getelementptr i8, ptr %14, i64 0, !dbg !5151
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #19, !dbg !5134
  %15 = load ptr, ptr %tmp7, align 8, !dbg !5151
  store ptr %15, ptr %m, align 8, !dbg !5134
  br label %for.cond, !dbg !5134, !llvm.loop !5152

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5154

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #19, !dbg !5155
  %16 = load ptr, ptr %retval, align 8, !dbg !5155
  ret ptr %16, !dbg !5155
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @take_down_aggregate_device(ptr noundef %adev) #1 align 16 !dbg !5156 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5160
  %bound = getelementptr inbounds %struct.aggregate_device, ptr %0, i32 0, i32 1, !dbg !5162
  %1 = load i8, ptr %bound, align 8, !dbg !5162, !range !5163, !noundef !887
  %tobool = trunc i8 %1 to i1, !dbg !5162
  br i1 %tobool, label %if.then, label %if.end, !dbg !5164

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !5165
  %ops = getelementptr inbounds %struct.aggregate_device, ptr %2, i32 0, i32 2, !dbg !5167
  %3 = load ptr, ptr %ops, align 8, !dbg !5167
  %unbind = getelementptr inbounds %struct.component_master_ops, ptr %3, i32 0, i32 1, !dbg !5168
  %4 = load ptr, ptr %unbind, align 8, !dbg !5168
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !5169
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %5, i32 0, i32 3, !dbg !5170
  %6 = load ptr, ptr %parent, align 8, !dbg !5170
  call void %4(ptr noundef %6) #18, !dbg !5165
  %7 = load ptr, ptr %adev.addr, align 8, !dbg !5171
  %parent1 = getelementptr inbounds %struct.aggregate_device, ptr %7, i32 0, i32 3, !dbg !5172
  %8 = load ptr, ptr %parent1, align 8, !dbg !5172
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !5173
  %call = call i32 @devres_release_group(ptr noundef %8, ptr noundef %9) #18, !dbg !5174
  %10 = load ptr, ptr %adev.addr, align 8, !dbg !5175
  %bound2 = getelementptr inbounds %struct.aggregate_device, ptr %10, i32 0, i32 1, !dbg !5176
  store i8 0, ptr %bound2, align 8, !dbg !5177
  br label %if.end, !dbg !5178

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @component_unbind_all(ptr noundef %parent, ptr noundef %data) #1 align 16 !dbg !5180 {
entry:
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %c = alloca ptr, align 8
  %i = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5182, metadata !DIExpression()), !dbg !5192
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5183, metadata !DIExpression()), !dbg !5193
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #19, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5184, metadata !DIExpression()), !dbg !5195
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !5196
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5185, metadata !DIExpression()), !dbg !5197
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !5198
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5186, metadata !DIExpression()), !dbg !5199
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5200
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5187, metadata !DIExpression()), !dbg !5200
  %call = call zeroext i1 @mutex_is_locked(ptr noundef @component_mutex) #18, !dbg !5200
  %lnot = xor i1 %call, true, !dbg !5200
  %lnot1 = xor i1 %lnot, true, !dbg !5200
  %lnot2 = xor i1 %lnot1, true, !dbg !5200
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5200
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5200
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5201
  %tobool = icmp ne i32 %0, 0, !dbg !5201
  %lnot3 = xor i1 %tobool, true, !dbg !5201
  %lnot5 = xor i1 %lnot3, true, !dbg !5201
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5201
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5201
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5201
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5201
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5200

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5201

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5202
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5189, metadata !DIExpression()), !dbg !5202
  store i32 2305, ptr %__flags, align 4, !dbg !5202
  br label %do.body8, !dbg !5202

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5203

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5203

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5202

do.body9:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !5205
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 600, i32 %1, i64 12) #19, !dbg !5205, !srcloc !5207
  br label %do.cond10, !dbg !5205

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5205

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5202

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5208

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5208

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5201
  br label %do.cond15, !dbg !5202

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5202

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5202

if.end:                                           ; preds = %do.end16, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5200
  %tobool17 = icmp ne i32 %2, 0, !dbg !5200
  %lnot18 = xor i1 %tobool17, true, !dbg !5200
  %lnot20 = xor i1 %lnot18, true, !dbg !5200
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5200
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5200
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5200
  store i64 %expval23, ptr %tmp, align 8, !dbg !5201
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5210
  %3 = load i64, ptr %tmp, align 8, !dbg !5200
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !5211
  %call24 = call ptr @__aggregate_find(ptr noundef %4, ptr noundef null) #18, !dbg !5212
  store ptr %call24, ptr %adev, align 8, !dbg !5213
  %5 = load ptr, ptr %adev, align 8, !dbg !5214
  %tobool25 = icmp ne ptr %5, null, !dbg !5214
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5216

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

if.end27:                                         ; preds = %if.end
  %6 = load ptr, ptr %adev, align 8, !dbg !5218
  %match = getelementptr inbounds %struct.aggregate_device, ptr %6, i32 0, i32 4, !dbg !5220
  %7 = load ptr, ptr %match, align 8, !dbg !5220
  %num = getelementptr inbounds %struct.component_match, ptr %7, i32 0, i32 1, !dbg !5221
  %8 = load i64, ptr %num, align 8, !dbg !5221
  store i64 %8, ptr %i, align 8, !dbg !5222
  br label %for.cond, !dbg !5223

for.cond:                                         ; preds = %if.end35, %if.end27
  %9 = load i64, ptr %i, align 8, !dbg !5224
  %dec = add i64 %9, -1, !dbg !5224
  store i64 %dec, ptr %i, align 8, !dbg !5224
  %tobool28 = icmp ne i64 %9, 0, !dbg !5226
  br i1 %tobool28, label %for.body, label %for.end, !dbg !5226

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %adev, align 8, !dbg !5227
  %match29 = getelementptr inbounds %struct.aggregate_device, ptr %10, i32 0, i32 4, !dbg !5229
  %11 = load ptr, ptr %match29, align 8, !dbg !5229
  %compare = getelementptr inbounds %struct.component_match, ptr %11, i32 0, i32 2, !dbg !5230
  %12 = load ptr, ptr %compare, align 8, !dbg !5230
  %13 = load i64, ptr %i, align 8, !dbg !5231
  %arrayidx = getelementptr %struct.component_match_array, ptr %12, i64 %13, !dbg !5227
  %duplicate = getelementptr inbounds %struct.component_match_array, ptr %arrayidx, i32 0, i32 5, !dbg !5232
  %14 = load i8, ptr %duplicate, align 8, !dbg !5232, !range !5163, !noundef !887
  %tobool30 = trunc i8 %14 to i1, !dbg !5232
  br i1 %tobool30, label %if.end35, label %if.then31, !dbg !5233

if.then31:                                        ; preds = %for.body
  %15 = load ptr, ptr %adev, align 8, !dbg !5234
  %match32 = getelementptr inbounds %struct.aggregate_device, ptr %15, i32 0, i32 4, !dbg !5236
  %16 = load ptr, ptr %match32, align 8, !dbg !5236
  %compare33 = getelementptr inbounds %struct.component_match, ptr %16, i32 0, i32 2, !dbg !5237
  %17 = load ptr, ptr %compare33, align 8, !dbg !5237
  %18 = load i64, ptr %i, align 8, !dbg !5238
  %arrayidx34 = getelementptr %struct.component_match_array, ptr %17, i64 %18, !dbg !5234
  %component = getelementptr inbounds %struct.component_match_array, ptr %arrayidx34, i32 0, i32 4, !dbg !5239
  %19 = load ptr, ptr %component, align 8, !dbg !5239
  store ptr %19, ptr %c, align 8, !dbg !5240
  %20 = load ptr, ptr %c, align 8, !dbg !5241
  %21 = load ptr, ptr %adev, align 8, !dbg !5242
  %22 = load ptr, ptr %data.addr, align 8, !dbg !5243
  call void @component_unbind(ptr noundef %20, ptr noundef %21, ptr noundef %22) #18, !dbg !5244
  br label %if.end35, !dbg !5245

if.end35:                                         ; preds = %if.then31, %for.body
  br label %for.cond, !dbg !5246, !llvm.loop !5247

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5249
  br label %cleanup, !dbg !5249

cleanup:                                          ; preds = %for.end, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #19, !dbg !5249
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5249

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5250 dso_local zeroext i1 @mutex_is_locked(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @component_unbind(ptr noundef %component, ptr noundef %adev, ptr noundef %data) #1 align 16 !dbg !5253 {
entry:
  %component.addr = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %component, ptr %component.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %component.addr, metadata !5257, metadata !DIExpression()), !dbg !5265
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5258, metadata !DIExpression()), !dbg !5266
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5259, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5260, metadata !DIExpression()), !dbg !5268
  %0 = load ptr, ptr %component.addr, align 8, !dbg !5268
  %bound = getelementptr inbounds %struct.component, ptr %0, i32 0, i32 2, !dbg !5268
  %1 = load i8, ptr %bound, align 8, !dbg !5268, !range !5163, !noundef !887
  %tobool = trunc i8 %1 to i1, !dbg !5268
  %lnot = xor i1 %tobool, true, !dbg !5268
  %lnot1 = xor i1 %lnot, true, !dbg !5268
  %lnot2 = xor i1 %lnot1, true, !dbg !5268
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5268
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5268
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5269
  %tobool3 = icmp ne i32 %2, 0, !dbg !5269
  %lnot4 = xor i1 %tobool3, true, !dbg !5269
  %lnot6 = xor i1 %lnot4, true, !dbg !5269
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5269
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5269
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5269
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5269
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5268

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5269

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5262, metadata !DIExpression()), !dbg !5270
  store i32 2305, ptr %__flags, align 4, !dbg !5270
  br label %do.body9, !dbg !5270

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5271

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5271

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5270

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !5273
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 575, i32 %3, i64 12) #19, !dbg !5273, !srcloc !5275
  br label %do.cond11, !dbg !5273

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5273

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5270

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5276

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5276

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5269
  br label %do.cond16, !dbg !5270

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5270

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5270

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5268
  %tobool18 = icmp ne i32 %4, 0, !dbg !5268
  %lnot19 = xor i1 %tobool18, true, !dbg !5268
  %lnot21 = xor i1 %lnot19, true, !dbg !5268
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5268
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5268
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5268
  store i64 %expval24, ptr %tmp, align 8, !dbg !5269
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5278
  %5 = load i64, ptr %tmp, align 8, !dbg !5268
  %6 = load ptr, ptr %component.addr, align 8, !dbg !5279
  %ops = getelementptr inbounds %struct.component, ptr %6, i32 0, i32 3, !dbg !5281
  %7 = load ptr, ptr %ops, align 8, !dbg !5281
  %tobool25 = icmp ne ptr %7, null, !dbg !5279
  br i1 %tobool25, label %land.lhs.true, label %if.end31, !dbg !5282

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %component.addr, align 8, !dbg !5283
  %ops26 = getelementptr inbounds %struct.component, ptr %8, i32 0, i32 3, !dbg !5284
  %9 = load ptr, ptr %ops26, align 8, !dbg !5284
  %unbind = getelementptr inbounds %struct.component_ops, ptr %9, i32 0, i32 1, !dbg !5285
  %10 = load ptr, ptr %unbind, align 8, !dbg !5285
  %tobool27 = icmp ne ptr %10, null, !dbg !5283
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !5286

if.then28:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %component.addr, align 8, !dbg !5287
  %ops29 = getelementptr inbounds %struct.component, ptr %11, i32 0, i32 3, !dbg !5288
  %12 = load ptr, ptr %ops29, align 8, !dbg !5288
  %unbind30 = getelementptr inbounds %struct.component_ops, ptr %12, i32 0, i32 1, !dbg !5289
  %13 = load ptr, ptr %unbind30, align 8, !dbg !5289
  %14 = load ptr, ptr %component.addr, align 8, !dbg !5290
  %dev = getelementptr inbounds %struct.component, ptr %14, i32 0, i32 5, !dbg !5291
  %15 = load ptr, ptr %dev, align 8, !dbg !5291
  %16 = load ptr, ptr %adev.addr, align 8, !dbg !5292
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %16, i32 0, i32 3, !dbg !5293
  %17 = load ptr, ptr %parent, align 8, !dbg !5293
  %18 = load ptr, ptr %data.addr, align 8, !dbg !5294
  call void %13(ptr noundef %15, ptr noundef %17, ptr noundef %18) #18, !dbg !5287
  br label %if.end31, !dbg !5287

if.end31:                                         ; preds = %if.then28, %land.lhs.true, %if.end
  %19 = load ptr, ptr %component.addr, align 8, !dbg !5295
  %bound32 = getelementptr inbounds %struct.component, ptr %19, i32 0, i32 2, !dbg !5296
  store i8 0, ptr %bound32, align 8, !dbg !5297
  %20 = load ptr, ptr %component.addr, align 8, !dbg !5298
  %dev33 = getelementptr inbounds %struct.component, ptr %20, i32 0, i32 5, !dbg !5299
  %21 = load ptr, ptr %dev33, align 8, !dbg !5299
  %22 = load ptr, ptr %component.addr, align 8, !dbg !5300
  %call = call i32 @devres_release_group(ptr noundef %21, ptr noundef %22) #18, !dbg !5301
  ret void, !dbg !5302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_bind_all(ptr noundef %parent, ptr noundef %data) #1 align 16 !dbg !5303 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %c = alloca ptr, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5305, metadata !DIExpression()), !dbg !5316
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5306, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #19, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !5307, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5308, metadata !DIExpression()), !dbg !5321
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5309, metadata !DIExpression()), !dbg !5323
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5310, metadata !DIExpression()), !dbg !5325
  store i32 0, ptr %ret, align 4, !dbg !5325
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5311, metadata !DIExpression()), !dbg !5326
  %call = call zeroext i1 @mutex_is_locked(ptr noundef @component_mutex) #18, !dbg !5326
  %lnot = xor i1 %call, true, !dbg !5326
  %lnot1 = xor i1 %lnot, true, !dbg !5326
  %lnot2 = xor i1 %lnot1, true, !dbg !5326
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5326
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5326
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !5327
  %tobool = icmp ne i32 %0, 0, !dbg !5327
  %lnot3 = xor i1 %tobool, true, !dbg !5327
  %lnot5 = xor i1 %lnot3, true, !dbg !5327
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5327
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5327
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5327
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5327
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5326

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5327

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5313, metadata !DIExpression()), !dbg !5328
  store i32 2305, ptr %__flags, align 4, !dbg !5328
  br label %do.body8, !dbg !5328

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5329

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5329

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5328

do.body9:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !5331
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 684, i32 %1, i64 12) #19, !dbg !5331, !srcloc !5333
  br label %do.cond10, !dbg !5331

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5331

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5328

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5334

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5334

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5327
  br label %do.cond15, !dbg !5328

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5328

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5328

if.end:                                           ; preds = %do.end16, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !5326
  %tobool17 = icmp ne i32 %2, 0, !dbg !5326
  %lnot18 = xor i1 %tobool17, true, !dbg !5326
  %lnot20 = xor i1 %lnot18, true, !dbg !5326
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5326
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5326
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5326
  store i64 %expval23, ptr %tmp, align 8, !dbg !5327
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5336
  %3 = load i64, ptr %tmp, align 8, !dbg !5326
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !5337
  %call24 = call ptr @__aggregate_find(ptr noundef %4, ptr noundef null) #18, !dbg !5338
  store ptr %call24, ptr %adev, align 8, !dbg !5339
  %5 = load ptr, ptr %adev, align 8, !dbg !5340
  %tobool25 = icmp ne ptr %5, null, !dbg !5340
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !5342

if.then26:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5343

if.end27:                                         ; preds = %if.end
  store i64 0, ptr %i, align 8, !dbg !5344
  br label %for.cond, !dbg !5346

for.cond:                                         ; preds = %for.inc, %if.end27
  %6 = load i64, ptr %i, align 8, !dbg !5347
  %7 = load ptr, ptr %adev, align 8, !dbg !5349
  %match = getelementptr inbounds %struct.aggregate_device, ptr %7, i32 0, i32 4, !dbg !5350
  %8 = load ptr, ptr %match, align 8, !dbg !5350
  %num = getelementptr inbounds %struct.component_match, ptr %8, i32 0, i32 1, !dbg !5351
  %9 = load i64, ptr %num, align 8, !dbg !5351
  %cmp = icmp ult i64 %6, %9, !dbg !5352
  br i1 %cmp, label %for.body, label %for.end, !dbg !5353

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %adev, align 8, !dbg !5354
  %match29 = getelementptr inbounds %struct.aggregate_device, ptr %10, i32 0, i32 4, !dbg !5356
  %11 = load ptr, ptr %match29, align 8, !dbg !5356
  %compare = getelementptr inbounds %struct.component_match, ptr %11, i32 0, i32 2, !dbg !5357
  %12 = load ptr, ptr %compare, align 8, !dbg !5357
  %13 = load i64, ptr %i, align 8, !dbg !5358
  %arrayidx = getelementptr %struct.component_match_array, ptr %12, i64 %13, !dbg !5354
  %duplicate = getelementptr inbounds %struct.component_match_array, ptr %arrayidx, i32 0, i32 5, !dbg !5359
  %14 = load i8, ptr %duplicate, align 8, !dbg !5359, !range !5163, !noundef !887
  %tobool30 = trunc i8 %14 to i1, !dbg !5359
  br i1 %tobool30, label %if.end39, label %if.then31, !dbg !5360

if.then31:                                        ; preds = %for.body
  %15 = load ptr, ptr %adev, align 8, !dbg !5361
  %match32 = getelementptr inbounds %struct.aggregate_device, ptr %15, i32 0, i32 4, !dbg !5363
  %16 = load ptr, ptr %match32, align 8, !dbg !5363
  %compare33 = getelementptr inbounds %struct.component_match, ptr %16, i32 0, i32 2, !dbg !5364
  %17 = load ptr, ptr %compare33, align 8, !dbg !5364
  %18 = load i64, ptr %i, align 8, !dbg !5365
  %arrayidx34 = getelementptr %struct.component_match_array, ptr %17, i64 %18, !dbg !5361
  %component = getelementptr inbounds %struct.component_match_array, ptr %arrayidx34, i32 0, i32 4, !dbg !5366
  %19 = load ptr, ptr %component, align 8, !dbg !5366
  store ptr %19, ptr %c, align 8, !dbg !5367
  %20 = load ptr, ptr %c, align 8, !dbg !5368
  %21 = load ptr, ptr %adev, align 8, !dbg !5369
  %22 = load ptr, ptr %data.addr, align 8, !dbg !5370
  %call35 = call i32 @component_bind(ptr noundef %20, ptr noundef %21, ptr noundef %22) #18, !dbg !5371
  store i32 %call35, ptr %ret, align 4, !dbg !5372
  %23 = load i32, ptr %ret, align 4, !dbg !5373
  %tobool36 = icmp ne i32 %23, 0, !dbg !5373
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5375

if.then37:                                        ; preds = %if.then31
  br label %for.end, !dbg !5376

if.end38:                                         ; preds = %if.then31
  br label %if.end39, !dbg !5377

if.end39:                                         ; preds = %if.end38, %for.body
  br label %for.inc, !dbg !5359

for.inc:                                          ; preds = %if.end39
  %24 = load i64, ptr %i, align 8, !dbg !5378
  %inc = add i64 %24, 1, !dbg !5378
  store i64 %inc, ptr %i, align 8, !dbg !5378
  br label %for.cond, !dbg !5379, !llvm.loop !5380

for.end:                                          ; preds = %if.then37, %for.cond
  %25 = load i32, ptr %ret, align 4, !dbg !5382
  %cmp40 = icmp ne i32 %25, 0, !dbg !5384
  br i1 %cmp40, label %if.then42, label %if.end61, !dbg !5385

if.then42:                                        ; preds = %for.end
  br label %for.cond43, !dbg !5386

for.cond43:                                       ; preds = %for.inc59, %if.then42
  %26 = load i64, ptr %i, align 8, !dbg !5388
  %cmp44 = icmp ugt i64 %26, 0, !dbg !5391
  br i1 %cmp44, label %for.body46, label %for.end60, !dbg !5392

for.body46:                                       ; preds = %for.cond43
  %27 = load ptr, ptr %adev, align 8, !dbg !5393
  %match47 = getelementptr inbounds %struct.aggregate_device, ptr %27, i32 0, i32 4, !dbg !5395
  %28 = load ptr, ptr %match47, align 8, !dbg !5395
  %compare48 = getelementptr inbounds %struct.component_match, ptr %28, i32 0, i32 2, !dbg !5396
  %29 = load ptr, ptr %compare48, align 8, !dbg !5396
  %30 = load i64, ptr %i, align 8, !dbg !5397
  %sub = sub i64 %30, 1, !dbg !5398
  %arrayidx49 = getelementptr %struct.component_match_array, ptr %29, i64 %sub, !dbg !5393
  %duplicate50 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx49, i32 0, i32 5, !dbg !5399
  %31 = load i8, ptr %duplicate50, align 8, !dbg !5399, !range !5163, !noundef !887
  %tobool51 = trunc i8 %31 to i1, !dbg !5399
  br i1 %tobool51, label %if.end58, label %if.then52, !dbg !5400

if.then52:                                        ; preds = %for.body46
  %32 = load ptr, ptr %adev, align 8, !dbg !5401
  %match53 = getelementptr inbounds %struct.aggregate_device, ptr %32, i32 0, i32 4, !dbg !5403
  %33 = load ptr, ptr %match53, align 8, !dbg !5403
  %compare54 = getelementptr inbounds %struct.component_match, ptr %33, i32 0, i32 2, !dbg !5404
  %34 = load ptr, ptr %compare54, align 8, !dbg !5404
  %35 = load i64, ptr %i, align 8, !dbg !5405
  %sub55 = sub i64 %35, 1, !dbg !5406
  %arrayidx56 = getelementptr %struct.component_match_array, ptr %34, i64 %sub55, !dbg !5401
  %component57 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx56, i32 0, i32 4, !dbg !5407
  %36 = load ptr, ptr %component57, align 8, !dbg !5407
  store ptr %36, ptr %c, align 8, !dbg !5408
  %37 = load ptr, ptr %c, align 8, !dbg !5409
  %38 = load ptr, ptr %adev, align 8, !dbg !5410
  %39 = load ptr, ptr %data.addr, align 8, !dbg !5411
  call void @component_unbind(ptr noundef %37, ptr noundef %38, ptr noundef %39) #18, !dbg !5412
  br label %if.end58, !dbg !5413

if.end58:                                         ; preds = %if.then52, %for.body46
  br label %for.inc59, !dbg !5399

for.inc59:                                        ; preds = %if.end58
  %40 = load i64, ptr %i, align 8, !dbg !5414
  %dec = add i64 %40, -1, !dbg !5414
  store i64 %dec, ptr %i, align 8, !dbg !5414
  br label %for.cond43, !dbg !5415, !llvm.loop !5416

for.end60:                                        ; preds = %for.cond43
  br label %if.end61, !dbg !5418

if.end61:                                         ; preds = %for.end60, %for.end
  %41 = load i32, ptr %ret, align 4, !dbg !5419
  store i32 %41, ptr %retval, align 4, !dbg !5420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5420

cleanup:                                          ; preds = %if.end61, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #19, !dbg !5421
  %42 = load i32, ptr %retval, align 4, !dbg !5421
  ret i32 %42, !dbg !5421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @component_bind(ptr noundef %component, ptr noundef %adev, ptr noundef %data) #1 align 16 !dbg !5422 {
entry:
  %retval = alloca i32, align 4
  %component.addr = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %component, ptr %component.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %component.addr, metadata !5426, metadata !DIExpression()), !dbg !5430
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5427, metadata !DIExpression()), !dbg !5431
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5428, metadata !DIExpression()), !dbg !5432
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5433
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5429, metadata !DIExpression()), !dbg !5434
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !5435
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %0, i32 0, i32 3, !dbg !5437
  %1 = load ptr, ptr %parent, align 8, !dbg !5437
  %call = call ptr @devres_open_group(ptr noundef %1, ptr noundef null, i32 noundef 3264) #18, !dbg !5438
  %tobool = icmp ne ptr %call, null, !dbg !5438
  br i1 %tobool, label %if.end, label %if.then, !dbg !5439

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5440

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %component.addr, align 8, !dbg !5441
  %dev = getelementptr inbounds %struct.component, ptr %2, i32 0, i32 5, !dbg !5443
  %3 = load ptr, ptr %dev, align 8, !dbg !5443
  %4 = load ptr, ptr %component.addr, align 8, !dbg !5444
  %call1 = call ptr @devres_open_group(ptr noundef %3, ptr noundef %4, i32 noundef 3264) #18, !dbg !5445
  %tobool2 = icmp ne ptr %call1, null, !dbg !5445
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !5446

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !5447
  %parent4 = getelementptr inbounds %struct.aggregate_device, ptr %5, i32 0, i32 3, !dbg !5449
  %6 = load ptr, ptr %parent4, align 8, !dbg !5449
  %call5 = call i32 @devres_release_group(ptr noundef %6, ptr noundef null) #18, !dbg !5450
  store i32 -12, ptr %retval, align 4, !dbg !5451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5451

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %component.addr, align 8, !dbg !5452
  %ops = getelementptr inbounds %struct.component, ptr %7, i32 0, i32 3, !dbg !5453
  %8 = load ptr, ptr %ops, align 8, !dbg !5453
  %bind = getelementptr inbounds %struct.component_ops, ptr %8, i32 0, i32 0, !dbg !5454
  %9 = load ptr, ptr %bind, align 8, !dbg !5454
  %10 = load ptr, ptr %component.addr, align 8, !dbg !5455
  %dev7 = getelementptr inbounds %struct.component, ptr %10, i32 0, i32 5, !dbg !5456
  %11 = load ptr, ptr %dev7, align 8, !dbg !5456
  %12 = load ptr, ptr %adev.addr, align 8, !dbg !5457
  %parent8 = getelementptr inbounds %struct.aggregate_device, ptr %12, i32 0, i32 3, !dbg !5458
  %13 = load ptr, ptr %parent8, align 8, !dbg !5458
  %14 = load ptr, ptr %data.addr, align 8, !dbg !5459
  %call9 = call i32 %9(ptr noundef %11, ptr noundef %13, ptr noundef %14) #18, !dbg !5452
  store i32 %call9, ptr %ret, align 4, !dbg !5460
  %15 = load i32, ptr %ret, align 4, !dbg !5461
  %tobool10 = icmp ne i32 %15, 0, !dbg !5461
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !5463

if.then11:                                        ; preds = %if.end6
  %16 = load ptr, ptr %component.addr, align 8, !dbg !5464
  %bound = getelementptr inbounds %struct.component, ptr %16, i32 0, i32 2, !dbg !5466
  store i8 1, ptr %bound, align 8, !dbg !5467
  %17 = load ptr, ptr %component.addr, align 8, !dbg !5468
  %dev12 = getelementptr inbounds %struct.component, ptr %17, i32 0, i32 5, !dbg !5469
  %18 = load ptr, ptr %dev12, align 8, !dbg !5469
  call void @devres_close_group(ptr noundef %18, ptr noundef null) #18, !dbg !5470
  %19 = load ptr, ptr %adev.addr, align 8, !dbg !5471
  %parent13 = getelementptr inbounds %struct.aggregate_device, ptr %19, i32 0, i32 3, !dbg !5472
  %20 = load ptr, ptr %parent13, align 8, !dbg !5472
  call void @devres_remove_group(ptr noundef %20, ptr noundef null) #18, !dbg !5473
  br label %do.body, !dbg !5474

do.body:                                          ; preds = %if.then11
  br label %do.cond, !dbg !5476

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5476

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %adev.addr, align 8, !dbg !5474
  %parent14 = getelementptr inbounds %struct.aggregate_device, ptr %21, i32 0, i32 3, !dbg !5474
  %22 = load ptr, ptr %parent14, align 8, !dbg !5474
  %23 = load ptr, ptr %component.addr, align 8, !dbg !5474
  %dev15 = getelementptr inbounds %struct.component, ptr %23, i32 0, i32 5, !dbg !5474
  %24 = load ptr, ptr %dev15, align 8, !dbg !5474
  %call16 = call ptr @dev_name(ptr noundef %24) #18, !dbg !5474
  %25 = load ptr, ptr %component.addr, align 8, !dbg !5474
  %ops17 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 3, !dbg !5474
  %26 = load ptr, ptr %ops17, align 8, !dbg !5474
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef @.str.15, ptr noundef %call16, ptr noundef %26) #17, !dbg !5474
  br label %if.end31, !dbg !5478

if.else:                                          ; preds = %if.end6
  %27 = load ptr, ptr %component.addr, align 8, !dbg !5479
  %dev18 = getelementptr inbounds %struct.component, ptr %27, i32 0, i32 5, !dbg !5481
  %28 = load ptr, ptr %dev18, align 8, !dbg !5481
  %call19 = call i32 @devres_release_group(ptr noundef %28, ptr noundef null) #18, !dbg !5482
  %29 = load ptr, ptr %adev.addr, align 8, !dbg !5483
  %parent20 = getelementptr inbounds %struct.aggregate_device, ptr %29, i32 0, i32 3, !dbg !5484
  %30 = load ptr, ptr %parent20, align 8, !dbg !5484
  %call21 = call i32 @devres_release_group(ptr noundef %30, ptr noundef null) #18, !dbg !5485
  %31 = load i32, ptr %ret, align 4, !dbg !5486
  %cmp = icmp ne i32 %31, -517, !dbg !5488
  br i1 %cmp, label %if.then22, label %if.end30, !dbg !5489

if.then22:                                        ; preds = %if.else
  br label %do.body23, !dbg !5490

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !5492

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5492

do.end25:                                         ; preds = %do.cond24
  %32 = load ptr, ptr %adev.addr, align 8, !dbg !5490
  %parent26 = getelementptr inbounds %struct.aggregate_device, ptr %32, i32 0, i32 3, !dbg !5490
  %33 = load ptr, ptr %parent26, align 8, !dbg !5490
  %34 = load ptr, ptr %component.addr, align 8, !dbg !5490
  %dev27 = getelementptr inbounds %struct.component, ptr %34, i32 0, i32 5, !dbg !5490
  %35 = load ptr, ptr %dev27, align 8, !dbg !5490
  %call28 = call ptr @dev_name(ptr noundef %35) #18, !dbg !5490
  %36 = load ptr, ptr %component.addr, align 8, !dbg !5490
  %ops29 = getelementptr inbounds %struct.component, ptr %36, i32 0, i32 3, !dbg !5490
  %37 = load ptr, ptr %ops29, align 8, !dbg !5490
  %38 = load i32, ptr %ret, align 4, !dbg !5490
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef @.str.16, ptr noundef %call28, ptr noundef %37, i32 noundef %38) #17, !dbg !5490
  br label %if.end30, !dbg !5494

if.end30:                                         ; preds = %do.end25, %if.else
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %do.end
  %39 = load i32, ptr %ret, align 4, !dbg !5495
  store i32 %39, ptr %retval, align 4, !dbg !5496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5496

cleanup:                                          ; preds = %if.end31, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5497
  %40 = load i32, ptr %retval, align 4, !dbg !5497
  ret i32 %40, !dbg !5497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_add_typed(ptr noundef %dev, ptr noundef %ops, i32 noundef %subcomponent) #1 align 16 !dbg !5498 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %subcomponent.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5502, metadata !DIExpression()), !dbg !5511
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5503, metadata !DIExpression()), !dbg !5512
  store i32 %subcomponent, ptr %subcomponent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subcomponent.addr, metadata !5504, metadata !DIExpression()), !dbg !5513
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5514
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5505, metadata !DIExpression()), !dbg !5514
  %0 = load i32, ptr %subcomponent.addr, align 4, !dbg !5514
  %cmp = icmp eq i32 %0, 0, !dbg !5514
  %lnot = xor i1 %cmp, true, !dbg !5514
  %lnot1 = xor i1 %lnot, true, !dbg !5514
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5514
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5514
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5515
  %tobool = icmp ne i32 %1, 0, !dbg !5515
  %lnot2 = xor i1 %tobool, true, !dbg !5515
  %lnot4 = xor i1 %lnot2, true, !dbg !5515
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5515
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5515
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5515
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5515
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5514

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5515

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5516
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5508, metadata !DIExpression()), !dbg !5516
  store i32 2305, ptr %__flags, align 4, !dbg !5516
  br label %do.body7, !dbg !5516

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5517

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5517

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5516

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5519
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 765, i32 %2, i64 12) #19, !dbg !5519, !srcloc !5521
  br label %do.cond9, !dbg !5519

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5519

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5516

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5522

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5522

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5515
  br label %do.cond14, !dbg !5516

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5516

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5516

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5514
  %tobool16 = icmp ne i32 %3, 0, !dbg !5514
  %lnot17 = xor i1 %tobool16, true, !dbg !5514
  %lnot19 = xor i1 %lnot17, true, !dbg !5514
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5514
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5514
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5514
  store i64 %expval22, ptr %tmp, align 8, !dbg !5515
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5524
  %4 = load i64, ptr %tmp, align 8, !dbg !5514
  %tobool23 = icmp ne i64 %4, 0, !dbg !5524
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5525

if.then24:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

if.end25:                                         ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5527
  %6 = load ptr, ptr %ops.addr, align 8, !dbg !5528
  %7 = load i32, ptr %subcomponent.addr, align 4, !dbg !5529
  %call = call i32 @__component_add(ptr noundef %5, ptr noundef %6, i32 noundef %7) #18, !dbg !5530
  store i32 %call, ptr %retval, align 4, !dbg !5531
  br label %return, !dbg !5531

return:                                           ; preds = %if.end25, %if.then24
  %8 = load i32, ptr %retval, align 4, !dbg !5532
  ret i32 %8, !dbg !5532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__component_add(ptr noundef %dev, ptr noundef %ops, i32 noundef %subcomponent) #1 align 16 !dbg !5533 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %subcomponent.addr = alloca i32, align 4
  %component = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5535, metadata !DIExpression()), !dbg !5540
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5536, metadata !DIExpression()), !dbg !5541
  store i32 %subcomponent, ptr %subcomponent.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subcomponent.addr, metadata !5537, metadata !DIExpression()), !dbg !5542
  call void @llvm.lifetime.start.p0(i64 8, ptr %component) #19, !dbg !5543
  call void @llvm.dbg.declare(metadata ptr %component, metadata !5538, metadata !DIExpression()), !dbg !5544
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !5545
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5539, metadata !DIExpression()), !dbg !5546
  %call = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #20, !dbg !5547
  store ptr %call, ptr %component, align 8, !dbg !5548
  %0 = load ptr, ptr %component, align 8, !dbg !5549
  %tobool = icmp ne ptr %0, null, !dbg !5549
  br i1 %tobool, label %if.end, label %if.then, !dbg !5551

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5552

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ops.addr, align 8, !dbg !5553
  %2 = load ptr, ptr %component, align 8, !dbg !5554
  %ops1 = getelementptr inbounds %struct.component, ptr %2, i32 0, i32 3, !dbg !5555
  store ptr %1, ptr %ops1, align 8, !dbg !5556
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5557
  %4 = load ptr, ptr %component, align 8, !dbg !5558
  %dev2 = getelementptr inbounds %struct.component, ptr %4, i32 0, i32 5, !dbg !5559
  store ptr %3, ptr %dev2, align 8, !dbg !5560
  %5 = load i32, ptr %subcomponent.addr, align 4, !dbg !5561
  %6 = load ptr, ptr %component, align 8, !dbg !5562
  %subcomponent3 = getelementptr inbounds %struct.component, ptr %6, i32 0, i32 4, !dbg !5563
  store i32 %5, ptr %subcomponent3, align 8, !dbg !5564
  call void @mutex_lock(ptr noundef @component_mutex) #18, !dbg !5565
  %7 = load ptr, ptr %component, align 8, !dbg !5566
  %node = getelementptr inbounds %struct.component, ptr %7, i32 0, i32 0, !dbg !5567
  call void @list_add_tail(ptr noundef %node, ptr noundef @component_list) #18, !dbg !5568
  %8 = load ptr, ptr %component, align 8, !dbg !5569
  %call4 = call i32 @try_to_bring_up_masters(ptr noundef %8) #18, !dbg !5570
  store i32 %call4, ptr %ret, align 4, !dbg !5571
  %9 = load i32, ptr %ret, align 4, !dbg !5572
  %cmp = icmp slt i32 %9, 0, !dbg !5574
  br i1 %cmp, label %if.then5, label %if.end11, !dbg !5575

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %component, align 8, !dbg !5576
  %adev = getelementptr inbounds %struct.component, ptr %10, i32 0, i32 1, !dbg !5579
  %11 = load ptr, ptr %adev, align 8, !dbg !5579
  %tobool6 = icmp ne ptr %11, null, !dbg !5576
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5580

if.then7:                                         ; preds = %if.then5
  %12 = load ptr, ptr %component, align 8, !dbg !5581
  %adev8 = getelementptr inbounds %struct.component, ptr %12, i32 0, i32 1, !dbg !5582
  %13 = load ptr, ptr %adev8, align 8, !dbg !5582
  %14 = load ptr, ptr %component, align 8, !dbg !5583
  call void @remove_component(ptr noundef %13, ptr noundef %14) #18, !dbg !5584
  br label %if.end9, !dbg !5584

if.end9:                                          ; preds = %if.then7, %if.then5
  %15 = load ptr, ptr %component, align 8, !dbg !5585
  %node10 = getelementptr inbounds %struct.component, ptr %15, i32 0, i32 0, !dbg !5586
  call void @list_del(ptr noundef %node10) #18, !dbg !5587
  %16 = load ptr, ptr %component, align 8, !dbg !5588
  call void @kfree(ptr noundef %16) #18, !dbg !5589
  br label %if.end11, !dbg !5590

if.end11:                                         ; preds = %if.end9, %if.end
  call void @mutex_unlock(ptr noundef @component_mutex) #18, !dbg !5591
  %17 = load i32, ptr %ret, align 4, !dbg !5592
  %cmp12 = icmp slt i32 %17, 0, !dbg !5593
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !5592

cond.true:                                        ; preds = %if.end11
  %18 = load i32, ptr %ret, align 4, !dbg !5594
  br label %cond.end, !dbg !5592

cond.false:                                       ; preds = %if.end11
  br label %cond.end, !dbg !5592

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ 0, %cond.false ], !dbg !5592
  store i32 %cond, ptr %retval, align 4, !dbg !5595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5595

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !5596
  call void @llvm.lifetime.end.p0(i64 8, ptr %component) #19, !dbg !5596
  %19 = load i32, ptr %retval, align 4, !dbg !5596
  ret i32 %19, !dbg !5596
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @component_add(ptr noundef %dev, ptr noundef %ops) #1 align 16 !dbg !5597 {
entry:
  %dev.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5601, metadata !DIExpression()), !dbg !5603
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5602, metadata !DIExpression()), !dbg !5604
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5605
  %1 = load ptr, ptr %ops.addr, align 8, !dbg !5606
  %call = call i32 @__component_add(ptr noundef %0, ptr noundef %1, i32 noundef 0) #18, !dbg !5607
  ret i32 %call, !dbg !5608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @component_del(ptr noundef %dev, ptr noundef %ops) #1 align 16 !dbg !5609 {
entry:
  %dev.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %component = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp37 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5613, metadata !DIExpression()), !dbg !5628
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5614, metadata !DIExpression()), !dbg !5629
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5615, metadata !DIExpression()), !dbg !5631
  call void @llvm.lifetime.start.p0(i64 8, ptr %component) #19, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %component, metadata !5616, metadata !DIExpression()), !dbg !5632
  store ptr null, ptr %component, align 8, !dbg !5632
  call void @mutex_lock(ptr noundef @component_mutex) #18, !dbg !5633
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !5634
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5617, metadata !DIExpression()), !dbg !5634
  %0 = load ptr, ptr @component_list, align 8, !dbg !5634
  store ptr %0, ptr %__mptr, align 8, !dbg !5634
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5634
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5634
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5634
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !5635
  %2 = load ptr, ptr %tmp, align 8, !dbg !5634
  store ptr %2, ptr %c, align 8, !dbg !5635
  br label %for.cond, !dbg !5635

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %c, align 8, !dbg !5636
  %node = getelementptr inbounds %struct.component, ptr %3, i32 0, i32 0, !dbg !5636
  %cmp = icmp eq ptr %node, @component_list, !dbg !5636
  %lnot = xor i1 %cmp, true, !dbg !5636
  br i1 %lnot, label %for.body, label %for.end, !dbg !5635

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c, align 8, !dbg !5637
  %dev1 = getelementptr inbounds %struct.component, ptr %4, i32 0, i32 5, !dbg !5639
  %5 = load ptr, ptr %dev1, align 8, !dbg !5639
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5640
  %cmp2 = icmp eq ptr %5, %6, !dbg !5641
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !5642

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %c, align 8, !dbg !5643
  %ops3 = getelementptr inbounds %struct.component, ptr %7, i32 0, i32 3, !dbg !5644
  %8 = load ptr, ptr %ops3, align 8, !dbg !5644
  %9 = load ptr, ptr %ops.addr, align 8, !dbg !5645
  %cmp4 = icmp eq ptr %8, %9, !dbg !5646
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5647

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %c, align 8, !dbg !5648
  %node5 = getelementptr inbounds %struct.component, ptr %10, i32 0, i32 0, !dbg !5650
  call void @list_del(ptr noundef %node5) #18, !dbg !5651
  %11 = load ptr, ptr %c, align 8, !dbg !5652
  store ptr %11, ptr %component, align 8, !dbg !5653
  br label %for.end, !dbg !5654

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5645

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #19, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5620, metadata !DIExpression()), !dbg !5655
  %12 = load ptr, ptr %c, align 8, !dbg !5655
  %node7 = getelementptr inbounds %struct.component, ptr %12, i32 0, i32 0, !dbg !5655
  %next = getelementptr inbounds %struct.list_head, ptr %node7, i32 0, i32 0, !dbg !5655
  %13 = load ptr, ptr %next, align 8, !dbg !5655
  store ptr %13, ptr %__mptr6, align 8, !dbg !5655
  %14 = load ptr, ptr %__mptr6, align 8, !dbg !5655
  %add.ptr9 = getelementptr i8, ptr %14, i64 0, !dbg !5655
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #19, !dbg !5636
  %15 = load ptr, ptr %tmp8, align 8, !dbg !5655
  store ptr %15, ptr %c, align 8, !dbg !5636
  br label %for.cond, !dbg !5636, !llvm.loop !5656

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load ptr, ptr %component, align 8, !dbg !5658
  %tobool = icmp ne ptr %16, null, !dbg !5658
  br i1 %tobool, label %land.lhs.true10, label %if.end15, !dbg !5660

land.lhs.true10:                                  ; preds = %for.end
  %17 = load ptr, ptr %component, align 8, !dbg !5661
  %adev = getelementptr inbounds %struct.component, ptr %17, i32 0, i32 1, !dbg !5662
  %18 = load ptr, ptr %adev, align 8, !dbg !5662
  %tobool11 = icmp ne ptr %18, null, !dbg !5661
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !5663

if.then12:                                        ; preds = %land.lhs.true10
  %19 = load ptr, ptr %component, align 8, !dbg !5664
  %adev13 = getelementptr inbounds %struct.component, ptr %19, i32 0, i32 1, !dbg !5666
  %20 = load ptr, ptr %adev13, align 8, !dbg !5666
  call void @take_down_aggregate_device(ptr noundef %20) #18, !dbg !5667
  %21 = load ptr, ptr %component, align 8, !dbg !5668
  %adev14 = getelementptr inbounds %struct.component, ptr %21, i32 0, i32 1, !dbg !5669
  %22 = load ptr, ptr %adev14, align 8, !dbg !5669
  %23 = load ptr, ptr %component, align 8, !dbg !5670
  call void @remove_component(ptr noundef %22, ptr noundef %23) #18, !dbg !5671
  br label %if.end15, !dbg !5672

if.end15:                                         ; preds = %if.then12, %land.lhs.true10, %for.end
  call void @mutex_unlock(ptr noundef @component_mutex) #18, !dbg !5673
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5623, metadata !DIExpression()), !dbg !5674
  %24 = load ptr, ptr %component, align 8, !dbg !5674
  %tobool16 = icmp ne ptr %24, null, !dbg !5674
  %lnot17 = xor i1 %tobool16, true, !dbg !5674
  %lnot18 = xor i1 %lnot17, true, !dbg !5674
  %lnot19 = xor i1 %lnot18, true, !dbg !5674
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !5674
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5674
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !5675
  %tobool20 = icmp ne i32 %25, 0, !dbg !5675
  %lnot21 = xor i1 %tobool20, true, !dbg !5675
  %lnot23 = xor i1 %lnot21, true, !dbg !5675
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !5675
  %conv = sext i32 %lnot.ext24 to i64, !dbg !5675
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5675
  %tobool25 = icmp ne i64 %expval, 0, !dbg !5675
  br i1 %tobool25, label %if.then26, label %if.end36, !dbg !5674

if.then26:                                        ; preds = %if.end15
  br label %do.body, !dbg !5675

do.body:                                          ; preds = %if.then26
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #19, !dbg !5676
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5625, metadata !DIExpression()), !dbg !5676
  store i32 2305, ptr %__flags, align 4, !dbg !5676
  br label %do.body27, !dbg !5676

do.body27:                                        ; preds = %do.body
  br label %do.cond, !dbg !5677

do.cond:                                          ; preds = %do.body27
  br label %do.end, !dbg !5677

do.end:                                           ; preds = %do.cond
  br label %do.body28, !dbg !5676

do.body28:                                        ; preds = %do.end
  %26 = load i32, ptr %__flags, align 4, !dbg !5679
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 821, i32 %26, i64 12) #19, !dbg !5679, !srcloc !5681
  br label %do.cond29, !dbg !5679

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !5679

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !5676

do.body31:                                        ; preds = %do.end30
  br label %do.cond32, !dbg !5682

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !5682

do.end33:                                         ; preds = %do.cond32
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #19, !dbg !5675
  br label %do.cond34, !dbg !5676

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !5676

do.end35:                                         ; preds = %do.cond34
  br label %if.end36, !dbg !5676

if.end36:                                         ; preds = %do.end35, %if.end15
  %27 = load i32, ptr %__ret_warn_on, align 4, !dbg !5674
  %tobool38 = icmp ne i32 %27, 0, !dbg !5674
  %lnot39 = xor i1 %tobool38, true, !dbg !5674
  %lnot41 = xor i1 %lnot39, true, !dbg !5674
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5674
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5674
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5674
  store i64 %expval44, ptr %tmp37, align 8, !dbg !5675
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #19, !dbg !5684
  %28 = load i64, ptr %tmp37, align 8, !dbg !5674
  %29 = load ptr, ptr %component, align 8, !dbg !5685
  call void @kfree(ptr noundef %29) #18, !dbg !5686
  call void @llvm.lifetime.end.p0(i64 8, ptr %component) #19, !dbg !5687
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !5687
  ret void, !dbg !5687
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5688 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5694
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !5695
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5696
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5697
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5698
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5699
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5700
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5701
  ret void, !dbg !5702
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @remove_component(ptr noundef %adev, ptr noundef %c) #1 align 16 !dbg !5703 {
entry:
  %adev.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !5707, metadata !DIExpression()), !dbg !5710
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5708, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5709, metadata !DIExpression()), !dbg !5713
  store i64 0, ptr %i, align 8, !dbg !5714
  br label %for.cond, !dbg !5716

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !5717
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !5719
  %match = getelementptr inbounds %struct.aggregate_device, ptr %1, i32 0, i32 4, !dbg !5720
  %2 = load ptr, ptr %match, align 8, !dbg !5720
  %num = getelementptr inbounds %struct.component_match, ptr %2, i32 0, i32 1, !dbg !5721
  %3 = load i64, ptr %num, align 8, !dbg !5721
  %cmp = icmp ult i64 %0, %3, !dbg !5722
  br i1 %cmp, label %for.body, label %for.end, !dbg !5723

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !5724
  %match1 = getelementptr inbounds %struct.aggregate_device, ptr %4, i32 0, i32 4, !dbg !5726
  %5 = load ptr, ptr %match1, align 8, !dbg !5726
  %compare = getelementptr inbounds %struct.component_match, ptr %5, i32 0, i32 2, !dbg !5727
  %6 = load ptr, ptr %compare, align 8, !dbg !5727
  %7 = load i64, ptr %i, align 8, !dbg !5728
  %arrayidx = getelementptr %struct.component_match_array, ptr %6, i64 %7, !dbg !5724
  %component = getelementptr inbounds %struct.component_match_array, ptr %arrayidx, i32 0, i32 4, !dbg !5729
  %8 = load ptr, ptr %component, align 8, !dbg !5729
  %9 = load ptr, ptr %c.addr, align 8, !dbg !5730
  %cmp2 = icmp eq ptr %8, %9, !dbg !5731
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5732

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %adev.addr, align 8, !dbg !5733
  %match3 = getelementptr inbounds %struct.aggregate_device, ptr %10, i32 0, i32 4, !dbg !5734
  %11 = load ptr, ptr %match3, align 8, !dbg !5734
  %compare4 = getelementptr inbounds %struct.component_match, ptr %11, i32 0, i32 2, !dbg !5735
  %12 = load ptr, ptr %compare4, align 8, !dbg !5735
  %13 = load i64, ptr %i, align 8, !dbg !5736
  %arrayidx5 = getelementptr %struct.component_match_array, ptr %12, i64 %13, !dbg !5733
  %component6 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx5, i32 0, i32 4, !dbg !5737
  store ptr null, ptr %component6, align 8, !dbg !5738
  br label %if.end, !dbg !5733

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5730

for.inc:                                          ; preds = %if.end
  %14 = load i64, ptr %i, align 8, !dbg !5739
  %inc = add i64 %14, 1, !dbg !5739
  store i64 %inc, ptr %i, align 8, !dbg !5739
  br label %for.cond, !dbg !5740, !llvm.loop !5741

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !5743
  ret void, !dbg !5743
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5744 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5747 dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5751 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5756, metadata !DIExpression()), !dbg !5757
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5758
  %1 = ptrtoint ptr %0 to i64, !dbg !5758
  %2 = inttoptr i64 %1 to ptr, !dbg !5758
  %3 = ptrtoint ptr %2 to i64, !dbg !5758
  %cmp = icmp uge i64 %3, -4095, !dbg !5758
  %lnot = xor i1 %cmp, true, !dbg !5758
  %lnot1 = xor i1 %lnot, true, !dbg !5758
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5758
  %conv = sext i32 %lnot.ext to i64, !dbg !5758
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5758
  %tobool = icmp ne i64 %expval, 0, !dbg !5758
  ret i1 %tobool, !dbg !5759
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5760 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_component_match_release(ptr noundef %parent, ptr noundef %res) #1 align 16 !dbg !5764 {
entry:
  %parent.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %match = alloca ptr, align 8
  %i = alloca i32, align 4
  %mc = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5766, metadata !DIExpression()), !dbg !5774
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5767, metadata !DIExpression()), !dbg !5775
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #19, !dbg !5776
  call void @llvm.dbg.declare(metadata ptr %match, metadata !5768, metadata !DIExpression()), !dbg !5777
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5778
  store ptr %0, ptr %match, align 8, !dbg !5777
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #19, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5769, metadata !DIExpression()), !dbg !5780
  store i32 0, ptr %i, align 4, !dbg !5781
  br label %for.cond, !dbg !5782

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5783
  %conv = zext i32 %1 to i64, !dbg !5783
  %2 = load ptr, ptr %match, align 8, !dbg !5784
  %num = getelementptr inbounds %struct.component_match, ptr %2, i32 0, i32 1, !dbg !5785
  %3 = load i64, ptr %num, align 8, !dbg !5785
  %cmp = icmp ult i64 %conv, %3, !dbg !5786
  br i1 %cmp, label %for.body, label %for.end, !dbg !5787

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #19, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !5770, metadata !DIExpression()), !dbg !5789
  %4 = load ptr, ptr %match, align 8, !dbg !5790
  %compare = getelementptr inbounds %struct.component_match, ptr %4, i32 0, i32 2, !dbg !5791
  %5 = load ptr, ptr %compare, align 8, !dbg !5791
  %6 = load i32, ptr %i, align 4, !dbg !5792
  %idxprom = zext i32 %6 to i64, !dbg !5790
  %arrayidx = getelementptr %struct.component_match_array, ptr %5, i64 %idxprom, !dbg !5790
  store ptr %arrayidx, ptr %mc, align 8, !dbg !5789
  %7 = load ptr, ptr %mc, align 8, !dbg !5793
  %release = getelementptr inbounds %struct.component_match_array, ptr %7, i32 0, i32 3, !dbg !5795
  %8 = load ptr, ptr %release, align 8, !dbg !5795
  %tobool = icmp ne ptr %8, null, !dbg !5793
  br i1 %tobool, label %if.then, label %if.end, !dbg !5796

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %mc, align 8, !dbg !5797
  %release2 = getelementptr inbounds %struct.component_match_array, ptr %9, i32 0, i32 3, !dbg !5798
  %10 = load ptr, ptr %release2, align 8, !dbg !5798
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !5799
  %12 = load ptr, ptr %mc, align 8, !dbg !5800
  %data = getelementptr inbounds %struct.component_match_array, ptr %12, i32 0, i32 0, !dbg !5801
  %13 = load ptr, ptr %data, align 8, !dbg !5801
  call void %10(ptr noundef %11, ptr noundef %13) #18, !dbg !5797
  br label %if.end, !dbg !5797

if.end:                                           ; preds = %if.then, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #19, !dbg !5802
  br label %for.inc, !dbg !5803

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !dbg !5804
  %inc = add i32 %14, 1, !dbg !5804
  store i32 %inc, ptr %i, align 4, !dbg !5804
  br label %for.cond, !dbg !5805, !llvm.loop !5806

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %match, align 8, !dbg !5808
  %compare3 = getelementptr inbounds %struct.component_match, ptr %15, i32 0, i32 2, !dbg !5809
  %16 = load ptr, ptr %compare3, align 8, !dbg !5809
  call void @kfree(ptr noundef %16) #18, !dbg !5810
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #19, !dbg !5811
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #19, !dbg !5811
  ret void, !dbg !5811
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !5812 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5816, metadata !DIExpression()), !dbg !5817
  %0 = load i64, ptr %error.addr, align 8, !dbg !5818
  %1 = inttoptr i64 %0 to ptr, !dbg !5819
  ret ptr %1, !dbg !5820
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5821 dso_local void @devres_add(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5822 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5826, metadata !DIExpression()), !dbg !5830
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5827, metadata !DIExpression()), !dbg !5831
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5828, metadata !DIExpression()), !dbg !5832
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #19, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5829, metadata !DIExpression()), !dbg !5834
  %0 = load i64, ptr %n.addr, align 8, !dbg !5835
  %1 = load i64, ptr %size.addr, align 8, !dbg !5835
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5835
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5835
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5835
  store i64 %4, ptr %bytes, align 8, !dbg !5835
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !5835
  %lnot = xor i1 %call, true, !dbg !5835
  %lnot1 = xor i1 %lnot, true, !dbg !5835
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5835
  %conv = sext i32 %lnot.ext to i64, !dbg !5835
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5835
  %tobool = icmp ne i64 %expval, 0, !dbg !5835
  br i1 %tobool, label %if.then, label %if.end, !dbg !5837

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5839
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !5841
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !5842

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !5843
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5844
  br i1 %8, label %if.then2, label %if.end4, !dbg !5845

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !5846
  %10 = load i32, ptr %flags.addr, align 4, !dbg !5847
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !5848
  store ptr %call3, ptr %retval, align 8, !dbg !5849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5849

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !5850
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5851
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !5852
  store ptr %call5, ptr %retval, align 8, !dbg !5853
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5853

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #19, !dbg !5854
  %13 = load ptr, ptr %retval, align 8, !dbg !5854
  ret ptr %13, !dbg !5854
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !5855 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5862, !range !5163, !noundef !887
  %tobool = trunc i8 %0 to i1, !dbg !5862
  %lnot = xor i1 %tobool, true, !dbg !5862
  %lnot1 = xor i1 %lnot, true, !dbg !5862
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5862
  %conv = sext i32 %lnot.ext to i64, !dbg !5862
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5862
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5862
  ret i1 %tobool2, !dbg !5863
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #2

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !5864 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5866, metadata !DIExpression()), !dbg !5871
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5867, metadata !DIExpression()), !dbg !5872
  %0 = load i64, ptr %size.addr, align 8, !dbg !5873
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5874
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5875

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5876
  %tobool = icmp ne i64 %2, 0, !dbg !5876
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5877

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #19, !dbg !5878
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5868, metadata !DIExpression()), !dbg !5879
  %3 = load i64, ptr %size.addr, align 8, !dbg !5880
  %cmp = icmp ugt i64 %3, 8192, !dbg !5882
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5883

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5884
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5885
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5886
  store ptr %call, ptr %retval, align 8, !dbg !5887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5887

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5888
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5888
  store i32 %call2, ptr %index, align 4, !dbg !5889
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5890
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5891
  %9 = ptrtoint ptr %8 to i64, !dbg !5891
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5892
  %idxprom = zext i32 %call3 to i64, !dbg !5893
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5893
  %10 = load i32, ptr %index, align 4, !dbg !5894
  %idxprom4 = zext i32 %10 to i64, !dbg !5893
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5893
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5893
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5895
  %13 = load i64, ptr %size.addr, align 8, !dbg !5896
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #22, !dbg !5897
  store ptr %call6, ptr %retval, align 8, !dbg !5898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5898

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #19, !dbg !5899
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5900
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5901
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5902
  store ptr %call8, ptr %retval, align 8, !dbg !5903
  br label %return, !dbg !5903

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5904
  ret ptr %16, !dbg !5904
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5905 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5906 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !5907 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5911, metadata !DIExpression()), !dbg !5913
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5912, metadata !DIExpression()), !dbg !5914
  %0 = load i64, ptr %size.addr, align 8, !dbg !5915
  %tobool = icmp ne i64 %0, 0, !dbg !5915
  br i1 %tobool, label %if.end, label %if.then, !dbg !5917

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5919
  %cmp = icmp ule i64 %1, 8, !dbg !5921
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5922

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5923
  br label %return, !dbg !5923

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5924
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5926
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5927

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5928
  %cmp4 = icmp ule i64 %3, 96, !dbg !5929
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5930

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5931
  br label %return, !dbg !5931

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5932
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5934
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5935

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5936
  %cmp9 = icmp ule i64 %5, 192, !dbg !5937
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5938

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5939
  br label %return, !dbg !5939

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5940
  %cmp12 = icmp ule i64 %6, 8, !dbg !5942
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5943

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5944
  br label %return, !dbg !5944

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5945
  %cmp15 = icmp ule i64 %7, 16, !dbg !5947
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5948

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5949
  br label %return, !dbg !5949

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5950
  %cmp18 = icmp ule i64 %8, 32, !dbg !5952
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5953

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5954
  br label %return, !dbg !5954

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5955
  %cmp21 = icmp ule i64 %9, 64, !dbg !5957
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5958

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5959
  br label %return, !dbg !5959

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5960
  %cmp24 = icmp ule i64 %10, 128, !dbg !5962
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5963

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5964
  br label %return, !dbg !5964

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5965
  %cmp27 = icmp ule i64 %11, 256, !dbg !5967
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5968

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5969
  br label %return, !dbg !5969

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5970
  %cmp30 = icmp ule i64 %12, 512, !dbg !5972
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5973

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5974
  br label %return, !dbg !5974

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5975
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5977
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5978

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5979
  br label %return, !dbg !5979

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5980
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5982
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5983

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5984
  br label %return, !dbg !5984

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5985
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5987
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5988

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5989
  br label %return, !dbg !5989

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5990
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5992
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5993

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5994
  br label %return, !dbg !5994

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5995
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5997
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5998

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5999
  br label %return, !dbg !5999

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6000
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6002
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6003

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6004
  br label %return, !dbg !6004

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6005
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6007
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6008

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6009
  br label %return, !dbg !6009

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6010
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6012
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6013

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6014
  br label %return, !dbg !6014

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6015
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6017
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6018

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6019
  br label %return, !dbg !6019

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6020
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6022
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6023

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6024
  br label %return, !dbg !6024

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6025
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6027
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6028

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6029
  br label %return, !dbg !6029

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6030
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6032
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6033

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6034
  br label %return, !dbg !6034

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6035, !range !5163, !noundef !887
  %tobool69 = trunc i8 %25 to i1, !dbg !6035
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6037

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6038

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #23, !dbg !6039, !srcloc !6042
  unreachable, !dbg !6039

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6043

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6044

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6045

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6047

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6045

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #19, !dbg !6049, !srcloc !6051
  br label %do.end75, !dbg !6049

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6045

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6052
  br label %return, !dbg !6052

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6053
  ret i32 %26, !dbg !6053
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6054 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !6060 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6065, metadata !DIExpression()), !dbg !6067
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6068
  %and = and i32 %0, 17, !dbg !6068
  %cmp = icmp eq i32 %and, 0, !dbg !6068
  %lnot = xor i1 %cmp, true, !dbg !6068
  %lnot1 = xor i1 %lnot, true, !dbg !6068
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6068
  %conv = sext i32 %lnot.ext to i64, !dbg !6068
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6068
  %tobool = icmp ne i64 %expval, 0, !dbg !6068
  br i1 %tobool, label %if.then, label %if.end, !dbg !6070

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6072
  %and2 = and i32 %1, 1, !dbg !6074
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6074
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6075

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6076
  br label %return, !dbg !6076

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6077
  br label %return, !dbg !6077

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6079
  ret i32 %2, !dbg !6079
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6080 dso_local void @__compiletime_assert_204() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6081 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #4 align 16 !dbg !6084 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6090
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6092
  %1 = load ptr, ptr %init_name, align 8, !dbg !6092
  %tobool = icmp ne ptr %1, null, !dbg !6090
  br i1 %tobool, label %if.then, label %if.end, !dbg !6093

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6094
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6095
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6095
  store ptr %3, ptr %retval, align 8, !dbg !6096
  br label %return, !dbg !6096

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6097
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6098
  %call = call ptr @kobject_name(ptr noundef %kobj) #18, !dbg !6099
  store ptr %call, ptr %retval, align 8, !dbg !6100
  br label %return, !dbg !6100

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6101
  ret ptr %5, !dbg !6101
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !6102 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6104, metadata !DIExpression()), !dbg !6105
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6106
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6107
  %1 = load ptr, ptr %name, align 8, !dbg !6107
  ret ptr %1, !dbg !6108
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @seq_read(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @component_devices_open(ptr noundef %inode, ptr noundef %file) #1 align 16 !dbg !6109 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6111, metadata !DIExpression()), !dbg !6113
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load ptr, ptr %file.addr, align 8, !dbg !6113
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !6113
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 47, !dbg !6113
  %2 = load ptr, ptr %i_private, align 8, !dbg !6113
  %call = call i32 @single_open(ptr noundef %0, ptr noundef @component_devices_show, ptr noundef %2) #18, !dbg !6113
  ret i32 %call, !dbg !6113
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6114 dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @component_devices_show(ptr noundef %s, ptr noundef %data) #1 align 16 !dbg !6117 {
entry:
  %s.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %m = alloca ptr, align 8
  %match = alloca ptr, align 8
  %i = alloca i64, align 8
  %component = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6119, metadata !DIExpression()), !dbg !6128
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6120, metadata !DIExpression()), !dbg !6129
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #19, !dbg !6130
  call void @llvm.dbg.declare(metadata ptr %m, metadata !6121, metadata !DIExpression()), !dbg !6131
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6132
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !6133
  %1 = load ptr, ptr %private, align 8, !dbg !6133
  store ptr %1, ptr %m, align 8, !dbg !6131
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #19, !dbg !6134
  call void @llvm.dbg.declare(metadata ptr %match, metadata !6122, metadata !DIExpression()), !dbg !6135
  %2 = load ptr, ptr %m, align 8, !dbg !6136
  %match1 = getelementptr inbounds %struct.aggregate_device, ptr %2, i32 0, i32 4, !dbg !6137
  %3 = load ptr, ptr %match1, align 8, !dbg !6137
  store ptr %3, ptr %match, align 8, !dbg !6135
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !6138
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6123, metadata !DIExpression()), !dbg !6139
  call void @mutex_lock(ptr noundef @component_mutex) #18, !dbg !6140
  %4 = load ptr, ptr %s.addr, align 8, !dbg !6141
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %4, ptr noundef @.str.4, ptr noundef @.str.5, ptr noundef @.str.6) #18, !dbg !6142
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6143
  call void @seq_puts(ptr noundef %5, ptr noundef @.str.7) #18, !dbg !6144
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6145
  %7 = load ptr, ptr %m, align 8, !dbg !6146
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %7, i32 0, i32 3, !dbg !6147
  %8 = load ptr, ptr %parent, align 8, !dbg !6147
  %call = call ptr @dev_name(ptr noundef %8) #18, !dbg !6148
  %9 = load ptr, ptr %m, align 8, !dbg !6149
  %bound = getelementptr inbounds %struct.aggregate_device, ptr %9, i32 0, i32 1, !dbg !6150
  %10 = load i8, ptr %bound, align 8, !dbg !6150, !range !5163, !noundef !887
  %tobool = trunc i8 %10 to i1, !dbg !6150
  %11 = zext i1 %tobool to i64, !dbg !6149
  %cond = select i1 %tobool, ptr @.str.9, ptr @.str.10, !dbg !6149
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef @.str.8, ptr noundef %call, ptr noundef %cond) #18, !dbg !6151
  %12 = load ptr, ptr %s.addr, align 8, !dbg !6152
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef @.str.4, ptr noundef @.str.11, ptr noundef @.str.6) #18, !dbg !6153
  %13 = load ptr, ptr %s.addr, align 8, !dbg !6154
  call void @seq_puts(ptr noundef %13, ptr noundef @.str.7) #18, !dbg !6155
  store i64 0, ptr %i, align 8, !dbg !6156
  br label %for.cond, !dbg !6157

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i64, ptr %i, align 8, !dbg !6158
  %15 = load ptr, ptr %match, align 8, !dbg !6159
  %num = getelementptr inbounds %struct.component_match, ptr %15, i32 0, i32 1, !dbg !6160
  %16 = load i64, ptr %num, align 8, !dbg !6160
  %cmp = icmp ult i64 %14, %16, !dbg !6161
  br i1 %cmp, label %for.body, label %for.end, !dbg !6162

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %component) #19, !dbg !6163
  call void @llvm.dbg.declare(metadata ptr %component, metadata !6124, metadata !DIExpression()), !dbg !6164
  %17 = load ptr, ptr %match, align 8, !dbg !6165
  %compare = getelementptr inbounds %struct.component_match, ptr %17, i32 0, i32 2, !dbg !6166
  %18 = load ptr, ptr %compare, align 8, !dbg !6166
  %19 = load i64, ptr %i, align 8, !dbg !6167
  %arrayidx = getelementptr %struct.component_match_array, ptr %18, i64 %19, !dbg !6165
  %component2 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx, i32 0, i32 4, !dbg !6168
  %20 = load ptr, ptr %component2, align 8, !dbg !6168
  store ptr %20, ptr %component, align 8, !dbg !6164
  %21 = load ptr, ptr %s.addr, align 8, !dbg !6169
  %22 = load ptr, ptr %component, align 8, !dbg !6170
  %tobool3 = icmp ne ptr %22, null, !dbg !6170
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !6170

cond.true:                                        ; preds = %for.body
  %23 = load ptr, ptr %component, align 8, !dbg !6171
  %dev = getelementptr inbounds %struct.component, ptr %23, i32 0, i32 5, !dbg !6172
  %24 = load ptr, ptr %dev, align 8, !dbg !6172
  %call4 = call ptr @dev_name(ptr noundef %24) #18, !dbg !6173
  br label %cond.end, !dbg !6170

cond.false:                                       ; preds = %for.body
  br label %cond.end, !dbg !6170

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi ptr [ %call4, %cond.true ], [ @.str.12, %cond.false ], !dbg !6170
  %25 = load ptr, ptr %component, align 8, !dbg !6174
  %tobool6 = icmp ne ptr %25, null, !dbg !6174
  br i1 %tobool6, label %cond.true7, label %cond.false11, !dbg !6174

cond.true7:                                       ; preds = %cond.end
  %26 = load ptr, ptr %component, align 8, !dbg !6175
  %bound8 = getelementptr inbounds %struct.component, ptr %26, i32 0, i32 2, !dbg !6176
  %27 = load i8, ptr %bound8, align 8, !dbg !6176, !range !5163, !noundef !887
  %tobool9 = trunc i8 %27 to i1, !dbg !6176
  %28 = zext i1 %tobool9 to i64, !dbg !6175
  %cond10 = select i1 %tobool9, ptr @.str.9, ptr @.str.10, !dbg !6175
  br label %cond.end12, !dbg !6174

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12, !dbg !6174

cond.end12:                                       ; preds = %cond.false11, %cond.true7
  %cond13 = phi ptr [ %cond10, %cond.true7 ], [ @.str.13, %cond.false11 ], !dbg !6174
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.4, ptr noundef %cond5, ptr noundef %cond13) #18, !dbg !6177
  call void @llvm.lifetime.end.p0(i64 8, ptr %component) #19, !dbg !6178
  br label %for.inc, !dbg !6179

for.inc:                                          ; preds = %cond.end12
  %29 = load i64, ptr %i, align 8, !dbg !6180
  %inc = add i64 %29, 1, !dbg !6180
  store i64 %inc, ptr %i, align 8, !dbg !6180
  br label %for.cond, !dbg !6181, !llvm.loop !6182

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @component_mutex) #18, !dbg !6184
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #19, !dbg !6185
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #19, !dbg !6185
  ret i32 0, !dbg !6186
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6187 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6190 dso_local void @seq_puts(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6193 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6197, metadata !DIExpression()), !dbg !6200
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6198, metadata !DIExpression()), !dbg !6201
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6199, metadata !DIExpression()), !dbg !6202
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6203
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6205
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6206
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !6207
  br i1 %call, label %if.end, label %if.then, !dbg !6208

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6209

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6210
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6211
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6212
  store ptr %3, ptr %prev1, align 8, !dbg !6213
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6214
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6215
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6216
  store ptr %5, ptr %next2, align 8, !dbg !6217
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6218
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6219
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6220
  store ptr %7, ptr %prev3, align 8, !dbg !6221
  br label %do.body, !dbg !6222

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6223

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6225

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6223

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6227
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6227
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6227
  store volatile ptr %9, ptr %next6, align 8, !dbg !6227
  br label %do.end7, !dbg !6227

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6223

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6229
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6230 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6234, metadata !DIExpression()), !dbg !6237
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6235, metadata !DIExpression()), !dbg !6238
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6236, metadata !DIExpression()), !dbg !6239
  ret i1 true, !dbg !6240
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_components(ptr noundef %adev) #1 align 16 !dbg !6241 {
entry:
  %adev.addr = alloca ptr, align 8
  %match = alloca ptr, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %mc = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6245, metadata !DIExpression()), !dbg !6254
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #19, !dbg !6255
  call void @llvm.dbg.declare(metadata ptr %match, metadata !6246, metadata !DIExpression()), !dbg !6256
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !6257
  %match1 = getelementptr inbounds %struct.aggregate_device, ptr %0, i32 0, i32 4, !dbg !6258
  %1 = load ptr, ptr %match1, align 8, !dbg !6258
  store ptr %1, ptr %match, align 8, !dbg !6256
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #19, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6247, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6248, metadata !DIExpression()), !dbg !6262
  store i32 0, ptr %ret, align 4, !dbg !6262
  store i64 0, ptr %i, align 8, !dbg !6263
  br label %for.cond, !dbg !6264

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8, !dbg !6265
  %3 = load ptr, ptr %match, align 8, !dbg !6266
  %num = getelementptr inbounds %struct.component_match, ptr %3, i32 0, i32 1, !dbg !6267
  %4 = load i64, ptr %num, align 8, !dbg !6267
  %cmp = icmp ult i64 %2, %4, !dbg !6268
  br i1 %cmp, label %for.body, label %for.end, !dbg !6269

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %mc) #19, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %mc, metadata !6249, metadata !DIExpression()), !dbg !6271
  %5 = load ptr, ptr %match, align 8, !dbg !6272
  %compare = getelementptr inbounds %struct.component_match, ptr %5, i32 0, i32 2, !dbg !6273
  %6 = load ptr, ptr %compare, align 8, !dbg !6273
  %7 = load i64, ptr %i, align 8, !dbg !6274
  %arrayidx = getelementptr %struct.component_match_array, ptr %6, i64 %7, !dbg !6272
  store ptr %arrayidx, ptr %mc, align 8, !dbg !6271
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6253, metadata !DIExpression()), !dbg !6276
  %8 = load ptr, ptr %match, align 8, !dbg !6277
  %compare2 = getelementptr inbounds %struct.component_match, ptr %8, i32 0, i32 2, !dbg !6279
  %9 = load ptr, ptr %compare2, align 8, !dbg !6279
  %10 = load i64, ptr %i, align 8, !dbg !6280
  %arrayidx3 = getelementptr %struct.component_match_array, ptr %9, i64 %10, !dbg !6277
  %component = getelementptr inbounds %struct.component_match_array, ptr %arrayidx3, i32 0, i32 4, !dbg !6281
  %11 = load ptr, ptr %component, align 8, !dbg !6281
  %tobool = icmp ne ptr %11, null, !dbg !6277
  br i1 %tobool, label %if.then, label %if.end, !dbg !6282

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6283

if.end:                                           ; preds = %for.body
  %12 = load ptr, ptr %adev.addr, align 8, !dbg !6284
  %13 = load ptr, ptr %mc, align 8, !dbg !6285
  %call = call ptr @find_component(ptr noundef %12, ptr noundef %13) #18, !dbg !6286
  store ptr %call, ptr %c, align 8, !dbg !6287
  %14 = load ptr, ptr %c, align 8, !dbg !6288
  %tobool4 = icmp ne ptr %14, null, !dbg !6288
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6290

if.then5:                                         ; preds = %if.end
  store i32 -6, ptr %ret, align 4, !dbg !6291
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6293

if.end6:                                          ; preds = %if.end
  %15 = load ptr, ptr %c, align 8, !dbg !6294
  %adev7 = getelementptr inbounds %struct.component, ptr %15, i32 0, i32 1, !dbg !6295
  %16 = load ptr, ptr %adev7, align 8, !dbg !6295
  %tobool8 = icmp ne ptr %16, null, !dbg !6296
  %lnot = xor i1 %tobool8, true, !dbg !6296
  %lnot9 = xor i1 %lnot, true, !dbg !6297
  %17 = load ptr, ptr %match, align 8, !dbg !6298
  %compare10 = getelementptr inbounds %struct.component_match, ptr %17, i32 0, i32 2, !dbg !6299
  %18 = load ptr, ptr %compare10, align 8, !dbg !6299
  %19 = load i64, ptr %i, align 8, !dbg !6300
  %arrayidx11 = getelementptr %struct.component_match_array, ptr %18, i64 %19, !dbg !6298
  %duplicate = getelementptr inbounds %struct.component_match_array, ptr %arrayidx11, i32 0, i32 5, !dbg !6301
  %frombool = zext i1 %lnot9 to i8, !dbg !6302
  store i8 %frombool, ptr %duplicate, align 8, !dbg !6302
  %20 = load ptr, ptr %c, align 8, !dbg !6303
  %21 = load ptr, ptr %match, align 8, !dbg !6304
  %compare12 = getelementptr inbounds %struct.component_match, ptr %21, i32 0, i32 2, !dbg !6305
  %22 = load ptr, ptr %compare12, align 8, !dbg !6305
  %23 = load i64, ptr %i, align 8, !dbg !6306
  %arrayidx13 = getelementptr %struct.component_match_array, ptr %22, i64 %23, !dbg !6304
  %component14 = getelementptr inbounds %struct.component_match_array, ptr %arrayidx13, i32 0, i32 4, !dbg !6307
  store ptr %20, ptr %component14, align 8, !dbg !6308
  %24 = load ptr, ptr %adev.addr, align 8, !dbg !6309
  %25 = load ptr, ptr %c, align 8, !dbg !6310
  %adev15 = getelementptr inbounds %struct.component, ptr %25, i32 0, i32 1, !dbg !6311
  store ptr %24, ptr %adev15, align 8, !dbg !6312
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6313
  br label %cleanup, !dbg !6313

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !6313
  call void @llvm.lifetime.end.p0(i64 8, ptr %mc) #19, !dbg !6313
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6314

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %26 = load i64, ptr %i, align 8, !dbg !6315
  %inc = add i64 %26, 1, !dbg !6315
  store i64 %inc, ptr %i, align 8, !dbg !6315
  br label %for.cond, !dbg !6316, !llvm.loop !6317

for.end:                                          ; preds = %cleanup, %for.cond
  %27 = load i32, ptr %ret, align 4, !dbg !6319
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #19, !dbg !6320
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #19, !dbg !6320
  ret i32 %27, !dbg !6321

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6322 dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6325 dso_local i32 @devres_release_group(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6326 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6330 dso_local void @devres_close_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_component(ptr noundef %adev, ptr noundef %mc) #1 align 16 !dbg !6331 {
entry:
  %retval = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %mc.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr19 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !6335, metadata !DIExpression()), !dbg !6344
  store ptr %mc, ptr %mc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mc.addr, metadata !6336, metadata !DIExpression()), !dbg !6345
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #19, !dbg !6346
  call void @llvm.dbg.declare(metadata ptr %c, metadata !6337, metadata !DIExpression()), !dbg !6347
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !6348
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6338, metadata !DIExpression()), !dbg !6348
  %0 = load ptr, ptr @component_list, align 8, !dbg !6348
  store ptr %0, ptr %__mptr, align 8, !dbg !6348
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6348
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6348
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !6349
  %2 = load ptr, ptr %tmp, align 8, !dbg !6348
  store ptr %2, ptr %c, align 8, !dbg !6349
  br label %for.cond, !dbg !6349

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %c, align 8, !dbg !6350
  %node = getelementptr inbounds %struct.component, ptr %3, i32 0, i32 0, !dbg !6350
  %cmp = icmp eq ptr %node, @component_list, !dbg !6350
  %lnot = xor i1 %cmp, true, !dbg !6350
  br i1 %lnot, label %for.body, label %for.end, !dbg !6349

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c, align 8, !dbg !6351
  %adev1 = getelementptr inbounds %struct.component, ptr %4, i32 0, i32 1, !dbg !6354
  %5 = load ptr, ptr %adev1, align 8, !dbg !6354
  %tobool = icmp ne ptr %5, null, !dbg !6351
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6355

land.lhs.true:                                    ; preds = %for.body
  %6 = load ptr, ptr %c, align 8, !dbg !6356
  %adev2 = getelementptr inbounds %struct.component, ptr %6, i32 0, i32 1, !dbg !6357
  %7 = load ptr, ptr %adev2, align 8, !dbg !6357
  %8 = load ptr, ptr %adev.addr, align 8, !dbg !6358
  %cmp3 = icmp ne ptr %7, %8, !dbg !6359
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6360

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !6361

if.end:                                           ; preds = %land.lhs.true, %for.body
  %9 = load ptr, ptr %mc.addr, align 8, !dbg !6362
  %compare = getelementptr inbounds %struct.component_match_array, ptr %9, i32 0, i32 1, !dbg !6364
  %10 = load ptr, ptr %compare, align 8, !dbg !6364
  %tobool4 = icmp ne ptr %10, null, !dbg !6362
  br i1 %tobool4, label %land.lhs.true5, label %if.end9, !dbg !6365

land.lhs.true5:                                   ; preds = %if.end
  %11 = load ptr, ptr %mc.addr, align 8, !dbg !6366
  %compare6 = getelementptr inbounds %struct.component_match_array, ptr %11, i32 0, i32 1, !dbg !6367
  %12 = load ptr, ptr %compare6, align 8, !dbg !6367
  %13 = load ptr, ptr %c, align 8, !dbg !6368
  %dev = getelementptr inbounds %struct.component, ptr %13, i32 0, i32 5, !dbg !6369
  %14 = load ptr, ptr %dev, align 8, !dbg !6369
  %15 = load ptr, ptr %mc.addr, align 8, !dbg !6370
  %data = getelementptr inbounds %struct.component_match_array, ptr %15, i32 0, i32 0, !dbg !6371
  %16 = load ptr, ptr %data, align 8, !dbg !6371
  %call = call i32 %12(ptr noundef %14, ptr noundef %16) #18, !dbg !6366
  %tobool7 = icmp ne i32 %call, 0, !dbg !6366
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !6372

if.then8:                                         ; preds = %land.lhs.true5
  %17 = load ptr, ptr %c, align 8, !dbg !6373
  store ptr %17, ptr %retval, align 8, !dbg !6374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6374

if.end9:                                          ; preds = %land.lhs.true5, %if.end
  %18 = load ptr, ptr %mc.addr, align 8, !dbg !6375
  %compare_typed = getelementptr inbounds %struct.component_match_array, ptr %18, i32 0, i32 2, !dbg !6377
  %19 = load ptr, ptr %compare_typed, align 8, !dbg !6377
  %tobool10 = icmp ne ptr %19, null, !dbg !6375
  br i1 %tobool10, label %land.lhs.true11, label %if.end18, !dbg !6378

land.lhs.true11:                                  ; preds = %if.end9
  %20 = load ptr, ptr %mc.addr, align 8, !dbg !6379
  %compare_typed12 = getelementptr inbounds %struct.component_match_array, ptr %20, i32 0, i32 2, !dbg !6380
  %21 = load ptr, ptr %compare_typed12, align 8, !dbg !6380
  %22 = load ptr, ptr %c, align 8, !dbg !6381
  %dev13 = getelementptr inbounds %struct.component, ptr %22, i32 0, i32 5, !dbg !6382
  %23 = load ptr, ptr %dev13, align 8, !dbg !6382
  %24 = load ptr, ptr %c, align 8, !dbg !6383
  %subcomponent = getelementptr inbounds %struct.component, ptr %24, i32 0, i32 4, !dbg !6384
  %25 = load i32, ptr %subcomponent, align 8, !dbg !6384
  %26 = load ptr, ptr %mc.addr, align 8, !dbg !6385
  %data14 = getelementptr inbounds %struct.component_match_array, ptr %26, i32 0, i32 0, !dbg !6386
  %27 = load ptr, ptr %data14, align 8, !dbg !6386
  %call15 = call i32 %21(ptr noundef %23, i32 noundef %25, ptr noundef %27) #18, !dbg !6379
  %tobool16 = icmp ne i32 %call15, 0, !dbg !6379
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6387

if.then17:                                        ; preds = %land.lhs.true11
  %28 = load ptr, ptr %c, align 8, !dbg !6388
  store ptr %28, ptr %retval, align 8, !dbg !6389
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6389

if.end18:                                         ; preds = %land.lhs.true11, %if.end9
  br label %for.inc, !dbg !6390

for.inc:                                          ; preds = %if.end18, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #19, !dbg !6391
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !6341, metadata !DIExpression()), !dbg !6391
  %29 = load ptr, ptr %c, align 8, !dbg !6391
  %node20 = getelementptr inbounds %struct.component, ptr %29, i32 0, i32 0, !dbg !6391
  %next = getelementptr inbounds %struct.list_head, ptr %node20, i32 0, i32 0, !dbg !6391
  %30 = load ptr, ptr %next, align 8, !dbg !6391
  store ptr %30, ptr %__mptr19, align 8, !dbg !6391
  %31 = load ptr, ptr %__mptr19, align 8, !dbg !6391
  %add.ptr22 = getelementptr i8, ptr %31, i64 0, !dbg !6391
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !6391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #19, !dbg !6350
  %32 = load ptr, ptr %tmp21, align 8, !dbg !6391
  store ptr %32, ptr %c, align 8, !dbg !6350
  br label %for.cond, !dbg !6350, !llvm.loop !6392

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6394

cleanup:                                          ; preds = %for.end, %if.then17, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #19, !dbg !6395
  %33 = load ptr, ptr %retval, align 8, !dbg !6395
  ret ptr %33, !dbg !6395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @component_debugfs_del(ptr noundef %m) #1 align 16 !dbg !6396 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %m.addr, align 8, !dbg !6400
  %parent = getelementptr inbounds %struct.aggregate_device, ptr %0, i32 0, i32 3, !dbg !6401
  %1 = load ptr, ptr %parent, align 8, !dbg !6401
  %call = call ptr @dev_name(ptr noundef %1) #18, !dbg !6402
  %2 = load ptr, ptr @component_debugfs_dir, align 8, !dbg !6403
  call void @debugfs_lookup_and_remove(ptr noundef %call, ptr noundef %2) #18, !dbg !6404
  ret void, !dbg !6405
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6406 dso_local void @debugfs_lookup_and_remove(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6409 dso_local void @devres_remove_group(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6410 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6411 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6413, metadata !DIExpression()), !dbg !6415
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6414, metadata !DIExpression()), !dbg !6416
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6417
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6418
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6419
  %2 = load ptr, ptr %prev, align 8, !dbg !6419
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6420
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #18, !dbg !6421
  ret void, !dbg !6422
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @try_to_bring_up_masters(ptr noundef %component) #1 align 16 !dbg !6423 {
entry:
  %component.addr = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %component, ptr %component.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %component.addr, metadata !6427, metadata !DIExpression()), !dbg !6436
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #19, !dbg !6437
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !6428, metadata !DIExpression()), !dbg !6438
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #19, !dbg !6439
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6429, metadata !DIExpression()), !dbg !6440
  store i32 0, ptr %ret, align 4, !dbg !6440
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #19, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6430, metadata !DIExpression()), !dbg !6441
  %0 = load ptr, ptr @aggregate_devices, align 8, !dbg !6441
  store ptr %0, ptr %__mptr, align 8, !dbg !6441
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6441
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6441
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6441
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #19, !dbg !6442
  %2 = load ptr, ptr %tmp, align 8, !dbg !6441
  store ptr %2, ptr %adev, align 8, !dbg !6442
  br label %for.cond, !dbg !6442

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %adev, align 8, !dbg !6443
  %node = getelementptr inbounds %struct.aggregate_device, ptr %3, i32 0, i32 0, !dbg !6443
  %cmp = icmp eq ptr %node, @aggregate_devices, !dbg !6443
  %lnot = xor i1 %cmp, true, !dbg !6443
  br i1 %lnot, label %for.body, label %for.end, !dbg !6442

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %adev, align 8, !dbg !6444
  %bound = getelementptr inbounds %struct.aggregate_device, ptr %4, i32 0, i32 1, !dbg !6447
  %5 = load i8, ptr %bound, align 8, !dbg !6447, !range !5163, !noundef !887
  %tobool = trunc i8 %5 to i1, !dbg !6447
  br i1 %tobool, label %if.end3, label %if.then, !dbg !6448

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %adev, align 8, !dbg !6449
  %7 = load ptr, ptr %component.addr, align 8, !dbg !6451
  %call = call i32 @try_to_bring_up_aggregate_device(ptr noundef %6, ptr noundef %7) #18, !dbg !6452
  store i32 %call, ptr %ret, align 4, !dbg !6453
  %8 = load i32, ptr %ret, align 4, !dbg !6454
  %cmp1 = icmp ne i32 %8, 0, !dbg !6456
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !6457

if.then2:                                         ; preds = %if.then
  br label %for.end, !dbg !6458

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !6459

if.end3:                                          ; preds = %if.end, %for.body
  br label %for.inc, !dbg !6460

for.inc:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #19, !dbg !6461
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !6433, metadata !DIExpression()), !dbg !6461
  %9 = load ptr, ptr %adev, align 8, !dbg !6461
  %node5 = getelementptr inbounds %struct.aggregate_device, ptr %9, i32 0, i32 0, !dbg !6461
  %next = getelementptr inbounds %struct.list_head, ptr %node5, i32 0, i32 0, !dbg !6461
  %10 = load ptr, ptr %next, align 8, !dbg !6461
  store ptr %10, ptr %__mptr4, align 8, !dbg !6461
  %11 = load ptr, ptr %__mptr4, align 8, !dbg !6461
  %add.ptr7 = getelementptr i8, ptr %11, i64 0, !dbg !6461
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6461
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #19, !dbg !6443
  %12 = load ptr, ptr %tmp6, align 8, !dbg !6461
  store ptr %12, ptr %adev, align 8, !dbg !6443
  br label %for.cond, !dbg !6443, !llvm.loop !6462

for.end:                                          ; preds = %if.then2, %for.cond
  %13 = load i32, ptr %ret, align 4, !dbg !6464
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #19, !dbg !6465
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #19, !dbg !6465
  ret i32 %13, !dbg !6466
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6467 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6469, metadata !DIExpression()), !dbg !6470
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6471
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !6473
  br i1 %call, label %if.end, label %if.then, !dbg !6474

if.then:                                          ; preds = %entry
  br label %return, !dbg !6475

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6476
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6477
  %2 = load ptr, ptr %prev, align 8, !dbg !6477
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6478
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6479
  %4 = load ptr, ptr %next, align 8, !dbg !6479
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !6480
  br label %return, !dbg !6481

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6481
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6482 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6486, metadata !DIExpression()), !dbg !6487
  ret i1 true, !dbg !6488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6489 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6491, metadata !DIExpression()), !dbg !6493
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6492, metadata !DIExpression()), !dbg !6494
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6495
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6496
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6497
  store ptr %0, ptr %prev1, align 8, !dbg !6498
  br label %do.body, !dbg !6499

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6500

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6502

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6500

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6504
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6504
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6504
  store volatile ptr %2, ptr %next4, align 8, !dbg !6504
  br label %do.end5, !dbg !6504

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6500

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6506
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone }
attributes #19 = { nounwind }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(0,1) }
attributes #22 = { noredzone allocsize(2) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585}
!llvm.ident = !{!4586}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_component__267_118_component_debug_init1268", scope: !2, file: !3, line: 118, type: !139, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.component.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/component\22 -D KBUILD_BASENAME=\22component\22 -D KBUILD_MODNAME=\22component\22 -D __KBUILD_MODNAME=kmod_component -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/component.ll drivers/base/component.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !138, globals: !4474, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/component.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a1fa36b5d91068865af117cf19257244")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !98, !107, !112, !117, !123, !128}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !93, line: 30, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!96 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!97 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!101 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!102 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!103 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!104 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!105 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!106 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!110 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!111 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!115 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!116 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!121 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!122 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 10, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "false", value: 0)
!127 = !DIEnumerator(name: "true", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !129, line: 364, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!132 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!133 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!136 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!137 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!138 = !{!139, !140, !142, !309, !529, !4472, !152}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !141, line: 154, baseType: !7)
!141 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "component", file: !3, line: 65, size: 448, elements: !144)
!144 = !{!145, !151, !4456, !4457, !4470, !4471}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !3, line: 66, baseType: !146, size: 128)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !141, line: 190, size: 128, elements: !147)
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !141, line: 191, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !141, line: 191, baseType: !149, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !143, file: !3, line: 67, baseType: !152, size: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aggregate_device", file: !3, line: 56, size: 384, elements: !154)
!154 = !{!155, !156, !159, !4430, !4431}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !153, file: !3, line: 57, baseType: !146, size: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !153, file: !3, line: 58, baseType: !157, size: 8, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !141, line: 35, baseType: !158)
!158 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !153, file: !3, line: 60, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "component_master_ops", file: !163, line: 52, size: 128, elements: !164)
!163 = !DIFile(filename: "./include/linux/component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "04039f7293b0278ac0f4748dc7ee6e0e")
!164 = !{!165, !4429}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !162, file: !163, line: 74, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!85, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !171)
!171 = !{!172, !3952, !3953, !3956, !3957, !4007, !4092, !4093, !4094, !4095, !4096, !4103, !4195, !4208, !4218, !4222, !4224, !4225, !4226, !4230, !4237, !4238, !4241, !4244, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4406, !4407, !4408, !4411, !4414, !4423, !4424, !4425, !4426, !4427, !4428}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !170, file: !70, line: 706, baseType: !173, size: 512)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !174, line: 64, size: 512, elements: !175)
!174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!175 = !{!176, !180, !181, !183, !272, !3851, !3942, !3947, !3948, !3949, !3950, !3951}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !173, file: !174, line: 65, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !173, file: !174, line: 66, baseType: !146, size: 128, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !174, line: 67, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !173, file: !174, line: 68, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !174, line: 168, size: 768, elements: !186)
!186 = !{!187, !188, !231, !232}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !174, line: 169, baseType: !146, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !185, file: !174, line: 170, baseType: !189, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !190, line: 29, baseType: !191)
!190 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !190, line: 17, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 18, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 18, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !194, file: !190, line: 19, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !198, line: 14, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !197, file: !198, line: 15, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !202, line: 44, baseType: !203)
!202 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !202, line: 14, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !202, line: 15, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 15, size: 32, elements: !207)
!207 = !{!208, !213, !223}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !206, file: !202, line: 16, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !141, line: 174, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 172, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !210, file: !141, line: 173, baseType: !85, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !202, line: 24, baseType: !214, size: 16)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !202, line: 24, size: 16, elements: !215)
!215 = !{!216, !222}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !214, file: !202, line: 25, baseType: !217, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !218, line: 17, baseType: !219)
!218 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !220, line: 21, baseType: !221)
!220 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!221 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !214, file: !202, line: 26, baseType: !217, size: 8, offset: 8)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !202, line: 28, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !206, file: !202, line: 28, size: 32, elements: !225)
!225 = !{!226, !230}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !224, file: !202, line: 29, baseType: !227, size: 16)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !218, line: 19, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !220, line: 24, baseType: !229)
!229 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !224, file: !202, line: 30, baseType: !227, size: 16, offset: 16)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !174, line: 171, baseType: !173, size: 512, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !185, file: !174, line: 172, baseType: !233, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !174, line: 133, size: 192, elements: !236)
!236 = !{!237, !244, !249}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !235, file: !174, line: 134, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!85, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !174, line: 135, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!177, !242}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !235, file: !174, line: 136, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!85, !242, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !174, line: 125, size: 20736, elements: !256)
!256 = !{!257, !262, !266, !267, !271}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !255, file: !174, line: 126, baseType: !258, size: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!260 = !{!261}
!261 = !DISubrange(count: 3)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !255, file: !174, line: 127, baseType: !263, size: 4096, offset: 192)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 4096, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !255, file: !174, line: 128, baseType: !85, size: 32, offset: 4288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !174, line: 129, baseType: !268, size: 16384, offset: 4320)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 16384, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 2048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !255, file: !174, line: 130, baseType: !85, size: 32, offset: 20704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !173, file: !174, line: 69, baseType: !273, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !174, line: 116, size: 384, elements: !276)
!276 = !{!277, !281, !310, !3813, !3841, !3845}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !174, line: 117, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !182}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !275, file: !174, line: 118, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !285, line: 254, size: 128, elements: !286)
!285 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!286 = !{!287, !302}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !284, file: !285, line: 255, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !182, !296, !259}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !141, line: 66, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !293, line: 73, baseType: !294)
!293 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !293, line: 15, baseType: !295)
!295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !285, line: 30, size: 128, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !285, line: 31, baseType: !177, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !297, file: !285, line: 32, baseType: !301, size: 16, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !141, line: 24, baseType: !229)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !284, file: !285, line: 256, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!291, !182, !296, !177, !306}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !141, line: 61, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !293, line: 72, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !293, line: 16, baseType: !309)
!309 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !275, file: !174, line: 119, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !285, line: 84, size: 320, elements: !315)
!315 = !{!316, !317, !321, !3809, !3811}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !285, line: 85, baseType: !177, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !314, file: !285, line: 86, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!301, !182, !296, !85}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !314, file: !285, line: 88, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!301, !182, !325, !85}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !285, line: 175, size: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !3800, !3804, !3805}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !326, file: !285, line: 176, baseType: !297, size: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !326, file: !285, line: 177, baseType: !306, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !326, file: !285, line: 178, baseType: !139, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !326, file: !285, line: 179, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !337)
!337 = !{!338, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3794, !3795, !3796, !3797, !3798, !3799}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !336, file: !14, line: 473, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !341)
!341 = !{!342, !343, !344, !352, !353, !360, !361, !364, !365, !3572, !3573, !3574, !3575, !3576, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3616, !3619, !3620, !3621, !3630, !3631, !3632, !3633}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !340, file: !14, line: 642, baseType: !301, size: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !340, file: !14, line: 643, baseType: !229, size: 16, offset: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !340, file: !14, line: 644, baseType: !345, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !346, line: 23, baseType: !347)
!346 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 21, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !346, line: 22, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !141, line: 37, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !293, line: 49, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !340, file: !14, line: 645, baseType: !146, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !340, file: !14, line: 646, baseType: !354, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !346, line: 28, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 26, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !346, line: 27, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !141, line: 38, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !293, line: 50, baseType: !7)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !340, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !340, file: !14, line: 650, baseType: !362, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !340, file: !14, line: 651, baseType: !362, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !340, file: !14, line: 654, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !369)
!369 = !{!370, !3400, !3410, !3414, !3418, !3422, !3426, !3430, !3434, !3438, !3442, !3443, !3447, !3451, !3488, !3517, !3521, !3527, !3531, !3535, !3539, !3543, !3547, !3553, !3557}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !368, file: !14, line: 1967, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !339, !374, !7}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !376, line: 82, size: 1536, elements: !377)
!376 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!377 = !{!378, !379, !389, !397, !398, !418, !419, !423, !436, !3383, !3384, !3385, !3386, !3392, !3393, !3394}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !375, file: !376, line: 84, baseType: !7, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !375, file: !376, line: 85, baseType: !380, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !381, line: 275, baseType: !382)
!381 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !381, line: 275, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !382, file: !381, line: 275, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !381, line: 69, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !381, line: 64, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !386, file: !381, line: 65, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !375, file: !376, line: 86, baseType: !390, size: 128, offset: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !391, line: 38, size: 128, elements: !392)
!391 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!392 = !{!393, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !391, line: 39, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !390, file: !391, line: 39, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !375, file: !376, line: 87, baseType: !374, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !375, file: !376, line: 88, baseType: !399, size: 128, offset: 256)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !376, line: 49, size: 128, elements: !400)
!400 = !{!401, !415}
!401 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !376, line: 50, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !399, file: !376, line: 50, size: 64, elements: !403)
!403 = !{!404, !411}
!404 = !DIDerivedType(tag: DW_TAG_member, scope: !402, file: !376, line: 51, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !402, file: !376, line: 51, size: 64, elements: !406)
!406 = !{!407, !410}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !405, file: !376, line: 52, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !218, line: 21, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !220, line: 27, baseType: !7)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !405, file: !376, line: 52, baseType: !408, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !402, file: !376, line: 54, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !218, line: 23, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !220, line: 31, baseType: !414)
!414 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !376, line: 56, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !375, file: !376, line: 89, baseType: !339, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !375, file: !376, line: 91, baseType: !420, size: 256, offset: 448)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !375, file: !376, line: 94, baseType: !424, size: 64, offset: 704)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !425, line: 25, size: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 26, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 26, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !428, file: !425, line: 28, baseType: !413, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !425, line: 30, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !425, line: 30, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !432, file: !425, line: 31, baseType: !189, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !432, file: !425, line: 32, baseType: !85, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !375, file: !376, line: 95, baseType: !437, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !376, line: 128, size: 1024, align: 512, elements: !440)
!440 = !{!441, !445, !446, !453, !459, !463, !467, !471, !472, !476, !480, !3373, !3377}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !439, file: !376, line: 129, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!85, !374, !7}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !439, file: !376, line: 130, baseType: !442, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !439, file: !376, line: 131, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!85, !450, !452}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !439, file: !376, line: 132, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!85, !450, !7, !177, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !439, file: !376, line: 134, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!85, !450}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !439, file: !376, line: 135, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!85, !374}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !439, file: !376, line: 136, baseType: !468, size: 64, offset: 384)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !374}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !439, file: !376, line: 137, baseType: !468, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !439, file: !376, line: 138, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !374, !339}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !439, file: !376, line: 139, baseType: !477, size: 64, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!259, !374, !259, !85}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !439, file: !376, line: 140, baseType: !481, size: 64, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !3372}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !486, line: 70, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!487 = !{!488, !489, !3368, !3369}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !485, file: !486, line: 71, baseType: !374, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !485, file: !486, line: 72, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !492)
!492 = !{!493, !494, !497, !498, !499, !503, !981, !1834, !1874, !1959, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1976, !1980, !1981, !1984, !1987, !1990, !1993, !1994, !1995, !2036, !3301, !3302, !3303, !3304, !3305, !3306, !3309, !3311, !3318, !3319, !3320, !3321, !3322, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !491, file: !14, line: 1191, baseType: !146, size: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !491, file: !14, line: 1192, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !141, line: 21, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !141, line: 18, baseType: !408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !491, file: !14, line: 1193, baseType: !221, size: 8, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !491, file: !14, line: 1194, baseType: !309, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !491, file: !14, line: 1195, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !141, line: 52, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !293, line: 88, baseType: !502)
!502 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !491, file: !14, line: 1196, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !506)
!506 = !{!507, !508, !509, !516, !520, !524, !528, !966, !967, !971, !973, !974, !975, !977, !978, !979, !980}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !14, line: 2367, baseType: !177, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !505, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !505, file: !14, line: 2376, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!85, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !515, line: 32, flags: DIFlagFwdDecl)
!515 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!516 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !505, file: !14, line: 2377, baseType: !517, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !505, file: !14, line: 2378, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!374, !504, !85, !177, !139}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !505, file: !14, line: 2380, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !490}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !14, line: 2381, baseType: !529, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !531)
!531 = !{!532, !533, !534, !538, !560, !586, !587, !588, !589, !593, !598, !599, !619, !675, !676, !677, !678, !679, !680, !681, !682, !690, !694, !721, !742, !743, !744, !745, !754, !777, !778, !781, !784, !785, !786, !787, !788, !789, !790, !795, !796, !924, !932, !933, !934, !936, !940, !941, !945, !946, !947, !948, !950, !951, !952, !959, !960, !961, !965}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !530, file: !6, line: 403, baseType: !5, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !530, file: !6, line: 406, baseType: !146, size: 128, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !6, line: 409, baseType: !535, size: 448, offset: 192)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 448, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 56)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !530, file: !6, line: 417, baseType: !539, size: 768, offset: 640)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !540)
!540 = !{!541, !542, !543, !544, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !539, file: !6, line: 46, baseType: !173, size: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !539, file: !6, line: 47, baseType: !529, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !539, file: !6, line: 48, baseType: !182, size: 64, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !539, file: !6, line: 49, baseType: !545, size: 64, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !539, file: !6, line: 50, baseType: !548, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !550, line: 26, size: 256, elements: !551)
!550 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !549, file: !550, line: 27, baseType: !7, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !549, file: !550, line: 28, baseType: !554, size: 192, offset: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !555, line: 43, size: 192, elements: !556)
!555 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!556 = !{!557, !559}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !555, line: 44, baseType: !558, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !198, line: 23, baseType: !197)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !554, file: !555, line: 45, baseType: !146, size: 128, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !530, file: !6, line: 418, baseType: !561, size: 64, offset: 1408)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !563)
!563 = !{!564, !565, !570, !574, !578, !582}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !562, file: !6, line: 54, baseType: !297, size: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !562, file: !6, line: 55, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!291, !561, !569, !259}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !562, file: !6, line: 57, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!291, !561, !569, !177, !306}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !562, file: !6, line: 59, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !529, !177}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !562, file: !6, line: 60, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!85, !529}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !562, file: !6, line: 61, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !529}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !530, file: !6, line: 419, baseType: !177, size: 64, offset: 1472)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !530, file: !6, line: 420, baseType: !177, size: 64, offset: 1536)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !530, file: !6, line: 421, baseType: !182, size: 64, offset: 1600)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !530, file: !6, line: 424, baseType: !590, size: 64, offset: 1664)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !530, file: !6, line: 425, baseType: !594, size: 64, offset: 1728)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !218, line: 20, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !220, line: 26, baseType: !85)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !530, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !530, file: !6, line: 435, baseType: !600, size: 256, offset: 1856)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !601, line: 66, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!602 = !{!603, !612, !613, !618}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !600, file: !601, line: 67, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !605, line: 13, baseType: !606)
!605 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !141, line: 181, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 179, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !607, file: !141, line: 180, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !218, line: 22, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !220, line: 30, baseType: !502)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !600, file: !601, line: 68, baseType: !558, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !600, file: !601, line: 70, baseType: !614, size: 32, offset: 96)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !615, line: 15, size: 32, elements: !616)
!615 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !614, file: !615, line: 20, baseType: !209, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !600, file: !601, line: 72, baseType: !146, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !530, file: !6, line: 437, baseType: !620, size: 64, offset: 2112)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !622, line: 69, size: 320, elements: !623)
!622 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!623 = !{!624, !625, !626, !646, !648, !652, !653}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !622, line: 70, baseType: !177, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !621, file: !622, line: 71, baseType: !529, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !621, file: !622, line: 72, baseType: !627, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !622, line: 47, size: 256, elements: !630)
!630 = !{!631, !632, !638, !642}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !629, file: !622, line: 49, baseType: !7, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !629, file: !622, line: 51, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!85, !177, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !629, file: !622, line: 53, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!85, !259, !636}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !629, file: !622, line: 55, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !139}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !621, file: !622, line: 73, baseType: !647, size: 16, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !621, file: !622, line: 74, baseType: !649, size: 8, offset: 208)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !218, line: 16, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !220, line: 20, baseType: !651)
!651 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !622, line: 75, baseType: !217, size: 8, offset: 216)
!653 = !DIDerivedType(tag: DW_TAG_member, scope: !621, file: !622, line: 76, baseType: !654, size: 64, offset: 256)
!654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !621, file: !622, line: 76, size: 64, elements: !655)
!655 = !{!656, !657, !664}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !654, file: !622, line: 77, baseType: !139, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !654, file: !622, line: 78, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !622, line: 86, size: 128, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !660, file: !622, line: 87, baseType: !7, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !660, file: !622, line: 88, baseType: !259, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !654, file: !622, line: 79, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !622, line: 92, size: 256, elements: !668)
!668 = !{!669, !670, !671, !673, !674}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !667, file: !622, line: 94, baseType: !7, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !667, file: !622, line: 95, baseType: !7, size: 32, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !667, file: !622, line: 96, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !667, file: !622, line: 97, baseType: !627, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !667, file: !622, line: 98, baseType: !139, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !530, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !530, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !530, file: !6, line: 442, baseType: !590, size: 64, offset: 2240)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !530, file: !6, line: 443, baseType: !594, size: 64, offset: 2304)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !530, file: !6, line: 444, baseType: !157, size: 8, offset: 2368)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !530, file: !6, line: 451, baseType: !157, size: 8, offset: 2376)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !530, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !530, file: !6, line: 455, baseType: !683, size: 64, offset: 2432)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !685, line: 23, size: 96, elements: !686)
!685 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!686 = !{!687, !688, !689}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !684, file: !685, line: 24, baseType: !85, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !684, file: !685, line: 24, baseType: !85, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !684, file: !685, line: 24, baseType: !85, size: 32, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !530, file: !6, line: 458, baseType: !691, size: 64, offset: 2496)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!85}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !530, file: !6, line: 460, baseType: !695, size: 4032, align: 512, offset: 2560)
!695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !696, size: 4032, elements: !719)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !696, file: !6, line: 363, baseType: !139, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !696, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !696, file: !6, line: 367, baseType: !701, size: 448, offset: 128)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !702)
!702 = !{!703, !704}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !701, file: !6, line: 320, baseType: !529, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !701, file: !6, line: 321, baseType: !705, size: 384, offset: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !706, line: 40, size: 384, elements: !707)
!706 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !705, file: !706, line: 41, baseType: !709, size: 384, align: 64)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 384, align: 64, elements: !717)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !711, line: 5, size: 192, align: 64, elements: !712)
!711 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!712 = !{!713, !714, !716}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !710, file: !711, line: 6, baseType: !309, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !710, file: !711, line: 7, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !710, file: !711, line: 8, baseType: !715, size: 64, offset: 128)
!717 = !{!718}
!718 = !DISubrange(count: 2)
!719 = !{!720}
!720 = !DISubrange(count: 7)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !530, file: !6, line: 463, baseType: !722, size: 192, offset: 6592)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !723, line: 8, size: 192, elements: !724)
!723 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!724 = !{!725, !726, !728}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !722, file: !723, line: 10, baseType: !7, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !722, file: !723, line: 11, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !722, file: !723, line: 12, baseType: !729, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !731, line: 59, size: 48, elements: !732)
!731 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!732 = !{!733, !737, !738, !739, !740, !741}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !730, file: !731, line: 60, baseType: !734, size: 16)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !218, line: 18, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !220, line: 23, baseType: !736)
!736 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !730, file: !731, line: 61, baseType: !734, size: 16, offset: 16)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !730, file: !731, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !730, file: !731, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !731, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !730, file: !731, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !530, file: !6, line: 465, baseType: !309, size: 64, offset: 6784)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !530, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !530, file: !6, line: 470, baseType: !146, size: 128, offset: 6912)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !530, file: !6, line: 471, baseType: !746, size: 64, offset: 7040)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !748, line: 33, size: 96, elements: !749)
!748 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!749 = !{!750, !751, !752, !753}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !747, file: !748, line: 37, baseType: !85, size: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !747, file: !748, line: 43, baseType: !85, size: 32, offset: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !747, file: !748, line: 45, baseType: !229, size: 16, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !747, file: !748, line: 47, baseType: !229, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !530, file: !6, line: 476, baseType: !755, size: 64, offset: 7104)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !757)
!757 = !{!758, !774, !775, !776}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !756, file: !6, line: 379, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !761, line: 204, baseType: !762)
!761 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !761, line: 197, size: 192, elements: !763)
!763 = !{!764, !766, !767, !768, !770, !772}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !762, file: !761, line: 198, baseType: !765, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !761, line: 21, baseType: !409)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !762, file: !761, line: 199, baseType: !221, size: 8, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !762, file: !761, line: 200, baseType: !221, size: 8, offset: 40)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !762, file: !761, line: 201, baseType: !769, size: 16, offset: 48)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !761, line: 17, baseType: !228)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !762, file: !761, line: 202, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !761, line: 16, baseType: !413)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !762, file: !761, line: 203, baseType: !773, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !761, line: 22, baseType: !413)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !756, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !756, file: !6, line: 381, baseType: !259, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !756, file: !6, line: 382, baseType: !259, size: 64, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !530, file: !6, line: 477, baseType: !756, size: 256, offset: 7168)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !530, file: !6, line: 480, baseType: !779, size: 64, offset: 7424)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !530, file: !6, line: 483, baseType: !782, size: 64, offset: 7488)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !530, file: !6, line: 488, baseType: !259, size: 64, offset: 7552)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !530, file: !6, line: 492, baseType: !139, size: 64, offset: 7616)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !530, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !530, file: !6, line: 495, baseType: !139, size: 64, offset: 7744)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !530, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !530, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !530, file: !6, line: 500, baseType: !791, size: 64, offset: 7872)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !793, line: 45, baseType: !794)
!793 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !530, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !530, file: !6, line: 504, baseType: !797, size: 64, offset: 8000)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !800, line: 96, size: 192, elements: !801)
!800 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!801 = !{!802, !803, !884, !888}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !799, file: !800, line: 97, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !799, file: !800, line: 98, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !800, line: 24, size: 3072, elements: !806)
!806 = !{!807, !809, !810, !811, !812, !836, !837, !838, !839, !857, !869, !870, !881, !882, !883}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !805, file: !800, line: 26, baseType: !808, size: 128)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !717)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !805, file: !800, line: 27, baseType: !808, size: 128, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !805, file: !800, line: 28, baseType: !85, size: 32, offset: 256)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !805, file: !800, line: 31, baseType: !189, size: 32, align: 512, offset: 512)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !805, file: !800, line: 32, baseType: !813, size: 960, offset: 576)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !814, line: 206, size: 960, elements: !815)
!814 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!815 = !{!816, !825, !830, !832, !833, !835}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !813, file: !814, line: 207, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !141, line: 232, size: 128, align: 64, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !141, line: 233, baseType: !817, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !818, file: !141, line: 234, baseType: !822, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !817}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !813, file: !814, line: 208, baseType: !826, size: 256, offset: 64)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 256, elements: !828)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!828 = !{!829}
!829 = !DISubrange(count: 4)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !813, file: !814, line: 209, baseType: !831, size: 256, offset: 320)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !828)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !813, file: !814, line: 213, baseType: !295, size: 64, offset: 576)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !813, file: !814, line: 215, baseType: !834, size: 256, offset: 640)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !828)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !813, file: !814, line: 216, baseType: !217, size: 8, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !805, file: !800, line: 33, baseType: !309, size: 64, offset: 1536)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !805, file: !800, line: 34, baseType: !309, size: 64, offset: 1600)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !805, file: !800, line: 35, baseType: !157, size: 8, offset: 1664)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !805, file: !800, line: 36, baseType: !840, size: 320, offset: 1728)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !841, line: 11, size: 320, elements: !842)
!841 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!842 = !{!843, !850, !851, !856}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !840, file: !841, line: 16, baseType: !844, size: 128)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !141, line: 198, size: 128, elements: !845)
!845 = !{!846, !848}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !141, line: 199, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !844, file: !141, line: 199, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !840, file: !841, line: 17, baseType: !309, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !840, file: !841, line: 18, baseType: !852, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !855}
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !841, line: 19, baseType: !408, size: 32, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !805, file: !800, line: 37, baseType: !858, size: 256, offset: 2048)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !859, line: 98, size: 256, elements: !860)
!859 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !858, file: !859, line: 99, baseType: !604, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !858, file: !859, line: 100, baseType: !146, size: 128, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !858, file: !859, line: 101, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !859, line: 21, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !805, file: !800, line: 38, baseType: !818, size: 128, align: 64, offset: 2304)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !805, file: !800, line: 39, baseType: !871, size: 64, offset: 2432)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !800, line: 49, size: 768, elements: !873)
!873 = !{!874, !875, !876, !877, !878, !879, !880}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !872, file: !800, line: 50, baseType: !189, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !872, file: !800, line: 51, baseType: !831, size: 256, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !872, file: !800, line: 53, baseType: !831, size: 256, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !872, file: !800, line: 54, baseType: !309, size: 64, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !872, file: !800, line: 55, baseType: !871, size: 64, offset: 640)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !872, file: !800, line: 56, baseType: !85, size: 32, offset: 704)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !872, file: !800, line: 57, baseType: !85, size: 32, offset: 736)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !805, file: !800, line: 40, baseType: !309, size: 64, offset: 2496)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !805, file: !800, line: 42, baseType: !85, size: 32, offset: 2560)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !805, file: !800, line: 43, baseType: !798, size: 64, offset: 2624)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !799, file: !800, line: 99, baseType: !885, offset: 128)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !886, line: 211, elements: !887)
!886 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!887 = !{}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !799, file: !800, line: 100, baseType: !889, size: 64, offset: 128)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !800, line: 63, size: 3008, elements: !891)
!891 = !{!892, !893, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !923}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !890, file: !800, line: 64, baseType: !871, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !890, file: !800, line: 65, baseType: !894, size: 192, offset: 64)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 192, elements: !260)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !890, file: !800, line: 67, baseType: !85, size: 32, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !890, file: !800, line: 68, baseType: !600, size: 256, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !800, line: 69, baseType: !189, size: 32, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !890, file: !800, line: 70, baseType: !600, size: 256, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !890, file: !800, line: 71, baseType: !309, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !890, file: !800, line: 72, baseType: !309, size: 64, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !890, file: !800, line: 73, baseType: !309, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !890, file: !800, line: 74, baseType: !309, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !890, file: !800, line: 75, baseType: !309, size: 64, offset: 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !890, file: !800, line: 76, baseType: !309, size: 64, offset: 1216)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !890, file: !800, line: 77, baseType: !309, size: 64, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !890, file: !800, line: 78, baseType: !309, size: 64, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !890, file: !800, line: 79, baseType: !157, size: 8, offset: 1408)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !890, file: !800, line: 80, baseType: !309, size: 64, offset: 1472)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !890, file: !800, line: 81, baseType: !600, size: 256, offset: 1536)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !890, file: !800, line: 82, baseType: !549, size: 256, offset: 1792)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !890, file: !800, line: 84, baseType: !209, size: 32, offset: 2048)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !890, file: !800, line: 87, baseType: !309, size: 64, offset: 2112)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !890, file: !800, line: 88, baseType: !309, size: 64, offset: 2176)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !890, file: !800, line: 89, baseType: !915, size: 704, offset: 2240)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !859, line: 111, size: 704, elements: !916)
!916 = !{!917, !918, !919, !922}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !915, file: !859, line: 112, baseType: !858, size: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !915, file: !859, line: 113, baseType: !840, size: 320, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !915, file: !859, line: 116, baseType: !920, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !859, line: 18, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !915, file: !859, line: 117, baseType: !85, size: 32, offset: 640)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !890, file: !800, line: 90, baseType: !798, size: 64, offset: 2944)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !530, file: !6, line: 515, baseType: !925, size: 64, offset: 8064)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !927, line: 117, size: 128, elements: !928)
!927 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !926, file: !927, line: 118, baseType: !596, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !926, file: !927, line: 119, baseType: !596, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !926, file: !927, line: 120, baseType: !295, size: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !530, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !530, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !530, file: !6, line: 520, baseType: !935, size: 64, offset: 8192)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !530, file: !6, line: 523, baseType: !937, size: 64, offset: 8256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !530, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !530, file: !6, line: 525, baseType: !942, size: 64, offset: 8384)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !530, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !530, file: !6, line: 533, baseType: !139, size: 64, offset: 8512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !530, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !530, file: !6, line: 535, baseType: !949, size: 64, offset: 8640)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !530, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !530, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !530, file: !6, line: 540, baseType: !953, size: 64, offset: 8768)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !955, line: 32, size: 64, elements: !956)
!955 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !954, file: !955, line: 33, baseType: !596, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !954, file: !955, line: 34, baseType: !596, size: 32, offset: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !530, file: !6, line: 563, baseType: !146, size: 128, offset: 8832)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !530, file: !6, line: 565, baseType: !146, size: 128, offset: 8960)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !530, file: !6, line: 568, baseType: !962, size: 64, offset: 9088)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !530, file: !6, line: 570, baseType: !209, size: 32, offset: 9152)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !14, line: 2382, baseType: !504, size: 64, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !505, file: !14, line: 2383, baseType: !968, size: 64, offset: 512)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !141, line: 194, size: 64, elements: !969)
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !968, file: !141, line: 195, baseType: !847, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !505, file: !14, line: 2385, baseType: !972, offset: 576)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !886, line: 206, elements: !887)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !505, file: !14, line: 2386, baseType: !972, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !505, file: !14, line: 2387, baseType: !972, offset: 576)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !505, file: !14, line: 2388, baseType: !976, offset: 576)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, elements: !260)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !505, file: !14, line: 2390, baseType: !972, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !505, file: !14, line: 2391, baseType: !972, offset: 576)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !505, file: !14, line: 2392, baseType: !972, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !505, file: !14, line: 2393, baseType: !972, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !491, file: !14, line: 1197, baseType: !982, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !985)
!985 = !{!986, !990, !994, !995, !999, !1005, !1009, !1010, !1011, !1015, !1019, !1023, !1024, !1025, !1031, !1035, !1036, !1759, !1760, !1761, !1762, !1766, !1770, !1817, !1832, !1833}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !984, file: !14, line: 2058, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!339, !490}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !984, file: !14, line: 2059, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !339}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !984, file: !14, line: 2060, baseType: !991, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !984, file: !14, line: 2062, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !339, !85}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !984, file: !14, line: 2063, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!85, !339, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !984, file: !14, line: 2064, baseType: !1006, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!85, !339}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !984, file: !14, line: 2065, baseType: !991, size: 64, offset: 384)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !984, file: !14, line: 2066, baseType: !525, size: 64, offset: 448)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !984, file: !14, line: 2067, baseType: !1012, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!85, !490, !85}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !984, file: !14, line: 2068, baseType: !1016, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!85, !490, !13}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !984, file: !14, line: 2069, baseType: !1020, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!85, !490}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !984, file: !14, line: 2070, baseType: !1016, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !984, file: !14, line: 2071, baseType: !1020, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !984, file: !14, line: 2072, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!85, !374, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !984, file: !14, line: 2073, baseType: !1032, size: 64, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!85, !490, !727, !259}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !984, file: !14, line: 2074, baseType: !525, size: 64, offset: 960)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !984, file: !14, line: 2076, baseType: !1037, size: 64, offset: 1024)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!85, !1040, !374}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1042, line: 17, size: 960, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1043 = !{!1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1074, !1075, !1758}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1041, file: !1042, line: 18, baseType: !259, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1041, file: !1042, line: 19, baseType: !306, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1041, file: !1042, line: 20, baseType: !306, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1041, file: !1042, line: 21, baseType: !306, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1041, file: !1042, line: 22, baseType: !306, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1041, file: !1042, line: 23, baseType: !500, size: 64, offset: 320)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1041, file: !1042, line: 24, baseType: !500, size: 64, offset: 384)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1041, file: !1042, line: 25, baseType: !600, size: 256, offset: 448)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1041, file: !1042, line: 26, baseType: !1053, size: 64, offset: 704)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1042, line: 32, size: 256, elements: !1056)
!1056 = !{!1057, !1062, !1066, !1070}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1055, file: !1042, line: 33, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!139, !1040, !1061}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1055, file: !1042, line: 34, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !1040, !139}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !1042, line: 35, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!139, !1040, !139, !1061}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1055, file: !1042, line: 36, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!85, !1040, !139}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1041, file: !1042, line: 27, baseType: !85, size: 32, offset: 768)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1041, file: !1042, line: 28, baseType: !1076, size: 64, offset: 832)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1079)
!1079 = !{!1080, !1091, !1092, !1094, !1095, !1096, !1097, !1098, !1159, !1359, !1368, !1374, !1375, !1748, !1749, !1750, !1751, !1753, !1754, !1757}
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1078, file: !14, line: 995, baseType: !1081, size: 128)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !14, line: 995, size: 128, elements: !1082)
!1082 = !{!1083, !1089, !1090}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1081, file: !14, line: 996, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1085, line: 60, size: 64, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !1085, line: 61, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1081, file: !14, line: 997, baseType: !818, size: 128, align: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1081, file: !14, line: 998, baseType: !7, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1078, file: !14, line: 1005, baseType: !189, size: 32, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1078, file: !14, line: 1006, baseType: !1093, size: 32, offset: 160)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !141, line: 156, baseType: !7)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1078, file: !14, line: 1007, baseType: !604, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1078, file: !14, line: 1008, baseType: !600, size: 256, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1078, file: !14, line: 1009, baseType: !500, size: 64, offset: 512)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1078, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1078, file: !14, line: 1011, baseType: !1099, size: 256, offset: 640)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1100)
!1100 = !{!1101, !1122, !1155, !1156, !1157, !1158}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1099, file: !14, line: 949, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1103, line: 34, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1103, line: 25, size: 64, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1104, file: !1103, line: 26, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1108, line: 27, baseType: !1109)
!1108 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1108, line: 13, size: 64, elements: !1110)
!1110 = !{!1111, !1121}
!1111 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !1108, line: 14, baseType: !1112, size: 32)
!1112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !1108, line: 14, size: 32, elements: !1113)
!1113 = !{!1114, !1115}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1112, file: !1108, line: 15, baseType: !209, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !1108, line: 16, baseType: !1116, size: 32)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !1108, line: 16, size: 32, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1116, file: !1108, line: 18, baseType: !217, size: 8)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1116, file: !1108, line: 19, baseType: !1120, size: 24, offset: 8)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24, elements: !260)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1109, file: !1108, line: 26, baseType: !201, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1099, file: !14, line: 950, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1125)
!1125 = !{!1126, !1132, !1133, !1134, !1136, !1137, !1144, !1145}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1124, file: !19, line: 61, baseType: !1127, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1128, line: 113, baseType: !1129)
!1128 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1128, line: 111, size: 32, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1129, file: !1128, line: 112, baseType: !209, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1124, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1124, file: !19, line: 63, baseType: !189, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1124, file: !19, line: 65, baseType: !1135, size: 256, offset: 128)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !968, size: 256, elements: !828)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1124, file: !19, line: 66, baseType: !968, size: 64, offset: 384)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1124, file: !19, line: 68, baseType: !1138, size: 192, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1139, line: 41, baseType: !1140)
!1139 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1139, line: 37, size: 192, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !1139, line: 38, baseType: !189, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1140, file: !1139, line: 39, baseType: !146, size: 128, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1124, file: !19, line: 69, baseType: !818, size: 128, align: 64, offset: 640)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1124, file: !19, line: 70, baseType: !1146, offset: 768)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, elements: !1153)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1147, file: !19, line: 55, baseType: !85, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1147, file: !19, line: 56, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1153 = !{!1154}
!1154 = !DISubrange(count: -1)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1099, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1099, file: !14, line: 952, baseType: !345, size: 32, offset: 160)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1099, file: !14, line: 952, baseType: !345, size: 32, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1099, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1078, file: !14, line: 1012, baseType: !1160, size: 64, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1163, line: 110, size: 1472, elements: !1164)
!1163 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1164 = !{!1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1181, !1182, !1183, !1184, !1185, !1186, !1304, !1305, !1306, !1307, !1308, !1339, !1342, !1346, !1354}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1162, file: !1163, line: 111, baseType: !604, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1162, file: !1163, line: 112, baseType: !345, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1162, file: !1163, line: 113, baseType: !354, size: 32, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1162, file: !1163, line: 114, baseType: !345, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1162, file: !1163, line: 115, baseType: !354, size: 32, offset: 160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1162, file: !1163, line: 116, baseType: !345, size: 32, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1162, file: !1163, line: 117, baseType: !354, size: 32, offset: 224)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1162, file: !1163, line: 118, baseType: !345, size: 32, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1162, file: !1163, line: 119, baseType: !354, size: 32, offset: 288)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1162, file: !1163, line: 120, baseType: !7, size: 32, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1162, file: !1163, line: 121, baseType: !1176, size: 64, offset: 384)
!1176 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1177, line: 24, baseType: !1178)
!1177 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1177, line: 24, size: 64, elements: !1179)
!1179 = !{!1180}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1178, file: !1177, line: 24, baseType: !412, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1162, file: !1163, line: 122, baseType: !1176, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1162, file: !1163, line: 123, baseType: !1176, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1162, file: !1163, line: 124, baseType: !1176, size: 64, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1162, file: !1163, line: 125, baseType: !1176, size: 64, offset: 640)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1162, file: !1163, line: 127, baseType: !221, size: 8, offset: 704)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1162, file: !1163, line: 129, baseType: !1187, size: 64, offset: 768)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1189, line: 195, size: 1728, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1190 = !{!1191, !1192, !1195, !1200, !1209, !1212, !1213, !1220, !1221, !1222, !1223, !1226, !1227, !1228, !1229, !1230, !1268, !1289}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1188, file: !1189, line: 196, baseType: !1127, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1188, file: !1189, line: 197, baseType: !1193, size: 32, offset: 32)
!1193 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1189, line: 28, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !141, line: 104, baseType: !596)
!1195 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1189, line: 198, baseType: !1196, size: 192, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1189, line: 198, size: 192, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1196, file: !1189, line: 199, baseType: !146, size: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1196, file: !1189, line: 200, baseType: !710, size: 192, align: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1188, file: !1189, line: 205, baseType: !1201, size: 320, offset: 256)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1202, line: 48, size: 320, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1203 = !{!1204, !1205, !1206, !1207, !1208}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1201, file: !1202, line: 49, baseType: !604, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1201, file: !1202, line: 55, baseType: !604, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1201, file: !1202, line: 57, baseType: !614, size: 32, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1201, file: !1202, line: 59, baseType: !558, size: 32, offset: 160)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1201, file: !1202, line: 60, baseType: !146, size: 128, offset: 192)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1188, file: !1189, line: 206, baseType: !1210, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1189, line: 206, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1188, file: !1189, line: 207, baseType: !139, size: 64, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1189, line: 208, baseType: !1214, size: 64, offset: 704)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1189, line: 208, size: 64, elements: !1215)
!1215 = !{!1216, !1219}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1214, file: !1189, line: 209, baseType: !1217, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1218, line: 8, baseType: !611)
!1218 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1214, file: !1189, line: 210, baseType: !1217, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1188, file: !1189, line: 212, baseType: !1217, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1188, file: !1189, line: 213, baseType: !345, size: 32, offset: 832)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1188, file: !1189, line: 214, baseType: !354, size: 32, offset: 864)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1188, file: !1189, line: 215, baseType: !1224, size: 32, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1189, line: 31, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !141, line: 110, baseType: !408)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1188, file: !1189, line: 216, baseType: !229, size: 16, offset: 928)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1188, file: !1189, line: 217, baseType: !229, size: 16, offset: 944)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1188, file: !1189, line: 221, baseType: !736, size: 16, offset: 960)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !1189, line: 228, baseType: !309, size: 64, offset: 1024)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1189, line: 245, baseType: !1231, size: 320, offset: 1088)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1189, line: 245, size: 320, elements: !1232)
!1232 = !{!1233, !1260}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1231, file: !1189, line: 246, baseType: !1234, size: 320)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1189, line: 114, size: 320, elements: !1235)
!1235 = !{!1236, !1237, !1249, !1252, !1259}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1234, file: !1189, line: 116, baseType: !309, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1234, file: !1189, line: 117, baseType: !1238, size: 64, offset: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1189, line: 117, size: 64, elements: !1239)
!1239 = !{!1240, !1248}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1189, line: 118, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !1189, line: 118, size: 64, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1241, file: !1189, line: 120, baseType: !227, size: 16)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1241, file: !1189, line: 121, baseType: !1245, size: 48, offset: 16)
!1245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 48, elements: !1246)
!1246 = !{!1247}
!1247 = !DISubrange(count: 6)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1238, file: !1189, line: 127, baseType: !309, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1234, file: !1189, line: 129, baseType: !1250, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1189, line: 102, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1234, file: !1189, line: 130, baseType: !1253, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1189, line: 108, size: 192, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1254, file: !1189, line: 109, baseType: !818, size: 128, align: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1254, file: !1189, line: 110, baseType: !1127, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1254, file: !1189, line: 111, baseType: !157, size: 8, offset: 160)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1234, file: !1189, line: 131, baseType: !177, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1189, line: 247, baseType: !1261, size: 320)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1231, file: !1189, line: 247, size: 320, elements: !1262)
!1262 = !{!1263, !1264, !1265, !1266, !1267}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1261, file: !1189, line: 248, baseType: !309, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1261, file: !1189, line: 249, baseType: !309, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1261, file: !1189, line: 250, baseType: !1250, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1261, file: !1189, line: 251, baseType: !1253, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1261, file: !1189, line: 252, baseType: !259, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1189, line: 260, baseType: !1269, size: 256, offset: 1408)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1189, line: 260, size: 256, elements: !1270)
!1270 = !{!1271, !1277}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1269, file: !1189, line: 261, baseType: !1272, size: 256)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1189, line: 134, size: 256, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1272, file: !1189, line: 135, baseType: !139, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1272, file: !1189, line: 136, baseType: !1276, size: 256)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !828)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1189, line: 262, baseType: !1278, size: 256)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1269, file: !1189, line: 262, size: 256, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1278, file: !1189, line: 264, baseType: !146, size: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1278, file: !1189, line: 265, baseType: !1282, size: 128, offset: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1283, line: 22, size: 128, elements: !1284)
!1283 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1284 = !{!1285, !1288}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1282, file: !1283, line: 23, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1283, line: 23, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1282, file: !1283, line: 24, baseType: !309, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1188, file: !1189, line: 280, baseType: !1290, size: 64, offset: 1664)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1189, line: 176, size: 192, elements: !1292)
!1292 = !{!1293, !1302, !1303}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1291, file: !1189, line: 177, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1189, line: 171, baseType: !1295)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!85, !1187, !1298, !1300, !1187}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1251)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1291, file: !1189, line: 178, baseType: !1187, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1291, file: !1189, line: 179, baseType: !1250, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1162, file: !1163, line: 130, baseType: !1187, size: 64, offset: 832)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1162, file: !1163, line: 131, baseType: !1187, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1162, file: !1163, line: 132, baseType: !1187, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1162, file: !1163, line: 135, baseType: !139, size: 64, offset: 1024)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1162, file: !1163, line: 137, baseType: !1309, size: 64, offset: 1088)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1311, line: 14, size: 1088, elements: !1312)
!1311 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1312 = !{!1313, !1314, !1323, !1324, !1325, !1326, !1327, !1328}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1310, file: !1311, line: 15, baseType: !1127, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1310, file: !1311, line: 17, baseType: !1315, size: 320, offset: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1316, line: 22, size: 320, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1317 = !{!1318, !1319, !1320, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1315, file: !1316, line: 23, baseType: !558, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1315, file: !1316, line: 24, baseType: !610, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1315, file: !1316, line: 26, baseType: !146, size: 128, offset: 128)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1315, file: !1316, line: 28, baseType: !1322, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1310, file: !1311, line: 19, baseType: !309, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1310, file: !1311, line: 20, baseType: !604, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1310, file: !1311, line: 23, baseType: !844, size: 128, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1310, file: !1311, line: 24, baseType: !345, size: 32, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1310, file: !1311, line: 29, baseType: !604, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1310, file: !1311, line: 36, baseType: !1329, size: 320, offset: 768)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1330, line: 15, size: 320, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1329, file: !1330, line: 16, baseType: !558, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1329, file: !1330, line: 18, baseType: !85, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1329, file: !1330, line: 19, baseType: !85, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1329, file: !1330, line: 20, baseType: !85, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1329, file: !1330, line: 21, baseType: !85, size: 32, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1329, file: !1330, line: 22, baseType: !309, size: 64, offset: 192)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1329, file: !1330, line: 23, baseType: !309, size: 64, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1162, file: !1163, line: 138, baseType: !1340, size: 64, offset: 1152)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !346, line: 18, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1162, file: !1163, line: 139, baseType: !1343, size: 64, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1345, line: 16, flags: DIFlagFwdDecl)
!1345 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1162, file: !1163, line: 140, baseType: !1347, size: 64, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1163, line: 25, size: 64, elements: !1349)
!1349 = !{!1350, !1351, !1352}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1348, file: !1163, line: 26, baseType: !209, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1348, file: !1163, line: 27, baseType: !85, size: 32, offset: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1348, file: !1163, line: 28, baseType: !1353, offset: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, elements: !1153)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1163, line: 142, baseType: !1355, size: 128, offset: 1344)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !1163, line: 142, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1355, file: !1163, line: 143, baseType: !85, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1355, file: !1163, line: 144, baseType: !818, size: 128, align: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1078, file: !14, line: 1013, baseType: !1360, size: 256, offset: 960)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1360, file: !14, line: 971, baseType: !309, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1360, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1360, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1360, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1360, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1360, file: !14, line: 976, baseType: !500, size: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1078, file: !14, line: 1014, baseType: !1369, size: 128, offset: 1216)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1370, line: 8, size: 128, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1369, file: !1370, line: 9, baseType: !484, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1369, file: !1370, line: 10, baseType: !374, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1078, file: !14, line: 1015, baseType: !339, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1078, file: !14, line: 1016, baseType: !1376, size: 64, offset: 1408)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1378)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1379)
!1379 = !{!1380, !1381, !1386, !1390, !1394, !1422, !1423, !1429, !1442, !1450, !1454, !1455, !1670, !1671, !1675, !1680, !1681, !1685, !1689, !1695, !1696, !1700, !1701, !1707, !1711, !1715, !1721, !1725, !1729, !1733, !1737, !1738, !1744}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1378, file: !14, line: 1915, baseType: !529, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1378, file: !14, line: 1916, baseType: !1382, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!500, !1385, !500, !85}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1378, file: !14, line: 1917, baseType: !1387, size: 64, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!291, !1385, !259, !306, !1061}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1378, file: !14, line: 1918, baseType: !1391, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!291, !1385, !177, !306, !1061}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1378, file: !14, line: 1919, baseType: !1395, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!291, !1398, !1420}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1400)
!1400 = !{!1401, !1402, !1403, !1407, !1408, !1409, !1410}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1399, file: !14, line: 374, baseType: !1385, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1399, file: !14, line: 375, baseType: !500, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1399, file: !14, line: 376, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1398, !295}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1399, file: !14, line: 377, baseType: !139, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1399, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1399, file: !14, line: 379, baseType: !227, size: 16, offset: 288)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !14, line: 380, baseType: !1411, size: 64, offset: 320)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !14, line: 380, size: 64, elements: !1412)
!1412 = !{!1413, !1416}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1411, file: !14, line: 386, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1411, file: !14, line: 395, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!291, !139}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1378, file: !14, line: 1920, baseType: !1395, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1378, file: !14, line: 1921, baseType: !1424, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!85, !1398, !1427, !7}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1378, file: !14, line: 1923, baseType: !1430, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!85, !1385, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1435)
!1435 = !{!1436, !1441}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1434, file: !14, line: 1859, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1438)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!157, !1433, !177, !85, !500, !412, !7}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1434, file: !14, line: 1860, baseType: !500, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1378, file: !14, line: 1924, baseType: !1443, size: 64, offset: 512)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!1446, !1385, !1448}
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1447, line: 59, baseType: !7)
!1447 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !515, line: 31, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1378, file: !14, line: 1925, baseType: !1451, size: 64, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!295, !1385, !7, !309}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1378, file: !14, line: 1926, baseType: !1451, size: 64, offset: 640)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1378, file: !14, line: 1927, baseType: !1456, size: 64, offset: 704)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!85, !1385, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1461, line: 625, size: 1344, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1462 = !{!1463, !1472, !1627, !1633, !1640, !1641, !1646, !1647, !1652, !1653, !1656, !1660, !1661, !1662, !1663, !1664, !1668}
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1461, line: 628, baseType: !1464, size: 128)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1461, line: 628, size: 128, elements: !1465)
!1465 = !{!1466, !1471}
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1461, line: 629, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !1461, line: 629, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1467, file: !1461, line: 631, baseType: !309, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1467, file: !1461, line: 632, baseType: !309, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1464, file: !1461, line: 635, baseType: !818, size: 128, align: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1460, file: !1461, line: 639, baseType: !1473, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1461, line: 733, size: 10240, elements: !1475)
!1475 = !{!1476, !1625}
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1474, file: !1461, line: 734, baseType: !1477, size: 10240)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1474, file: !1461, line: 734, size: 10240, elements: !1478)
!1478 = !{!1479, !1483, !1496, !1500, !1501, !1502, !1503, !1504, !1505, !1514, !1515, !1516, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1555, !1557, !1560, !1605, !1606, !1607, !1610, !1611, !1612, !1615, !1616, !1617, !1623, !1624}
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1461, line: 739, baseType: !1480, size: 512, align: 512)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1477, file: !1461, line: 739, size: 512, align: 512, elements: !1481)
!1481 = !{!1482}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1480, file: !1461, line: 747, baseType: !209, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1477, file: !1461, line: 750, baseType: !1484, size: 128, offset: 512)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1485, line: 218, size: 128, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1486 = !{!1487, !1494, !1495}
!1487 = !DIDerivedType(tag: DW_TAG_member, scope: !1484, file: !1485, line: 219, baseType: !1488, size: 32)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1484, file: !1485, line: 219, size: 32, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1488, file: !1485, line: 220, baseType: !189, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1488, file: !1485, line: 221, baseType: !1492)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1485, line: 197, baseType: !1493)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1485, line: 197, elements: !887)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1484, file: !1485, line: 223, baseType: !7, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1484, file: !1485, line: 224, baseType: !139, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1477, file: !1461, line: 752, baseType: !1497, size: 64, offset: 640)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!309, !1385, !309, !309, !309, !309}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1477, file: !1461, line: 756, baseType: !309, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1477, file: !1461, line: 757, baseType: !309, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1477, file: !1461, line: 760, baseType: !309, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1477, file: !1461, line: 761, baseType: !309, size: 64, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1477, file: !1461, line: 763, baseType: !309, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1477, file: !1461, line: 764, baseType: !1506, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1508, line: 299, baseType: !1509)
!1508 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1508, line: 299, size: 64, elements: !1510)
!1510 = !{!1511}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1509, file: !1508, line: 299, baseType: !1512, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1513, line: 18, baseType: !309)
!1513 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1477, file: !1461, line: 773, baseType: !209, size: 32, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1477, file: !1461, line: 785, baseType: !209, size: 32, offset: 1120)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1477, file: !1461, line: 795, baseType: !1517, size: 64, offset: 1152)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1461, line: 726, size: 128, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1518, file: !1461, line: 727, baseType: !412, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1518, file: !1461, line: 728, baseType: !85, size: 32, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1477, file: !1461, line: 801, baseType: !309, size: 64, offset: 1216)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1477, file: !1461, line: 804, baseType: !604, size: 64, offset: 1280)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1477, file: !1461, line: 806, baseType: !85, size: 32, offset: 1344)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1477, file: !1461, line: 808, baseType: !189, size: 32, offset: 1376)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1477, file: !1461, line: 823, baseType: !1201, size: 320, offset: 1408)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1477, file: !1461, line: 825, baseType: !146, size: 128, offset: 1728)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1477, file: !1461, line: 845, baseType: !85, size: 32, offset: 1856)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1477, file: !1461, line: 849, baseType: !309, size: 64, offset: 1920)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1477, file: !1461, line: 850, baseType: !309, size: 64, offset: 1984)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1477, file: !1461, line: 852, baseType: !309, size: 64, offset: 2048)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1477, file: !1461, line: 853, baseType: !309, size: 64, offset: 2112)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1477, file: !1461, line: 854, baseType: !606, size: 64, offset: 2176)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1477, file: !1461, line: 855, baseType: !309, size: 64, offset: 2240)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1477, file: !1461, line: 856, baseType: !309, size: 64, offset: 2304)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1477, file: !1461, line: 857, baseType: !309, size: 64, offset: 2368)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1477, file: !1461, line: 858, baseType: !309, size: 64, offset: 2432)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1477, file: !1461, line: 865, baseType: !385, size: 32, offset: 2496)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1477, file: !1461, line: 867, baseType: !189, size: 32, offset: 2528)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1477, file: !1461, line: 869, baseType: !309, size: 64, offset: 2560)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1477, file: !1461, line: 869, baseType: !309, size: 64, offset: 2624)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1477, file: !1461, line: 869, baseType: !309, size: 64, offset: 2688)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1477, file: !1461, line: 869, baseType: !309, size: 64, offset: 2752)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1477, file: !1461, line: 870, baseType: !309, size: 64, offset: 2816)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1477, file: !1461, line: 870, baseType: !309, size: 64, offset: 2880)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1477, file: !1461, line: 870, baseType: !309, size: 64, offset: 2944)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1477, file: !1461, line: 871, baseType: !309, size: 64, offset: 3008)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1477, file: !1461, line: 871, baseType: !309, size: 64, offset: 3072)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1477, file: !1461, line: 871, baseType: !309, size: 64, offset: 3136)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1477, file: !1461, line: 871, baseType: !309, size: 64, offset: 3200)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1477, file: !1461, line: 873, baseType: !1552, size: 3328, offset: 3264)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 3328, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 52)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1477, file: !1461, line: 875, baseType: !1556, size: 1280, offset: 6592)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 1280, elements: !828)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1477, file: !1461, line: 877, baseType: !1558, size: 64, offset: 7872)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1461, line: 877, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1477, file: !1461, line: 880, baseType: !1561, size: 1088, offset: 7936)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1562, line: 72, baseType: !1563)
!1562 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1562, line: 23, size: 1088, elements: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1572, !1573, !1574, !1575, !1602, !1603, !1604}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1563, file: !1562, line: 28, baseType: !412, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1563, file: !1562, line: 38, baseType: !606, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1563, file: !1562, line: 40, baseType: !309, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1563, file: !1562, line: 43, baseType: !1201, size: 320, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1563, file: !1562, line: 44, baseType: !1570, size: 64, offset: 512)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1562, line: 44, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1563, file: !1562, line: 48, baseType: !309, size: 64, offset: 576)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !1562, line: 59, baseType: !600, size: 256, offset: 640)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1563, file: !1562, line: 60, baseType: !139, size: 64, offset: 896)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1563, file: !1562, line: 61, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1579, line: 13, size: 1216, elements: !1580)
!1579 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1578, file: !1579, line: 14, baseType: !139, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1578, file: !1579, line: 15, baseType: !309, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1578, file: !1579, line: 17, baseType: !309, size: 64, offset: 128)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1578, file: !1579, line: 17, baseType: !309, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1578, file: !1579, line: 18, baseType: !309, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1578, file: !1579, line: 18, baseType: !309, size: 64, offset: 320)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1578, file: !1579, line: 19, baseType: !1588, size: 64, offset: 384)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1578, file: !1579, line: 21, baseType: !295, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1578, file: !1579, line: 23, baseType: !295, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1578, file: !1579, line: 24, baseType: !295, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1578, file: !1579, line: 25, baseType: !295, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1578, file: !1579, line: 26, baseType: !295, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1578, file: !1579, line: 27, baseType: !295, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1578, file: !1579, line: 28, baseType: !295, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1578, file: !1579, line: 29, baseType: !295, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1578, file: !1579, line: 30, baseType: !295, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1578, file: !1579, line: 31, baseType: !295, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1578, file: !1579, line: 32, baseType: !295, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1578, file: !1579, line: 33, baseType: !295, size: 64, offset: 1152)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1563, file: !1562, line: 63, baseType: !209, size: 32, offset: 1024)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1563, file: !1562, line: 69, baseType: !227, size: 16, offset: 1056)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1563, file: !1562, line: 70, baseType: !734, size: 16, offset: 1072)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !1461, line: 882, baseType: !309, size: 64, offset: 9024)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1477, file: !1461, line: 885, baseType: !189, size: 32, offset: 9088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1477, file: !1461, line: 886, baseType: !1608, size: 64, offset: 9152)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1461, line: 732, flags: DIFlagFwdDecl)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1477, file: !1461, line: 901, baseType: !1340, size: 64, offset: 9216)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1477, file: !1461, line: 904, baseType: !1385, size: 64, offset: 9280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1477, file: !1461, line: 906, baseType: !1613, size: 64, offset: 9344)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1461, line: 906, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1477, file: !1461, line: 930, baseType: !209, size: 32, offset: 9408)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1477, file: !1461, line: 933, baseType: !209, size: 32, offset: 9440)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1477, file: !1461, line: 935, baseType: !1618, size: 64, offset: 9472)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1618, file: !44, line: 104, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1477, file: !1461, line: 940, baseType: !604, size: 64, offset: 9536)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1477, file: !1461, line: 942, baseType: !858, size: 256, offset: 9600)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1474, file: !1461, line: 986, baseType: !1626, offset: 10240)
!1626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !1153)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1460, file: !1461, line: 640, baseType: !1628, size: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1508, line: 297, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1508, line: 297, size: 64, elements: !1630)
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1629, file: !1508, line: 297, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1513, line: 19, baseType: !309)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1461, line: 646, baseType: !1634, size: 64, offset: 256)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1461, line: 646, size: 64, elements: !1635)
!1635 = !{!1636, !1639}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1634, file: !1461, line: 647, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1461, line: 542, baseType: !309)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1634, file: !1461, line: 648, baseType: !1638, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1460, file: !1461, line: 666, baseType: !85, size: 32, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1460, file: !1461, line: 667, baseType: !1642, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1461, line: 579, size: 320, elements: !1644)
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1643, file: !1461, line: 580, baseType: !1201, size: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1460, file: !1461, line: 670, baseType: !157, size: 8, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1460, file: !1461, line: 681, baseType: !1648, size: 256, offset: 512)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !1461, line: 678, size: 256, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1648, file: !1461, line: 679, baseType: !710, size: 192, align: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1648, file: !1461, line: 680, baseType: !309, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1460, file: !1461, line: 689, baseType: !146, size: 128, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1460, file: !1461, line: 691, baseType: !1654, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1461, line: 691, flags: DIFlagFwdDecl)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1460, file: !1461, line: 694, baseType: !1657, size: 64, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1659)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1461, line: 694, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1460, file: !1461, line: 697, baseType: !309, size: 64, offset: 1024)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1460, file: !1461, line: 699, baseType: !1385, size: 64, offset: 1088)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1460, file: !1461, line: 700, baseType: !139, size: 64, offset: 1152)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1460, file: !1461, line: 711, baseType: !604, size: 64, offset: 1216)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1460, file: !1461, line: 717, baseType: !1665, size: 64, offset: 1280)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1667, line: 54, flags: DIFlagFwdDecl)
!1667 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1460, file: !1461, line: 722, baseType: !1669, offset: 1344)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1461, line: 570, elements: !887)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1378, file: !14, line: 1928, baseType: !309, size: 64, offset: 768)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1378, file: !14, line: 1929, baseType: !1672, size: 64, offset: 832)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!85, !339, !1385}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1378, file: !14, line: 1930, baseType: !1676, size: 64, offset: 896)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!85, !1385, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !139)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1378, file: !14, line: 1931, baseType: !1672, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1378, file: !14, line: 1932, baseType: !1682, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!85, !1385, !500, !500, !85}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1378, file: !14, line: 1933, baseType: !1686, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!85, !85, !1385, !85}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !14, line: 1934, baseType: !1690, size: 64, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!85, !1385, !85, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1378, file: !14, line: 1935, baseType: !1497, size: 64, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1378, file: !14, line: 1936, baseType: !1697, size: 64, offset: 1280)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!85, !85}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1378, file: !14, line: 1937, baseType: !1690, size: 64, offset: 1344)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1378, file: !14, line: 1938, baseType: !1702, size: 64, offset: 1408)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!291, !1705, !1385, !1061, !306, !7}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1667, line: 59, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1378, file: !14, line: 1939, baseType: !1708, size: 64, offset: 1472)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!291, !1385, !1061, !1705, !306, !7}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1378, file: !14, line: 1940, baseType: !1712, size: 64, offset: 1536)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1385}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1378, file: !14, line: 1941, baseType: !1716, size: 64, offset: 1600)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!85, !1385, !85, !1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1378, file: !14, line: 1942, baseType: !1722, size: 64, offset: 1664)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!295, !1385, !85, !500, !500}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1378, file: !14, line: 1944, baseType: !1726, size: 64, offset: 1728)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{null, !1040, !1385}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1378, file: !14, line: 1948, baseType: !1730, size: 64, offset: 1792)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!291, !1385, !500, !1385, !500, !306, !7}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1378, file: !14, line: 1950, baseType: !1734, size: 64, offset: 1856)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!500, !1385, !500, !1385, !500, !500, !7}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1378, file: !14, line: 1953, baseType: !1682, size: 64, offset: 1920)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1378, file: !14, line: 1954, baseType: !1739, size: 64, offset: 1984)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!85, !1742, !7}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1378, file: !14, line: 1955, baseType: !1745, size: 64, offset: 2048)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!85, !1742, !1427, !7}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1078, file: !14, line: 1018, baseType: !412, size: 64, offset: 1472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1078, file: !14, line: 1020, baseType: !139, size: 64, offset: 1536)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1078, file: !14, line: 1023, baseType: !139, size: 64, offset: 1600)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1078, file: !14, line: 1027, baseType: !1752, size: 64, offset: 1664)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1078, file: !14, line: 1029, baseType: !335, size: 64, offset: 1728)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1078, file: !14, line: 1030, baseType: !1755, size: 32, offset: 1792)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1756, line: 8, baseType: !408)
!1756 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1078, file: !14, line: 1031, baseType: !1755, size: 32, offset: 1824)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1041, file: !1042, line: 29, baseType: !139, size: 64, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !984, file: !14, line: 2077, baseType: !1037, size: 64, offset: 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !984, file: !14, line: 2078, baseType: !1037, size: 64, offset: 1152)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !984, file: !14, line: 2079, baseType: !1037, size: 64, offset: 1216)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !984, file: !14, line: 2081, baseType: !1763, size: 64, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!291, !490, !85, !259, !306, !500}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !984, file: !14, line: 2082, baseType: !1767, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!291, !490, !85, !177, !306, !500}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !984, file: !14, line: 2083, baseType: !1771, size: 64, offset: 1408)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!1774, !339}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1802, !1803, !1804}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1776, file: !27, line: 297, baseType: !844, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1776, file: !27, line: 298, baseType: !146, size: 128, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1776, file: !27, line: 299, baseType: !146, size: 128, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1776, file: !27, line: 300, baseType: !146, size: 128, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1776, file: !27, line: 301, baseType: !600, size: 256, offset: 512)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1776, file: !27, line: 302, baseType: !189, size: 32, offset: 768)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1776, file: !27, line: 303, baseType: !209, size: 32, offset: 800)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1776, file: !27, line: 304, baseType: !490, size: 64, offset: 832)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1776, file: !27, line: 305, baseType: !1787, size: 64, offset: 896)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1788)
!1788 = !{!1789, !1801}
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !27, line: 69, baseType: !1790, size: 32)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !27, line: 69, size: 32, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1790, file: !27, line: 70, baseType: !345, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1790, file: !27, line: 71, baseType: !354, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1790, file: !27, line: 72, baseType: !1795, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1796, line: 24, baseType: !1797)
!1796 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1796, line: 22, size: 32, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1797, file: !1796, line: 23, baseType: !1800, size: 32)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1796, line: 20, baseType: !351)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1776, file: !27, line: 306, baseType: !500, size: 64, offset: 960)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1776, file: !27, line: 307, baseType: !309, size: 64, offset: 1024)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1776, file: !27, line: 308, baseType: !1805, size: 576, offset: 1088)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1806)
!1806 = !{!1807, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1805, file: !27, line: 206, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !502)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1805, file: !27, line: 207, baseType: !1808, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1805, file: !27, line: 208, baseType: !1808, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1805, file: !27, line: 209, baseType: !1808, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1805, file: !27, line: 210, baseType: !1808, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1805, file: !27, line: 211, baseType: !1808, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1805, file: !27, line: 212, baseType: !1808, size: 64, offset: 384)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1805, file: !27, line: 213, baseType: !1217, size: 64, offset: 448)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1805, file: !27, line: 214, baseType: !1217, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !984, file: !14, line: 2085, baseType: !1818, size: 64, offset: 1472)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!295, !490, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1823, line: 15, size: 256, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1824 = !{!1825, !1826, !1827, !1828, !1829}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1822, file: !1823, line: 16, baseType: !140, size: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1822, file: !1823, line: 19, baseType: !85, size: 32, offset: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1822, file: !1823, line: 26, baseType: !309, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1822, file: !1823, line: 33, baseType: !309, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1822, file: !1823, line: 36, baseType: !1830, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1461, line: 33, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !984, file: !14, line: 2087, baseType: !1818, size: 64, offset: 1536)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !984, file: !14, line: 2089, baseType: !525, size: 64, offset: 1600)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !491, file: !14, line: 1198, baseType: !1835, size: 64, offset: 448)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1838)
!1838 = !{!1839, !1843, !1847, !1851, !1852, !1853, !1854, !1855, !1860, !1865, !1869}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1837, file: !27, line: 325, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!85, !1775}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1837, file: !27, line: 326, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!1775, !490, !85}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1837, file: !27, line: 327, baseType: !1848, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !1775}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1837, file: !27, line: 328, baseType: !1840, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1837, file: !27, line: 329, baseType: !1840, size: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1837, file: !27, line: 330, baseType: !1840, size: 64, offset: 320)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1837, file: !27, line: 331, baseType: !1012, size: 64, offset: 384)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1837, file: !27, line: 334, baseType: !1856, size: 64, offset: 448)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!1859, !339}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1837, file: !27, line: 335, baseType: !1861, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!85, !339, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1837, file: !27, line: 337, baseType: !1866, size: 64, offset: 576)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!85, !339, !1859}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1837, file: !27, line: 339, baseType: !1870, size: 64, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!85, !490, !1873}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !491, file: !14, line: 1199, baseType: !1875, size: 64, offset: 512)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1878)
!1878 = !{!1879, !1885, !1886, !1890, !1891, !1892, !1907, !1930, !1934, !1935, !1958}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1877, file: !27, line: 431, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!85, !490, !85, !85, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1369)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1877, file: !27, line: 432, baseType: !1012, size: 64, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1877, file: !27, line: 433, baseType: !1887, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!85, !490, !7}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1877, file: !27, line: 434, baseType: !1887, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1877, file: !27, line: 435, baseType: !1012, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1877, file: !27, line: 436, baseType: !1893, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!85, !490, !85, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1897, file: !27, line: 418, baseType: !85, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1897, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1897, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1897, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1897, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1897, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1897, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1897, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1877, file: !27, line: 437, baseType: !1908, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!85, !490, !1787, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1912, file: !27, line: 346, baseType: !85, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1912, file: !27, line: 347, baseType: !412, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1912, file: !27, line: 348, baseType: !412, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1912, file: !27, line: 349, baseType: !412, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1912, file: !27, line: 350, baseType: !412, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1912, file: !27, line: 351, baseType: !412, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1912, file: !27, line: 352, baseType: !412, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1912, file: !27, line: 353, baseType: !610, size: 64, offset: 448)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1912, file: !27, line: 355, baseType: !610, size: 64, offset: 512)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1912, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1912, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1912, file: !27, line: 358, baseType: !412, size: 64, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1912, file: !27, line: 359, baseType: !412, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1912, file: !27, line: 360, baseType: !412, size: 64, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1912, file: !27, line: 361, baseType: !610, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1912, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1877, file: !27, line: 438, baseType: !1931, size: 64, offset: 448)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!85, !490, !1873, !1911}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1877, file: !27, line: 440, baseType: !1908, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1877, file: !27, line: 441, baseType: !1936, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!85, !490, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1941)
!1941 = !{!1942, !1943}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1940, file: !27, line: 412, baseType: !7, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1940, file: !27, line: 413, baseType: !1944, size: 1344, offset: 64)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 1344, elements: !260)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1957}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1945, file: !27, line: 398, baseType: !7, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1945, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1945, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1945, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1945, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1945, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1945, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1945, file: !27, line: 406, baseType: !414, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1945, file: !27, line: 407, baseType: !1956, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !141, line: 132, baseType: !412)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1945, file: !27, line: 408, baseType: !1956, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1877, file: !27, line: 442, baseType: !1887, size: 64, offset: 640)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !491, file: !14, line: 1200, baseType: !1960, size: 64, offset: 576)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1962)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !491, file: !14, line: 1201, baseType: !309, size: 64, offset: 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !491, file: !14, line: 1202, baseType: !309, size: 64, offset: 704)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !491, file: !14, line: 1203, baseType: !309, size: 64, offset: 768)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !491, file: !14, line: 1204, baseType: !374, size: 64, offset: 832)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !491, file: !14, line: 1205, baseType: !1201, size: 320, offset: 896)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !491, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !491, file: !14, line: 1207, baseType: !209, size: 32, offset: 1248)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !491, file: !14, line: 1209, baseType: !139, size: 64, offset: 1280)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !491, file: !14, line: 1211, baseType: !1972, size: 64, offset: 1344)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1975)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !491, file: !14, line: 1223, baseType: !1977, size: 64, offset: 1408)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !391, line: 34, size: 64, elements: !1978)
!1978 = !{!1979}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1977, file: !391, line: 35, baseType: !394, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !491, file: !14, line: 1224, baseType: !146, size: 128, offset: 1472)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !491, file: !14, line: 1225, baseType: !1982, size: 64, offset: 1600)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !491, file: !14, line: 1226, baseType: !1985, size: 64, offset: 1664)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !491, file: !14, line: 1227, baseType: !1988, size: 64, offset: 1728)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !491, file: !14, line: 1228, baseType: !1991, size: 64, offset: 1792)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !491, file: !14, line: 1229, baseType: !844, size: 128, offset: 1856)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !491, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !491, file: !14, line: 1231, baseType: !1996, size: 2496, offset: 2048)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1997)
!1997 = !{!1998, !1999, !2000, !2002, !2034}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1996, file: !27, line: 522, baseType: !7, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1996, file: !27, line: 523, baseType: !1201, size: 320, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1996, file: !27, line: 524, baseType: !2001, size: 192, offset: 384)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !260)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1996, file: !27, line: 525, baseType: !2003, size: 1728, offset: 576)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2004, size: 1728, elements: !260)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !2005)
!2005 = !{!2006, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2004, file: !27, line: 223, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !2009)
!2009 = !{!2010, !2011, !2024, !2025}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2008, file: !27, line: 446, baseType: !85, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2008, file: !27, line: 447, baseType: !2012, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2014, file: !27, line: 313, baseType: !1012, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2014, file: !27, line: 314, baseType: !1012, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2014, file: !27, line: 315, baseType: !1012, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2014, file: !27, line: 316, baseType: !1012, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2014, file: !27, line: 317, baseType: !1840, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2014, file: !27, line: 318, baseType: !1840, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2014, file: !27, line: 319, baseType: !1840, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2014, file: !27, line: 320, baseType: !1870, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2008, file: !27, line: 448, baseType: !529, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2008, file: !27, line: 449, baseType: !2007, size: 64, offset: 192)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2004, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2004, file: !27, line: 226, baseType: !146, size: 128, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2004, file: !27, line: 227, baseType: !309, size: 64, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2004, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2004, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2004, file: !27, line: 230, baseType: !1808, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2004, file: !27, line: 231, baseType: !1808, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2004, file: !27, line: 232, baseType: !139, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1996, file: !27, line: 526, baseType: !2035, size: 192, offset: 2304)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 192, elements: !260)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !491, file: !14, line: 1233, baseType: !2037, size: 2368, offset: 4544)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2037, file: !14, line: 1185, baseType: !229, size: 16)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2037, file: !14, line: 1186, baseType: !229, size: 16, offset: 16)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2037, file: !14, line: 1187, baseType: !2042, size: 2304, offset: 64)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 2304, elements: !260)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2044, line: 12, size: 768, elements: !2045)
!2044 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2045 = !{!2046, !2054, !2055, !3299, !3300}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2043, file: !2044, line: 13, baseType: !2047, size: 384)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2048, line: 17, size: 384, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2047, file: !2048, line: 18, baseType: !85, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2047, file: !2048, line: 19, baseType: !85, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2047, file: !2048, line: 20, baseType: !1138, size: 192, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2047, file: !2048, line: 22, baseType: !818, size: 128, align: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2043, file: !2044, line: 14, baseType: !672, size: 64, offset: 384)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2043, file: !2044, line: 15, baseType: !2056, size: 64, offset: 448)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2057, line: 16, size: 64, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2056, file: !2057, line: 17, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1667, line: 746, size: 58368, elements: !2062)
!2062 = !{!2063, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2143, !2154, !2249, !2253, !2256, !2287, !2288, !2289, !2290, !2301, !2303, !2304, !2305, !2306, !2307, !2308, !2319, !2320, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2337, !2338, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2426, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2474, !2480, !2481, !2482, !2483, !2484, !2488, !2491, !2498, !2503, !2506, !2509, !2512, !2515, !2653, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2691, !2692, !2693, !2702, !2710, !2711, !2712, !2713, !2714, !2719, !2720, !2721, !2724, !2725, !2728, !2731, !2734, !2742, !2745, !2746, !2832, !2833, !2834, !2835, !2836, !2842, !2843, !2844, !2845, !2848, !2849, !2852, !2855, !2856, !2859, !2860, !2861, !2864, !2865, !2866, !2867, !2868, !2869, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2901, !2902, !2968, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2980, !3052, !3054, !3055, !3056, !3057, !3058, !3059, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3076, !3077, !3078}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2061, file: !1667, line: 752, baseType: !2064, size: 192)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2065, line: 56, size: 192, elements: !2066)
!2065 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2066 = !{!2067, !2068, !2069, !2070}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2065, line: 57, baseType: !309, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2064, file: !2065, line: 58, baseType: !309, size: 64, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2064, file: !2065, line: 59, baseType: !408, size: 32, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2064, file: !2065, line: 61, baseType: !408, size: 32, offset: 160)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2061, file: !1667, line: 754, baseType: !7, size: 32, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2061, file: !1667, line: 767, baseType: !139, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2061, file: !1667, line: 768, baseType: !1127, size: 32, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2061, file: !1667, line: 770, baseType: !7, size: 32, offset: 352)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2061, file: !1667, line: 771, baseType: !7, size: 32, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2061, file: !1667, line: 774, baseType: !85, size: 32, offset: 416)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2061, file: !1667, line: 775, baseType: !2078, size: 128, offset: 448)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2079, line: 58, size: 128, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2080 = !{!2081, !2082, !2087, !2088}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2078, file: !2079, line: 59, baseType: !1084, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, scope: !2078, file: !2079, line: 60, baseType: !2083, size: 32, offset: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2078, file: !2079, line: 60, size: 32, elements: !2084)
!2084 = !{!2085, !2086}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2083, file: !2079, line: 61, baseType: !7, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2083, file: !2079, line: 62, baseType: !209, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2078, file: !2079, line: 65, baseType: !227, size: 16, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2078, file: !2079, line: 65, baseType: !227, size: 16, offset: 112)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2061, file: !1667, line: 776, baseType: !7, size: 32, offset: 576)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2061, file: !1667, line: 777, baseType: !309, size: 64, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2061, file: !1667, line: 778, baseType: !2060, size: 64, offset: 704)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2061, file: !1667, line: 787, baseType: !85, size: 32, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2061, file: !1667, line: 788, baseType: !85, size: 32, offset: 800)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2061, file: !1667, line: 790, baseType: !85, size: 32, offset: 832)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2061, file: !1667, line: 792, baseType: !85, size: 32, offset: 864)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2061, file: !1667, line: 793, baseType: !85, size: 32, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2061, file: !1667, line: 794, baseType: !85, size: 32, offset: 928)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2061, file: !1667, line: 795, baseType: !7, size: 32, offset: 960)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2061, file: !1667, line: 797, baseType: !2100, size: 2048, offset: 1024)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1667, line: 551, size: 2048, elements: !2101)
!2101 = !{!2102, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2122, !2125, !2126, !2127}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2100, file: !1667, line: 553, baseType: !2103, size: 128)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1667, line: 411, size: 128, elements: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2103, file: !1667, line: 412, baseType: !309, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2103, file: !1667, line: 413, baseType: !408, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2100, file: !1667, line: 554, baseType: !710, size: 192, align: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2100, file: !1667, line: 555, baseType: !412, size: 64, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2100, file: !1667, line: 556, baseType: !412, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2100, file: !1667, line: 558, baseType: !146, size: 128, offset: 448)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2100, file: !1667, line: 559, baseType: !7, size: 32, offset: 576)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2100, file: !1667, line: 561, baseType: !412, size: 64, offset: 640)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2100, file: !1667, line: 562, baseType: !412, size: 64, offset: 704)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2100, file: !1667, line: 563, baseType: !412, size: 64, offset: 768)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2100, file: !1667, line: 564, baseType: !412, size: 64, offset: 832)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2100, file: !1667, line: 565, baseType: !610, size: 64, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2100, file: !1667, line: 566, baseType: !412, size: 64, offset: 960)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2100, file: !1667, line: 568, baseType: !412, size: 64, offset: 1024)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2100, file: !1667, line: 571, baseType: !85, size: 32, offset: 1088)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2100, file: !1667, line: 572, baseType: !2121, size: 64, offset: 1152)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2100, file: !1667, line: 574, baseType: !2123, size: 64, offset: 1216)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1667, line: 49, flags: DIFlagFwdDecl)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2100, file: !1667, line: 576, baseType: !2123, size: 64, offset: 1280)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2100, file: !1667, line: 578, baseType: !309, size: 64, offset: 1344)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2100, file: !1667, line: 588, baseType: !2128, size: 512, align: 512, offset: 1536)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1667, line: 497, size: 512, align: 512, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2128, file: !1667, line: 498, baseType: !412, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2128, file: !1667, line: 499, baseType: !412, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2128, file: !1667, line: 500, baseType: !412, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2128, file: !1667, line: 501, baseType: !408, size: 32, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2128, file: !1667, line: 502, baseType: !408, size: 32, offset: 224)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2128, file: !1667, line: 503, baseType: !309, size: 64, offset: 256)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2128, file: !1667, line: 504, baseType: !309, size: 64, offset: 320)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2128, file: !1667, line: 505, baseType: !309, size: 64, offset: 384)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2128, file: !1667, line: 506, baseType: !2139, size: 64, align: 64, offset: 448)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1667, line: 445, size: 64, align: 64, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2139, file: !1667, line: 446, baseType: !7, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2139, file: !1667, line: 447, baseType: !7, size: 32, offset: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2061, file: !1667, line: 798, baseType: !2144, size: 384, offset: 3072)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1667, line: 592, size: 384, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2144, file: !1667, line: 593, baseType: !146, size: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2144, file: !1667, line: 594, baseType: !309, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2144, file: !1667, line: 595, baseType: !309, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2144, file: !1667, line: 596, baseType: !7, size: 32, offset: 256)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2144, file: !1667, line: 597, baseType: !229, size: 16, offset: 288)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2144, file: !1667, line: 598, baseType: !229, size: 16, offset: 304)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2144, file: !1667, line: 600, baseType: !2153, size: 64, offset: 320)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2061, file: !1667, line: 799, baseType: !2155, size: 1792, offset: 3456)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1667, line: 610, size: 1792, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2246, !2247}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2155, file: !1667, line: 611, baseType: !710, size: 192, align: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2155, file: !1667, line: 618, baseType: !412, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2155, file: !1667, line: 619, baseType: !412, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2155, file: !1667, line: 620, baseType: !412, size: 64, offset: 320)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2155, file: !1667, line: 621, baseType: !412, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2155, file: !1667, line: 622, baseType: !412, size: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2155, file: !1667, line: 629, baseType: !610, size: 64, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2155, file: !1667, line: 630, baseType: !412, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2155, file: !1667, line: 631, baseType: !7, size: 32, offset: 640)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2155, file: !1667, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2155, file: !1667, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2155, file: !1667, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2155, file: !1667, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2155, file: !1667, line: 662, baseType: !2171, size: 512, offset: 704)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !2172)
!2172 = !{!2173, !2181, !2182, !2187, !2242, !2243, !2244, !2245}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2171, file: !33, line: 119, baseType: !2174, size: 256)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2175, line: 9, size: 256, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2174, file: !2175, line: 10, baseType: !710, size: 192, align: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2174, file: !2175, line: 11, baseType: !2179, size: 64, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2180, line: 29, baseType: !610)
!2180 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2171, file: !33, line: 120, baseType: !2179, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2171, file: !33, line: 121, baseType: !2183, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!32, !2186}
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2171, file: !33, line: 122, baseType: !2188, size: 64, offset: 384)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !2190)
!2190 = !{!2191, !2216, !2217, !2220, !2225, !2226, !2237, !2241}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2189, file: !33, line: 160, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !2194)
!2194 = !{!2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2193, file: !33, line: 216, baseType: !558, size: 32)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2193, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2193, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2193, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2193, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2193, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2193, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2193, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2193, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2193, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2193, file: !33, line: 227, baseType: !229, size: 16, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2193, file: !33, line: 228, baseType: !229, size: 16, offset: 208)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2193, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2193, file: !33, line: 235, baseType: !2179, size: 64, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2193, file: !33, line: 236, baseType: !2186, size: 64, offset: 320)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2193, file: !33, line: 237, baseType: !2179, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2193, file: !33, line: 238, baseType: !2186, size: 64, offset: 448)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2193, file: !33, line: 239, baseType: !2213, size: 4096, align: 512, offset: 512)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2189, size: 4096, align: 512, elements: !2214)
!2214 = !{!2215}
!2215 = !DISubrange(count: 8)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2189, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2189, file: !33, line: 162, baseType: !2218, size: 32, offset: 96)
!2218 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !141, line: 32, baseType: !2219)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !293, line: 96, baseType: !85)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2189, file: !33, line: 163, baseType: !2221, size: 32, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !381, line: 274, baseType: !2222)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !381, line: 274, size: 32, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2222, file: !381, line: 274, baseType: !385, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2189, file: !33, line: 164, baseType: !2186, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2189, file: !33, line: 165, baseType: !2227, size: 128, offset: 256)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2175, line: 14, size: 128, elements: !2228)
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2227, file: !2175, line: 15, baseType: !2230, size: 128)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !711, line: 26, size: 128, elements: !2231)
!2231 = !{!2232, !2236}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2230, file: !711, line: 27, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !711, line: 12, size: 64, elements: !2234)
!2234 = !{!2235}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2233, file: !711, line: 13, baseType: !715, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2230, file: !711, line: 28, baseType: !715, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2189, file: !33, line: 166, baseType: !2238, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2179}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2189, file: !33, line: 167, baseType: !2179, size: 64, offset: 448)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2171, file: !33, line: 123, baseType: !217, size: 8, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2171, file: !33, line: 124, baseType: !217, size: 8, offset: 456)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2171, file: !33, line: 125, baseType: !217, size: 8, offset: 464)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2171, file: !33, line: 126, baseType: !217, size: 8, offset: 472)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2155, file: !1667, line: 671, baseType: !2171, size: 512, offset: 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2155, file: !1667, line: 679, baseType: !2248, size: 64, offset: 1728)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2061, file: !1667, line: 800, baseType: !2250, size: 64, offset: 5248)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2252)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1667, line: 800, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2061, file: !1667, line: 809, baseType: !2254, size: 64, offset: 5312)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1667, line: 70, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2061, file: !1667, line: 825, baseType: !2257, size: 2048, align: 512, offset: 5632)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1667, line: 509, size: 2048, align: 512, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2257, file: !1667, line: 511, baseType: !412, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2257, file: !1667, line: 512, baseType: !412, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2257, file: !1667, line: 513, baseType: !412, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2257, file: !1667, line: 514, baseType: !412, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2257, file: !1667, line: 515, baseType: !412, size: 64, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2257, file: !1667, line: 516, baseType: !412, size: 64, offset: 320)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2257, file: !1667, line: 518, baseType: !412, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2257, file: !1667, line: 519, baseType: !412, size: 64, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2257, file: !1667, line: 520, baseType: !610, size: 64, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2257, file: !1667, line: 522, baseType: !412, size: 64, offset: 576)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2257, file: !1667, line: 523, baseType: !412, size: 64, offset: 640)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2257, file: !1667, line: 524, baseType: !610, size: 64, offset: 704)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2257, file: !1667, line: 526, baseType: !610, size: 64, offset: 768)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2257, file: !1667, line: 527, baseType: !412, size: 64, offset: 832)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2257, file: !1667, line: 529, baseType: !412, size: 64, offset: 896)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2257, file: !1667, line: 530, baseType: !412, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2257, file: !1667, line: 531, baseType: !412, size: 64, offset: 1024)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2257, file: !1667, line: 532, baseType: !412, size: 64, offset: 1088)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2257, file: !1667, line: 533, baseType: !412, size: 64, offset: 1152)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2257, file: !1667, line: 535, baseType: !412, size: 64, offset: 1216)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2257, file: !1667, line: 536, baseType: !412, size: 64, offset: 1280)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2257, file: !1667, line: 537, baseType: !412, size: 64, offset: 1344)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2257, file: !1667, line: 538, baseType: !412, size: 64, offset: 1408)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2257, file: !1667, line: 539, baseType: !412, size: 64, offset: 1472)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2257, file: !1667, line: 540, baseType: !412, size: 64, offset: 1536)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2257, file: !1667, line: 541, baseType: !412, size: 64, offset: 1600)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2257, file: !1667, line: 542, baseType: !412, size: 64, offset: 1664)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2257, file: !1667, line: 543, baseType: !412, size: 64, offset: 1728)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2061, file: !1667, line: 833, baseType: !7, size: 32, offset: 7680)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2061, file: !1667, line: 836, baseType: !7, size: 32, offset: 7712)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2061, file: !1667, line: 837, baseType: !85, size: 32, offset: 7744)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2061, file: !1667, line: 838, baseType: !2291, size: 64, offset: 7808)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2293)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2294, line: 19, baseType: !2295)
!2294 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2294, line: 19, size: 64, elements: !2296)
!2296 = !{!2297}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2295, file: !2294, line: 19, baseType: !2298, size: 64)
!2298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !2299)
!2299 = !{!2300}
!2300 = !DISubrange(count: 1)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2061, file: !1667, line: 839, baseType: !2302, size: 64, offset: 7872)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2061, file: !1667, line: 840, baseType: !2293, size: 64, offset: 7936)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2061, file: !1667, line: 841, baseType: !139, size: 64, offset: 8000)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2061, file: !1667, line: 843, baseType: !229, size: 16, offset: 8064)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2061, file: !1667, line: 845, baseType: !229, size: 16, offset: 8080)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2061, file: !1667, line: 848, baseType: !85, size: 32, offset: 8096)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2061, file: !1667, line: 849, baseType: !2309, size: 32, offset: 8128)
!2309 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1667, line: 718, size: 32, elements: !2310)
!2310 = !{!2311, !2318}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2309, file: !1667, line: 724, baseType: !2312, size: 32)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2309, file: !1667, line: 719, size: 32, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2312, file: !1667, line: 720, baseType: !217, size: 8)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2312, file: !1667, line: 721, baseType: !217, size: 8, offset: 8)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2312, file: !1667, line: 722, baseType: !217, size: 8, offset: 16)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2312, file: !1667, line: 723, baseType: !217, size: 8, offset: 24)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2309, file: !1667, line: 725, baseType: !408, size: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2061, file: !1667, line: 850, baseType: !146, size: 128, offset: 8192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2061, file: !1667, line: 851, baseType: !2321, size: 64, offset: 8320)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1667, line: 60, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2061, file: !1667, line: 855, baseType: !309, size: 64, offset: 8384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2061, file: !1667, line: 856, baseType: !217, size: 8, offset: 8448)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2061, file: !1667, line: 857, baseType: !217, size: 8, offset: 8456)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2061, file: !1667, line: 858, baseType: !85, size: 32, offset: 8480)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2061, file: !1667, line: 859, baseType: !146, size: 128, offset: 8512)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2061, file: !1667, line: 860, baseType: !85, size: 32, offset: 8640)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2061, file: !1667, line: 861, baseType: !146, size: 128, offset: 8704)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2061, file: !1667, line: 873, baseType: !2331, size: 256, offset: 8832)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1667, line: 376, size: 256, elements: !2332)
!2332 = !{!2333, !2334, !2335, !2336}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2331, file: !1667, line: 381, baseType: !309, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2331, file: !1667, line: 384, baseType: !414, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2331, file: !1667, line: 389, baseType: !414, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2331, file: !1667, line: 392, baseType: !414, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2061, file: !1667, line: 875, baseType: !146, size: 128, offset: 9088)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2061, file: !1667, line: 877, baseType: !2339, size: 320, offset: 9216)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2340, line: 86, size: 320, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2341 = !{!2342, !2343, !2344}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2339, file: !2340, line: 87, baseType: !85, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2339, file: !2340, line: 88, baseType: !146, size: 128, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2339, file: !2340, line: 89, baseType: !146, size: 128, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2061, file: !1667, line: 878, baseType: !710, size: 192, align: 64, offset: 9536)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2061, file: !1667, line: 881, baseType: !1473, size: 64, offset: 9728)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2061, file: !1667, line: 882, baseType: !1473, size: 64, offset: 9792)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2061, file: !1667, line: 884, baseType: !85, size: 32, offset: 9856)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2061, file: !1667, line: 885, baseType: !85, size: 32, offset: 9888)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2061, file: !1667, line: 886, baseType: !85, size: 32, offset: 9920)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2061, file: !1667, line: 888, baseType: !85, size: 32, offset: 9952)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2061, file: !1667, line: 890, baseType: !309, size: 64, offset: 9984)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2061, file: !1667, line: 893, baseType: !7, size: 32, offset: 10048)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2061, file: !1667, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2061, file: !1667, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2061, file: !1667, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2061, file: !1667, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2061, file: !1667, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2061, file: !1667, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2061, file: !1667, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2061, file: !1667, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2061, file: !1667, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2061, file: !1667, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2061, file: !1667, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2061, file: !1667, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2061, file: !1667, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2061, file: !1667, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2061, file: !1667, line: 969, baseType: !309, size: 64, offset: 10176)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2061, file: !1667, line: 971, baseType: !2370, size: 448, offset: 10240)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2371)
!2371 = !{!2372, !2373, !2378}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2370, file: !38, line: 26, baseType: !309, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2370, file: !38, line: 27, baseType: !2374, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!295, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, scope: !2370, file: !38, line: 28, baseType: !2379, size: 320, offset: 128)
!2379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2370, file: !38, line: 28, size: 320, elements: !2380)
!2380 = !{!2381, !2391, !2416}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2379, file: !38, line: 37, baseType: !2382, size: 320)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !38, line: 30, size: 320, elements: !2383)
!2383 = !{!2384, !2386, !2387, !2388, !2389, !2390}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2382, file: !38, line: 31, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2382, file: !38, line: 32, baseType: !408, size: 32, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2382, file: !38, line: 33, baseType: !408, size: 32, offset: 96)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2382, file: !38, line: 34, baseType: !408, size: 32, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2382, file: !38, line: 35, baseType: !412, size: 64, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2382, file: !38, line: 36, baseType: !2385, size: 64, offset: 256)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2379, file: !38, line: 47, baseType: !2392, size: 192)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !38, line: 39, size: 192, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2415}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2392, file: !38, line: 40, baseType: !2218, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2392, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, scope: !2392, file: !38, line: 42, baseType: !2397, size: 64, offset: 64)
!2397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2392, file: !38, line: 42, size: 64, elements: !2398)
!2398 = !{!2399, !2407}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2397, file: !38, line: 43, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2402, line: 7, size: 128, elements: !2403)
!2402 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2403 = !{!2404, !2406}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2401, file: !2402, line: 8, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !293, line: 93, baseType: !502)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2401, file: !2402, line: 9, baseType: !502, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2397, file: !38, line: 44, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2410, line: 7, size: 64, elements: !2411)
!2410 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2411 = !{!2412, !2414}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2409, file: !2410, line: 8, baseType: !2413, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2410, line: 5, baseType: !596)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2409, file: !2410, line: 9, baseType: !596, size: 32, offset: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2392, file: !38, line: 46, baseType: !412, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2379, file: !38, line: 55, baseType: !2417, size: 256)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2379, file: !38, line: 49, size: 256, elements: !2418)
!2418 = !{!2419, !2422, !2423, !2424, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2417, file: !38, line: 50, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2417, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2417, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2417, file: !38, line: 53, baseType: !309, size: 64, offset: 128)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2417, file: !38, line: 54, baseType: !309, size: 64, offset: 192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2061, file: !1667, line: 973, baseType: !2427, size: 32, offset: 10688)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !141, line: 27, baseType: !2428)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !293, line: 28, baseType: !85)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2061, file: !1667, line: 974, baseType: !2427, size: 32, offset: 10720)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2061, file: !1667, line: 978, baseType: !309, size: 64, offset: 10752)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2061, file: !1667, line: 987, baseType: !2060, size: 64, offset: 10816)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2061, file: !1667, line: 990, baseType: !2060, size: 64, offset: 10880)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2061, file: !1667, line: 995, baseType: !146, size: 128, offset: 10944)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2061, file: !1667, line: 996, baseType: !146, size: 128, offset: 11072)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2061, file: !1667, line: 997, baseType: !2060, size: 64, offset: 11200)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2061, file: !1667, line: 1005, baseType: !146, size: 128, offset: 11264)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2061, file: !1667, line: 1006, baseType: !146, size: 128, offset: 11392)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2061, file: !1667, line: 1009, baseType: !1123, size: 64, offset: 11520)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2061, file: !1667, line: 1010, baseType: !2440, size: 512, offset: 11584)
!2440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 512, elements: !828)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2061, file: !1667, line: 1011, baseType: !146, size: 128, offset: 12096)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2061, file: !1667, line: 1012, baseType: !146, size: 128, offset: 12224)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2061, file: !1667, line: 1014, baseType: !548, size: 64, offset: 12352)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2061, file: !1667, line: 1017, baseType: !727, size: 64, offset: 12416)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2061, file: !1667, line: 1020, baseType: !727, size: 64, offset: 12480)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2061, file: !1667, line: 1023, baseType: !139, size: 64, offset: 12544)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2061, file: !1667, line: 1025, baseType: !412, size: 64, offset: 12608)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2061, file: !1667, line: 1026, baseType: !412, size: 64, offset: 12672)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2061, file: !1667, line: 1031, baseType: !412, size: 64, offset: 12736)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2061, file: !1667, line: 1032, baseType: !2451, size: 192, offset: 12800)
!2451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1667, line: 324, size: 192, elements: !2452)
!2452 = !{!2453, !2454, !2455}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2451, file: !1667, line: 326, baseType: !412, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2451, file: !1667, line: 327, baseType: !412, size: 64, offset: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2451, file: !1667, line: 328, baseType: !558, size: 32, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2061, file: !1667, line: 1041, baseType: !309, size: 64, offset: 12992)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2061, file: !1667, line: 1042, baseType: !309, size: 64, offset: 13056)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2061, file: !1667, line: 1045, baseType: !412, size: 64, offset: 13120)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2061, file: !1667, line: 1048, baseType: !412, size: 64, offset: 13184)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2061, file: !1667, line: 1051, baseType: !309, size: 64, offset: 13248)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2061, file: !1667, line: 1052, baseType: !309, size: 64, offset: 13312)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2061, file: !1667, line: 1055, baseType: !2463, size: 640, offset: 13376)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2464, line: 132, size: 640, elements: !2465)
!2464 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2465 = !{!2466, !2472, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2463, file: !2464, line: 133, baseType: !2467, size: 576)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2468, size: 576, elements: !260)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2464, line: 117, size: 192, elements: !2469)
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2468, file: !2464, line: 118, baseType: !412, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2468, file: !2464, line: 119, baseType: !2227, size: 128, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2463, file: !2464, line: 134, baseType: !7, size: 32, offset: 576)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2463, file: !2464, line: 135, baseType: !7, size: 32, offset: 608)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2061, file: !1667, line: 1058, baseType: !2475, size: 448, offset: 14016)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2464, line: 144, size: 448, elements: !2476)
!2476 = !{!2477, !2478, !2479}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2475, file: !2464, line: 145, baseType: !818, size: 128, align: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2475, file: !2464, line: 146, baseType: !600, size: 256, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2475, file: !2464, line: 147, baseType: !7, size: 32, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2061, file: !1667, line: 1064, baseType: !1160, size: 64, offset: 14464)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2061, file: !1667, line: 1067, baseType: !1160, size: 64, offset: 14528)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2061, file: !1667, line: 1070, baseType: !1160, size: 64, offset: 14592)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2061, file: !1667, line: 1074, baseType: !1187, size: 64, offset: 14656)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2061, file: !1667, line: 1084, baseType: !2485, size: 128, offset: 14720)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !2486)
!2486 = !{!2487}
!2487 = !DISubrange(count: 16)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2061, file: !1667, line: 1086, baseType: !2489, size: 64, offset: 14848)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1667, line: 55, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2061, file: !1667, line: 1089, baseType: !2492, size: 64, offset: 14912)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2493, line: 12, size: 64, elements: !2494)
!2493 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2494 = !{!2495}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2492, file: !2493, line: 13, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2493, line: 8, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2061, file: !1667, line: 1090, baseType: !2499, size: 128, offset: 14976)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2500, line: 13, size: 128, elements: !2501)
!2500 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2501 = !{!2502}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2499, file: !2500, line: 14, baseType: !146, size: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2061, file: !1667, line: 1097, baseType: !2504, size: 64, offset: 15104)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1667, line: 50, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2061, file: !1667, line: 1100, baseType: !2507, size: 64, offset: 15168)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1667, line: 1100, flags: DIFlagFwdDecl)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2061, file: !1667, line: 1103, baseType: !2510, size: 64, offset: 15232)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1667, line: 53, flags: DIFlagFwdDecl)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2061, file: !1667, line: 1107, baseType: !2513, size: 64, offset: 15296)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1667, line: 56, flags: DIFlagFwdDecl)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2061, file: !1667, line: 1110, baseType: !2516, size: 64, offset: 15360)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2518, line: 93, size: 8768, elements: !2519)
!2518 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2567, !2576, !2577, !2579, !2580, !2581, !2584, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2622, !2623, !2630, !2640, !2643, !2644, !2647, !2648, !2649, !2650, !2651, !2652}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2517, file: !2518, line: 94, baseType: !1127, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2517, file: !2518, line: 95, baseType: !209, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2517, file: !2518, line: 96, baseType: !85, size: 32, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2517, file: !2518, line: 97, baseType: !85, size: 32, offset: 96)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2517, file: !2518, line: 98, baseType: !146, size: 128, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2517, file: !2518, line: 100, baseType: !1138, size: 192, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2517, file: !2518, line: 103, baseType: !2060, size: 64, offset: 448)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2517, file: !2518, line: 106, baseType: !2528, size: 192, offset: 512)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1345, line: 32, size: 192, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2528, file: !1345, line: 33, baseType: !146, size: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2528, file: !1345, line: 34, baseType: !2532, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2533, line: 25, baseType: !2534)
!2533 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2533, line: 23, size: 64, elements: !2535)
!2535 = !{!2536}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2534, file: !2533, line: 24, baseType: !2298, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2517, file: !2518, line: 109, baseType: !968, size: 64, offset: 704)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2517, file: !2518, line: 112, baseType: !85, size: 32, offset: 768)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2517, file: !2518, line: 114, baseType: !85, size: 32, offset: 800)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2517, file: !2518, line: 115, baseType: !2060, size: 64, offset: 832)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2517, file: !2518, line: 118, baseType: !85, size: 32, offset: 896)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2517, file: !2518, line: 119, baseType: !7, size: 32, offset: 928)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2517, file: !2518, line: 121, baseType: !2544, size: 64, offset: 960)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2518, line: 80, size: 448, elements: !2546)
!2546 = !{!2547, !2548, !2554}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2545, file: !2518, line: 81, baseType: !209, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2545, file: !2518, line: 82, baseType: !2549, size: 128, offset: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2518, line: 75, size: 128, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2549, file: !2518, line: 76, baseType: !2060, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2549, file: !2518, line: 77, baseType: !2553, size: 64, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2545, file: !2518, line: 83, baseType: !549, size: 256, offset: 192)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2517, file: !2518, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2517, file: !2518, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2517, file: !2518, line: 138, baseType: !7, size: 32, offset: 1056)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2517, file: !2518, line: 139, baseType: !146, size: 128, offset: 1088)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2517, file: !2518, line: 142, baseType: !2171, size: 512, offset: 1216)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2517, file: !2518, line: 143, baseType: !2179, size: 64, offset: 1728)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2517, file: !2518, line: 150, baseType: !2562, size: 256, offset: 1792)
!2562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2563, size: 256, elements: !717)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2518, line: 38, size: 128, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2563, file: !2518, line: 39, baseType: !412, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2563, file: !2518, line: 40, baseType: !412, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2517, file: !2518, line: 156, baseType: !2568, size: 192, offset: 2048)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2518, line: 66, size: 192, elements: !2569)
!2569 = !{!2570}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2568, file: !2518, line: 67, baseType: !2571, size: 192)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2518, line: 47, size: 192, elements: !2572)
!2572 = !{!2573, !2574, !2575}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2571, file: !2518, line: 48, baseType: !606, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2571, file: !2518, line: 49, baseType: !606, size: 64, offset: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2571, file: !2518, line: 50, baseType: !606, size: 64, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2517, file: !2518, line: 160, baseType: !2463, size: 640, offset: 2240)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2517, file: !2518, line: 163, baseType: !2578, size: 256, offset: 2880)
!2578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 256, elements: !828)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2517, file: !2518, line: 169, baseType: !1123, size: 64, offset: 3136)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2517, file: !2518, line: 172, baseType: !85, size: 32, offset: 3200)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2517, file: !2518, line: 174, baseType: !2582, size: 64, offset: 3264)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2518, line: 174, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2517, file: !2518, line: 185, baseType: !2585, size: 64, offset: 3328)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !381, line: 860, baseType: !2586)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 853, size: 64, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2586, file: !381, line: 858, baseType: !380, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2586, file: !381, line: 859, baseType: !189, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2517, file: !2518, line: 186, baseType: !412, size: 64, offset: 3392)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2517, file: !2518, line: 186, baseType: !412, size: 64, offset: 3456)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2517, file: !2518, line: 186, baseType: !412, size: 64, offset: 3520)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2517, file: !2518, line: 186, baseType: !412, size: 64, offset: 3584)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2517, file: !2518, line: 187, baseType: !412, size: 64, offset: 3648)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2517, file: !2518, line: 188, baseType: !412, size: 64, offset: 3712)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2517, file: !2518, line: 189, baseType: !2451, size: 192, offset: 3776)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2517, file: !2518, line: 190, baseType: !309, size: 64, offset: 3968)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2517, file: !2518, line: 190, baseType: !309, size: 64, offset: 4032)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2517, file: !2518, line: 190, baseType: !309, size: 64, offset: 4096)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2517, file: !2518, line: 190, baseType: !309, size: 64, offset: 4160)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2517, file: !2518, line: 191, baseType: !309, size: 64, offset: 4224)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2517, file: !2518, line: 191, baseType: !309, size: 64, offset: 4288)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2517, file: !2518, line: 191, baseType: !309, size: 64, offset: 4352)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2517, file: !2518, line: 191, baseType: !309, size: 64, offset: 4416)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2517, file: !2518, line: 192, baseType: !309, size: 64, offset: 4480)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2517, file: !2518, line: 192, baseType: !309, size: 64, offset: 4544)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2517, file: !2518, line: 192, baseType: !309, size: 64, offset: 4608)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2517, file: !2518, line: 192, baseType: !309, size: 64, offset: 4672)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2517, file: !2518, line: 193, baseType: !309, size: 64, offset: 4736)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2517, file: !2518, line: 193, baseType: !309, size: 64, offset: 4800)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2517, file: !2518, line: 194, baseType: !2612, size: 448, offset: 4864)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2613, line: 12, size: 448, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2612, file: !2613, line: 15, baseType: !412, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2612, file: !2613, line: 17, baseType: !412, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2612, file: !2613, line: 19, baseType: !412, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2612, file: !2613, line: 21, baseType: !412, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2612, file: !2613, line: 29, baseType: !412, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2612, file: !2613, line: 35, baseType: !412, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2612, file: !2613, line: 44, baseType: !412, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2517, file: !2518, line: 202, baseType: !414, size: 64, offset: 5312)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2517, file: !2518, line: 213, baseType: !2624, size: 2048, offset: 5376)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 2048, elements: !2486)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2626, line: 43, size: 128, elements: !2627)
!2626 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2627 = !{!2628, !2629}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2625, file: !2626, line: 44, baseType: !308, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2625, file: !2626, line: 45, baseType: !308, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2517, file: !2518, line: 216, baseType: !2631, size: 448, offset: 7424)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2518, line: 30, size: 448, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2631, file: !2518, line: 31, baseType: !85, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2631, file: !2518, line: 32, baseType: !295, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2631, file: !2518, line: 33, baseType: !309, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2631, file: !2518, line: 34, baseType: !412, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2631, file: !2518, line: 34, baseType: !412, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2631, file: !2518, line: 35, baseType: !309, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2631, file: !2518, line: 35, baseType: !309, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2517, file: !2518, line: 219, baseType: !2641, size: 64, offset: 7872)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2518, line: 219, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2517, file: !2518, line: 222, baseType: !7, size: 32, offset: 7936)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2517, file: !2518, line: 223, baseType: !2645, size: 64, offset: 8000)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2518, line: 223, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2517, file: !2518, line: 230, baseType: !157, size: 8, offset: 8064)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2517, file: !2518, line: 231, baseType: !736, size: 16, offset: 8080)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2517, file: !2518, line: 232, baseType: !736, size: 16, offset: 8096)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2517, file: !2518, line: 234, baseType: !1473, size: 64, offset: 8128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2517, file: !2518, line: 237, baseType: !600, size: 256, offset: 8192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2517, file: !2518, line: 243, baseType: !1201, size: 320, offset: 8448)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2061, file: !1667, line: 1111, baseType: !2654, size: 64, offset: 15424)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2518, line: 20, size: 16640, elements: !2656)
!2656 = !{!2657, !2658, !2659, !2660}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2655, file: !2518, line: 21, baseType: !189, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2655, file: !2518, line: 22, baseType: !1127, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2655, file: !2518, line: 23, baseType: !1138, size: 192, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2655, file: !2518, line: 24, baseType: !2661, size: 16384, offset: 256)
!2661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2662, size: 16384, elements: !264)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1345, line: 51, size: 256, elements: !2663)
!2663 = !{!2664}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2662, file: !1345, line: 52, baseType: !2665, size: 256)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1345, line: 37, size: 256, elements: !2666)
!2666 = !{!2667, !2674, !2675, !2679}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2665, file: !1345, line: 39, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2669, line: 83, baseType: !2670)
!2669 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2669, line: 82, baseType: !2672)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !85}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2665, file: !1345, line: 40, baseType: !309, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2665, file: !1345, line: 46, baseType: !2676, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2669, line: 86, baseType: !2677)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2669, line: 85, baseType: !963)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2665, file: !1345, line: 48, baseType: !2532, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2061, file: !1667, line: 1112, baseType: !2532, size: 64, offset: 15488)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2061, file: !1667, line: 1113, baseType: !2532, size: 64, offset: 15552)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2061, file: !1667, line: 1115, baseType: !2532, size: 64, offset: 15616)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2061, file: !1667, line: 1116, baseType: !2528, size: 192, offset: 15680)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2061, file: !1667, line: 1117, baseType: !309, size: 64, offset: 15872)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2061, file: !1667, line: 1118, baseType: !306, size: 64, offset: 15936)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2061, file: !1667, line: 1119, baseType: !7, size: 32, offset: 16000)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2061, file: !1667, line: 1121, baseType: !817, size: 64, offset: 16064)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2061, file: !1667, line: 1125, baseType: !2689, size: 64, offset: 16128)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1667, line: 43, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2061, file: !1667, line: 1127, baseType: !345, size: 32, offset: 16192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2061, file: !1667, line: 1128, baseType: !7, size: 32, offset: 16224)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2061, file: !1667, line: 1130, baseType: !2694, size: 128, offset: 16256)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2695, line: 37, size: 128, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2696 = !{!2697, !2698, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2694, file: !2695, line: 38, baseType: !85, size: 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2694, file: !2695, line: 39, baseType: !209, size: 32, offset: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2694, file: !2695, line: 40, baseType: !2700, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2695, line: 24, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2061, file: !1667, line: 1131, baseType: !2703, size: 256, offset: 16384)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2704, line: 12, size: 256, elements: !2705)
!2704 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2705 = !{!2706, !2707, !2708, !2709}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2703, file: !2704, line: 13, baseType: !259, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2703, file: !2704, line: 14, baseType: !309, size: 64, offset: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2703, file: !2704, line: 15, baseType: !309, size: 64, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2703, file: !2704, line: 16, baseType: !157, size: 8, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2061, file: !1667, line: 1134, baseType: !412, size: 64, offset: 16640)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2061, file: !1667, line: 1135, baseType: !412, size: 64, offset: 16704)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2061, file: !1667, line: 1138, baseType: !189, size: 32, offset: 16768)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2061, file: !1667, line: 1141, baseType: !558, size: 32, offset: 16800)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2061, file: !1667, line: 1143, baseType: !2715, size: 64, offset: 16832)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1667, line: 735, size: 64, elements: !2716)
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2715, file: !1667, line: 736, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2061, file: !1667, line: 1147, baseType: !2230, size: 128, offset: 16896)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2061, file: !1667, line: 1149, baseType: !2060, size: 64, offset: 17024)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2061, file: !1667, line: 1151, baseType: !2722, size: 64, offset: 17088)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1667, line: 1151, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2061, file: !1667, line: 1188, baseType: !139, size: 64, offset: 17152)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2061, file: !1667, line: 1191, baseType: !2726, size: 64, offset: 17216)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1667, line: 44, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2061, file: !1667, line: 1194, baseType: !2729, size: 64, offset: 17280)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1667, line: 45, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2061, file: !1667, line: 1197, baseType: !2732, size: 64, offset: 17344)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1667, line: 61, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2061, file: !1667, line: 1199, baseType: !2735, size: 64, offset: 17408)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2737, line: 99, size: 128, elements: !2738)
!2737 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2736, file: !2737, line: 100, baseType: !604, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2736, file: !2737, line: 101, baseType: !209, size: 32, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2736, file: !2737, line: 103, baseType: !229, size: 16, offset: 96)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2061, file: !1667, line: 1202, baseType: !2743, size: 64, offset: 17472)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1667, line: 48, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2061, file: !1667, line: 1205, baseType: !309, size: 64, offset: 17536)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2061, file: !1667, line: 1206, baseType: !2747, size: 64, offset: 17600)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1345, line: 14, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1345, line: 12, size: 384, elements: !2750)
!2750 = !{!2751}
!2751 = !DIDerivedType(tag: DW_TAG_member, scope: !2749, file: !1345, line: 13, baseType: !2752, size: 384)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2749, file: !1345, line: 13, size: 384, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2752, file: !1345, line: 13, baseType: !85, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2752, file: !1345, line: 13, baseType: !85, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2752, file: !1345, line: 13, baseType: !85, size: 32, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2752, file: !1345, line: 13, baseType: !2758, size: 256, offset: 128)
!2758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2759, line: 37, size: 256, elements: !2760)
!2759 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2760 = !{!2761, !2766, !2779, !2785, !2794, !2821, !2826}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2758, file: !2759, line: 42, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 39, size: 64, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2762, file: !2759, line: 40, baseType: !2428, size: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2762, file: !2759, line: 41, baseType: !351, size: 32, offset: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2758, file: !2759, line: 50, baseType: !2767, size: 192)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 45, size: 192, elements: !2768)
!2768 = !{!2769, !2771, !2772, !2778}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2767, file: !2759, line: 46, baseType: !2770, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !293, line: 95, baseType: !85)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2767, file: !2759, line: 47, baseType: !85, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2767, file: !2759, line: 48, baseType: !2773, size: 64, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2759, line: 11, baseType: !2774)
!2774 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2759, line: 8, size: 64, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2774, file: !2759, line: 9, baseType: !85, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2774, file: !2759, line: 10, baseType: !139, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2767, file: !2759, line: 49, baseType: !85, size: 32, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2758, file: !2759, line: 57, baseType: !2780, size: 128)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 53, size: 128, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2780, file: !2759, line: 54, baseType: !2428, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2780, file: !2759, line: 55, baseType: !351, size: 32, offset: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2780, file: !2759, line: 56, baseType: !2773, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2758, file: !2759, line: 66, baseType: !2786, size: 256)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 60, size: 256, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2793}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2786, file: !2759, line: 61, baseType: !2428, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2786, file: !2759, line: 62, baseType: !351, size: 32, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2786, file: !2759, line: 63, baseType: !85, size: 32, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2786, file: !2759, line: 64, baseType: !2792, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !293, line: 94, baseType: !294)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2786, file: !2759, line: 65, baseType: !2792, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2758, file: !2759, line: 105, baseType: !2795, size: 256)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 69, size: 256, elements: !2796)
!2796 = !{!2797, !2798}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2795, file: !2759, line: 70, baseType: !139, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, scope: !2795, file: !2759, line: 79, baseType: !2799, size: 192, offset: 64)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2795, file: !2759, line: 79, size: 192, elements: !2800)
!2800 = !{!2801, !2802, !2803, !2810, !2815}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2799, file: !2759, line: 81, baseType: !85, size: 32)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2799, file: !2759, line: 86, baseType: !736, size: 16)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2799, file: !2759, line: 92, baseType: !2804, size: 192)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2759, line: 88, size: 192, elements: !2805)
!2805 = !{!2806, !2808, !2809}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2804, file: !2759, line: 89, baseType: !2807, size: 64)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !2214)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2804, file: !2759, line: 90, baseType: !139, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2804, file: !2759, line: 91, baseType: !139, size: 64, offset: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2799, file: !2759, line: 97, baseType: !2811, size: 96)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2759, line: 94, size: 96, elements: !2812)
!2812 = !{!2813, !2814}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2811, file: !2759, line: 95, baseType: !2807, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2811, file: !2759, line: 96, baseType: !409, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2799, file: !2759, line: 103, baseType: !2816, size: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2759, line: 99, size: 128, elements: !2817)
!2817 = !{!2818, !2819, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2816, file: !2759, line: 100, baseType: !309, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2816, file: !2759, line: 101, baseType: !409, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2816, file: !2759, line: 102, baseType: !409, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2758, file: !2759, line: 111, baseType: !2822, size: 128)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 108, size: 128, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2822, file: !2759, line: 109, baseType: !295, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2822, file: !2759, line: 110, baseType: !85, size: 32, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2758, file: !2759, line: 118, baseType: !2827, size: 128)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2758, file: !2759, line: 114, size: 128, elements: !2828)
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2827, file: !2759, line: 115, baseType: !139, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2827, file: !2759, line: 116, baseType: !85, size: 32, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2827, file: !2759, line: 117, baseType: !7, size: 32, offset: 96)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2061, file: !1667, line: 1208, baseType: !2612, size: 448, offset: 17664)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2061, file: !1667, line: 1215, baseType: !412, size: 64, offset: 18112)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2061, file: !1667, line: 1217, baseType: !412, size: 64, offset: 18176)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2061, file: !1667, line: 1219, baseType: !412, size: 64, offset: 18240)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2061, file: !1667, line: 1223, baseType: !2837, size: 64, offset: 18304)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2838, line: 99, baseType: !2839)
!2838 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2838, line: 99, size: 64, elements: !2840)
!2840 = !{!2841}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2839, file: !2838, line: 99, baseType: !2298, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2061, file: !1667, line: 1225, baseType: !380, size: 32, offset: 18368)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2061, file: !1667, line: 1226, baseType: !85, size: 32, offset: 18400)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2061, file: !1667, line: 1227, baseType: !85, size: 32, offset: 18432)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2061, file: !1667, line: 1231, baseType: !2846, size: 64, offset: 18496)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1667, line: 1231, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2061, file: !1667, line: 1233, baseType: !146, size: 128, offset: 18560)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2061, file: !1667, line: 1240, baseType: !2850, size: 64, offset: 18688)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1667, line: 62, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2061, file: !1667, line: 1242, baseType: !2853, size: 64, offset: 18752)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1667, line: 1242, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2061, file: !1667, line: 1244, baseType: !146, size: 128, offset: 18816)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2061, file: !1667, line: 1245, baseType: !2857, size: 64, offset: 18944)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1667, line: 51, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2061, file: !1667, line: 1246, baseType: !600, size: 256, offset: 19008)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2061, file: !1667, line: 1247, baseType: !7, size: 32, offset: 19264)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2061, file: !1667, line: 1250, baseType: !2862, size: 64, offset: 19328)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1667, line: 57, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2061, file: !1667, line: 1251, baseType: !600, size: 256, offset: 19392)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2061, file: !1667, line: 1252, baseType: !146, size: 128, offset: 19648)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2061, file: !1667, line: 1259, baseType: !1665, size: 64, offset: 19776)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2061, file: !1667, line: 1260, baseType: !736, size: 16, offset: 19840)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2061, file: !1667, line: 1261, baseType: !736, size: 16, offset: 19856)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2061, file: !1667, line: 1314, baseType: !2870, size: 64, offset: 19904)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2872, line: 62, size: 256, align: 256, elements: !2873)
!2872 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2871, file: !2872, line: 75, baseType: !409, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2871, file: !2872, line: 90, baseType: !409, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2871, file: !2872, line: 112, baseType: !413, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 132, baseType: !409, size: 32, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2871, file: !2872, line: 140, baseType: !409, size: 32, offset: 160)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2871, file: !2872, line: 149, baseType: !409, size: 32, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2871, file: !2872, line: 154, baseType: !2881, offset: 224)
!2881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, elements: !1153)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2061, file: !1667, line: 1315, baseType: !408, size: 32, offset: 19968)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2061, file: !1667, line: 1316, baseType: !408, size: 32, offset: 20000)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2061, file: !1667, line: 1321, baseType: !309, size: 64, offset: 20032)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2061, file: !1667, line: 1325, baseType: !85, size: 32, offset: 20096)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2061, file: !1667, line: 1326, baseType: !85, size: 32, offset: 20128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2061, file: !1667, line: 1327, baseType: !85, size: 32, offset: 20160)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2061, file: !1667, line: 1328, baseType: !85, size: 32, offset: 20192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2061, file: !1667, line: 1329, baseType: !818, size: 128, align: 64, offset: 20224)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2061, file: !1667, line: 1332, baseType: !2891, size: 128, offset: 20352)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2892, line: 51, size: 128, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2893 = !{!2894, !2899, !2900}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2891, file: !2892, line: 60, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2896, line: 7, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2897 = !{!2898}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2895, file: !2896, line: 12, baseType: !2295, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2891, file: !2892, line: 63, baseType: !157, size: 8, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2891, file: !2892, line: 70, baseType: !157, size: 8, offset: 72)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2061, file: !1667, line: 1335, baseType: !1705, size: 64, offset: 20480)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2061, file: !1667, line: 1337, baseType: !2903, size: 128, offset: 20544)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2892, line: 39, size: 128, elements: !2904)
!2904 = !{!2905, !2966, !2967}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2903, file: !2892, line: 40, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1461, line: 74, size: 512, align: 128, elements: !2908)
!2908 = !{!2909, !2910, !2960, !2965}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2907, file: !1461, line: 75, baseType: !309, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, scope: !2907, file: !1461, line: 83, baseType: !2911, size: 320, offset: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2907, file: !1461, line: 83, size: 320, elements: !2912)
!2912 = !{!2913, !2934, !2948, !2952, !2959}
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !1461, line: 84, baseType: !2914, size: 320)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !1461, line: 84, size: 320, elements: !2915)
!2915 = !{!2916, !2927, !2928, !2933}
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !1461, line: 90, baseType: !2917, size: 128)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !1461, line: 90, size: 128, elements: !2918)
!2918 = !{!2919, !2920, !2925, !2926}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2917, file: !1461, line: 91, baseType: !146, size: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2917, file: !1461, line: 94, baseType: !2921, size: 128)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2917, file: !1461, line: 94, size: 128, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2921, file: !1461, line: 96, baseType: !139, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2921, file: !1461, line: 98, baseType: !7, size: 32, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2917, file: !1461, line: 102, baseType: !146, size: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2917, file: !1461, line: 103, baseType: !146, size: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2914, file: !1461, line: 106, baseType: !335, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !1461, line: 107, baseType: !2929, size: 64, offset: 192)
!2929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !1461, line: 107, size: 64, elements: !2930)
!2930 = !{!2931, !2932}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2929, file: !1461, line: 108, baseType: !309, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2929, file: !1461, line: 109, baseType: !309, size: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2914, file: !1461, line: 117, baseType: !309, size: 64, offset: 256)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !1461, line: 119, baseType: !2935, size: 320)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !1461, line: 119, size: 320, elements: !2936)
!2936 = !{!2937, !2938, !2941, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2935, file: !1461, line: 124, baseType: !309, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2935, file: !1461, line: 125, baseType: !2939, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1461, line: 125, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2935, file: !1461, line: 126, baseType: !309, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2935, file: !1461, line: 127, baseType: !309, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !1461, line: 128, baseType: !2944, size: 64, offset: 256)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2935, file: !1461, line: 128, size: 64, elements: !2945)
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2944, file: !1461, line: 133, baseType: !309, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2944, file: !1461, line: 138, baseType: !604, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !1461, line: 141, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !1461, line: 141, size: 64, elements: !2950)
!2950 = !{!2951}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2949, file: !1461, line: 142, baseType: !309, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, scope: !2911, file: !1461, line: 144, baseType: !2953, size: 128)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2911, file: !1461, line: 144, size: 128, elements: !2954)
!2954 = !{!2955, !2958}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2953, file: !1461, line: 146, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1461, line: 146, flags: DIFlagFwdDecl)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2953, file: !1461, line: 147, baseType: !139, size: 64, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2911, file: !1461, line: 161, baseType: !818, size: 128, align: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, scope: !2907, file: !1461, line: 164, baseType: !2961, size: 32, offset: 384)
!2961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2907, file: !1461, line: 164, size: 32, elements: !2962)
!2962 = !{!2963, !2964}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2961, file: !1461, line: 169, baseType: !209, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2961, file: !1461, line: 177, baseType: !7, size: 32)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2907, file: !1461, line: 181, baseType: !209, size: 32, offset: 416)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2903, file: !2892, line: 42, baseType: !409, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2903, file: !2892, line: 43, baseType: !409, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2061, file: !1667, line: 1340, baseType: !2969, size: 64, offset: 20672)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1667, line: 69, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2061, file: !1667, line: 1351, baseType: !85, size: 32, offset: 20736)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2061, file: !1667, line: 1352, baseType: !85, size: 32, offset: 20768)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2061, file: !1667, line: 1354, baseType: !309, size: 64, offset: 20800)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2061, file: !1667, line: 1364, baseType: !412, size: 64, offset: 20864)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2061, file: !1667, line: 1365, baseType: !412, size: 64, offset: 20928)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2061, file: !1667, line: 1412, baseType: !309, size: 64, offset: 20992)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2061, file: !1667, line: 1453, baseType: !2978, size: 64, offset: 21056)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1667, line: 1453, flags: DIFlagFwdDecl)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2061, file: !1667, line: 1457, baseType: !2981, size: 64, offset: 21120)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2983)
!2983 = !{!2984, !2985, !3004, !3007, !3008, !3041, !3051}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2982, file: !44, line: 62, baseType: !43, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, scope: !2982, file: !44, line: 64, baseType: !2986, size: 192, offset: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2982, file: !44, line: 64, size: 192, elements: !2987)
!2987 = !{!2988, !2999}
!2988 = !DIDerivedType(tag: DW_TAG_member, scope: !2986, file: !44, line: 65, baseType: !2989, size: 192)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !44, line: 65, size: 192, elements: !2990)
!2990 = !{!2991, !2998}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2989, file: !44, line: 66, baseType: !2992, size: 128)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2993, line: 50, size: 128, elements: !2994)
!2993 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2994 = !{!2995, !2996, !2997}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2992, file: !2993, line: 52, baseType: !309, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2992, file: !2993, line: 54, baseType: !7, size: 32, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2992, file: !2993, line: 55, baseType: !7, size: 32, offset: 96)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2989, file: !44, line: 67, baseType: !309, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, scope: !2986, file: !44, line: 70, baseType: !3000, size: 192)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !44, line: 70, size: 192, elements: !3001)
!3001 = !{!3002, !3003}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3000, file: !44, line: 71, baseType: !818, size: 128, align: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3000, file: !44, line: 72, baseType: !309, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2982, file: !44, line: 76, baseType: !3005, size: 64, offset: 256)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2982, file: !44, line: 77, baseType: !309, size: 64, offset: 320)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2982, file: !44, line: 79, baseType: !3009, size: 64, offset: 384)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2993, line: 25, size: 256, elements: !3011)
!3011 = !{!3012, !3018, !3022}
!3012 = !DIDerivedType(tag: DW_TAG_member, scope: !3010, file: !2993, line: 26, baseType: !3013, size: 128)
!3013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3010, file: !2993, line: 26, size: 128, elements: !3014)
!3014 = !{!3015, !3017}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3013, file: !2993, line: 27, baseType: !3016, size: 128)
!3016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2486)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3013, file: !2993, line: 28, baseType: !3016, size: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3010, file: !2993, line: 31, baseType: !3019, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3021)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2993, line: 23, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, scope: !3010, file: !2993, line: 33, baseType: !3023, size: 64, offset: 192)
!3023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3010, file: !2993, line: 33, size: 64, elements: !3024)
!3024 = !{!3025, !3031, !3036}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3023, file: !2993, line: 38, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !2993, line: 34, size: 64, elements: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3026, file: !2993, line: 35, baseType: !596, size: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3026, file: !2993, line: 36, baseType: !217, size: 8, offset: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3026, file: !2993, line: 37, baseType: !217, size: 8, offset: 40)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3023, file: !2993, line: 42, baseType: !3032, size: 16)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !2993, line: 39, size: 16, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3032, file: !2993, line: 40, baseType: !217, size: 8)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3032, file: !2993, line: 41, baseType: !217, size: 8, offset: 8)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3023, file: !2993, line: 46, baseType: !3037, size: 16)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !2993, line: 43, size: 16, elements: !3038)
!3038 = !{!3039, !3040}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3037, file: !2993, line: 44, baseType: !217, size: 8)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3037, file: !2993, line: 45, baseType: !217, size: 8, offset: 8)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2982, file: !44, line: 81, baseType: !3042, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3043, file: !44, line: 86, baseType: !3005, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3043, file: !44, line: 87, baseType: !309, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3043, file: !44, line: 88, baseType: !309, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3043, file: !44, line: 89, baseType: !309, size: 64, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3043, file: !44, line: 90, baseType: !157, size: 8, offset: 256)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3043, file: !44, line: 92, baseType: !3042, size: 64, offset: 320)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2982, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2061, file: !1667, line: 1463, baseType: !3053, offset: 21184)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1667, line: 739, elements: !887)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2061, file: !1667, line: 1470, baseType: !818, size: 128, align: 64, offset: 21184)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2061, file: !1667, line: 1471, baseType: !1127, size: 32, offset: 21312)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2061, file: !1667, line: 1472, baseType: !85, size: 32, offset: 21344)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2061, file: !1667, line: 1474, baseType: !2060, size: 64, offset: 21376)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2061, file: !1667, line: 1475, baseType: !840, size: 320, offset: 21440)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2061, file: !1667, line: 1478, baseType: !3060, size: 64, offset: 21760)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1667, line: 1478, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2061, file: !1667, line: 1482, baseType: !1127, size: 32, offset: 21824)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2061, file: !1667, line: 1489, baseType: !139, size: 64, offset: 21888)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2061, file: !1667, line: 1504, baseType: !139, size: 64, offset: 21952)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2061, file: !1667, line: 1505, baseType: !413, size: 64, offset: 22016)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2061, file: !1667, line: 1506, baseType: !412, size: 64, offset: 22080)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2061, file: !1667, line: 1507, baseType: !413, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2061, file: !1667, line: 1508, baseType: !413, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2061, file: !1667, line: 1509, baseType: !413, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2061, file: !1667, line: 1510, baseType: !818, size: 128, align: 64, offset: 22208)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2061, file: !1667, line: 1511, baseType: !85, size: 32, offset: 22336)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2061, file: !1667, line: 1515, baseType: !3073, size: 64, offset: 22400)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1085, line: 56, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3073, file: !1085, line: 57, baseType: !1088, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2061, file: !1667, line: 1518, baseType: !3073, size: 64, offset: 22464)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2061, file: !1667, line: 1528, baseType: !818, size: 128, align: 64, offset: 22528)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2061, file: !1667, line: 1552, baseType: !3079, size: 35328, offset: 23040)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3080, line: 430, size: 35328, elements: !3081)
!3080 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3081 = !{!3082, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3111, !3112, !3113, !3114, !3115, !3116, !3119, !3120, !3121, !3122}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3079, file: !3080, line: 432, baseType: !3083, size: 192)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3084, size: 192, elements: !260)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3085, line: 16, size: 64, elements: !3086)
!3085 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3086 = !{!3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3084, file: !3085, line: 17, baseType: !227, size: 16)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3084, file: !3085, line: 18, baseType: !227, size: 16, offset: 16)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3084, file: !3085, line: 19, baseType: !227, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3084, file: !3085, line: 19, baseType: !227, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3084, file: !3085, line: 19, baseType: !227, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3084, file: !3085, line: 19, baseType: !227, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3084, file: !3085, line: 19, baseType: !227, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3084, file: !3085, line: 20, baseType: !227, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3084, file: !3085, line: 20, baseType: !227, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3084, file: !3085, line: 20, baseType: !227, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3084, file: !3085, line: 20, baseType: !227, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3084, file: !3085, line: 20, baseType: !227, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3084, file: !3085, line: 20, baseType: !227, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3079, file: !3080, line: 436, baseType: !309, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3079, file: !3080, line: 440, baseType: !229, size: 16, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3079, file: !3080, line: 441, baseType: !229, size: 16, offset: 272)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3079, file: !3080, line: 442, baseType: !229, size: 16, offset: 288)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3079, file: !3080, line: 443, baseType: !229, size: 16, offset: 304)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3079, file: !3080, line: 447, baseType: !309, size: 64, offset: 320)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3079, file: !3080, line: 448, baseType: !309, size: 64, offset: 384)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3079, file: !3080, line: 459, baseType: !3108, size: 256, offset: 448)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3109, size: 256, elements: !828)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3080, line: 428, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3079, file: !3080, line: 461, baseType: !309, size: 64, offset: 704)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3079, file: !3080, line: 463, baseType: !309, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3079, file: !3080, line: 465, baseType: !309, size: 64, offset: 832)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3079, file: !3080, line: 466, baseType: !309, size: 64, offset: 896)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3079, file: !3080, line: 467, baseType: !309, size: 64, offset: 960)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3079, file: !3080, line: 473, baseType: !3117, size: 64, offset: 1024)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3080, line: 10, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3079, file: !3080, line: 480, baseType: !309, size: 64, offset: 1088)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3079, file: !3080, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3079, file: !3080, line: 491, baseType: !408, size: 32, offset: 1184)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3079, file: !3080, line: 501, baseType: !3123, size: 33792, offset: 1536)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3124, line: 448, size: 33792, elements: !3125)
!3124 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3125 = !{!3126, !3127, !3128, !3290, !3291, !3297, !3298}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3123, file: !3124, line: 461, baseType: !7, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3123, file: !3124, line: 468, baseType: !309, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3123, file: !3124, line: 476, baseType: !3129, size: 64, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3124, line: 356, size: 33280, align: 512, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3130, file: !3124, line: 358, baseType: !7, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3130, file: !3124, line: 361, baseType: !7, size: 32, offset: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3130, file: !3124, line: 364, baseType: !412, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3130, file: !3124, line: 367, baseType: !412, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3130, file: !3124, line: 370, baseType: !412, size: 64, offset: 192)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3130, file: !3124, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3130, file: !3124, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3130, file: !3124, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3130, file: !3124, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3130, file: !3124, line: 397, baseType: !3142, size: 32768, offset: 512)
!3142 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3124, line: 348, size: 32768, elements: !3143)
!3143 = !{!3144, !3159, !3196, !3273, !3286}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3142, file: !3124, line: 349, baseType: !3145, size: 896)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3124, line: 12, size: 896, elements: !3146)
!3146 = !{!3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3158}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3145, file: !3124, line: 13, baseType: !408, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3145, file: !3124, line: 14, baseType: !408, size: 32, offset: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3145, file: !3124, line: 15, baseType: !408, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3145, file: !3124, line: 16, baseType: !408, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3145, file: !3124, line: 17, baseType: !408, size: 32, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3145, file: !3124, line: 18, baseType: !408, size: 32, offset: 160)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3145, file: !3124, line: 19, baseType: !408, size: 32, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3145, file: !3124, line: 22, baseType: !3155, size: 640, offset: 224)
!3155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 640, elements: !3156)
!3156 = !{!3157}
!3157 = !DISubrange(count: 20)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3145, file: !3124, line: 25, baseType: !408, size: 32, offset: 864)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3142, file: !3124, line: 350, baseType: !3160, size: 4096, align: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3124, line: 34, size: 4096, align: 128, elements: !3161)
!3161 = !{!3162, !3163, !3164, !3165, !3166, !3181, !3182, !3183, !3185, !3187, !3191}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3160, file: !3124, line: 35, baseType: !227, size: 16)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3160, file: !3124, line: 36, baseType: !227, size: 16, offset: 16)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3160, file: !3124, line: 37, baseType: !227, size: 16, offset: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3160, file: !3124, line: 38, baseType: !227, size: 16, offset: 48)
!3166 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3124, line: 39, baseType: !3167, size: 128, offset: 64)
!3167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3124, line: 39, size: 128, elements: !3168)
!3168 = !{!3169, !3174}
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3124, line: 40, baseType: !3170, size: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3124, line: 40, size: 128, elements: !3171)
!3171 = !{!3172, !3173}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3170, file: !3124, line: 41, baseType: !412, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3170, file: !3124, line: 42, baseType: !412, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, scope: !3167, file: !3124, line: 44, baseType: !3175, size: 128)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3167, file: !3124, line: 44, size: 128, elements: !3176)
!3176 = !{!3177, !3178, !3179, !3180}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3175, file: !3124, line: 45, baseType: !408, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3175, file: !3124, line: 46, baseType: !408, size: 32, offset: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3175, file: !3124, line: 47, baseType: !408, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3175, file: !3124, line: 48, baseType: !408, size: 32, offset: 96)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3160, file: !3124, line: 51, baseType: !408, size: 32, offset: 192)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3160, file: !3124, line: 52, baseType: !408, size: 32, offset: 224)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3160, file: !3124, line: 55, baseType: !3184, size: 1024, offset: 256)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1024, elements: !421)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3160, file: !3124, line: 58, baseType: !3186, size: 2048, offset: 1280)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 2048, elements: !264)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3160, file: !3124, line: 60, baseType: !3188, size: 384, offset: 3328)
!3188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 384, elements: !3189)
!3189 = !{!3190}
!3190 = !DISubrange(count: 12)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3160, file: !3124, line: 62, baseType: !3192, size: 384, offset: 3712)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3160, file: !3124, line: 62, size: 384, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3192, file: !3124, line: 63, baseType: !3188, size: 384)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3192, file: !3124, line: 64, baseType: !3188, size: 384)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3142, file: !3124, line: 351, baseType: !3197, size: 1088)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3124, line: 79, size: 1088, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3272}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3197, file: !3124, line: 80, baseType: !408, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3197, file: !3124, line: 81, baseType: !408, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3197, file: !3124, line: 82, baseType: !408, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3197, file: !3124, line: 83, baseType: !408, size: 32, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3197, file: !3124, line: 84, baseType: !408, size: 32, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3197, file: !3124, line: 85, baseType: !408, size: 32, offset: 160)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3197, file: !3124, line: 86, baseType: !408, size: 32, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3197, file: !3124, line: 88, baseType: !3155, size: 640, offset: 224)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3197, file: !3124, line: 89, baseType: !217, size: 8, offset: 864)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3197, file: !3124, line: 90, baseType: !217, size: 8, offset: 872)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3197, file: !3124, line: 91, baseType: !217, size: 8, offset: 880)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3197, file: !3124, line: 92, baseType: !217, size: 8, offset: 888)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3197, file: !3124, line: 93, baseType: !217, size: 8, offset: 896)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3197, file: !3124, line: 94, baseType: !217, size: 8, offset: 904)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3197, file: !3124, line: 95, baseType: !3214, size: 64, offset: 960)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3216, line: 11, size: 128, elements: !3217)
!3216 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3215, file: !3216, line: 12, baseType: !295, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3215, file: !3216, line: 13, baseType: !3220, size: 64, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3222, line: 103, size: 1344, elements: !3223)
!3222 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3223 = !{!3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3252, !3253, !3254}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3221, file: !3222, line: 109, baseType: !309, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3221, file: !3222, line: 110, baseType: !309, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3221, file: !3222, line: 111, baseType: !309, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3221, file: !3222, line: 112, baseType: !309, size: 64, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3221, file: !3222, line: 113, baseType: !309, size: 64, offset: 256)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3221, file: !3222, line: 114, baseType: !309, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3221, file: !3222, line: 117, baseType: !309, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3221, file: !3222, line: 118, baseType: !309, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3221, file: !3222, line: 119, baseType: !309, size: 64, offset: 512)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3221, file: !3222, line: 120, baseType: !309, size: 64, offset: 576)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3221, file: !3222, line: 121, baseType: !309, size: 64, offset: 640)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3221, file: !3222, line: 122, baseType: !309, size: 64, offset: 704)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3221, file: !3222, line: 123, baseType: !309, size: 64, offset: 768)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3221, file: !3222, line: 124, baseType: !309, size: 64, offset: 832)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3221, file: !3222, line: 125, baseType: !309, size: 64, offset: 896)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3221, file: !3222, line: 139, baseType: !309, size: 64, offset: 960)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3221, file: !3222, line: 142, baseType: !309, size: 64, offset: 1024)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3222, line: 144, baseType: !3242, size: 64, offset: 1088)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3222, line: 144, size: 64, elements: !3243)
!3243 = !{!3244, !3245, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3242, file: !3222, line: 146, baseType: !227, size: 16)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3242, file: !3222, line: 148, baseType: !412, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3242, file: !3222, line: 150, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3222, line: 59, size: 64, elements: !3248)
!3248 = !{!3249, !3250, !3251}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3247, file: !3222, line: 61, baseType: !412, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3247, file: !3222, line: 63, baseType: !412, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3247, file: !3222, line: 65, baseType: !412, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3221, file: !3222, line: 153, baseType: !309, size: 64, offset: 1152)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3221, file: !3222, line: 154, baseType: !309, size: 64, offset: 1216)
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3221, file: !3222, line: 156, baseType: !3255, size: 64, offset: 1280)
!3255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3221, file: !3222, line: 156, size: 64, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3255, file: !3222, line: 158, baseType: !227, size: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3255, file: !3222, line: 160, baseType: !412, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3255, file: !3222, line: 162, baseType: !3260, size: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3222, line: 69, size: 64, elements: !3261)
!3261 = !{!3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3260, file: !3222, line: 71, baseType: !412, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3260, file: !3222, line: 73, baseType: !412, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3260, file: !3222, line: 75, baseType: !412, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3260, file: !3222, line: 77, baseType: !412, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3260, file: !3222, line: 80, baseType: !412, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3260, file: !3222, line: 83, baseType: !412, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3260, file: !3222, line: 86, baseType: !412, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3260, file: !3222, line: 88, baseType: !412, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3260, file: !3222, line: 93, baseType: !412, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3260, file: !3222, line: 100, baseType: !412, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3197, file: !3124, line: 96, baseType: !408, size: 32, offset: 1024)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3142, file: !3124, line: 352, baseType: !3274, size: 4608, align: 512)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3124, line: 333, size: 4608, align: 512, elements: !3275)
!3275 = !{!3276, !3277, !3284}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3274, file: !3124, line: 334, baseType: !3160, size: 4096, align: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3274, file: !3124, line: 335, baseType: !3278, size: 512, offset: 4096)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3124, line: 312, size: 512, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3278, file: !3124, line: 313, baseType: !412, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3278, file: !3124, line: 314, baseType: !412, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3278, file: !3124, line: 315, baseType: !3283, size: 384, offset: 128)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !1246)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3274, file: !3124, line: 336, baseType: !3285, offset: 4608)
!3285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !1153)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3142, file: !3124, line: 353, baseType: !3287, size: 32768)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 32768, elements: !3288)
!3288 = !{!3289}
!3289 = !DISubrange(count: 4096)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3123, file: !3124, line: 484, baseType: !3129, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3123, file: !3124, line: 491, baseType: !3292, size: 128, offset: 256)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3124, line: 404, size: 128, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3292, file: !3124, line: 424, baseType: !412, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3292, file: !3124, line: 432, baseType: !7, size: 32, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3292, file: !3124, line: 440, baseType: !7, size: 32, offset: 96)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3123, file: !3124, line: 498, baseType: !3292, size: 128, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3123, file: !3124, line: 508, baseType: !3130, size: 33280, align: 512, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2043, file: !2044, line: 16, baseType: !1138, size: 192, offset: 512)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2043, file: !2044, line: 17, baseType: !209, size: 32, offset: 704)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !491, file: !14, line: 1240, baseType: !139, size: 64, offset: 6912)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !491, file: !14, line: 1243, baseType: !408, size: 32, offset: 6976)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !491, file: !14, line: 1245, baseType: !1217, size: 64, offset: 7040)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !491, file: !14, line: 1246, baseType: !1217, size: 64, offset: 7104)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !491, file: !14, line: 1248, baseType: !409, size: 32, offset: 7168)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !491, file: !14, line: 1249, baseType: !3307, size: 64, offset: 7232)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !491, file: !14, line: 1252, baseType: !3310, size: 256, offset: 7296)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !421)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !491, file: !14, line: 1253, baseType: !3312, size: 128, offset: 7552)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3313, line: 21, baseType: !3314)
!3313 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3313, line: 19, size: 128, elements: !3315)
!3315 = !{!3316}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3314, file: !3313, line: 20, baseType: !3317, size: 128)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !2486)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !491, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !491, file: !14, line: 1261, baseType: !600, size: 256, offset: 7744)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !491, file: !14, line: 1267, baseType: !177, size: 64, offset: 8000)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !491, file: !14, line: 1269, baseType: !437, size: 64, offset: 8064)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !491, file: !14, line: 1271, baseType: !3323, size: 448, offset: 8128)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1823, line: 63, size: 448, elements: !3324)
!3324 = !{!3325, !3330, !3331, !3332, !3333, !3334, !3335}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3323, file: !1823, line: 64, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!309, !3329, !1821}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3323, file: !1823, line: 66, baseType: !3326, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3323, file: !1823, line: 69, baseType: !295, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3323, file: !1823, line: 70, baseType: !85, size: 32, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3323, file: !1823, line: 71, baseType: !7, size: 32, offset: 224)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3323, file: !1823, line: 74, baseType: !146, size: 128, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3323, file: !1823, line: 85, baseType: !3336, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !491, file: !14, line: 1274, baseType: !604, size: 64, offset: 8576)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !491, file: !14, line: 1280, baseType: !604, size: 64, offset: 8640)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !491, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !491, file: !14, line: 1286, baseType: !1755, size: 32, offset: 8736)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !491, file: !14, line: 1289, baseType: !920, size: 64, offset: 8768)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !491, file: !14, line: 1290, baseType: !968, size: 64, offset: 8832)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !491, file: !14, line: 1297, baseType: !1340, size: 64, offset: 8896)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !491, file: !14, line: 1304, baseType: !3345, size: 64, offset: 8960)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3346, line: 49, size: 64, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3347 = !{!3348}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3345, file: !3346, line: 50, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3346, line: 41, size: 512, align: 512, elements: !3351)
!3351 = !{!3352, !3353, !3358}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3350, file: !3346, line: 43, baseType: !189, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3350, file: !3346, line: 45, baseType: !3354, size: 192, offset: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3346, line: 29, size: 192, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3354, file: !3346, line: 30, baseType: !146, size: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3354, file: !3346, line: 32, baseType: !295, size: 64, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3350, file: !3346, line: 46, baseType: !295, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !491, file: !14, line: 1305, baseType: !3345, size: 64, offset: 9024)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !491, file: !14, line: 1306, baseType: !818, size: 128, align: 64, offset: 9088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !491, file: !14, line: 1307, baseType: !858, size: 256, offset: 9216)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !491, file: !14, line: 1309, baseType: !600, size: 256, offset: 9472)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !491, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !491, file: !14, line: 1317, baseType: !189, size: 32, align: 512, offset: 10240)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !491, file: !14, line: 1318, baseType: !146, size: 128, offset: 10304)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !491, file: !14, line: 1320, baseType: !189, size: 32, offset: 10432)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !491, file: !14, line: 1321, baseType: !146, size: 128, offset: 10496)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !485, file: !486, line: 73, baseType: !85, size: 32, offset: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !485, file: !486, line: 74, baseType: !3370, size: 64, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1177, line: 42, flags: DIFlagFwdDecl)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !439, file: !376, line: 141, baseType: !3374, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!85, !1883, !157}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !439, file: !376, line: 142, baseType: !3378, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!374, !374, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !375, file: !376, line: 96, baseType: !490, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !375, file: !376, line: 97, baseType: !309, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !375, file: !376, line: 98, baseType: !139, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 100, baseType: !3387, size: 128, offset: 1024)
!3387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 100, size: 128, elements: !3388)
!3388 = !{!3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3387, file: !376, line: 101, baseType: !146, size: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3387, file: !376, line: 102, baseType: !3391, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !375, file: !376, line: 104, baseType: !146, size: 128, offset: 1152)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !375, file: !376, line: 105, baseType: !146, size: 128, offset: 1280)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !375, file: !376, line: 113, baseType: !3395, size: 128, offset: 1408)
!3395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 109, size: 128, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3395, file: !376, line: 110, baseType: !844, size: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3395, file: !376, line: 111, baseType: !390, size: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3395, file: !376, line: 112, baseType: !818, size: 128, align: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !368, file: !14, line: 1968, baseType: !3401, size: 64, offset: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!177, !374, !339, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3406, line: 10, size: 128, elements: !3407)
!3406 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3405, file: !3406, line: 11, baseType: !643, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3405, file: !3406, line: 12, baseType: !139, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !368, file: !14, line: 1969, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!85, !3370, !339, !85}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !368, file: !14, line: 1970, baseType: !3415, size: 64, offset: 192)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!362, !339, !85, !157}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !368, file: !14, line: 1972, baseType: !3419, size: 64, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!85, !374, !259, !85}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !368, file: !14, line: 1974, baseType: !3423, size: 64, offset: 320)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!85, !3370, !339, !374, !301, !157}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !368, file: !14, line: 1976, baseType: !3427, size: 64, offset: 384)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!85, !374, !339, !374}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !368, file: !14, line: 1977, baseType: !3431, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!85, !339, !374}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !368, file: !14, line: 1978, baseType: !3435, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!85, !3370, !339, !374, !177}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !368, file: !14, line: 1980, baseType: !3439, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!85, !3370, !339, !374, !301}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !368, file: !14, line: 1982, baseType: !3431, size: 64, offset: 640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !368, file: !14, line: 1983, baseType: !3444, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!85, !3370, !339, !374, !301, !495}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !368, file: !14, line: 1985, baseType: !3448, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!85, !3370, !339, !374, !339, !374, !7}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !368, file: !14, line: 1987, baseType: !3452, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3453, size: 64)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!85, !3370, !374, !3455}
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3457)
!3457 = !{!3458, !3459, !3460, !3470, !3479, !3480, !3485, !3486, !3487}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3456, file: !14, line: 227, baseType: !7, size: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3456, file: !14, line: 228, baseType: !301, size: 16, offset: 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !14, line: 241, baseType: !3461, size: 32, offset: 64)
!3461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !14, line: 241, size: 32, elements: !3462)
!3462 = !{!3463, !3464}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3461, file: !14, line: 242, baseType: !345, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3461, file: !14, line: 243, baseType: !3465, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3466, line: 16, baseType: !3467)
!3466 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3466, line: 14, size: 32, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3467, file: !3466, line: 15, baseType: !350, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3456, file: !14, line: 245, baseType: !3471, size: 32, offset: 96)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3456, file: !14, line: 245, size: 32, elements: !3472)
!3472 = !{!3473, !3474}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3471, file: !14, line: 246, baseType: !354, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3471, file: !14, line: 247, baseType: !3475, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3466, line: 20, baseType: !3476)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3466, line: 18, size: 32, elements: !3477)
!3477 = !{!3478}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3476, file: !3466, line: 19, baseType: !358, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3456, file: !14, line: 249, baseType: !500, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3456, file: !14, line: 250, baseType: !3481, size: 128, offset: 192)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1218, line: 13, size: 128, elements: !3482)
!3482 = !{!3483, !3484}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3481, file: !1218, line: 14, baseType: !1217, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3481, file: !1218, line: 15, baseType: !295, size: 64, offset: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3456, file: !14, line: 251, baseType: !3481, size: 128, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3456, file: !14, line: 252, baseType: !3481, size: 128, offset: 448)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3456, file: !14, line: 259, baseType: !1385, size: 64, offset: 576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !368, file: !14, line: 1988, baseType: !3489, size: 64, offset: 896)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!85, !3370, !1883, !3492, !408, !7}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3494, line: 22, size: 1280, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3495 = !{!3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3493, file: !3494, line: 23, baseType: !408, size: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3493, file: !3494, line: 24, baseType: !301, size: 16, offset: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3493, file: !3494, line: 25, baseType: !7, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3493, file: !3494, line: 26, baseType: !1225, size: 32, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3493, file: !3494, line: 27, baseType: !412, size: 64, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3493, file: !3494, line: 28, baseType: !412, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3493, file: !3494, line: 41, baseType: !412, size: 64, offset: 256)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3493, file: !3494, line: 42, baseType: !495, size: 32, offset: 320)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3493, file: !3494, line: 43, baseType: !495, size: 32, offset: 352)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3493, file: !3494, line: 44, baseType: !345, size: 32, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3493, file: !3494, line: 45, baseType: !354, size: 32, offset: 416)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3493, file: !3494, line: 46, baseType: !500, size: 64, offset: 448)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3493, file: !3494, line: 47, baseType: !3481, size: 128, offset: 512)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3493, file: !3494, line: 48, baseType: !3481, size: 128, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3493, file: !3494, line: 49, baseType: !3481, size: 128, offset: 768)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3493, file: !3494, line: 50, baseType: !3481, size: 128, offset: 896)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3493, file: !3494, line: 51, baseType: !412, size: 64, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3493, file: !3494, line: 52, baseType: !412, size: 64, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3493, file: !3494, line: 53, baseType: !408, size: 32, offset: 1152)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3493, file: !3494, line: 54, baseType: !408, size: 32, offset: 1184)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3493, file: !3494, line: 55, baseType: !412, size: 64, offset: 1216)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !368, file: !14, line: 1990, baseType: !3518, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!291, !374, !259, !306}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !368, file: !14, line: 1991, baseType: !3522, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!85, !339, !3525, !412, !412}
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !368, file: !14, line: 1993, baseType: !3528, size: 64, offset: 1088)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!85, !339, !85}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !368, file: !14, line: 1994, baseType: !3532, size: 64, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!85, !339, !374, !1385, !7, !301}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !368, file: !14, line: 1997, baseType: !3536, size: 64, offset: 1216)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!85, !3370, !339, !1385, !301}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !368, file: !14, line: 1999, baseType: !3540, size: 64, offset: 1280)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!362, !3370, !374, !85}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !368, file: !14, line: 2001, baseType: !3544, size: 64, offset: 1344)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!85, !3370, !374, !362, !85}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !368, file: !14, line: 2003, baseType: !3548, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!85, !3370, !374, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !368, file: !14, line: 2005, baseType: !3554, size: 64, offset: 1472)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!85, !374, !3551}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !368, file: !14, line: 2006, baseType: !3558, size: 64, offset: 1536)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!3561, !339}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3563)
!3563 = !{!3564, !3571}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3562, file: !14, line: 3193, baseType: !3565, size: 128)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3566, line: 296, size: 128, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3567 = !{!3568, !3569, !3570}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3565, file: !3566, line: 297, baseType: !189, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3565, file: !3566, line: 299, baseType: !140, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3565, file: !3566, line: 300, baseType: !139, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3562, file: !14, line: 3194, baseType: !408, size: 32, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !340, file: !14, line: 655, baseType: !490, size: 64, offset: 448)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !340, file: !14, line: 656, baseType: !335, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !340, file: !14, line: 659, baseType: !139, size: 64, offset: 576)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !340, file: !14, line: 663, baseType: !309, size: 64, offset: 640)
!3576 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 671, baseType: !3577, size: 32, offset: 704)
!3577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 671, size: 32, elements: !3578)
!3578 = !{!3579, !3581}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3577, file: !14, line: 672, baseType: !3580, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3577, file: !14, line: 673, baseType: !7, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !340, file: !14, line: 675, baseType: !495, size: 32, offset: 736)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !340, file: !14, line: 676, baseType: !500, size: 64, offset: 768)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !340, file: !14, line: 677, baseType: !3481, size: 128, offset: 832)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !340, file: !14, line: 678, baseType: !3481, size: 128, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !340, file: !14, line: 679, baseType: !3481, size: 128, offset: 1088)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !340, file: !14, line: 680, baseType: !189, size: 32, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !340, file: !14, line: 681, baseType: !229, size: 16, offset: 1248)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !340, file: !14, line: 682, baseType: !217, size: 8, offset: 1264)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !340, file: !14, line: 683, baseType: !217, size: 8, offset: 1272)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !340, file: !14, line: 684, baseType: !1956, size: 64, offset: 1280)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !340, file: !14, line: 691, baseType: !309, size: 64, offset: 1344)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !340, file: !14, line: 692, baseType: !1201, size: 320, offset: 1408)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !340, file: !14, line: 694, baseType: !309, size: 64, offset: 1728)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !340, file: !14, line: 695, baseType: !309, size: 64, offset: 1792)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !340, file: !14, line: 697, baseType: !844, size: 128, offset: 1856)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !340, file: !14, line: 698, baseType: !146, size: 128, offset: 1984)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !340, file: !14, line: 707, baseType: !146, size: 128, offset: 2112)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !340, file: !14, line: 708, baseType: !146, size: 128, offset: 2240)
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 709, baseType: !3601, size: 128, offset: 2368)
!3601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 709, size: 128, elements: !3602)
!3602 = !{!3603, !3604}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3601, file: !14, line: 710, baseType: !968, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3601, file: !14, line: 711, baseType: !818, size: 128, align: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !340, file: !14, line: 713, baseType: !606, size: 64, offset: 2496)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !340, file: !14, line: 714, baseType: !606, size: 64, offset: 2560)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !340, file: !14, line: 715, baseType: !209, size: 32, offset: 2624)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !340, file: !14, line: 716, baseType: !209, size: 32, offset: 2656)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !340, file: !14, line: 717, baseType: !209, size: 32, offset: 2688)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !340, file: !14, line: 719, baseType: !209, size: 32, offset: 2720)
!3611 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 721, baseType: !3612, size: 64, offset: 2752)
!3612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 721, size: 64, elements: !3613)
!3613 = !{!3614, !3615}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3612, file: !14, line: 722, baseType: !1376, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3612, file: !14, line: 723, baseType: !991, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !340, file: !14, line: 725, baseType: !3617, size: 64, offset: 2816)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !340, file: !14, line: 726, baseType: !336, size: 1536, align: 64, offset: 2880)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !340, file: !14, line: 727, baseType: !146, size: 128, offset: 4416)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 728, baseType: !3622, size: 64, offset: 4544)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 728, size: 64, elements: !3623)
!3623 = !{!3624, !3625, !3628, !3629}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3622, file: !14, line: 729, baseType: !1705, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3622, file: !14, line: 730, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3622, file: !14, line: 731, baseType: !259, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3622, file: !14, line: 732, baseType: !7, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !340, file: !14, line: 735, baseType: !409, size: 32, offset: 4608)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !340, file: !14, line: 738, baseType: !409, size: 32, offset: 4640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !340, file: !14, line: 739, baseType: !3307, size: 64, offset: 4672)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !340, file: !14, line: 750, baseType: !139, size: 64, offset: 4736)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !336, file: !14, line: 474, baseType: !3565, size: 128, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !336, file: !14, line: 475, baseType: !1201, size: 320, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !336, file: !14, line: 476, baseType: !140, size: 32, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !336, file: !14, line: 477, baseType: !209, size: 32, offset: 544)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !336, file: !14, line: 482, baseType: !2230, size: 128, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !336, file: !14, line: 483, baseType: !309, size: 64, offset: 704)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !336, file: !14, line: 484, baseType: !309, size: 64, offset: 768)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !336, file: !14, line: 485, baseType: !3642, size: 64, offset: 832)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3645)
!3645 = !{!3646, !3650, !3720, !3724, !3728, !3734, !3739, !3743, !3748, !3752, !3756, !3760, !3761, !3765, !3769, !3773, !3778, !3782, !3789, !3790}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3644, file: !14, line: 405, baseType: !3647, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!85, !2906, !1003}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3644, file: !14, line: 406, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!85, !1385, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1461, line: 293, size: 1536, elements: !3656)
!3656 = !{!3657, !3687, !3701}
!3657 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1461, line: 295, baseType: !3658, size: 512)
!3658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !1461, line: 295, size: 512, elements: !3659)
!3659 = !{!3660, !3686}
!3660 = !DIDerivedType(tag: DW_TAG_member, scope: !3658, file: !1461, line: 296, baseType: !3661, size: 448)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3658, file: !1461, line: 296, size: 448, elements: !3662)
!3662 = !{!3663, !3664, !3673, !3674, !3675, !3684, !3685}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3661, file: !1461, line: 298, baseType: !309, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !1461, line: 299, baseType: !3665, size: 128, offset: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !1461, line: 299, size: 128, elements: !3666)
!3666 = !{!3667, !3668}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3665, file: !1461, line: 300, baseType: !146, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, scope: !3665, file: !1461, line: 302, baseType: !3669, size: 128)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3665, file: !1461, line: 302, size: 128, elements: !3670)
!3670 = !{!3671, !3672}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3669, file: !1461, line: 303, baseType: !139, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3669, file: !1461, line: 305, baseType: !7, size: 32, offset: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3661, file: !1461, line: 310, baseType: !335, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3661, file: !1461, line: 311, baseType: !309, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, scope: !3661, file: !1461, line: 312, baseType: !3676, size: 64, offset: 320)
!3676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3661, file: !1461, line: 312, size: 64, elements: !3677)
!3677 = !{!3678, !3679}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3676, file: !1461, line: 313, baseType: !139, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3676, file: !1461, line: 314, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1461, line: 257, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1461, line: 255, size: 64, elements: !3682)
!3682 = !{!3683}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3681, file: !1461, line: 256, baseType: !309, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3661, file: !1461, line: 316, baseType: !209, size: 32, offset: 384)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3661, file: !1461, line: 317, baseType: !209, size: 32, offset: 416)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3658, file: !1461, line: 323, baseType: !2907, size: 512, align: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1461, line: 325, baseType: !3688, size: 512, offset: 512)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !1461, line: 325, size: 512, elements: !3689)
!3689 = !{!3690, !3700}
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !1461, line: 326, baseType: !3691, size: 320)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !1461, line: 326, size: 320, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3691, file: !1461, line: 327, baseType: !309, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3691, file: !1461, line: 328, baseType: !309, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3691, file: !1461, line: 329, baseType: !309, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3691, file: !1461, line: 331, baseType: !209, size: 32, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3691, file: !1461, line: 332, baseType: !209, size: 32, offset: 224)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3691, file: !1461, line: 333, baseType: !209, size: 32, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3691, file: !1461, line: 335, baseType: !7, size: 32, offset: 288)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3688, file: !1461, line: 339, baseType: !2907, size: 512, align: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3655, file: !1461, line: 341, baseType: !3702, size: 512, offset: 1024)
!3702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3655, file: !1461, line: 341, size: 512, elements: !3703)
!3703 = !{!3704, !3713, !3719}
!3704 = !DIDerivedType(tag: DW_TAG_member, scope: !3702, file: !1461, line: 342, baseType: !3705, size: 384)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3702, file: !1461, line: 342, size: 384, elements: !3706)
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3705, file: !1461, line: 343, baseType: !309, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3705, file: !1461, line: 344, baseType: !309, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3705, file: !1461, line: 346, baseType: !139, size: 64, offset: 128)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3705, file: !1461, line: 347, baseType: !139, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3705, file: !1461, line: 348, baseType: !139, size: 64, offset: 256)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3705, file: !1461, line: 349, baseType: !139, size: 64, offset: 320)
!3713 = !DIDerivedType(tag: DW_TAG_member, scope: !3702, file: !1461, line: 352, baseType: !3714, size: 256)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3702, file: !1461, line: 352, size: 256, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3714, file: !1461, line: 353, baseType: !309, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3714, file: !1461, line: 354, baseType: !309, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3714, file: !1461, line: 356, baseType: !146, size: 128, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3702, file: !1461, line: 359, baseType: !2907, size: 512, align: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3644, file: !14, line: 409, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!85, !335, !1003}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3644, file: !14, line: 412, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!157, !335, !3654}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3644, file: !14, line: 414, baseType: !3729, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{null, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3644, file: !14, line: 416, baseType: !3735, size: 64, offset: 320)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!85, !1385, !335, !500, !7, !3738, !1720}
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3644, file: !14, line: 419, baseType: !3740, size: 64, offset: 384)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!85, !1385, !335, !500, !7, !7, !2906, !139}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3644, file: !14, line: 424, baseType: !3744, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!3747, !335, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !141, line: 131, baseType: !412)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3644, file: !14, line: 425, baseType: !3749, size: 64, offset: 512)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{null, !3654, !306, !306}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3644, file: !14, line: 426, baseType: !3753, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!157, !3654, !140}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3644, file: !14, line: 427, baseType: !3757, size: 64, offset: 640)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3654}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3644, file: !14, line: 428, baseType: !1395, size: 64, offset: 704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3644, file: !14, line: 433, baseType: !3762, size: 64, offset: 768)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!85, !335, !3654, !3654, !50}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3644, file: !14, line: 435, baseType: !3766, size: 64, offset: 832)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!85, !3654}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3644, file: !14, line: 436, baseType: !3770, size: 64, offset: 896)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!157, !3654, !306, !306}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3644, file: !14, line: 438, baseType: !3774, size: 64, offset: 960)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DISubroutineType(types: !3776)
!3776 = !{null, !3654, !3777, !3777}
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3644, file: !14, line: 439, baseType: !3779, size: 64, offset: 1024)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!85, !335, !2906}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3644, file: !14, line: 442, baseType: !3783, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!85, !3786, !1385, !3788}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3644, file: !14, line: 444, baseType: !1712, size: 64, offset: 1152)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3644, file: !14, line: 445, baseType: !3791, size: 64, offset: 1216)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!85, !1398, !1420}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !14, line: 486, baseType: !309, size: 64, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !336, file: !14, line: 487, baseType: !1201, size: 320, offset: 960)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !336, file: !14, line: 488, baseType: !1755, size: 32, offset: 1280)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !336, file: !14, line: 489, baseType: !189, size: 32, offset: 1312)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !336, file: !14, line: 490, baseType: !146, size: 128, offset: 1344)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !336, file: !14, line: 491, baseType: !139, size: 64, offset: 1472)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !326, file: !285, line: 180, baseType: !3801, size: 64, offset: 320)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!291, !1385, !182, !325, !259, !500, !306}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !326, file: !285, line: 182, baseType: !3801, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !326, file: !285, line: 184, baseType: !3806, size: 64, offset: 448)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!85, !1385, !182, !325, !1459}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !314, file: !285, line: 90, baseType: !3810, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !314, file: !285, line: 91, baseType: !3812, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !275, file: !174, line: 120, baseType: !3814, size: 64, offset: 192)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!3817, !242}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3819)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3820)
!3820 = !{!3821, !3822, !3826, !3830, !3836, !3840}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3819, file: !58, line: 40, baseType: !57, size: 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3819, file: !58, line: 41, baseType: !3823, size: 64, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!157}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3819, file: !58, line: 42, baseType: !3827, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!139}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3819, file: !58, line: 43, baseType: !3831, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!1588, !3834}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3819, file: !58, line: 44, baseType: !3837, size: 64, offset: 256)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!1588}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3819, file: !58, line: 45, baseType: !643, size: 64, offset: 320)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !275, file: !174, line: 121, baseType: !3842, size: 64, offset: 256)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!1588, !242}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !275, file: !174, line: 122, baseType: !3846, size: 64, offset: 320)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{null, !242, !3849, !3850}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !173, file: !174, line: 70, baseType: !3852, size: 64, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !515, line: 190, size: 1152, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3934, !3935, !3936, !3937, !3938, !3941}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3853, file: !515, line: 191, baseType: !209, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3853, file: !515, line: 192, baseType: !209, size: 32, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3853, file: !515, line: 202, baseType: !3852, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3853, file: !515, line: 203, baseType: !177, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3853, file: !515, line: 205, baseType: !710, size: 192, align: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3853, file: !515, line: 207, baseType: !1588, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3853, file: !515, line: 208, baseType: !7, size: 32, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !515, line: 209, baseType: !3863, size: 256, offset: 512)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !515, line: 209, size: 256, elements: !3864)
!3864 = !{!3865, !3874, !3878}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3863, file: !515, line: 210, baseType: !3866, size: 256)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !515, line: 153, size: 256, elements: !3867)
!3867 = !{!3868, !3869, !3870, !3873}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3866, file: !515, line: 154, baseType: !309, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3866, file: !515, line: 156, baseType: !2233, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3866, file: !515, line: 162, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !515, line: 162, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3866, file: !515, line: 167, baseType: !309, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3863, file: !515, line: 211, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !515, line: 170, size: 64, elements: !3876)
!3876 = !{!3877}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3875, file: !515, line: 171, baseType: !3852, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3863, file: !515, line: 212, baseType: !3879, size: 256)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !515, line: 174, size: 256, elements: !3880)
!3880 = !{!3881, !3929, !3932, !3933}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3879, file: !515, line: 175, baseType: !3882, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3884)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !515, line: 271, size: 768, elements: !3885)
!3885 = !{!3886, !3906, !3910, !3911, !3912, !3913, !3914, !3918, !3919, !3920, !3921, !3925}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3884, file: !515, line: 276, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!85, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !515, line: 251, size: 1216, elements: !3892)
!3892 = !{!3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3891, file: !515, line: 253, baseType: !3852, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3891, file: !515, line: 254, baseType: !1385, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3891, file: !515, line: 255, baseType: !1040, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3891, file: !515, line: 256, baseType: !139, size: 64, offset: 192)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3891, file: !515, line: 259, baseType: !600, size: 256, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3891, file: !515, line: 260, baseType: !600, size: 256, offset: 512)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3891, file: !515, line: 261, baseType: !85, size: 32, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3891, file: !515, line: 262, baseType: !146, size: 128, offset: 832)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3891, file: !515, line: 263, baseType: !259, size: 64, offset: 960)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3891, file: !515, line: 265, baseType: !306, size: 64, offset: 1024)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3891, file: !515, line: 266, baseType: !157, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3891, file: !515, line: 267, baseType: !157, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3891, file: !515, line: 268, baseType: !1657, size: 64, offset: 1152)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3884, file: !515, line: 277, baseType: !3907, size: 64, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{null, !3890}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3884, file: !515, line: 290, baseType: !1071, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3884, file: !515, line: 292, baseType: !1058, size: 64, offset: 192)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3884, file: !515, line: 293, baseType: !1067, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3884, file: !515, line: 294, baseType: !1063, size: 64, offset: 320)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3884, file: !515, line: 296, baseType: !3915, size: 64, offset: 384)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!291, !3890, !259, !306, !500}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3884, file: !515, line: 306, baseType: !306, size: 64, offset: 448)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3884, file: !515, line: 313, baseType: !157, size: 8, offset: 512)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3884, file: !515, line: 314, baseType: !3915, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3884, file: !515, line: 317, baseType: !3922, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!1446, !3890, !1448}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3884, file: !515, line: 320, baseType: !3926, size: 64, offset: 704)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!85, !3890, !1459}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3879, file: !515, line: 176, baseType: !3930, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !515, line: 35, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3879, file: !515, line: 177, baseType: !500, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3879, file: !515, line: 178, baseType: !3852, size: 64, offset: 192)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3853, file: !515, line: 215, baseType: !139, size: 64, offset: 768)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3853, file: !515, line: 221, baseType: !412, size: 64, offset: 832)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !515, line: 223, baseType: !229, size: 16, offset: 896)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3853, file: !515, line: 224, baseType: !301, size: 16, offset: 912)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3853, file: !515, line: 225, baseType: !3939, size: 64, offset: 960)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !515, line: 36, flags: DIFlagFwdDecl)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3853, file: !515, line: 227, baseType: !818, size: 128, align: 64, offset: 1024)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !173, file: !174, line: 71, baseType: !3943, size: 32, offset: 448)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3944, line: 19, size: 32, elements: !3945)
!3944 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3945 = !{!3946}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3943, file: !3944, line: 20, baseType: !1127, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !173, file: !174, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !173, file: !174, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !173, file: !174, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !173, file: !174, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !173, file: !174, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !170, file: !70, line: 707, baseType: !169, size: 64, offset: 512)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !170, file: !70, line: 709, baseType: !3954, size: 64, offset: 576)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !170, file: !70, line: 711, baseType: !177, size: 64, offset: 640)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !170, file: !70, line: 712, baseType: !3958, size: 64, offset: 704)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3960)
!3960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !3961)
!3961 = !{!3962, !3963, !3964, !3970, !3975, !3979}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3960, file: !70, line: 90, baseType: !177, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3960, file: !70, line: 91, baseType: !311, size: 64, offset: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3960, file: !70, line: 92, baseType: !3965, size: 64, offset: 128)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!85, !3968, !254}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3960, file: !70, line: 93, baseType: !3971, size: 64, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!259, !3968, !3974, !3849, !3850}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3960, file: !70, line: 95, baseType: !3976, size: 64, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{null, !169}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3960, file: !70, line: 97, baseType: !3980, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3982)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3982, file: !77, line: 287, baseType: !166, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3982, file: !77, line: 288, baseType: !3976, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3982, file: !77, line: 289, baseType: !166, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3982, file: !77, line: 290, baseType: !166, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3982, file: !77, line: 291, baseType: !166, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3982, file: !77, line: 292, baseType: !166, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3982, file: !77, line: 293, baseType: !166, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3982, file: !77, line: 294, baseType: !166, size: 64, offset: 448)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3982, file: !77, line: 295, baseType: !166, size: 64, offset: 512)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3982, file: !77, line: 296, baseType: !166, size: 64, offset: 576)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3982, file: !77, line: 297, baseType: !166, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3982, file: !77, line: 298, baseType: !166, size: 64, offset: 704)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3982, file: !77, line: 299, baseType: !166, size: 64, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3982, file: !77, line: 300, baseType: !166, size: 64, offset: 832)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3982, file: !77, line: 301, baseType: !166, size: 64, offset: 896)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3982, file: !77, line: 302, baseType: !166, size: 64, offset: 960)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3982, file: !77, line: 303, baseType: !166, size: 64, offset: 1024)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3982, file: !77, line: 304, baseType: !166, size: 64, offset: 1088)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3982, file: !77, line: 305, baseType: !166, size: 64, offset: 1152)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3982, file: !77, line: 306, baseType: !166, size: 64, offset: 1216)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3982, file: !77, line: 307, baseType: !166, size: 64, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3982, file: !77, line: 308, baseType: !166, size: 64, offset: 1344)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3982, file: !77, line: 309, baseType: !166, size: 64, offset: 1408)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !170, file: !70, line: 714, baseType: !4008, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4010)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4011, line: 80, size: 1344, elements: !4012)
!4011 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4091}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4010, file: !4011, line: 81, baseType: !177, size: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4010, file: !4011, line: 82, baseType: !177, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4010, file: !4011, line: 83, baseType: !311, size: 64, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4010, file: !4011, line: 84, baseType: !311, size: 64, offset: 192)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4010, file: !4011, line: 85, baseType: !311, size: 64, offset: 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4010, file: !4011, line: 87, baseType: !4019, size: 64, offset: 320)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!85, !169, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4044, !4054, !4055, !4056, !4057, !4058, !4066, !4067, !4068, !4069, !4070, !4071}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4023, file: !64, line: 97, baseType: !177, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4023, file: !64, line: 98, baseType: !4008, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4023, file: !64, line: 100, baseType: !529, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4023, file: !64, line: 101, baseType: !177, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4023, file: !64, line: 103, baseType: !157, size: 8, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4023, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4023, file: !64, line: 106, baseType: !4032, size: 64, offset: 320)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4034)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4035, line: 282, size: 1600, elements: !4036)
!4035 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4036 = !{!4037, !4038, !4039, !4043}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4034, file: !4035, line: 283, baseType: !3310, size: 256)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4034, file: !4035, line: 284, baseType: !3310, size: 256, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4034, file: !4035, line: 285, baseType: !4040, size: 1024, offset: 512)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 1024, elements: !4041)
!4041 = !{!4042}
!4042 = !DISubrange(count: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4034, file: !4035, line: 286, baseType: !1588, size: 64, offset: 1536)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4023, file: !64, line: 107, baseType: !4045, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4035, line: 217, size: 256, elements: !4048)
!4048 = !{!4049, !4050, !4052, !4053}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4047, file: !4035, line: 218, baseType: !3317, size: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4047, file: !4035, line: 219, baseType: !4051, size: 64, offset: 128)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4035, line: 15, baseType: !309)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4047, file: !4035, line: 220, baseType: !409, size: 32, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4047, file: !4035, line: 221, baseType: !409, size: 32, offset: 224)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4023, file: !64, line: 109, baseType: !166, size: 64, offset: 448)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4023, file: !64, line: 110, baseType: !3976, size: 64, offset: 512)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4023, file: !64, line: 111, baseType: !166, size: 64, offset: 576)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4023, file: !64, line: 112, baseType: !3976, size: 64, offset: 640)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4023, file: !64, line: 113, baseType: !4059, size: 64, offset: 704)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!85, !169, !4062}
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4063)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4064)
!4064 = !{!4065}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4063, file: !77, line: 59, baseType: !85, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4023, file: !64, line: 114, baseType: !166, size: 64, offset: 768)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4023, file: !64, line: 115, baseType: !311, size: 64, offset: 832)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4023, file: !64, line: 116, baseType: !311, size: 64, offset: 896)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4023, file: !64, line: 118, baseType: !3980, size: 64, offset: 960)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4023, file: !64, line: 119, baseType: !3976, size: 64, offset: 1024)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4023, file: !64, line: 121, baseType: !4072, size: 64, offset: 1088)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4010, file: !4011, line: 88, baseType: !3965, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4010, file: !4011, line: 89, baseType: !166, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4010, file: !4011, line: 90, baseType: !3976, size: 64, offset: 512)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4010, file: !4011, line: 91, baseType: !3976, size: 64, offset: 576)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4010, file: !4011, line: 92, baseType: !3976, size: 64, offset: 640)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4010, file: !4011, line: 94, baseType: !166, size: 64, offset: 704)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4010, file: !4011, line: 95, baseType: !166, size: 64, offset: 768)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4010, file: !4011, line: 97, baseType: !4059, size: 64, offset: 832)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4010, file: !4011, line: 98, baseType: !166, size: 64, offset: 896)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4010, file: !4011, line: 100, baseType: !166, size: 64, offset: 960)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4010, file: !4011, line: 102, baseType: !166, size: 64, offset: 1024)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4010, file: !4011, line: 103, baseType: !3976, size: 64, offset: 1088)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4010, file: !4011, line: 105, baseType: !3980, size: 64, offset: 1152)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4010, file: !4011, line: 107, baseType: !4088, size: 64, offset: 1216)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4090)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4011, line: 107, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4010, file: !4011, line: 109, baseType: !157, size: 8, offset: 1280)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !170, file: !70, line: 715, baseType: !4022, size: 64, offset: 832)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !170, file: !70, line: 717, baseType: !139, size: 64, offset: 896)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !170, file: !70, line: 719, baseType: !139, size: 64, offset: 960)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !170, file: !70, line: 721, baseType: !600, size: 256, offset: 1024)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !170, file: !70, line: 725, baseType: !4097, size: 448, offset: 1280)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4098)
!4098 = !{!4099, !4100, !4101, !4102}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4097, file: !70, line: 518, baseType: !146, size: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4097, file: !70, line: 519, baseType: !146, size: 128, offset: 128)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4097, file: !70, line: 520, baseType: !146, size: 128, offset: 256)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4097, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !170, file: !70, line: 726, baseType: !4104, size: 2496, offset: 1728)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4188, !4192}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4104, file: !77, line: 664, baseType: !4062, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4104, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4104, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4104, file: !77, line: 667, baseType: !157, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4104, file: !77, line: 668, baseType: !157, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4104, file: !77, line: 669, baseType: !157, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4104, file: !77, line: 670, baseType: !157, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4104, file: !77, line: 671, baseType: !157, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4104, file: !77, line: 672, baseType: !157, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4104, file: !77, line: 673, baseType: !157, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4104, file: !77, line: 674, baseType: !157, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4104, file: !77, line: 675, baseType: !408, size: 32, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4104, file: !77, line: 676, baseType: !189, size: 32, offset: 96)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4104, file: !77, line: 678, baseType: !146, size: 128, offset: 128)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4104, file: !77, line: 679, baseType: !549, size: 256, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4104, file: !77, line: 680, baseType: !4122, size: 64, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4124, line: 43, size: 1536, elements: !4125)
!4124 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4125 = !{!4126, !4127, !4128, !4129, !4130, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4123, file: !4124, line: 44, baseType: !177, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4123, file: !4124, line: 45, baseType: !85, size: 32, offset: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4123, file: !4124, line: 46, baseType: !146, size: 128, offset: 128)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4123, file: !4124, line: 47, baseType: !189, size: 32, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4123, file: !4124, line: 48, baseType: !4131, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4123, file: !4124, line: 49, baseType: !840, size: 320, offset: 384)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4123, file: !4124, line: 50, baseType: !309, size: 64, offset: 704)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4123, file: !4124, line: 51, baseType: !2179, size: 64, offset: 768)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4123, file: !4124, line: 52, baseType: !2179, size: 64, offset: 832)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4123, file: !4124, line: 53, baseType: !2179, size: 64, offset: 896)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4123, file: !4124, line: 54, baseType: !2179, size: 64, offset: 960)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4123, file: !4124, line: 55, baseType: !2179, size: 64, offset: 1024)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4123, file: !4124, line: 56, baseType: !309, size: 64, offset: 1088)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4123, file: !4124, line: 57, baseType: !309, size: 64, offset: 1152)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4123, file: !4124, line: 58, baseType: !309, size: 64, offset: 1216)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4123, file: !4124, line: 59, baseType: !309, size: 64, offset: 1280)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4123, file: !4124, line: 60, baseType: !309, size: 64, offset: 1344)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4123, file: !4124, line: 61, baseType: !169, size: 64, offset: 1408)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4123, file: !4124, line: 62, baseType: !157, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4123, file: !4124, line: 63, baseType: !157, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4104, file: !77, line: 681, baseType: !157, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4104, file: !77, line: 682, baseType: !157, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4104, file: !77, line: 683, baseType: !157, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4104, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4104, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4104, file: !77, line: 690, baseType: !2171, size: 512, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4104, file: !77, line: 691, baseType: !412, size: 64, offset: 1152)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4104, file: !77, line: 692, baseType: !858, size: 256, offset: 1216)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4104, file: !77, line: 693, baseType: !1138, size: 192, offset: 1472)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4104, file: !77, line: 694, baseType: !4131, size: 64, offset: 1664)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4104, file: !77, line: 695, baseType: !209, size: 32, offset: 1728)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4104, file: !77, line: 696, baseType: !209, size: 32, offset: 1760)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4104, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4104, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4104, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4104, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4104, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4104, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4104, file: !77, line: 703, baseType: !157, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4104, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4104, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4104, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4104, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4104, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4104, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4104, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4104, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4104, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4104, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4104, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4104, file: !77, line: 715, baseType: !412, size: 64, offset: 2048)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4104, file: !77, line: 716, baseType: !412, size: 64, offset: 2112)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4104, file: !77, line: 717, baseType: !412, size: 64, offset: 2176)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4104, file: !77, line: 718, baseType: !412, size: 64, offset: 2240)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4104, file: !77, line: 720, baseType: !4183, size: 64, offset: 2304)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4185)
!4185 = !{!4186, !4187}
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4184, file: !77, line: 633, baseType: !189, size: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4184, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4104, file: !77, line: 721, baseType: !4189, size: 64, offset: 2368)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !169, !596}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4104, file: !77, line: 722, baseType: !4193, size: 64, offset: 2432)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !170, file: !70, line: 727, baseType: !4196, size: 64, offset: 4224)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4198)
!4198 = !{!4199, !4200, !4201, !4205, !4206, !4207}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4197, file: !77, line: 743, baseType: !3982, size: 1472)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4197, file: !77, line: 744, baseType: !166, size: 64, offset: 1472)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4197, file: !77, line: 745, baseType: !4202, size: 64, offset: 1536)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{null, !169, !157}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4197, file: !77, line: 746, baseType: !166, size: 64, offset: 1600)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4197, file: !77, line: 747, baseType: !3976, size: 64, offset: 1664)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4197, file: !77, line: 748, baseType: !3976, size: 64, offset: 1728)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !170, file: !70, line: 736, baseType: !4209, size: 128, offset: 4288)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4210)
!4210 = !{!4211, !4215}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4209, file: !70, line: 531, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4214, line: 13, flags: DIFlagFwdDecl)
!4214 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4209, file: !70, line: 532, baseType: !4216, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !170, file: !70, line: 738, baseType: !4219, size: 64, offset: 4416)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4221)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !170, file: !70, line: 740, baseType: !4223, size: 64, offset: 4480)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !170, file: !70, line: 741, baseType: !412, size: 64, offset: 4544)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !170, file: !70, line: 746, baseType: !412, size: 64, offset: 4608)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !170, file: !70, line: 747, baseType: !4227, size: 64, offset: 4672)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4229)
!4229 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !170, file: !70, line: 749, baseType: !4231, size: 64, offset: 4736)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4233)
!4233 = !{!4234, !4235, !4236}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4232, file: !70, line: 433, baseType: !7, size: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4232, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4232, file: !70, line: 435, baseType: !309, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !170, file: !70, line: 751, baseType: !146, size: 128, offset: 4800)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !170, file: !70, line: 762, baseType: !4239, size: 64, offset: 4928)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !170, file: !70, line: 770, baseType: !4242, offset: 4992)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4243, line: 5, elements: !887)
!4243 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !170, file: !70, line: 772, baseType: !4245, size: 64, offset: 4992)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4247, line: 48, size: 1152, elements: !4248)
!4247 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4248 = !{!4249, !4250, !4252, !4253, !4356, !4364, !4365, !4366, !4367, !4368, !4369}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4246, file: !4247, line: 49, baseType: !177, size: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4246, file: !4247, line: 50, baseType: !4251, size: 32, offset: 64)
!4251 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4247, line: 25, baseType: !408)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4246, file: !4247, line: 51, baseType: !177, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4246, file: !4247, line: 52, baseType: !4254, size: 512, offset: 192)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4255, line: 41, size: 512, elements: !4256)
!4255 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4256 = !{!4257, !4259, !4352, !4353, !4354, !4355}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4254, file: !4255, line: 42, baseType: !4258, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4254, file: !4255, line: 43, baseType: !4260, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4255, line: 125, size: 1408, elements: !4263)
!4263 = !{!4264, !4268, !4272, !4278, !4282, !4283, !4287, !4291, !4295, !4299, !4303, !4304, !4308, !4312, !4316, !4327, !4328, !4329, !4330, !4340, !4344, !4348}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4262, file: !4255, line: 126, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!4258, !4258}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4262, file: !4255, line: 127, baseType: !4269, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{null, !4258}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4262, file: !4255, line: 128, baseType: !4273, size: 64, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!157, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4254)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4262, file: !4255, line: 129, baseType: !4279, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!1588, !4276, !3968}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4262, file: !4255, line: 131, baseType: !4273, size: 64, offset: 256)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4262, file: !4255, line: 133, baseType: !4284, size: 64, offset: 320)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!92, !4276}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4262, file: !4255, line: 134, baseType: !4288, size: 64, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!157, !4276, !177}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4262, file: !4255, line: 136, baseType: !4292, size: 64, offset: 448)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!85, !4276, !177, !7, !139, !306}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4262, file: !4255, line: 141, baseType: !4296, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!85, !4276, !177, !935, !306}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4262, file: !4255, line: 144, baseType: !4300, size: 64, offset: 576)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!177, !4276}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4262, file: !4255, line: 145, baseType: !4300, size: 64, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4262, file: !4255, line: 146, baseType: !4305, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!4258, !4276}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4262, file: !4255, line: 148, baseType: !4309, size: 64, offset: 768)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!4258, !4276, !4258}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4262, file: !4255, line: 151, baseType: !4313, size: 64, offset: 832)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!4258, !4276, !177}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4262, file: !4255, line: 153, baseType: !4317, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!85, !4276, !177, !177, !7, !7, !4320}
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4255, line: 94, size: 640, elements: !4322)
!4322 = !{!4323, !4324, !4325}
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4321, file: !4255, line: 95, baseType: !4258, size: 64)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4321, file: !4255, line: 96, baseType: !7, size: 32, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4321, file: !4255, line: 97, baseType: !4326, size: 512, offset: 128)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !2214)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4262, file: !4255, line: 158, baseType: !4309, size: 64, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4262, file: !4255, line: 161, baseType: !4305, size: 64, offset: 1024)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4262, file: !4255, line: 163, baseType: !4265, size: 64, offset: 1088)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4262, file: !4255, line: 164, baseType: !4331, size: 64, offset: 1152)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!85, !4276, !4334}
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4255, line: 73, size: 128, elements: !4336)
!4336 = !{!4337, !4338, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4335, file: !4255, line: 74, baseType: !7, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4335, file: !4255, line: 75, baseType: !7, size: 32, offset: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4335, file: !4255, line: 76, baseType: !4276, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4262, file: !4255, line: 166, baseType: !4341, size: 64, offset: 1216)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!139, !4258, !85}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4262, file: !4255, line: 167, baseType: !4345, size: 64, offset: 1280)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!85, !4276, !7}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4262, file: !4255, line: 168, baseType: !4349, size: 64, offset: 1344)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!85, !4258}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4254, file: !4255, line: 44, baseType: !169, size: 64, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4254, file: !4255, line: 45, baseType: !146, size: 128, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4254, file: !4255, line: 46, baseType: !146, size: 128, offset: 320)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4254, file: !4255, line: 47, baseType: !217, size: 8, offset: 448)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4246, file: !4247, line: 54, baseType: !4357, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4247, line: 28, size: 256, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4358, file: !4247, line: 29, baseType: !259, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4358, file: !4247, line: 30, baseType: !85, size: 32, offset: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4358, file: !4247, line: 31, baseType: !139, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4358, file: !4247, line: 32, baseType: !4357, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4246, file: !4247, line: 55, baseType: !4357, size: 64, offset: 768)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4246, file: !4247, line: 56, baseType: !4245, size: 64, offset: 832)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4246, file: !4247, line: 57, baseType: !4245, size: 64, offset: 896)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4246, file: !4247, line: 58, baseType: !4245, size: 64, offset: 960)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4246, file: !4247, line: 62, baseType: !309, size: 64, offset: 1024)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4246, file: !4247, line: 63, baseType: !139, size: 64, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !170, file: !70, line: 773, baseType: !4258, size: 64, offset: 5056)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !170, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !170, file: !70, line: 778, baseType: !495, size: 32, offset: 5152)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !170, file: !70, line: 779, baseType: !408, size: 32, offset: 5184)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !170, file: !70, line: 781, baseType: !189, size: 32, offset: 5216)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !170, file: !70, line: 782, baseType: !146, size: 128, offset: 5248)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !170, file: !70, line: 784, baseType: !4377, size: 64, offset: 5376)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4379)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4380, line: 52, size: 768, elements: !4381)
!4380 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4390, !4394, !4395, !4396, !4397, !4401, !4405}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4379, file: !4380, line: 53, baseType: !177, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4379, file: !4380, line: 55, baseType: !311, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4379, file: !4380, line: 56, baseType: !311, size: 64, offset: 128)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4379, file: !4380, line: 58, baseType: !3965, size: 64, offset: 192)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4379, file: !4380, line: 59, baseType: !4387, size: 64, offset: 256)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!259, !3968, !3974}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4379, file: !4380, line: 61, baseType: !4391, size: 64, offset: 320)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{null, !4377}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4379, file: !4380, line: 62, baseType: !3976, size: 64, offset: 384)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4379, file: !4380, line: 64, baseType: !166, size: 64, offset: 448)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4379, file: !4380, line: 66, baseType: !3817, size: 64, offset: 512)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4379, file: !4380, line: 67, baseType: !4398, size: 64, offset: 576)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!1588, !3968}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4379, file: !4380, line: 69, baseType: !4402, size: 64, offset: 640)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !3968, !3849, !3850}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4379, file: !4380, line: 71, baseType: !3980, size: 64, offset: 704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !170, file: !70, line: 785, baseType: !311, size: 64, offset: 5440)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !170, file: !70, line: 787, baseType: !3976, size: 64, offset: 5504)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !170, file: !70, line: 788, baseType: !4409, size: 64, offset: 5568)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !170, file: !70, line: 789, baseType: !4412, size: 64, offset: 5632)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !170, file: !70, line: 791, baseType: !4415, size: 64, offset: 5696)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4417)
!4417 = !{!4418, !4419, !4420, !4421, !4422}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4416, file: !70, line: 598, baseType: !98, size: 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4416, file: !70, line: 599, baseType: !107, size: 32, offset: 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4416, file: !70, line: 600, baseType: !112, size: 32, offset: 64)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4416, file: !70, line: 601, baseType: !157, size: 8, offset: 96)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4416, file: !70, line: 602, baseType: !157, size: 8, offset: 104)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !170, file: !70, line: 793, baseType: !117, size: 32, offset: 5760)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !170, file: !70, line: 795, baseType: !157, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !170, file: !70, line: 796, baseType: !157, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !170, file: !70, line: 797, baseType: !157, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !170, file: !70, line: 798, baseType: !157, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !170, file: !70, line: 799, baseType: !157, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !162, file: !163, line: 82, baseType: !3976, size: 64, offset: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !3, line: 61, baseType: !169, size: 64, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !153, file: !3, line: 62, baseType: !4432, size: 64, offset: 320)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "component_match", file: !3, line: 50, size: 192, elements: !4434)
!4434 = !{!4435, !4436, !4437}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4433, file: !3, line: 51, baseType: !306, size: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4433, file: !3, line: 52, baseType: !306, size: 64, offset: 64)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !4433, file: !3, line: 53, baseType: !4438, size: 64, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "component_match_array", file: !3, line: 41, size: 384, elements: !4440)
!4440 = !{!4441, !4442, !4446, !4450, !4454, !4455}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4439, file: !3, line: 42, baseType: !139, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !4439, file: !3, line: 43, baseType: !4443, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!85, !169, !139}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "compare_typed", scope: !4439, file: !3, line: 44, baseType: !4447, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!85, !169, !85, !139}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4439, file: !3, line: 45, baseType: !4451, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !169, !139}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "component", scope: !4439, file: !3, line: 46, baseType: !142, size: 64, offset: 256)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "duplicate", scope: !4439, file: !3, line: 47, baseType: !157, size: 8, offset: 320)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !143, file: !3, line: 68, baseType: !157, size: 8, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !143, file: !3, line: 70, baseType: !4458, size: 64, offset: 256)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "component_ops", file: !163, line: 16, size: 128, elements: !4461)
!4461 = !{!4462, !4466}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4460, file: !163, line: 23, baseType: !4463, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!85, !169, !169, !139}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !4460, file: !163, line: 32, baseType: !4467, size: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{null, !169, !169, !139}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "subcomponent", scope: !143, file: !3, line: 71, baseType: !85, size: 32, offset: 320)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !143, file: !3, line: 72, baseType: !169, size: 64, offset: 384)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !149)
!4474 = !{!0, !4475, !4477, !4479, !4481, !4483, !4485, !4487, !4489, !4491, !4496, !4498, !4500, !4502, !4504, !4506, !4511, !4513, !4518, !4523, !4525, !4528, !4533, !4536, !4541, !4546, !4548, !4553, !4555, !4557, !4562, !4564, !4566, !4568, !4571, !4576}
!4475 = !DIGlobalVariableExpression(var: !4476, expr: !DIExpression())
!4476 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_compare_of269", scope: !2, file: !3, line: 300, type: !139, isLocal: true, isDefinition: true)
!4477 = !DIGlobalVariableExpression(var: !4478, expr: !DIExpression())
!4478 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_release_of270", scope: !2, file: !3, line: 313, type: !139, isLocal: true, isDefinition: true)
!4479 = !DIGlobalVariableExpression(var: !4480, expr: !DIExpression())
!4480 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_compare_dev271", scope: !2, file: !3, line: 327, type: !139, isLocal: true, isDefinition: true)
!4481 = !DIGlobalVariableExpression(var: !4482, expr: !DIExpression())
!4482 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_compare_dev_name272", scope: !2, file: !3, line: 342, type: !139, isLocal: true, isDefinition: true)
!4483 = !DIGlobalVariableExpression(var: !4484, expr: !DIExpression())
!4484 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_match_add_release275", scope: !2, file: !3, line: 453, type: !139, isLocal: true, isDefinition: true)
!4485 = !DIGlobalVariableExpression(var: !4486, expr: !DIExpression())
!4486 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_match_add_typed276", scope: !2, file: !3, line: 479, type: !139, isLocal: true, isDefinition: true)
!4487 = !DIGlobalVariableExpression(var: !4488, expr: !DIExpression())
!4488 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_master_add_with_match277", scope: !2, file: !3, line: 546, type: !139, isLocal: true, isDefinition: true)
!4489 = !DIGlobalVariableExpression(var: !4490, expr: !DIExpression())
!4490 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_master_del278", scope: !2, file: !3, line: 570, type: !139, isLocal: true, isDefinition: true)
!4491 = !DIGlobalVariableExpression(var: !4492, expr: !DIExpression())
!4492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 600, type: !4493, isLocal: true, isDefinition: true)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 200, elements: !4494)
!4494 = !{!4495}
!4495 = !DISubrange(count: 25)
!4496 = !DIGlobalVariableExpression(var: !4497, expr: !DIExpression())
!4497 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_unbind_all279", scope: !2, file: !3, line: 613, type: !139, isLocal: true, isDefinition: true)
!4498 = !DIGlobalVariableExpression(var: !4499, expr: !DIExpression())
!4499 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_bind_all280", scope: !2, file: !3, line: 709, type: !139, isLocal: true, isDefinition: true)
!4500 = !DIGlobalVariableExpression(var: !4501, expr: !DIExpression())
!4501 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_add_typed281", scope: !2, file: !3, line: 770, type: !139, isLocal: true, isDefinition: true)
!4502 = !DIGlobalVariableExpression(var: !4503, expr: !DIExpression())
!4503 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_add282", scope: !2, file: !3, line: 791, type: !139, isLocal: true, isDefinition: true)
!4504 = !DIGlobalVariableExpression(var: !4505, expr: !DIExpression())
!4505 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_component_del283", scope: !2, file: !3, line: 824, type: !139, isLocal: true, isDefinition: true)
!4506 = !DIGlobalVariableExpression(var: !4507, expr: !DIExpression())
!4507 = distinct !DIGlobalVariable(scope: null, file: !3, line: 113, type: !4508, isLocal: true, isDefinition: true)
!4508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 136, elements: !4509)
!4509 = !{!4510}
!4510 = !DISubrange(count: 17)
!4511 = !DIGlobalVariableExpression(var: !4512, expr: !DIExpression())
!4512 = distinct !DIGlobalVariable(name: "component_debugfs_dir", scope: !2, file: !3, line: 81, type: !374, isLocal: true, isDefinition: true)
!4513 = !DIGlobalVariableExpression(var: !4514, expr: !DIExpression())
!4514 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !4515, isLocal: true, isDefinition: true)
!4515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 232, elements: !4516)
!4516 = !{!4517}
!4517 = !DISubrange(count: 29)
!4518 = !DIGlobalVariableExpression(var: !4519, expr: !DIExpression())
!4519 = distinct !DIGlobalVariable(scope: null, file: !129, line: 480, type: !4520, isLocal: true, isDefinition: true)
!4520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 168, elements: !4521)
!4521 = !{!4522}
!4522 = !DISubrange(count: 21)
!4523 = !DIGlobalVariableExpression(var: !4524, expr: !DIExpression())
!4524 = distinct !DIGlobalVariable(name: "component_devices_fops", scope: !2, file: !3, line: 109, type: !1377, isLocal: true, isDefinition: true)
!4525 = !DIGlobalVariableExpression(var: !4526, expr: !DIExpression())
!4526 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4527, isLocal: true, isDefinition: true)
!4527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 96, elements: !3189)
!4528 = !DIGlobalVariableExpression(var: !4529, expr: !DIExpression())
!4529 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4530, isLocal: true, isDefinition: true)
!4530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 176, elements: !4531)
!4531 = !{!4532}
!4532 = !DISubrange(count: 22)
!4533 = !DIGlobalVariableExpression(var: !4534, expr: !DIExpression())
!4534 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !4535, isLocal: true, isDefinition: true)
!4535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 56, elements: !719)
!4536 = !DIGlobalVariableExpression(var: !4537, expr: !DIExpression())
!4537 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !4538, isLocal: true, isDefinition: true)
!4538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 504, elements: !4539)
!4539 = !{!4540}
!4540 = !DISubrange(count: 63)
!4541 = !DIGlobalVariableExpression(var: !4542, expr: !DIExpression())
!4542 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !4543, isLocal: true, isDefinition: true)
!4543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 104, elements: !4544)
!4544 = !{!4545}
!4545 = !DISubrange(count: 13)
!4546 = !DIGlobalVariableExpression(var: !4547, expr: !DIExpression())
!4547 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !1245, isLocal: true, isDefinition: true)
!4548 = !DIGlobalVariableExpression(var: !4549, expr: !DIExpression())
!4549 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !4550, isLocal: true, isDefinition: true)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 80, elements: !4551)
!4551 = !{!4552}
!4552 = !DISubrange(count: 10)
!4553 = !DIGlobalVariableExpression(var: !4554, expr: !DIExpression())
!4554 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !4527, isLocal: true, isDefinition: true)
!4555 = !DIGlobalVariableExpression(var: !4556, expr: !DIExpression())
!4556 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !4550, isLocal: true, isDefinition: true)
!4557 = !DIGlobalVariableExpression(var: !4558, expr: !DIExpression())
!4558 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !4559, isLocal: true, isDefinition: true)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 120, elements: !4560)
!4560 = !{!4561}
!4561 = !DISubrange(count: 15)
!4562 = !DIGlobalVariableExpression(var: !4563, expr: !DIExpression())
!4563 = distinct !DIGlobalVariable(name: "component_mutex", scope: !2, file: !3, line: 75, type: !600, isLocal: true, isDefinition: true)
!4564 = !DIGlobalVariableExpression(var: !4565, expr: !DIExpression())
!4565 = distinct !DIGlobalVariable(name: "aggregate_devices", scope: !2, file: !3, line: 77, type: !146, isLocal: true, isDefinition: true)
!4566 = !DIGlobalVariableExpression(var: !4567, expr: !DIExpression())
!4567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !4530, isLocal: true, isDefinition: true)
!4568 = !DIGlobalVariableExpression(var: !4569, expr: !DIExpression())
!4569 = distinct !DIGlobalVariable(scope: null, file: !3, line: 654, type: !4570, isLocal: true, isDefinition: true)
!4570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 160, elements: !3156)
!4571 = !DIGlobalVariableExpression(var: !4572, expr: !DIExpression())
!4572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 661, type: !4573, isLocal: true, isDefinition: true)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 264, elements: !4574)
!4574 = !{!4575}
!4575 = !DISubrange(count: 33)
!4576 = !DIGlobalVariableExpression(var: !4577, expr: !DIExpression())
!4577 = distinct !DIGlobalVariable(name: "component_list", scope: !2, file: !3, line: 76, type: !146, isLocal: true, isDefinition: true)
!4578 = !{i32 7, !"Dwarf Version", i32 5}
!4579 = !{i32 2, !"Debug Info Version", i32 3}
!4580 = !{i32 1, !"wchar_size", i32 2}
!4581 = !{i32 8, !"cf-protection-branch", i32 1}
!4582 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4583 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4584 = !{i32 1, !"Code Model", i32 2}
!4585 = !{i32 1, !"override-stack-alignment", i32 8}
!4586 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4587 = distinct !DISubprogram(name: "__initstub__kmod_component__267_118_component_debug_init1", scope: !3, file: !3, line: 118, type: !692, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4588 = !DILocation(line: 118, column: 1, scope: !4587)
!4589 = distinct !DISubprogram(name: "component_debug_init", scope: !3, file: !3, line: 111, type: !692, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4590 = !DILocation(line: 113, column: 26, scope: !4589)
!4591 = !DILocation(line: 113, column: 24, scope: !4589)
!4592 = !DILocation(line: 115, column: 2, scope: !4589)
!4593 = distinct !DISubprogram(name: "component_compare_of", scope: !3, file: !3, line: 296, type: !4444, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4594)
!4594 = !{!4595, !4596}
!4595 = !DILocalVariable(name: "dev", arg: 1, scope: !4593, file: !3, line: 296, type: !169)
!4596 = !DILocalVariable(name: "data", arg: 2, scope: !4593, file: !3, line: 296, type: !139)
!4597 = !DILocation(line: 296, column: 41, scope: !4593)
!4598 = !DILocation(line: 296, column: 52, scope: !4593)
!4599 = !DILocation(line: 298, column: 30, scope: !4593)
!4600 = !DILocation(line: 298, column: 35, scope: !4593)
!4601 = !DILocation(line: 298, column: 9, scope: !4593)
!4602 = !DILocation(line: 298, column: 2, scope: !4593)
!4603 = !DISubprogram(name: "device_match_of_node", scope: !4011, file: !4011, line: 136, type: !4604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!85, !169, !1588}
!4606 = distinct !DISubprogram(name: "component_release_of", scope: !3, file: !3, line: 309, type: !4452, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4607)
!4607 = !{!4608, !4609}
!4608 = !DILocalVariable(name: "dev", arg: 1, scope: !4606, file: !3, line: 309, type: !169)
!4609 = !DILocalVariable(name: "data", arg: 2, scope: !4606, file: !3, line: 309, type: !139)
!4610 = !DILocation(line: 309, column: 42, scope: !4606)
!4611 = !DILocation(line: 309, column: 53, scope: !4606)
!4612 = !DILocation(line: 311, column: 14, scope: !4606)
!4613 = !DILocation(line: 311, column: 2, scope: !4606)
!4614 = !DILocation(line: 312, column: 1, scope: !4606)
!4615 = distinct !DISubprogram(name: "of_node_put", scope: !4247, file: !4247, line: 136, type: !4616, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4245}
!4618 = !{!4619}
!4619 = !DILocalVariable(name: "node", arg: 1, scope: !4615, file: !4247, line: 136, type: !4245)
!4620 = !DILocation(line: 136, column: 52, scope: !4615)
!4621 = !DILocation(line: 136, column: 60, scope: !4615)
!4622 = distinct !DISubprogram(name: "component_compare_dev", scope: !3, file: !3, line: 323, type: !4444, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4623)
!4623 = !{!4624, !4625}
!4624 = !DILocalVariable(name: "dev", arg: 1, scope: !4622, file: !3, line: 323, type: !169)
!4625 = !DILocalVariable(name: "data", arg: 2, scope: !4622, file: !3, line: 323, type: !139)
!4626 = !DILocation(line: 323, column: 42, scope: !4622)
!4627 = !DILocation(line: 323, column: 53, scope: !4622)
!4628 = !DILocation(line: 325, column: 9, scope: !4622)
!4629 = !DILocation(line: 325, column: 16, scope: !4622)
!4630 = !DILocation(line: 325, column: 13, scope: !4622)
!4631 = !DILocation(line: 325, column: 2, scope: !4622)
!4632 = distinct !DISubprogram(name: "component_compare_dev_name", scope: !3, file: !3, line: 338, type: !4444, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4633)
!4633 = !{!4634, !4635}
!4634 = !DILocalVariable(name: "dev", arg: 1, scope: !4632, file: !3, line: 338, type: !169)
!4635 = !DILocalVariable(name: "data", arg: 2, scope: !4632, file: !3, line: 338, type: !139)
!4636 = !DILocation(line: 338, column: 47, scope: !4632)
!4637 = !DILocation(line: 338, column: 58, scope: !4632)
!4638 = !DILocation(line: 340, column: 27, scope: !4632)
!4639 = !DILocation(line: 340, column: 32, scope: !4632)
!4640 = !DILocation(line: 340, column: 9, scope: !4632)
!4641 = !DILocation(line: 340, column: 2, scope: !4632)
!4642 = !DISubprogram(name: "device_match_name", scope: !4011, file: !4011, line: 135, type: !4604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4643 = distinct !DISubprogram(name: "component_match_add_release", scope: !3, file: !3, line: 445, type: !4644, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4647)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !169, !4646, !4451, !4443, !139}
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4647 = !{!4648, !4649, !4650, !4651, !4652}
!4648 = !DILocalVariable(name: "parent", arg: 1, scope: !4643, file: !3, line: 445, type: !169)
!4649 = !DILocalVariable(name: "matchptr", arg: 2, scope: !4643, file: !3, line: 446, type: !4646)
!4650 = !DILocalVariable(name: "release", arg: 3, scope: !4643, file: !3, line: 447, type: !4451)
!4651 = !DILocalVariable(name: "compare", arg: 4, scope: !4643, file: !3, line: 448, type: !4443)
!4652 = !DILocalVariable(name: "compare_data", arg: 5, scope: !4643, file: !3, line: 448, type: !139)
!4653 = !DILocation(line: 445, column: 49, scope: !4643)
!4654 = !DILocation(line: 446, column: 27, scope: !4643)
!4655 = !DILocation(line: 447, column: 9, scope: !4643)
!4656 = !DILocation(line: 448, column: 8, scope: !4643)
!4657 = !DILocation(line: 448, column: 49, scope: !4643)
!4658 = !DILocation(line: 450, column: 24, scope: !4643)
!4659 = !DILocation(line: 450, column: 32, scope: !4643)
!4660 = !DILocation(line: 450, column: 42, scope: !4643)
!4661 = !DILocation(line: 450, column: 51, scope: !4643)
!4662 = !DILocation(line: 451, column: 10, scope: !4643)
!4663 = !DILocation(line: 450, column: 2, scope: !4643)
!4664 = !DILocation(line: 452, column: 1, scope: !4643)
!4665 = distinct !DISubprogram(name: "__component_match_add", scope: !3, file: !3, line: 381, type: !4666, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{null, !169, !4646, !4451, !4443, !4447, !139}
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4679}
!4669 = !DILocalVariable(name: "parent", arg: 1, scope: !4665, file: !3, line: 381, type: !169)
!4670 = !DILocalVariable(name: "matchptr", arg: 2, scope: !4665, file: !3, line: 382, type: !4646)
!4671 = !DILocalVariable(name: "release", arg: 3, scope: !4665, file: !3, line: 383, type: !4451)
!4672 = !DILocalVariable(name: "compare", arg: 4, scope: !4665, file: !3, line: 384, type: !4443)
!4673 = !DILocalVariable(name: "compare_typed", arg: 5, scope: !4665, file: !3, line: 385, type: !4447)
!4674 = !DILocalVariable(name: "compare_data", arg: 6, scope: !4665, file: !3, line: 386, type: !139)
!4675 = !DILocalVariable(name: "match", scope: !4665, file: !3, line: 388, type: !4432)
!4676 = !DILocalVariable(name: "new_size", scope: !4677, file: !3, line: 407, type: !306)
!4677 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 406, column: 34)
!4678 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 406, column: 6)
!4679 = !DILocalVariable(name: "ret", scope: !4677, file: !3, line: 408, type: !85)
!4680 = !DILocation(line: 381, column: 50, scope: !4665)
!4681 = !DILocation(line: 382, column: 27, scope: !4665)
!4682 = !DILocation(line: 383, column: 9, scope: !4665)
!4683 = !DILocation(line: 384, column: 8, scope: !4665)
!4684 = !DILocation(line: 385, column: 8, scope: !4665)
!4685 = !DILocation(line: 386, column: 8, scope: !4665)
!4686 = !DILocation(line: 388, column: 2, scope: !4665)
!4687 = !DILocation(line: 388, column: 26, scope: !4665)
!4688 = !DILocation(line: 388, column: 35, scope: !4665)
!4689 = !DILocation(line: 388, column: 34, scope: !4665)
!4690 = !DILocation(line: 390, column: 13, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 390, column: 6)
!4692 = !DILocation(line: 390, column: 6, scope: !4691)
!4693 = !DILocation(line: 390, column: 6, scope: !4665)
!4694 = !DILocation(line: 391, column: 3, scope: !4691)
!4695 = !DILocation(line: 393, column: 7, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 393, column: 6)
!4697 = !DILocation(line: 393, column: 6, scope: !4665)
!4698 = !DILocation(line: 394, column: 11, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 393, column: 14)
!4700 = !DILocation(line: 394, column: 9, scope: !4699)
!4701 = !DILocation(line: 396, column: 8, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 396, column: 7)
!4703 = !DILocation(line: 396, column: 7, scope: !4699)
!4704 = !DILocation(line: 397, column: 16, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 396, column: 15)
!4706 = !DILocation(line: 397, column: 5, scope: !4705)
!4707 = !DILocation(line: 397, column: 14, scope: !4705)
!4708 = !DILocation(line: 398, column: 4, scope: !4705)
!4709 = !DILocation(line: 401, column: 14, scope: !4699)
!4710 = !DILocation(line: 401, column: 22, scope: !4699)
!4711 = !DILocation(line: 401, column: 3, scope: !4699)
!4712 = !DILocation(line: 403, column: 15, scope: !4699)
!4713 = !DILocation(line: 403, column: 4, scope: !4699)
!4714 = !DILocation(line: 403, column: 13, scope: !4699)
!4715 = !DILocation(line: 404, column: 2, scope: !4699)
!4716 = !DILocation(line: 406, column: 6, scope: !4678)
!4717 = !DILocation(line: 406, column: 13, scope: !4678)
!4718 = !DILocation(line: 406, column: 20, scope: !4678)
!4719 = !DILocation(line: 406, column: 27, scope: !4678)
!4720 = !DILocation(line: 406, column: 17, scope: !4678)
!4721 = !DILocation(line: 406, column: 6, scope: !4665)
!4722 = !DILocation(line: 407, column: 3, scope: !4677)
!4723 = !DILocation(line: 407, column: 10, scope: !4677)
!4724 = !DILocation(line: 407, column: 21, scope: !4677)
!4725 = !DILocation(line: 407, column: 28, scope: !4677)
!4726 = !DILocation(line: 407, column: 34, scope: !4677)
!4727 = !DILocation(line: 408, column: 3, scope: !4677)
!4728 = !DILocation(line: 408, column: 7, scope: !4677)
!4729 = !DILocation(line: 410, column: 33, scope: !4677)
!4730 = !DILocation(line: 410, column: 40, scope: !4677)
!4731 = !DILocation(line: 410, column: 9, scope: !4677)
!4732 = !DILocation(line: 410, column: 7, scope: !4677)
!4733 = !DILocation(line: 411, column: 7, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 411, column: 7)
!4735 = !DILocation(line: 411, column: 7, scope: !4677)
!4736 = !DILocation(line: 412, column: 24, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 411, column: 12)
!4738 = !DILocation(line: 412, column: 16, scope: !4737)
!4739 = !DILocation(line: 412, column: 5, scope: !4737)
!4740 = !DILocation(line: 412, column: 14, scope: !4737)
!4741 = !DILocation(line: 413, column: 4, scope: !4737)
!4742 = !DILocation(line: 415, column: 2, scope: !4678)
!4743 = !DILocation(line: 415, column: 2, scope: !4677)
!4744 = !DILocation(line: 417, column: 39, scope: !4665)
!4745 = !DILocation(line: 417, column: 2, scope: !4665)
!4746 = !DILocation(line: 417, column: 9, scope: !4665)
!4747 = !DILocation(line: 417, column: 17, scope: !4665)
!4748 = !DILocation(line: 417, column: 24, scope: !4665)
!4749 = !DILocation(line: 417, column: 29, scope: !4665)
!4750 = !DILocation(line: 417, column: 37, scope: !4665)
!4751 = !DILocation(line: 418, column: 45, scope: !4665)
!4752 = !DILocation(line: 418, column: 2, scope: !4665)
!4753 = !DILocation(line: 418, column: 9, scope: !4665)
!4754 = !DILocation(line: 418, column: 17, scope: !4665)
!4755 = !DILocation(line: 418, column: 24, scope: !4665)
!4756 = !DILocation(line: 418, column: 29, scope: !4665)
!4757 = !DILocation(line: 418, column: 43, scope: !4665)
!4758 = !DILocation(line: 419, column: 39, scope: !4665)
!4759 = !DILocation(line: 419, column: 2, scope: !4665)
!4760 = !DILocation(line: 419, column: 9, scope: !4665)
!4761 = !DILocation(line: 419, column: 17, scope: !4665)
!4762 = !DILocation(line: 419, column: 24, scope: !4665)
!4763 = !DILocation(line: 419, column: 29, scope: !4665)
!4764 = !DILocation(line: 419, column: 37, scope: !4665)
!4765 = !DILocation(line: 420, column: 36, scope: !4665)
!4766 = !DILocation(line: 420, column: 2, scope: !4665)
!4767 = !DILocation(line: 420, column: 9, scope: !4665)
!4768 = !DILocation(line: 420, column: 17, scope: !4665)
!4769 = !DILocation(line: 420, column: 24, scope: !4665)
!4770 = !DILocation(line: 420, column: 29, scope: !4665)
!4771 = !DILocation(line: 420, column: 34, scope: !4665)
!4772 = !DILocation(line: 421, column: 2, scope: !4665)
!4773 = !DILocation(line: 421, column: 9, scope: !4665)
!4774 = !DILocation(line: 421, column: 17, scope: !4665)
!4775 = !DILocation(line: 421, column: 24, scope: !4665)
!4776 = !DILocation(line: 421, column: 29, scope: !4665)
!4777 = !DILocation(line: 421, column: 39, scope: !4665)
!4778 = !DILocation(line: 422, column: 2, scope: !4665)
!4779 = !DILocation(line: 422, column: 9, scope: !4665)
!4780 = !DILocation(line: 422, column: 12, scope: !4665)
!4781 = !DILocation(line: 423, column: 1, scope: !4665)
!4782 = distinct !DISubprogram(name: "component_match_add_typed", scope: !3, file: !3, line: 472, type: !4783, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4785)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{null, !169, !4646, !4447, !139}
!4785 = !{!4786, !4787, !4788, !4789}
!4786 = !DILocalVariable(name: "parent", arg: 1, scope: !4782, file: !3, line: 472, type: !169)
!4787 = !DILocalVariable(name: "matchptr", arg: 2, scope: !4782, file: !3, line: 473, type: !4646)
!4788 = !DILocalVariable(name: "compare_typed", arg: 3, scope: !4782, file: !3, line: 474, type: !4447)
!4789 = !DILocalVariable(name: "compare_data", arg: 4, scope: !4782, file: !3, line: 474, type: !139)
!4790 = !DILocation(line: 472, column: 47, scope: !4782)
!4791 = !DILocation(line: 473, column: 27, scope: !4782)
!4792 = !DILocation(line: 474, column: 8, scope: !4782)
!4793 = !DILocation(line: 474, column: 60, scope: !4782)
!4794 = !DILocation(line: 476, column: 24, scope: !4782)
!4795 = !DILocation(line: 476, column: 32, scope: !4782)
!4796 = !DILocation(line: 476, column: 54, scope: !4782)
!4797 = !DILocation(line: 477, column: 10, scope: !4782)
!4798 = !DILocation(line: 476, column: 2, scope: !4782)
!4799 = !DILocation(line: 478, column: 1, scope: !4782)
!4800 = distinct !DISubprogram(name: "component_master_add_with_match", scope: !3, file: !3, line: 512, type: !4801, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4803)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!85, !169, !160, !4432}
!4803 = !{!4804, !4805, !4806, !4807, !4808}
!4804 = !DILocalVariable(name: "parent", arg: 1, scope: !4800, file: !3, line: 512, type: !169)
!4805 = !DILocalVariable(name: "ops", arg: 2, scope: !4800, file: !3, line: 513, type: !160)
!4806 = !DILocalVariable(name: "match", arg: 3, scope: !4800, file: !3, line: 514, type: !4432)
!4807 = !DILocalVariable(name: "adev", scope: !4800, file: !3, line: 516, type: !152)
!4808 = !DILocalVariable(name: "ret", scope: !4800, file: !3, line: 517, type: !85)
!4809 = !DILocation(line: 512, column: 52, scope: !4800)
!4810 = !DILocation(line: 513, column: 37, scope: !4800)
!4811 = !DILocation(line: 514, column: 26, scope: !4800)
!4812 = !DILocation(line: 516, column: 2, scope: !4800)
!4813 = !DILocation(line: 516, column: 27, scope: !4800)
!4814 = !DILocation(line: 517, column: 2, scope: !4800)
!4815 = !DILocation(line: 517, column: 6, scope: !4800)
!4816 = !DILocation(line: 520, column: 32, scope: !4800)
!4817 = !DILocation(line: 520, column: 39, scope: !4800)
!4818 = !DILocation(line: 520, column: 46, scope: !4800)
!4819 = !DILocation(line: 520, column: 8, scope: !4800)
!4820 = !DILocation(line: 520, column: 6, scope: !4800)
!4821 = !DILocation(line: 521, column: 6, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 521, column: 6)
!4823 = !DILocation(line: 521, column: 6, scope: !4800)
!4824 = !DILocation(line: 522, column: 10, scope: !4822)
!4825 = !DILocation(line: 522, column: 3, scope: !4822)
!4826 = !DILocation(line: 524, column: 9, scope: !4800)
!4827 = !DILocation(line: 524, column: 7, scope: !4800)
!4828 = !DILocation(line: 525, column: 7, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 525, column: 6)
!4830 = !DILocation(line: 525, column: 6, scope: !4800)
!4831 = !DILocation(line: 526, column: 3, scope: !4829)
!4832 = !DILocation(line: 528, column: 17, scope: !4800)
!4833 = !DILocation(line: 528, column: 2, scope: !4800)
!4834 = !DILocation(line: 528, column: 8, scope: !4800)
!4835 = !DILocation(line: 528, column: 15, scope: !4800)
!4836 = !DILocation(line: 529, column: 14, scope: !4800)
!4837 = !DILocation(line: 529, column: 2, scope: !4800)
!4838 = !DILocation(line: 529, column: 8, scope: !4800)
!4839 = !DILocation(line: 529, column: 12, scope: !4800)
!4840 = !DILocation(line: 530, column: 16, scope: !4800)
!4841 = !DILocation(line: 530, column: 2, scope: !4800)
!4842 = !DILocation(line: 530, column: 8, scope: !4800)
!4843 = !DILocation(line: 530, column: 14, scope: !4800)
!4844 = !DILocation(line: 532, column: 24, scope: !4800)
!4845 = !DILocation(line: 532, column: 2, scope: !4800)
!4846 = !DILocation(line: 534, column: 2, scope: !4800)
!4847 = !DILocation(line: 535, column: 12, scope: !4800)
!4848 = !DILocation(line: 535, column: 18, scope: !4800)
!4849 = !DILocation(line: 535, column: 2, scope: !4800)
!4850 = !DILocation(line: 537, column: 41, scope: !4800)
!4851 = !DILocation(line: 537, column: 8, scope: !4800)
!4852 = !DILocation(line: 537, column: 6, scope: !4800)
!4853 = !DILocation(line: 539, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 539, column: 6)
!4855 = !DILocation(line: 539, column: 10, scope: !4854)
!4856 = !DILocation(line: 539, column: 6, scope: !4800)
!4857 = !DILocation(line: 540, column: 25, scope: !4854)
!4858 = !DILocation(line: 540, column: 3, scope: !4854)
!4859 = !DILocation(line: 542, column: 2, scope: !4800)
!4860 = !DILocation(line: 544, column: 9, scope: !4800)
!4861 = !DILocation(line: 544, column: 13, scope: !4800)
!4862 = !DILocation(line: 544, column: 19, scope: !4800)
!4863 = !DILocation(line: 544, column: 2, scope: !4800)
!4864 = !DILocation(line: 545, column: 1, scope: !4800)
!4865 = distinct !DISubprogram(name: "component_match_realloc", scope: !3, file: !3, line: 359, type: !4866, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4868)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!85, !4432, !306}
!4868 = !{!4869, !4870, !4871, !4872, !4876}
!4869 = !DILocalVariable(name: "match", arg: 1, scope: !4865, file: !3, line: 359, type: !4432)
!4870 = !DILocalVariable(name: "num", arg: 2, scope: !4865, file: !3, line: 359, type: !306)
!4871 = !DILocalVariable(name: "new", scope: !4865, file: !3, line: 361, type: !4438)
!4872 = !DILocalVariable(name: "__UNIQUE_ID___x273", scope: !4873, file: !3, line: 372, type: !306)
!4873 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 372, column: 10)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 370, column: 22)
!4875 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 370, column: 6)
!4876 = !DILocalVariable(name: "__UNIQUE_ID___y274", scope: !4873, file: !3, line: 372, type: !306)
!4877 = !DILocation(line: 359, column: 60, scope: !4865)
!4878 = !DILocation(line: 359, column: 74, scope: !4865)
!4879 = !DILocation(line: 361, column: 2, scope: !4865)
!4880 = !DILocation(line: 361, column: 32, scope: !4865)
!4881 = !DILocation(line: 363, column: 6, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 363, column: 6)
!4883 = !DILocation(line: 363, column: 13, scope: !4882)
!4884 = !DILocation(line: 363, column: 22, scope: !4882)
!4885 = !DILocation(line: 363, column: 19, scope: !4882)
!4886 = !DILocation(line: 363, column: 6, scope: !4865)
!4887 = !DILocation(line: 364, column: 3, scope: !4882)
!4888 = !DILocation(line: 366, column: 22, scope: !4865)
!4889 = !DILocation(line: 366, column: 8, scope: !4865)
!4890 = !DILocation(line: 366, column: 6, scope: !4865)
!4891 = !DILocation(line: 367, column: 7, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 367, column: 6)
!4893 = !DILocation(line: 367, column: 6, scope: !4865)
!4894 = !DILocation(line: 368, column: 3, scope: !4892)
!4895 = !DILocation(line: 370, column: 6, scope: !4875)
!4896 = !DILocation(line: 370, column: 13, scope: !4875)
!4897 = !DILocation(line: 370, column: 6, scope: !4865)
!4898 = !DILocation(line: 371, column: 10, scope: !4874)
!4899 = !DILocation(line: 371, column: 15, scope: !4874)
!4900 = !DILocation(line: 371, column: 22, scope: !4874)
!4901 = !DILocation(line: 372, column: 10, scope: !4873)
!4902 = !DILocation(line: 372, column: 10, scope: !4874)
!4903 = !DILocation(line: 371, column: 44, scope: !4874)
!4904 = !DILocation(line: 371, column: 3, scope: !4874)
!4905 = !DILocation(line: 373, column: 9, scope: !4874)
!4906 = !DILocation(line: 373, column: 16, scope: !4874)
!4907 = !DILocation(line: 373, column: 3, scope: !4874)
!4908 = !DILocation(line: 374, column: 2, scope: !4874)
!4909 = !DILocation(line: 375, column: 19, scope: !4865)
!4910 = !DILocation(line: 375, column: 2, scope: !4865)
!4911 = !DILocation(line: 375, column: 9, scope: !4865)
!4912 = !DILocation(line: 375, column: 17, scope: !4865)
!4913 = !DILocation(line: 376, column: 17, scope: !4865)
!4914 = !DILocation(line: 376, column: 2, scope: !4865)
!4915 = !DILocation(line: 376, column: 9, scope: !4865)
!4916 = !DILocation(line: 376, column: 15, scope: !4865)
!4917 = !DILocation(line: 378, column: 2, scope: !4865)
!4918 = !DILocation(line: 379, column: 1, scope: !4865)
!4919 = distinct !DISubprogram(name: "kzalloc", scope: !129, file: !129, line: 719, type: !4920, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4922)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!139, !306, !140}
!4922 = !{!4923, !4924}
!4923 = !DILocalVariable(name: "size", arg: 1, scope: !4919, file: !129, line: 719, type: !306)
!4924 = !DILocalVariable(name: "flags", arg: 2, scope: !4919, file: !129, line: 719, type: !140)
!4925 = !DILocation(line: 719, column: 52, scope: !4919)
!4926 = !DILocation(line: 719, column: 64, scope: !4919)
!4927 = !DILocation(line: 721, column: 17, scope: !4919)
!4928 = !DILocation(line: 721, column: 23, scope: !4919)
!4929 = !DILocation(line: 721, column: 29, scope: !4919)
!4930 = !DILocation(line: 721, column: 9, scope: !4919)
!4931 = !DILocation(line: 721, column: 2, scope: !4919)
!4932 = distinct !DISubprogram(name: "component_debugfs_add", scope: !3, file: !3, line: 120, type: !4933, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4935)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !152}
!4935 = !{!4936}
!4936 = !DILocalVariable(name: "m", arg: 1, scope: !4932, file: !3, line: 120, type: !152)
!4937 = !DILocation(line: 120, column: 60, scope: !4932)
!4938 = !DILocation(line: 122, column: 31, scope: !4932)
!4939 = !DILocation(line: 122, column: 34, scope: !4932)
!4940 = !DILocation(line: 122, column: 22, scope: !4932)
!4941 = !DILocation(line: 122, column: 49, scope: !4932)
!4942 = !DILocation(line: 122, column: 72, scope: !4932)
!4943 = !DILocation(line: 122, column: 2, scope: !4932)
!4944 = !DILocation(line: 124, column: 1, scope: !4932)
!4945 = !DISubprogram(name: "mutex_lock", scope: !601, file: !601, line: 227, type: !4946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{null, !4948}
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!4949 = distinct !DISubprogram(name: "list_add", scope: !4950, file: !4950, line: 167, type: !4951, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4953)
!4950 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4951 = !DISubroutineType(types: !4952)
!4952 = !{null, !149, !149}
!4953 = !{!4954, !4955}
!4954 = !DILocalVariable(name: "new", arg: 1, scope: !4949, file: !4950, line: 167, type: !149)
!4955 = !DILocalVariable(name: "head", arg: 2, scope: !4949, file: !4950, line: 167, type: !149)
!4956 = !DILocation(line: 167, column: 47, scope: !4949)
!4957 = !DILocation(line: 167, column: 70, scope: !4949)
!4958 = !DILocation(line: 169, column: 13, scope: !4949)
!4959 = !DILocation(line: 169, column: 18, scope: !4949)
!4960 = !DILocation(line: 169, column: 24, scope: !4949)
!4961 = !DILocation(line: 169, column: 30, scope: !4949)
!4962 = !DILocation(line: 169, column: 2, scope: !4949)
!4963 = !DILocation(line: 170, column: 1, scope: !4949)
!4964 = distinct !DISubprogram(name: "try_to_bring_up_aggregate_device", scope: !3, file: !3, line: 227, type: !4965, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4967)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!85, !152, !142}
!4967 = !{!4968, !4969, !4970}
!4968 = !DILocalVariable(name: "adev", arg: 1, scope: !4964, file: !3, line: 227, type: !152)
!4969 = !DILocalVariable(name: "component", arg: 2, scope: !4964, file: !3, line: 228, type: !142)
!4970 = !DILocalVariable(name: "ret", scope: !4964, file: !3, line: 230, type: !85)
!4971 = !DILocation(line: 227, column: 70, scope: !4964)
!4972 = !DILocation(line: 228, column: 20, scope: !4964)
!4973 = !DILocation(line: 230, column: 2, scope: !4964)
!4974 = !DILocation(line: 230, column: 6, scope: !4964)
!4975 = !DILocation(line: 234, column: 22, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 234, column: 6)
!4977 = !DILocation(line: 234, column: 6, scope: !4976)
!4978 = !DILocation(line: 234, column: 6, scope: !4964)
!4979 = !DILocation(line: 236, column: 3, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 234, column: 29)
!4981 = !DILocation(line: 239, column: 6, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 239, column: 6)
!4983 = !DILocation(line: 239, column: 16, scope: !4982)
!4984 = !DILocation(line: 239, column: 19, scope: !4982)
!4985 = !DILocation(line: 239, column: 30, scope: !4982)
!4986 = !DILocation(line: 239, column: 38, scope: !4982)
!4987 = !DILocation(line: 239, column: 35, scope: !4982)
!4988 = !DILocation(line: 239, column: 6, scope: !4964)
!4989 = !DILocation(line: 242, column: 3, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 239, column: 44)
!4991 = !DILocation(line: 245, column: 25, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 245, column: 6)
!4993 = !DILocation(line: 245, column: 31, scope: !4992)
!4994 = !DILocation(line: 245, column: 39, scope: !4992)
!4995 = !DILocation(line: 245, column: 7, scope: !4992)
!4996 = !DILocation(line: 245, column: 6, scope: !4964)
!4997 = !DILocation(line: 246, column: 3, scope: !4992)
!4998 = !DILocation(line: 249, column: 8, scope: !4964)
!4999 = !DILocation(line: 249, column: 14, scope: !4964)
!5000 = !DILocation(line: 249, column: 19, scope: !4964)
!5001 = !DILocation(line: 249, column: 24, scope: !4964)
!5002 = !DILocation(line: 249, column: 30, scope: !4964)
!5003 = !DILocation(line: 249, column: 6, scope: !4964)
!5004 = !DILocation(line: 250, column: 6, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 250, column: 6)
!5006 = !DILocation(line: 250, column: 10, scope: !5005)
!5007 = !DILocation(line: 250, column: 6, scope: !4964)
!5008 = !DILocation(line: 251, column: 24, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5005, file: !3, line: 250, column: 15)
!5010 = !DILocation(line: 251, column: 30, scope: !5009)
!5011 = !DILocation(line: 251, column: 3, scope: !5009)
!5012 = !DILocation(line: 252, column: 7, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 252, column: 7)
!5014 = !DILocation(line: 252, column: 11, scope: !5013)
!5015 = !DILocation(line: 252, column: 7, scope: !5009)
!5016 = !DILocation(line: 253, column: 4, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 253, column: 4)
!5018 = !DILocation(line: 253, column: 4, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5017, file: !3, line: 253, column: 4)
!5020 = !DILocation(line: 253, column: 4, scope: !5013)
!5021 = !DILocation(line: 254, column: 10, scope: !5009)
!5022 = !DILocation(line: 254, column: 3, scope: !5009)
!5023 = !DILocation(line: 257, column: 21, scope: !4964)
!5024 = !DILocation(line: 257, column: 27, scope: !4964)
!5025 = !DILocation(line: 257, column: 2, scope: !4964)
!5026 = !DILocation(line: 258, column: 2, scope: !4964)
!5027 = !DILocation(line: 258, column: 8, scope: !4964)
!5028 = !DILocation(line: 258, column: 14, scope: !4964)
!5029 = !DILocation(line: 259, column: 2, scope: !4964)
!5030 = !DILocation(line: 260, column: 1, scope: !4964)
!5031 = distinct !DISubprogram(name: "free_aggregate_device", scope: !3, file: !3, line: 481, type: !4933, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5032)
!5032 = !{!5033, !5034, !5035, !5036}
!5033 = !DILocalVariable(name: "adev", arg: 1, scope: !5031, file: !3, line: 481, type: !152)
!5034 = !DILocalVariable(name: "match", scope: !5031, file: !3, line: 483, type: !4432)
!5035 = !DILocalVariable(name: "i", scope: !5031, file: !3, line: 484, type: !85)
!5036 = !DILocalVariable(name: "c", scope: !5037, file: !3, line: 491, type: !142)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 490, column: 36)
!5038 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 490, column: 3)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 490, column: 3)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 489, column: 13)
!5041 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 489, column: 6)
!5042 = !DILocation(line: 481, column: 60, scope: !5031)
!5043 = !DILocation(line: 483, column: 2, scope: !5031)
!5044 = !DILocation(line: 483, column: 26, scope: !5031)
!5045 = !DILocation(line: 483, column: 34, scope: !5031)
!5046 = !DILocation(line: 483, column: 40, scope: !5031)
!5047 = !DILocation(line: 484, column: 2, scope: !5031)
!5048 = !DILocation(line: 484, column: 6, scope: !5031)
!5049 = !DILocation(line: 486, column: 24, scope: !5031)
!5050 = !DILocation(line: 486, column: 2, scope: !5031)
!5051 = !DILocation(line: 487, column: 12, scope: !5031)
!5052 = !DILocation(line: 487, column: 18, scope: !5031)
!5053 = !DILocation(line: 487, column: 2, scope: !5031)
!5054 = !DILocation(line: 489, column: 6, scope: !5041)
!5055 = !DILocation(line: 489, column: 6, scope: !5031)
!5056 = !DILocation(line: 490, column: 10, scope: !5039)
!5057 = !DILocation(line: 490, column: 8, scope: !5039)
!5058 = !DILocation(line: 490, column: 15, scope: !5038)
!5059 = !DILocation(line: 490, column: 19, scope: !5038)
!5060 = !DILocation(line: 490, column: 26, scope: !5038)
!5061 = !DILocation(line: 490, column: 17, scope: !5038)
!5062 = !DILocation(line: 490, column: 3, scope: !5039)
!5063 = !DILocation(line: 491, column: 4, scope: !5037)
!5064 = !DILocation(line: 491, column: 22, scope: !5037)
!5065 = !DILocation(line: 491, column: 26, scope: !5037)
!5066 = !DILocation(line: 491, column: 33, scope: !5037)
!5067 = !DILocation(line: 491, column: 41, scope: !5037)
!5068 = !DILocation(line: 491, column: 44, scope: !5037)
!5069 = !DILocation(line: 492, column: 8, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5037, file: !3, line: 492, column: 8)
!5071 = !DILocation(line: 492, column: 8, scope: !5037)
!5072 = !DILocation(line: 493, column: 5, scope: !5070)
!5073 = !DILocation(line: 493, column: 8, scope: !5070)
!5074 = !DILocation(line: 493, column: 13, scope: !5070)
!5075 = !DILocation(line: 494, column: 3, scope: !5038)
!5076 = !DILocation(line: 494, column: 3, scope: !5037)
!5077 = !DILocation(line: 490, column: 32, scope: !5038)
!5078 = !DILocation(line: 490, column: 3, scope: !5038)
!5079 = distinct !{!5079, !5062, !5080, !5081, !5082}
!5080 = !DILocation(line: 494, column: 3, scope: !5039)
!5081 = !{!"llvm.loop.mustprogress"}
!5082 = !{!"llvm.loop.unroll.disable"}
!5083 = !DILocation(line: 495, column: 2, scope: !5040)
!5084 = !DILocation(line: 497, column: 8, scope: !5031)
!5085 = !DILocation(line: 497, column: 2, scope: !5031)
!5086 = !DILocation(line: 498, column: 1, scope: !5031)
!5087 = !DISubprogram(name: "mutex_unlock", scope: !601, file: !601, line: 246, type: !4946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5088 = distinct !DISubprogram(name: "component_master_del", scope: !3, file: !3, line: 557, type: !5089, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !169, !160}
!5091 = !{!5092, !5093, !5094}
!5092 = !DILocalVariable(name: "parent", arg: 1, scope: !5088, file: !3, line: 557, type: !169)
!5093 = !DILocalVariable(name: "ops", arg: 2, scope: !5088, file: !3, line: 558, type: !160)
!5094 = !DILocalVariable(name: "adev", scope: !5088, file: !3, line: 560, type: !152)
!5095 = !DILocation(line: 557, column: 42, scope: !5088)
!5096 = !DILocation(line: 558, column: 37, scope: !5088)
!5097 = !DILocation(line: 560, column: 2, scope: !5088)
!5098 = !DILocation(line: 560, column: 27, scope: !5088)
!5099 = !DILocation(line: 562, column: 2, scope: !5088)
!5100 = !DILocation(line: 563, column: 26, scope: !5088)
!5101 = !DILocation(line: 563, column: 34, scope: !5088)
!5102 = !DILocation(line: 563, column: 9, scope: !5088)
!5103 = !DILocation(line: 563, column: 7, scope: !5088)
!5104 = !DILocation(line: 564, column: 6, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 564, column: 6)
!5106 = !DILocation(line: 564, column: 6, scope: !5088)
!5107 = !DILocation(line: 565, column: 30, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 564, column: 12)
!5109 = !DILocation(line: 565, column: 3, scope: !5108)
!5110 = !DILocation(line: 566, column: 25, scope: !5108)
!5111 = !DILocation(line: 566, column: 3, scope: !5108)
!5112 = !DILocation(line: 567, column: 2, scope: !5108)
!5113 = !DILocation(line: 568, column: 2, scope: !5088)
!5114 = !DILocation(line: 569, column: 1, scope: !5088)
!5115 = distinct !DISubprogram(name: "__aggregate_find", scope: !3, file: !3, line: 141, type: !5116, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!152, !169, !160}
!5118 = !{!5119, !5120, !5121, !5122, !5125}
!5119 = !DILocalVariable(name: "parent", arg: 1, scope: !5115, file: !3, line: 141, type: !169)
!5120 = !DILocalVariable(name: "ops", arg: 2, scope: !5115, file: !3, line: 142, type: !160)
!5121 = !DILocalVariable(name: "m", scope: !5115, file: !3, line: 144, type: !152)
!5122 = !DILocalVariable(name: "__mptr", scope: !5123, file: !3, line: 146, type: !139)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 146, column: 2)
!5124 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 146, column: 2)
!5125 = !DILocalVariable(name: "__mptr", scope: !5126, file: !3, line: 146, type: !139)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 146, column: 2)
!5127 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 146, column: 2)
!5128 = !DILocation(line: 141, column: 65, scope: !5115)
!5129 = !DILocation(line: 142, column: 37, scope: !5115)
!5130 = !DILocation(line: 144, column: 2, scope: !5115)
!5131 = !DILocation(line: 144, column: 27, scope: !5115)
!5132 = !DILocation(line: 146, column: 2, scope: !5123)
!5133 = !DILocation(line: 146, column: 2, scope: !5124)
!5134 = !DILocation(line: 146, column: 2, scope: !5127)
!5135 = !DILocation(line: 147, column: 7, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 147, column: 7)
!5137 = !DILocation(line: 147, column: 10, scope: !5136)
!5138 = !DILocation(line: 147, column: 20, scope: !5136)
!5139 = !DILocation(line: 147, column: 17, scope: !5136)
!5140 = !DILocation(line: 147, column: 27, scope: !5136)
!5141 = !DILocation(line: 147, column: 32, scope: !5136)
!5142 = !DILocation(line: 147, column: 36, scope: !5136)
!5143 = !DILocation(line: 147, column: 39, scope: !5136)
!5144 = !DILocation(line: 147, column: 42, scope: !5136)
!5145 = !DILocation(line: 147, column: 49, scope: !5136)
!5146 = !DILocation(line: 147, column: 46, scope: !5136)
!5147 = !DILocation(line: 147, column: 7, scope: !5127)
!5148 = !DILocation(line: 148, column: 11, scope: !5136)
!5149 = !DILocation(line: 148, column: 4, scope: !5136)
!5150 = !DILocation(line: 147, column: 52, scope: !5136)
!5151 = !DILocation(line: 146, column: 2, scope: !5126)
!5152 = distinct !{!5152, !5133, !5153, !5081, !5082}
!5153 = !DILocation(line: 148, column: 11, scope: !5124)
!5154 = !DILocation(line: 150, column: 2, scope: !5115)
!5155 = !DILocation(line: 151, column: 1, scope: !5115)
!5156 = distinct !DISubprogram(name: "take_down_aggregate_device", scope: !3, file: !3, line: 278, type: !4933, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5157)
!5157 = !{!5158}
!5158 = !DILocalVariable(name: "adev", arg: 1, scope: !5156, file: !3, line: 278, type: !152)
!5159 = !DILocation(line: 278, column: 65, scope: !5156)
!5160 = !DILocation(line: 280, column: 6, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5156, file: !3, line: 280, column: 6)
!5162 = !DILocation(line: 280, column: 12, scope: !5161)
!5163 = !{i8 0, i8 2}
!5164 = !DILocation(line: 280, column: 6, scope: !5156)
!5165 = !DILocation(line: 281, column: 3, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5161, file: !3, line: 280, column: 19)
!5167 = !DILocation(line: 281, column: 9, scope: !5166)
!5168 = !DILocation(line: 281, column: 14, scope: !5166)
!5169 = !DILocation(line: 281, column: 21, scope: !5166)
!5170 = !DILocation(line: 281, column: 27, scope: !5166)
!5171 = !DILocation(line: 282, column: 24, scope: !5166)
!5172 = !DILocation(line: 282, column: 30, scope: !5166)
!5173 = !DILocation(line: 282, column: 38, scope: !5166)
!5174 = !DILocation(line: 282, column: 3, scope: !5166)
!5175 = !DILocation(line: 283, column: 3, scope: !5166)
!5176 = !DILocation(line: 283, column: 9, scope: !5166)
!5177 = !DILocation(line: 283, column: 15, scope: !5166)
!5178 = !DILocation(line: 284, column: 2, scope: !5166)
!5179 = !DILocation(line: 285, column: 1, scope: !5156)
!5180 = distinct !DISubprogram(name: "component_unbind_all", scope: !3, file: !3, line: 594, type: !4452, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5181)
!5181 = !{!5182, !5183, !5184, !5185, !5186, !5187, !5189}
!5182 = !DILocalVariable(name: "parent", arg: 1, scope: !5180, file: !3, line: 594, type: !169)
!5183 = !DILocalVariable(name: "data", arg: 2, scope: !5180, file: !3, line: 594, type: !139)
!5184 = !DILocalVariable(name: "adev", scope: !5180, file: !3, line: 596, type: !152)
!5185 = !DILocalVariable(name: "c", scope: !5180, file: !3, line: 597, type: !142)
!5186 = !DILocalVariable(name: "i", scope: !5180, file: !3, line: 598, type: !306)
!5187 = !DILocalVariable(name: "__ret_warn_on", scope: !5188, file: !3, line: 600, type: !85)
!5188 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 600, column: 2)
!5189 = !DILocalVariable(name: "__flags", scope: !5190, file: !3, line: 600, type: !85)
!5190 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 600, column: 2)
!5191 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 600, column: 2)
!5192 = !DILocation(line: 594, column: 42, scope: !5180)
!5193 = !DILocation(line: 594, column: 56, scope: !5180)
!5194 = !DILocation(line: 596, column: 2, scope: !5180)
!5195 = !DILocation(line: 596, column: 27, scope: !5180)
!5196 = !DILocation(line: 597, column: 2, scope: !5180)
!5197 = !DILocation(line: 597, column: 20, scope: !5180)
!5198 = !DILocation(line: 598, column: 2, scope: !5180)
!5199 = !DILocation(line: 598, column: 9, scope: !5180)
!5200 = !DILocation(line: 600, column: 2, scope: !5188)
!5201 = !DILocation(line: 600, column: 2, scope: !5191)
!5202 = !DILocation(line: 600, column: 2, scope: !5190)
!5203 = !DILocation(line: 600, column: 2, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 600, column: 2)
!5205 = !DILocation(line: 600, column: 2, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 600, column: 2)
!5207 = !{i64 2154123959, i64 2154123988, i64 2154124034, i64 2154124092, i64 2154124146, i64 2154124200, i64 2154124255, i64 2154124286, i64 2154124594, i64 2154124600, i64 2154124647, i64 2154124670, i64 2154124696}
!5208 = !DILocation(line: 600, column: 2, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 600, column: 2)
!5210 = !DILocation(line: 600, column: 2, scope: !5180)
!5211 = !DILocation(line: 602, column: 26, scope: !5180)
!5212 = !DILocation(line: 602, column: 9, scope: !5180)
!5213 = !DILocation(line: 602, column: 7, scope: !5180)
!5214 = !DILocation(line: 603, column: 7, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 603, column: 6)
!5216 = !DILocation(line: 603, column: 6, scope: !5180)
!5217 = !DILocation(line: 604, column: 3, scope: !5215)
!5218 = !DILocation(line: 607, column: 11, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 607, column: 2)
!5220 = !DILocation(line: 607, column: 17, scope: !5219)
!5221 = !DILocation(line: 607, column: 24, scope: !5219)
!5222 = !DILocation(line: 607, column: 9, scope: !5219)
!5223 = !DILocation(line: 607, column: 7, scope: !5219)
!5224 = !DILocation(line: 607, column: 30, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 607, column: 2)
!5226 = !DILocation(line: 607, column: 2, scope: !5219)
!5227 = !DILocation(line: 608, column: 8, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 608, column: 7)
!5229 = !DILocation(line: 608, column: 14, scope: !5228)
!5230 = !DILocation(line: 608, column: 21, scope: !5228)
!5231 = !DILocation(line: 608, column: 29, scope: !5228)
!5232 = !DILocation(line: 608, column: 32, scope: !5228)
!5233 = !DILocation(line: 608, column: 7, scope: !5225)
!5234 = !DILocation(line: 609, column: 8, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5228, file: !3, line: 608, column: 43)
!5236 = !DILocation(line: 609, column: 14, scope: !5235)
!5237 = !DILocation(line: 609, column: 21, scope: !5235)
!5238 = !DILocation(line: 609, column: 29, scope: !5235)
!5239 = !DILocation(line: 609, column: 32, scope: !5235)
!5240 = !DILocation(line: 609, column: 6, scope: !5235)
!5241 = !DILocation(line: 610, column: 21, scope: !5235)
!5242 = !DILocation(line: 610, column: 24, scope: !5235)
!5243 = !DILocation(line: 610, column: 30, scope: !5235)
!5244 = !DILocation(line: 610, column: 4, scope: !5235)
!5245 = !DILocation(line: 611, column: 3, scope: !5235)
!5246 = !DILocation(line: 607, column: 2, scope: !5225)
!5247 = distinct !{!5247, !5226, !5248, !5081, !5082}
!5248 = !DILocation(line: 611, column: 3, scope: !5219)
!5249 = !DILocation(line: 612, column: 1, scope: !5180)
!5250 = !DISubprogram(name: "mutex_is_locked", scope: !601, file: !601, line: 130, type: !5251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!157, !4948}
!5253 = distinct !DISubprogram(name: "component_unbind", scope: !3, file: !3, line: 572, type: !5254, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5256)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{null, !142, !152, !139}
!5256 = !{!5257, !5258, !5259, !5260, !5262}
!5257 = !DILocalVariable(name: "component", arg: 1, scope: !5253, file: !3, line: 572, type: !142)
!5258 = !DILocalVariable(name: "adev", arg: 2, scope: !5253, file: !3, line: 573, type: !152)
!5259 = !DILocalVariable(name: "data", arg: 3, scope: !5253, file: !3, line: 573, type: !139)
!5260 = !DILocalVariable(name: "__ret_warn_on", scope: !5261, file: !3, line: 575, type: !85)
!5261 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 575, column: 2)
!5262 = !DILocalVariable(name: "__flags", scope: !5263, file: !3, line: 575, type: !85)
!5263 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 575, column: 2)
!5264 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 575, column: 2)
!5265 = !DILocation(line: 572, column: 48, scope: !5253)
!5266 = !DILocation(line: 573, column: 27, scope: !5253)
!5267 = !DILocation(line: 573, column: 39, scope: !5253)
!5268 = !DILocation(line: 575, column: 2, scope: !5261)
!5269 = !DILocation(line: 575, column: 2, scope: !5264)
!5270 = !DILocation(line: 575, column: 2, scope: !5263)
!5271 = !DILocation(line: 575, column: 2, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 575, column: 2)
!5273 = !DILocation(line: 575, column: 2, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 575, column: 2)
!5275 = !{i64 2154122437, i64 2154122466, i64 2154122512, i64 2154122570, i64 2154122624, i64 2154122678, i64 2154122733, i64 2154122764, i64 2154123072, i64 2154123078, i64 2154123125, i64 2154123148, i64 2154123174}
!5276 = !DILocation(line: 575, column: 2, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 575, column: 2)
!5278 = !DILocation(line: 575, column: 2, scope: !5253)
!5279 = !DILocation(line: 577, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 577, column: 6)
!5281 = !DILocation(line: 577, column: 17, scope: !5280)
!5282 = !DILocation(line: 577, column: 21, scope: !5280)
!5283 = !DILocation(line: 577, column: 24, scope: !5280)
!5284 = !DILocation(line: 577, column: 35, scope: !5280)
!5285 = !DILocation(line: 577, column: 40, scope: !5280)
!5286 = !DILocation(line: 577, column: 6, scope: !5253)
!5287 = !DILocation(line: 578, column: 3, scope: !5280)
!5288 = !DILocation(line: 578, column: 14, scope: !5280)
!5289 = !DILocation(line: 578, column: 19, scope: !5280)
!5290 = !DILocation(line: 578, column: 26, scope: !5280)
!5291 = !DILocation(line: 578, column: 37, scope: !5280)
!5292 = !DILocation(line: 578, column: 42, scope: !5280)
!5293 = !DILocation(line: 578, column: 48, scope: !5280)
!5294 = !DILocation(line: 578, column: 56, scope: !5280)
!5295 = !DILocation(line: 579, column: 2, scope: !5253)
!5296 = !DILocation(line: 579, column: 13, scope: !5253)
!5297 = !DILocation(line: 579, column: 19, scope: !5253)
!5298 = !DILocation(line: 582, column: 23, scope: !5253)
!5299 = !DILocation(line: 582, column: 34, scope: !5253)
!5300 = !DILocation(line: 582, column: 39, scope: !5253)
!5301 = !DILocation(line: 582, column: 2, scope: !5253)
!5302 = !DILocation(line: 583, column: 1, scope: !5253)
!5303 = distinct !DISubprogram(name: "component_bind_all", scope: !3, file: !3, line: 677, type: !4444, scopeLine: 678, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5304)
!5304 = !{!5305, !5306, !5307, !5308, !5309, !5310, !5311, !5313}
!5305 = !DILocalVariable(name: "parent", arg: 1, scope: !5303, file: !3, line: 677, type: !169)
!5306 = !DILocalVariable(name: "data", arg: 2, scope: !5303, file: !3, line: 677, type: !139)
!5307 = !DILocalVariable(name: "adev", scope: !5303, file: !3, line: 679, type: !152)
!5308 = !DILocalVariable(name: "c", scope: !5303, file: !3, line: 680, type: !142)
!5309 = !DILocalVariable(name: "i", scope: !5303, file: !3, line: 681, type: !306)
!5310 = !DILocalVariable(name: "ret", scope: !5303, file: !3, line: 682, type: !85)
!5311 = !DILocalVariable(name: "__ret_warn_on", scope: !5312, file: !3, line: 684, type: !85)
!5312 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 684, column: 2)
!5313 = !DILocalVariable(name: "__flags", scope: !5314, file: !3, line: 684, type: !85)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 684, column: 2)
!5315 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 684, column: 2)
!5316 = !DILocation(line: 677, column: 39, scope: !5303)
!5317 = !DILocation(line: 677, column: 53, scope: !5303)
!5318 = !DILocation(line: 679, column: 2, scope: !5303)
!5319 = !DILocation(line: 679, column: 27, scope: !5303)
!5320 = !DILocation(line: 680, column: 2, scope: !5303)
!5321 = !DILocation(line: 680, column: 20, scope: !5303)
!5322 = !DILocation(line: 681, column: 2, scope: !5303)
!5323 = !DILocation(line: 681, column: 9, scope: !5303)
!5324 = !DILocation(line: 682, column: 2, scope: !5303)
!5325 = !DILocation(line: 682, column: 6, scope: !5303)
!5326 = !DILocation(line: 684, column: 2, scope: !5312)
!5327 = !DILocation(line: 684, column: 2, scope: !5315)
!5328 = !DILocation(line: 684, column: 2, scope: !5314)
!5329 = !DILocation(line: 684, column: 2, scope: !5330)
!5330 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 684, column: 2)
!5331 = !DILocation(line: 684, column: 2, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 684, column: 2)
!5333 = !{i64 2154129484, i64 2154129513, i64 2154129559, i64 2154129617, i64 2154129671, i64 2154129725, i64 2154129780, i64 2154129811, i64 2154130119, i64 2154130125, i64 2154130172, i64 2154130195, i64 2154130221}
!5334 = !DILocation(line: 684, column: 2, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 684, column: 2)
!5336 = !DILocation(line: 684, column: 2, scope: !5303)
!5337 = !DILocation(line: 686, column: 26, scope: !5303)
!5338 = !DILocation(line: 686, column: 9, scope: !5303)
!5339 = !DILocation(line: 686, column: 7, scope: !5303)
!5340 = !DILocation(line: 687, column: 7, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 687, column: 6)
!5342 = !DILocation(line: 687, column: 6, scope: !5303)
!5343 = !DILocation(line: 688, column: 3, scope: !5341)
!5344 = !DILocation(line: 691, column: 9, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 691, column: 2)
!5346 = !DILocation(line: 691, column: 7, scope: !5345)
!5347 = !DILocation(line: 691, column: 14, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 691, column: 2)
!5349 = !DILocation(line: 691, column: 18, scope: !5348)
!5350 = !DILocation(line: 691, column: 24, scope: !5348)
!5351 = !DILocation(line: 691, column: 31, scope: !5348)
!5352 = !DILocation(line: 691, column: 16, scope: !5348)
!5353 = !DILocation(line: 691, column: 2, scope: !5345)
!5354 = !DILocation(line: 692, column: 8, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 692, column: 7)
!5356 = !DILocation(line: 692, column: 14, scope: !5355)
!5357 = !DILocation(line: 692, column: 21, scope: !5355)
!5358 = !DILocation(line: 692, column: 29, scope: !5355)
!5359 = !DILocation(line: 692, column: 32, scope: !5355)
!5360 = !DILocation(line: 692, column: 7, scope: !5348)
!5361 = !DILocation(line: 693, column: 8, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 692, column: 43)
!5363 = !DILocation(line: 693, column: 14, scope: !5362)
!5364 = !DILocation(line: 693, column: 21, scope: !5362)
!5365 = !DILocation(line: 693, column: 29, scope: !5362)
!5366 = !DILocation(line: 693, column: 32, scope: !5362)
!5367 = !DILocation(line: 693, column: 6, scope: !5362)
!5368 = !DILocation(line: 694, column: 25, scope: !5362)
!5369 = !DILocation(line: 694, column: 28, scope: !5362)
!5370 = !DILocation(line: 694, column: 34, scope: !5362)
!5371 = !DILocation(line: 694, column: 10, scope: !5362)
!5372 = !DILocation(line: 694, column: 8, scope: !5362)
!5373 = !DILocation(line: 695, column: 8, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 695, column: 8)
!5375 = !DILocation(line: 695, column: 8, scope: !5362)
!5376 = !DILocation(line: 696, column: 5, scope: !5374)
!5377 = !DILocation(line: 697, column: 3, scope: !5362)
!5378 = !DILocation(line: 691, column: 37, scope: !5348)
!5379 = !DILocation(line: 691, column: 2, scope: !5348)
!5380 = distinct !{!5380, !5353, !5381, !5081, !5082}
!5381 = !DILocation(line: 697, column: 3, scope: !5345)
!5382 = !DILocation(line: 699, column: 6, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 699, column: 6)
!5384 = !DILocation(line: 699, column: 10, scope: !5383)
!5385 = !DILocation(line: 699, column: 6, scope: !5303)
!5386 = !DILocation(line: 700, column: 3, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 699, column: 16)
!5388 = !DILocation(line: 700, column: 10, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 700, column: 3)
!5390 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 700, column: 3)
!5391 = !DILocation(line: 700, column: 12, scope: !5389)
!5392 = !DILocation(line: 700, column: 3, scope: !5390)
!5393 = !DILocation(line: 701, column: 9, scope: !5394)
!5394 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 701, column: 8)
!5395 = !DILocation(line: 701, column: 15, scope: !5394)
!5396 = !DILocation(line: 701, column: 22, scope: !5394)
!5397 = !DILocation(line: 701, column: 30, scope: !5394)
!5398 = !DILocation(line: 701, column: 32, scope: !5394)
!5399 = !DILocation(line: 701, column: 37, scope: !5394)
!5400 = !DILocation(line: 701, column: 8, scope: !5389)
!5401 = !DILocation(line: 702, column: 9, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 701, column: 48)
!5403 = !DILocation(line: 702, column: 15, scope: !5402)
!5404 = !DILocation(line: 702, column: 22, scope: !5402)
!5405 = !DILocation(line: 702, column: 30, scope: !5402)
!5406 = !DILocation(line: 702, column: 32, scope: !5402)
!5407 = !DILocation(line: 702, column: 37, scope: !5402)
!5408 = !DILocation(line: 702, column: 7, scope: !5402)
!5409 = !DILocation(line: 703, column: 22, scope: !5402)
!5410 = !DILocation(line: 703, column: 25, scope: !5402)
!5411 = !DILocation(line: 703, column: 31, scope: !5402)
!5412 = !DILocation(line: 703, column: 5, scope: !5402)
!5413 = !DILocation(line: 704, column: 4, scope: !5402)
!5414 = !DILocation(line: 700, column: 18, scope: !5389)
!5415 = !DILocation(line: 700, column: 3, scope: !5389)
!5416 = distinct !{!5416, !5392, !5417, !5081, !5082}
!5417 = !DILocation(line: 704, column: 4, scope: !5390)
!5418 = !DILocation(line: 705, column: 2, scope: !5387)
!5419 = !DILocation(line: 707, column: 9, scope: !5303)
!5420 = !DILocation(line: 707, column: 2, scope: !5303)
!5421 = !DILocation(line: 708, column: 1, scope: !5303)
!5422 = distinct !DISubprogram(name: "component_bind", scope: !3, file: !3, line: 615, type: !5423, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{!85, !142, !152, !139}
!5425 = !{!5426, !5427, !5428, !5429}
!5426 = !DILocalVariable(name: "component", arg: 1, scope: !5422, file: !3, line: 615, type: !142)
!5427 = !DILocalVariable(name: "adev", arg: 2, scope: !5422, file: !3, line: 615, type: !152)
!5428 = !DILocalVariable(name: "data", arg: 3, scope: !5422, file: !3, line: 616, type: !139)
!5429 = !DILocalVariable(name: "ret", scope: !5422, file: !3, line: 618, type: !85)
!5430 = !DILocation(line: 615, column: 45, scope: !5422)
!5431 = !DILocation(line: 615, column: 81, scope: !5422)
!5432 = !DILocation(line: 616, column: 8, scope: !5422)
!5433 = !DILocation(line: 618, column: 2, scope: !5422)
!5434 = !DILocation(line: 618, column: 6, scope: !5422)
!5435 = !DILocation(line: 625, column: 25, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 625, column: 6)
!5437 = !DILocation(line: 625, column: 31, scope: !5436)
!5438 = !DILocation(line: 625, column: 7, scope: !5436)
!5439 = !DILocation(line: 625, column: 6, scope: !5422)
!5440 = !DILocation(line: 626, column: 3, scope: !5436)
!5441 = !DILocation(line: 633, column: 25, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 633, column: 6)
!5443 = !DILocation(line: 633, column: 36, scope: !5442)
!5444 = !DILocation(line: 633, column: 41, scope: !5442)
!5445 = !DILocation(line: 633, column: 7, scope: !5442)
!5446 = !DILocation(line: 633, column: 6, scope: !5422)
!5447 = !DILocation(line: 634, column: 24, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 633, column: 65)
!5449 = !DILocation(line: 634, column: 30, scope: !5448)
!5450 = !DILocation(line: 634, column: 3, scope: !5448)
!5451 = !DILocation(line: 635, column: 3, scope: !5448)
!5452 = !DILocation(line: 641, column: 8, scope: !5422)
!5453 = !DILocation(line: 641, column: 19, scope: !5422)
!5454 = !DILocation(line: 641, column: 24, scope: !5422)
!5455 = !DILocation(line: 641, column: 29, scope: !5422)
!5456 = !DILocation(line: 641, column: 40, scope: !5422)
!5457 = !DILocation(line: 641, column: 45, scope: !5422)
!5458 = !DILocation(line: 641, column: 51, scope: !5422)
!5459 = !DILocation(line: 641, column: 59, scope: !5422)
!5460 = !DILocation(line: 641, column: 6, scope: !5422)
!5461 = !DILocation(line: 642, column: 7, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 642, column: 6)
!5463 = !DILocation(line: 642, column: 6, scope: !5422)
!5464 = !DILocation(line: 643, column: 3, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 642, column: 12)
!5466 = !DILocation(line: 643, column: 14, scope: !5465)
!5467 = !DILocation(line: 643, column: 20, scope: !5465)
!5468 = !DILocation(line: 651, column: 22, scope: !5465)
!5469 = !DILocation(line: 651, column: 33, scope: !5465)
!5470 = !DILocation(line: 651, column: 3, scope: !5465)
!5471 = !DILocation(line: 652, column: 23, scope: !5465)
!5472 = !DILocation(line: 652, column: 29, scope: !5465)
!5473 = !DILocation(line: 652, column: 3, scope: !5465)
!5474 = !DILocation(line: 654, column: 3, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 654, column: 3)
!5476 = !DILocation(line: 654, column: 3, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 654, column: 3)
!5478 = !DILocation(line: 656, column: 2, scope: !5465)
!5479 = !DILocation(line: 657, column: 24, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 656, column: 9)
!5481 = !DILocation(line: 657, column: 35, scope: !5480)
!5482 = !DILocation(line: 657, column: 3, scope: !5480)
!5483 = !DILocation(line: 658, column: 24, scope: !5480)
!5484 = !DILocation(line: 658, column: 30, scope: !5480)
!5485 = !DILocation(line: 658, column: 3, scope: !5480)
!5486 = !DILocation(line: 660, column: 7, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 660, column: 7)
!5488 = !DILocation(line: 660, column: 11, scope: !5487)
!5489 = !DILocation(line: 660, column: 7, scope: !5480)
!5490 = !DILocation(line: 661, column: 4, scope: !5491)
!5491 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 661, column: 4)
!5492 = !DILocation(line: 661, column: 4, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 661, column: 4)
!5494 = !DILocation(line: 661, column: 4, scope: !5487)
!5495 = !DILocation(line: 665, column: 9, scope: !5422)
!5496 = !DILocation(line: 665, column: 2, scope: !5422)
!5497 = !DILocation(line: 666, column: 1, scope: !5422)
!5498 = distinct !DISubprogram(name: "component_add_typed", scope: !3, file: !3, line: 762, type: !5499, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5501)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!85, !169, !4458, !85}
!5501 = !{!5502, !5503, !5504, !5505, !5508}
!5502 = !DILocalVariable(name: "dev", arg: 1, scope: !5498, file: !3, line: 762, type: !169)
!5503 = !DILocalVariable(name: "ops", arg: 2, scope: !5498, file: !3, line: 762, type: !4458)
!5504 = !DILocalVariable(name: "subcomponent", arg: 3, scope: !5498, file: !3, line: 763, type: !85)
!5505 = !DILocalVariable(name: "__ret_warn_on", scope: !5506, file: !3, line: 765, type: !85)
!5506 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 765, column: 6)
!5507 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 765, column: 6)
!5508 = !DILocalVariable(name: "__flags", scope: !5509, file: !3, line: 765, type: !85)
!5509 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 765, column: 6)
!5510 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 765, column: 6)
!5511 = !DILocation(line: 762, column: 40, scope: !5498)
!5512 = !DILocation(line: 762, column: 73, scope: !5498)
!5513 = !DILocation(line: 763, column: 6, scope: !5498)
!5514 = !DILocation(line: 765, column: 6, scope: !5506)
!5515 = !DILocation(line: 765, column: 6, scope: !5510)
!5516 = !DILocation(line: 765, column: 6, scope: !5509)
!5517 = !DILocation(line: 765, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 765, column: 6)
!5519 = !DILocation(line: 765, column: 6, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 765, column: 6)
!5521 = !{i64 2154133296, i64 2154133325, i64 2154133371, i64 2154133429, i64 2154133483, i64 2154133537, i64 2154133592, i64 2154133623, i64 2154133931, i64 2154133937, i64 2154133984, i64 2154134007, i64 2154134033}
!5522 = !DILocation(line: 765, column: 6, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5509, file: !3, line: 765, column: 6)
!5524 = !DILocation(line: 765, column: 6, scope: !5507)
!5525 = !DILocation(line: 765, column: 6, scope: !5498)
!5526 = !DILocation(line: 766, column: 3, scope: !5507)
!5527 = !DILocation(line: 768, column: 25, scope: !5498)
!5528 = !DILocation(line: 768, column: 30, scope: !5498)
!5529 = !DILocation(line: 768, column: 35, scope: !5498)
!5530 = !DILocation(line: 768, column: 9, scope: !5498)
!5531 = !DILocation(line: 768, column: 2, scope: !5498)
!5532 = !DILocation(line: 769, column: 1, scope: !5498)
!5533 = distinct !DISubprogram(name: "__component_add", scope: !3, file: !3, line: 711, type: !5499, scopeLine: 713, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5534)
!5534 = !{!5535, !5536, !5537, !5538, !5539}
!5535 = !DILocalVariable(name: "dev", arg: 1, scope: !5533, file: !3, line: 711, type: !169)
!5536 = !DILocalVariable(name: "ops", arg: 2, scope: !5533, file: !3, line: 711, type: !4458)
!5537 = !DILocalVariable(name: "subcomponent", arg: 3, scope: !5533, file: !3, line: 712, type: !85)
!5538 = !DILocalVariable(name: "component", scope: !5533, file: !3, line: 714, type: !142)
!5539 = !DILocalVariable(name: "ret", scope: !5533, file: !3, line: 715, type: !85)
!5540 = !DILocation(line: 711, column: 43, scope: !5533)
!5541 = !DILocation(line: 711, column: 76, scope: !5533)
!5542 = !DILocation(line: 712, column: 6, scope: !5533)
!5543 = !DILocation(line: 714, column: 2, scope: !5533)
!5544 = !DILocation(line: 714, column: 20, scope: !5533)
!5545 = !DILocation(line: 715, column: 2, scope: !5533)
!5546 = !DILocation(line: 715, column: 6, scope: !5533)
!5547 = !DILocation(line: 717, column: 14, scope: !5533)
!5548 = !DILocation(line: 717, column: 12, scope: !5533)
!5549 = !DILocation(line: 718, column: 7, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 718, column: 6)
!5551 = !DILocation(line: 718, column: 6, scope: !5533)
!5552 = !DILocation(line: 719, column: 3, scope: !5550)
!5553 = !DILocation(line: 721, column: 19, scope: !5533)
!5554 = !DILocation(line: 721, column: 2, scope: !5533)
!5555 = !DILocation(line: 721, column: 13, scope: !5533)
!5556 = !DILocation(line: 721, column: 17, scope: !5533)
!5557 = !DILocation(line: 722, column: 19, scope: !5533)
!5558 = !DILocation(line: 722, column: 2, scope: !5533)
!5559 = !DILocation(line: 722, column: 13, scope: !5533)
!5560 = !DILocation(line: 722, column: 17, scope: !5533)
!5561 = !DILocation(line: 723, column: 28, scope: !5533)
!5562 = !DILocation(line: 723, column: 2, scope: !5533)
!5563 = !DILocation(line: 723, column: 13, scope: !5533)
!5564 = !DILocation(line: 723, column: 26, scope: !5533)
!5565 = !DILocation(line: 727, column: 2, scope: !5533)
!5566 = !DILocation(line: 728, column: 17, scope: !5533)
!5567 = !DILocation(line: 728, column: 28, scope: !5533)
!5568 = !DILocation(line: 728, column: 2, scope: !5533)
!5569 = !DILocation(line: 730, column: 32, scope: !5533)
!5570 = !DILocation(line: 730, column: 8, scope: !5533)
!5571 = !DILocation(line: 730, column: 6, scope: !5533)
!5572 = !DILocation(line: 731, column: 6, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 731, column: 6)
!5574 = !DILocation(line: 731, column: 10, scope: !5573)
!5575 = !DILocation(line: 731, column: 6, scope: !5533)
!5576 = !DILocation(line: 732, column: 7, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5578, file: !3, line: 732, column: 7)
!5578 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 731, column: 15)
!5579 = !DILocation(line: 732, column: 18, scope: !5577)
!5580 = !DILocation(line: 732, column: 7, scope: !5578)
!5581 = !DILocation(line: 733, column: 21, scope: !5577)
!5582 = !DILocation(line: 733, column: 32, scope: !5577)
!5583 = !DILocation(line: 733, column: 38, scope: !5577)
!5584 = !DILocation(line: 733, column: 4, scope: !5577)
!5585 = !DILocation(line: 734, column: 13, scope: !5578)
!5586 = !DILocation(line: 734, column: 24, scope: !5578)
!5587 = !DILocation(line: 734, column: 3, scope: !5578)
!5588 = !DILocation(line: 736, column: 9, scope: !5578)
!5589 = !DILocation(line: 736, column: 3, scope: !5578)
!5590 = !DILocation(line: 737, column: 2, scope: !5578)
!5591 = !DILocation(line: 738, column: 2, scope: !5533)
!5592 = !DILocation(line: 740, column: 9, scope: !5533)
!5593 = !DILocation(line: 740, column: 13, scope: !5533)
!5594 = !DILocation(line: 740, column: 19, scope: !5533)
!5595 = !DILocation(line: 740, column: 2, scope: !5533)
!5596 = !DILocation(line: 741, column: 1, scope: !5533)
!5597 = distinct !DISubprogram(name: "component_add", scope: !3, file: !3, line: 787, type: !5598, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5600)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!85, !169, !4458}
!5600 = !{!5601, !5602}
!5601 = !DILocalVariable(name: "dev", arg: 1, scope: !5597, file: !3, line: 787, type: !169)
!5602 = !DILocalVariable(name: "ops", arg: 2, scope: !5597, file: !3, line: 787, type: !4458)
!5603 = !DILocation(line: 787, column: 34, scope: !5597)
!5604 = !DILocation(line: 787, column: 67, scope: !5597)
!5605 = !DILocation(line: 789, column: 25, scope: !5597)
!5606 = !DILocation(line: 789, column: 30, scope: !5597)
!5607 = !DILocation(line: 789, column: 9, scope: !5597)
!5608 = !DILocation(line: 789, column: 2, scope: !5597)
!5609 = distinct !DISubprogram(name: "component_del", scope: !3, file: !3, line: 802, type: !5610, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5612)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{null, !169, !4458}
!5612 = !{!5613, !5614, !5615, !5616, !5617, !5620, !5623, !5625}
!5613 = !DILocalVariable(name: "dev", arg: 1, scope: !5609, file: !3, line: 802, type: !169)
!5614 = !DILocalVariable(name: "ops", arg: 2, scope: !5609, file: !3, line: 802, type: !4458)
!5615 = !DILocalVariable(name: "c", scope: !5609, file: !3, line: 804, type: !142)
!5616 = !DILocalVariable(name: "component", scope: !5609, file: !3, line: 804, type: !142)
!5617 = !DILocalVariable(name: "__mptr", scope: !5618, file: !3, line: 807, type: !139)
!5618 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 807, column: 2)
!5619 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 807, column: 2)
!5620 = !DILocalVariable(name: "__mptr", scope: !5621, file: !3, line: 807, type: !139)
!5621 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 807, column: 2)
!5622 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 807, column: 2)
!5623 = !DILocalVariable(name: "__ret_warn_on", scope: !5624, file: !3, line: 821, type: !85)
!5624 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 821, column: 2)
!5625 = !DILocalVariable(name: "__flags", scope: !5626, file: !3, line: 821, type: !85)
!5626 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 821, column: 2)
!5627 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 821, column: 2)
!5628 = !DILocation(line: 802, column: 35, scope: !5609)
!5629 = !DILocation(line: 802, column: 68, scope: !5609)
!5630 = !DILocation(line: 804, column: 2, scope: !5609)
!5631 = !DILocation(line: 804, column: 20, scope: !5609)
!5632 = !DILocation(line: 804, column: 24, scope: !5609)
!5633 = !DILocation(line: 806, column: 2, scope: !5609)
!5634 = !DILocation(line: 807, column: 2, scope: !5618)
!5635 = !DILocation(line: 807, column: 2, scope: !5619)
!5636 = !DILocation(line: 807, column: 2, scope: !5622)
!5637 = !DILocation(line: 808, column: 7, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5622, file: !3, line: 808, column: 7)
!5639 = !DILocation(line: 808, column: 10, scope: !5638)
!5640 = !DILocation(line: 808, column: 17, scope: !5638)
!5641 = !DILocation(line: 808, column: 14, scope: !5638)
!5642 = !DILocation(line: 808, column: 21, scope: !5638)
!5643 = !DILocation(line: 808, column: 24, scope: !5638)
!5644 = !DILocation(line: 808, column: 27, scope: !5638)
!5645 = !DILocation(line: 808, column: 34, scope: !5638)
!5646 = !DILocation(line: 808, column: 31, scope: !5638)
!5647 = !DILocation(line: 808, column: 7, scope: !5622)
!5648 = !DILocation(line: 809, column: 14, scope: !5649)
!5649 = distinct !DILexicalBlock(scope: !5638, file: !3, line: 808, column: 39)
!5650 = !DILocation(line: 809, column: 17, scope: !5649)
!5651 = !DILocation(line: 809, column: 4, scope: !5649)
!5652 = !DILocation(line: 810, column: 16, scope: !5649)
!5653 = !DILocation(line: 810, column: 14, scope: !5649)
!5654 = !DILocation(line: 811, column: 4, scope: !5649)
!5655 = !DILocation(line: 807, column: 2, scope: !5621)
!5656 = distinct !{!5656, !5635, !5657, !5081, !5082}
!5657 = !DILocation(line: 812, column: 3, scope: !5619)
!5658 = !DILocation(line: 814, column: 6, scope: !5659)
!5659 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 814, column: 6)
!5660 = !DILocation(line: 814, column: 16, scope: !5659)
!5661 = !DILocation(line: 814, column: 19, scope: !5659)
!5662 = !DILocation(line: 814, column: 30, scope: !5659)
!5663 = !DILocation(line: 814, column: 6, scope: !5609)
!5664 = !DILocation(line: 815, column: 30, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5659, file: !3, line: 814, column: 36)
!5666 = !DILocation(line: 815, column: 41, scope: !5665)
!5667 = !DILocation(line: 815, column: 3, scope: !5665)
!5668 = !DILocation(line: 816, column: 20, scope: !5665)
!5669 = !DILocation(line: 816, column: 31, scope: !5665)
!5670 = !DILocation(line: 816, column: 37, scope: !5665)
!5671 = !DILocation(line: 816, column: 3, scope: !5665)
!5672 = !DILocation(line: 817, column: 2, scope: !5665)
!5673 = !DILocation(line: 819, column: 2, scope: !5609)
!5674 = !DILocation(line: 821, column: 2, scope: !5624)
!5675 = !DILocation(line: 821, column: 2, scope: !5627)
!5676 = !DILocation(line: 821, column: 2, scope: !5626)
!5677 = !DILocation(line: 821, column: 2, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 821, column: 2)
!5679 = !DILocation(line: 821, column: 2, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 821, column: 2)
!5681 = !{i64 2154141408, i64 2154141437, i64 2154141483, i64 2154141541, i64 2154141595, i64 2154141649, i64 2154141704, i64 2154141735, i64 2154142043, i64 2154142049, i64 2154142096, i64 2154142119, i64 2154142145}
!5682 = !DILocation(line: 821, column: 2, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 821, column: 2)
!5684 = !DILocation(line: 821, column: 2, scope: !5609)
!5685 = !DILocation(line: 822, column: 8, scope: !5609)
!5686 = !DILocation(line: 822, column: 2, scope: !5609)
!5687 = !DILocation(line: 823, column: 1, scope: !5609)
!5688 = distinct !DISubprogram(name: "list_del", scope: !4950, file: !4950, line: 227, type: !5689, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5691)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{null, !149}
!5691 = !{!5692}
!5692 = !DILocalVariable(name: "entry", arg: 1, scope: !5688, file: !4950, line: 227, type: !149)
!5693 = !DILocation(line: 227, column: 47, scope: !5688)
!5694 = !DILocation(line: 229, column: 19, scope: !5688)
!5695 = !DILocation(line: 229, column: 2, scope: !5688)
!5696 = !DILocation(line: 230, column: 2, scope: !5688)
!5697 = !DILocation(line: 230, column: 9, scope: !5688)
!5698 = !DILocation(line: 230, column: 14, scope: !5688)
!5699 = !DILocation(line: 231, column: 2, scope: !5688)
!5700 = !DILocation(line: 231, column: 9, scope: !5688)
!5701 = !DILocation(line: 231, column: 14, scope: !5688)
!5702 = !DILocation(line: 232, column: 1, scope: !5688)
!5703 = distinct !DISubprogram(name: "remove_component", scope: !3, file: !3, line: 210, type: !5704, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5706)
!5704 = !DISubroutineType(types: !5705)
!5705 = !{null, !152, !142}
!5706 = !{!5707, !5708, !5709}
!5707 = !DILocalVariable(name: "adev", arg: 1, scope: !5703, file: !3, line: 210, type: !152)
!5708 = !DILocalVariable(name: "c", arg: 2, scope: !5703, file: !3, line: 210, type: !142)
!5709 = !DILocalVariable(name: "i", scope: !5703, file: !3, line: 212, type: !306)
!5710 = !DILocation(line: 210, column: 55, scope: !5703)
!5711 = !DILocation(line: 210, column: 79, scope: !5703)
!5712 = !DILocation(line: 212, column: 2, scope: !5703)
!5713 = !DILocation(line: 212, column: 9, scope: !5703)
!5714 = !DILocation(line: 215, column: 9, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 215, column: 2)
!5716 = !DILocation(line: 215, column: 7, scope: !5715)
!5717 = !DILocation(line: 215, column: 14, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 215, column: 2)
!5719 = !DILocation(line: 215, column: 18, scope: !5718)
!5720 = !DILocation(line: 215, column: 24, scope: !5718)
!5721 = !DILocation(line: 215, column: 31, scope: !5718)
!5722 = !DILocation(line: 215, column: 16, scope: !5718)
!5723 = !DILocation(line: 215, column: 2, scope: !5715)
!5724 = !DILocation(line: 216, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 216, column: 7)
!5726 = !DILocation(line: 216, column: 13, scope: !5725)
!5727 = !DILocation(line: 216, column: 20, scope: !5725)
!5728 = !DILocation(line: 216, column: 28, scope: !5725)
!5729 = !DILocation(line: 216, column: 31, scope: !5725)
!5730 = !DILocation(line: 216, column: 44, scope: !5725)
!5731 = !DILocation(line: 216, column: 41, scope: !5725)
!5732 = !DILocation(line: 216, column: 7, scope: !5718)
!5733 = !DILocation(line: 217, column: 4, scope: !5725)
!5734 = !DILocation(line: 217, column: 10, scope: !5725)
!5735 = !DILocation(line: 217, column: 17, scope: !5725)
!5736 = !DILocation(line: 217, column: 25, scope: !5725)
!5737 = !DILocation(line: 217, column: 28, scope: !5725)
!5738 = !DILocation(line: 217, column: 38, scope: !5725)
!5739 = !DILocation(line: 215, column: 37, scope: !5718)
!5740 = !DILocation(line: 215, column: 2, scope: !5718)
!5741 = distinct !{!5741, !5723, !5742, !5081, !5082}
!5742 = !DILocation(line: 217, column: 40, scope: !5715)
!5743 = !DILocation(line: 218, column: 1, scope: !5703)
!5744 = !DISubprogram(name: "kfree", scope: !129, file: !129, line: 227, type: !5745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5745 = !DISubroutineType(types: !5746)
!5746 = !{null, !1588}
!5747 = !DISubprogram(name: "debugfs_create_dir", scope: !5748, file: !5748, line: 87, type: !5749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5748 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!374, !177, !374}
!5751 = distinct !DISubprogram(name: "IS_ERR", scope: !5752, file: !5752, line: 59, type: !5753, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5755)
!5752 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5753 = !DISubroutineType(types: !5754)
!5754 = !{!157, !1588}
!5755 = !{!5756}
!5756 = !DILocalVariable(name: "ptr", arg: 1, scope: !5751, file: !5752, line: 59, type: !1588)
!5757 = !DILocation(line: 59, column: 60, scope: !5751)
!5758 = !DILocation(line: 61, column: 9, scope: !5751)
!5759 = !DILocation(line: 61, column: 2, scope: !5751)
!5760 = !DISubprogram(name: "__devres_alloc_node", scope: !70, file: !70, line: 274, type: !5761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!139, !5763, !306, !140, !85, !177}
!5763 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !70, line: 271, baseType: !4451)
!5764 = distinct !DISubprogram(name: "devm_component_match_release", scope: !3, file: !3, line: 344, type: !4452, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5765)
!5765 = !{!5766, !5767, !5768, !5769, !5770}
!5766 = !DILocalVariable(name: "parent", arg: 1, scope: !5764, file: !3, line: 344, type: !169)
!5767 = !DILocalVariable(name: "res", arg: 2, scope: !5764, file: !3, line: 344, type: !139)
!5768 = !DILocalVariable(name: "match", scope: !5764, file: !3, line: 346, type: !4432)
!5769 = !DILocalVariable(name: "i", scope: !5764, file: !3, line: 347, type: !7)
!5770 = !DILocalVariable(name: "mc", scope: !5771, file: !3, line: 350, type: !4438)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 349, column: 35)
!5772 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 349, column: 2)
!5773 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 349, column: 2)
!5774 = !DILocation(line: 344, column: 57, scope: !5764)
!5775 = !DILocation(line: 344, column: 71, scope: !5764)
!5776 = !DILocation(line: 346, column: 2, scope: !5764)
!5777 = !DILocation(line: 346, column: 26, scope: !5764)
!5778 = !DILocation(line: 346, column: 34, scope: !5764)
!5779 = !DILocation(line: 347, column: 2, scope: !5764)
!5780 = !DILocation(line: 347, column: 15, scope: !5764)
!5781 = !DILocation(line: 349, column: 9, scope: !5773)
!5782 = !DILocation(line: 349, column: 7, scope: !5773)
!5783 = !DILocation(line: 349, column: 14, scope: !5772)
!5784 = !DILocation(line: 349, column: 18, scope: !5772)
!5785 = !DILocation(line: 349, column: 25, scope: !5772)
!5786 = !DILocation(line: 349, column: 16, scope: !5772)
!5787 = !DILocation(line: 349, column: 2, scope: !5773)
!5788 = !DILocation(line: 350, column: 3, scope: !5771)
!5789 = !DILocation(line: 350, column: 33, scope: !5771)
!5790 = !DILocation(line: 350, column: 39, scope: !5771)
!5791 = !DILocation(line: 350, column: 46, scope: !5771)
!5792 = !DILocation(line: 350, column: 54, scope: !5771)
!5793 = !DILocation(line: 352, column: 7, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 352, column: 7)
!5795 = !DILocation(line: 352, column: 11, scope: !5794)
!5796 = !DILocation(line: 352, column: 7, scope: !5771)
!5797 = !DILocation(line: 353, column: 4, scope: !5794)
!5798 = !DILocation(line: 353, column: 8, scope: !5794)
!5799 = !DILocation(line: 353, column: 16, scope: !5794)
!5800 = !DILocation(line: 353, column: 24, scope: !5794)
!5801 = !DILocation(line: 353, column: 28, scope: !5794)
!5802 = !DILocation(line: 354, column: 2, scope: !5772)
!5803 = !DILocation(line: 354, column: 2, scope: !5771)
!5804 = !DILocation(line: 349, column: 31, scope: !5772)
!5805 = !DILocation(line: 349, column: 2, scope: !5772)
!5806 = distinct !{!5806, !5787, !5807, !5081, !5082}
!5807 = !DILocation(line: 354, column: 2, scope: !5773)
!5808 = !DILocation(line: 356, column: 8, scope: !5764)
!5809 = !DILocation(line: 356, column: 15, scope: !5764)
!5810 = !DILocation(line: 356, column: 2, scope: !5764)
!5811 = !DILocation(line: 357, column: 1, scope: !5764)
!5812 = distinct !DISubprogram(name: "ERR_PTR", scope: !5752, file: !5752, line: 39, type: !5813, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5815)
!5813 = !DISubroutineType(types: !5814)
!5814 = !{!139, !295}
!5815 = !{!5816}
!5816 = !DILocalVariable(name: "error", arg: 1, scope: !5812, file: !5752, line: 39, type: !295)
!5817 = !DILocation(line: 39, column: 48, scope: !5812)
!5818 = !DILocation(line: 41, column: 18, scope: !5812)
!5819 = !DILocation(line: 41, column: 9, scope: !5812)
!5820 = !DILocation(line: 41, column: 2, scope: !5812)
!5821 = !DISubprogram(name: "devres_add", scope: !70, file: !70, line: 286, type: !4452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5822 = distinct !DISubprogram(name: "kmalloc_array", scope: !129, file: !129, line: 629, type: !5823, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5825)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{!139, !306, !306, !140}
!5825 = !{!5826, !5827, !5828, !5829}
!5826 = !DILocalVariable(name: "n", arg: 1, scope: !5822, file: !129, line: 629, type: !306)
!5827 = !DILocalVariable(name: "size", arg: 2, scope: !5822, file: !129, line: 629, type: !306)
!5828 = !DILocalVariable(name: "flags", arg: 3, scope: !5822, file: !129, line: 629, type: !140)
!5829 = !DILocalVariable(name: "bytes", scope: !5822, file: !129, line: 631, type: !306)
!5830 = !DILocation(line: 629, column: 61, scope: !5822)
!5831 = !DILocation(line: 629, column: 71, scope: !5822)
!5832 = !DILocation(line: 629, column: 83, scope: !5822)
!5833 = !DILocation(line: 631, column: 2, scope: !5822)
!5834 = !DILocation(line: 631, column: 9, scope: !5822)
!5835 = !DILocation(line: 633, column: 6, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5822, file: !129, line: 633, column: 6)
!5837 = !DILocation(line: 633, column: 6, scope: !5822)
!5838 = !DILocation(line: 634, column: 3, scope: !5836)
!5839 = !DILocation(line: 635, column: 27, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5822, file: !129, line: 635, column: 6)
!5841 = !DILocation(line: 635, column: 6, scope: !5840)
!5842 = !DILocation(line: 635, column: 30, scope: !5840)
!5843 = !DILocation(line: 635, column: 54, scope: !5840)
!5844 = !DILocation(line: 635, column: 33, scope: !5840)
!5845 = !DILocation(line: 635, column: 6, scope: !5822)
!5846 = !DILocation(line: 636, column: 18, scope: !5840)
!5847 = !DILocation(line: 636, column: 25, scope: !5840)
!5848 = !DILocation(line: 636, column: 10, scope: !5840)
!5849 = !DILocation(line: 636, column: 3, scope: !5840)
!5850 = !DILocation(line: 637, column: 19, scope: !5822)
!5851 = !DILocation(line: 637, column: 26, scope: !5822)
!5852 = !DILocation(line: 637, column: 9, scope: !5822)
!5853 = !DILocation(line: 637, column: 2, scope: !5822)
!5854 = !DILocation(line: 638, column: 1, scope: !5822)
!5855 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5856, file: !5856, line: 51, type: !5857, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5859)
!5856 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5857 = !DISubroutineType(types: !5858)
!5858 = !{!157, !157}
!5859 = !{!5860}
!5860 = !DILocalVariable(name: "overflow", arg: 1, scope: !5855, file: !5856, line: 51, type: !157)
!5861 = !DILocation(line: 51, column: 60, scope: !5855)
!5862 = !DILocation(line: 53, column: 9, scope: !5855)
!5863 = !DILocation(line: 53, column: 2, scope: !5855)
!5864 = distinct !DISubprogram(name: "kmalloc", scope: !129, file: !129, line: 591, type: !4920, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5865)
!5865 = !{!5866, !5867, !5868}
!5866 = !DILocalVariable(name: "size", arg: 1, scope: !5864, file: !129, line: 591, type: !306)
!5867 = !DILocalVariable(name: "flags", arg: 2, scope: !5864, file: !129, line: 591, type: !140)
!5868 = !DILocalVariable(name: "index", scope: !5869, file: !129, line: 594, type: !7)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !129, line: 593, column: 42)
!5870 = distinct !DILexicalBlock(scope: !5864, file: !129, line: 593, column: 6)
!5871 = !DILocation(line: 591, column: 61, scope: !5864)
!5872 = !DILocation(line: 591, column: 73, scope: !5864)
!5873 = !DILocation(line: 593, column: 27, scope: !5870)
!5874 = !DILocation(line: 593, column: 6, scope: !5870)
!5875 = !DILocation(line: 593, column: 33, scope: !5870)
!5876 = !DILocation(line: 593, column: 36, scope: !5870)
!5877 = !DILocation(line: 593, column: 6, scope: !5864)
!5878 = !DILocation(line: 594, column: 3, scope: !5869)
!5879 = !DILocation(line: 594, column: 16, scope: !5869)
!5880 = !DILocation(line: 596, column: 7, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5869, file: !129, line: 596, column: 7)
!5882 = !DILocation(line: 596, column: 12, scope: !5881)
!5883 = !DILocation(line: 596, column: 7, scope: !5869)
!5884 = !DILocation(line: 597, column: 25, scope: !5881)
!5885 = !DILocation(line: 597, column: 31, scope: !5881)
!5886 = !DILocation(line: 597, column: 11, scope: !5881)
!5887 = !DILocation(line: 597, column: 4, scope: !5881)
!5888 = !DILocation(line: 599, column: 11, scope: !5869)
!5889 = !DILocation(line: 599, column: 9, scope: !5869)
!5890 = !DILocation(line: 601, column: 33, scope: !5869)
!5891 = !DILocation(line: 601, column: 40, scope: !5869)
!5892 = !DILocation(line: 601, column: 20, scope: !5869)
!5893 = !DILocation(line: 601, column: 5, scope: !5869)
!5894 = !DILocation(line: 601, column: 51, scope: !5869)
!5895 = !DILocation(line: 602, column: 5, scope: !5869)
!5896 = !DILocation(line: 602, column: 12, scope: !5869)
!5897 = !DILocation(line: 600, column: 10, scope: !5869)
!5898 = !DILocation(line: 600, column: 3, scope: !5869)
!5899 = !DILocation(line: 603, column: 2, scope: !5870)
!5900 = !DILocation(line: 604, column: 19, scope: !5864)
!5901 = !DILocation(line: 604, column: 25, scope: !5864)
!5902 = !DILocation(line: 604, column: 9, scope: !5864)
!5903 = !DILocation(line: 604, column: 2, scope: !5864)
!5904 = !DILocation(line: 605, column: 1, scope: !5864)
!5905 = !DISubprogram(name: "__kmalloc", scope: !129, file: !129, line: 488, type: !4920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5906 = !DISubprogram(name: "kmalloc_large", scope: !129, file: !129, line: 531, type: !4920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5907 = distinct !DISubprogram(name: "__kmalloc_index", scope: !129, file: !129, line: 444, type: !5908, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5910)
!5908 = !DISubroutineType(types: !5909)
!5909 = !{!7, !306, !157}
!5910 = !{!5911, !5912}
!5911 = !DILocalVariable(name: "size", arg: 1, scope: !5907, file: !129, line: 444, type: !306)
!5912 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5907, file: !129, line: 445, type: !157)
!5913 = !DILocation(line: 444, column: 60, scope: !5907)
!5914 = !DILocation(line: 445, column: 16, scope: !5907)
!5915 = !DILocation(line: 447, column: 7, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 447, column: 6)
!5917 = !DILocation(line: 447, column: 6, scope: !5907)
!5918 = !DILocation(line: 448, column: 3, scope: !5916)
!5919 = !DILocation(line: 450, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 450, column: 6)
!5921 = !DILocation(line: 450, column: 11, scope: !5920)
!5922 = !DILocation(line: 450, column: 6, scope: !5907)
!5923 = !DILocation(line: 451, column: 3, scope: !5920)
!5924 = !DILocation(line: 453, column: 32, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 453, column: 6)
!5926 = !DILocation(line: 453, column: 37, scope: !5925)
!5927 = !DILocation(line: 453, column: 42, scope: !5925)
!5928 = !DILocation(line: 453, column: 45, scope: !5925)
!5929 = !DILocation(line: 453, column: 50, scope: !5925)
!5930 = !DILocation(line: 453, column: 6, scope: !5907)
!5931 = !DILocation(line: 454, column: 3, scope: !5925)
!5932 = !DILocation(line: 455, column: 32, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 455, column: 6)
!5934 = !DILocation(line: 455, column: 37, scope: !5933)
!5935 = !DILocation(line: 455, column: 43, scope: !5933)
!5936 = !DILocation(line: 455, column: 46, scope: !5933)
!5937 = !DILocation(line: 455, column: 51, scope: !5933)
!5938 = !DILocation(line: 455, column: 6, scope: !5907)
!5939 = !DILocation(line: 456, column: 3, scope: !5933)
!5940 = !DILocation(line: 457, column: 6, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 457, column: 6)
!5942 = !DILocation(line: 457, column: 11, scope: !5941)
!5943 = !DILocation(line: 457, column: 6, scope: !5907)
!5944 = !DILocation(line: 457, column: 26, scope: !5941)
!5945 = !DILocation(line: 458, column: 6, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 458, column: 6)
!5947 = !DILocation(line: 458, column: 11, scope: !5946)
!5948 = !DILocation(line: 458, column: 6, scope: !5907)
!5949 = !DILocation(line: 458, column: 26, scope: !5946)
!5950 = !DILocation(line: 459, column: 6, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 459, column: 6)
!5952 = !DILocation(line: 459, column: 11, scope: !5951)
!5953 = !DILocation(line: 459, column: 6, scope: !5907)
!5954 = !DILocation(line: 459, column: 26, scope: !5951)
!5955 = !DILocation(line: 460, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 460, column: 6)
!5957 = !DILocation(line: 460, column: 11, scope: !5956)
!5958 = !DILocation(line: 460, column: 6, scope: !5907)
!5959 = !DILocation(line: 460, column: 26, scope: !5956)
!5960 = !DILocation(line: 461, column: 6, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 461, column: 6)
!5962 = !DILocation(line: 461, column: 11, scope: !5961)
!5963 = !DILocation(line: 461, column: 6, scope: !5907)
!5964 = !DILocation(line: 461, column: 26, scope: !5961)
!5965 = !DILocation(line: 462, column: 6, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 462, column: 6)
!5967 = !DILocation(line: 462, column: 11, scope: !5966)
!5968 = !DILocation(line: 462, column: 6, scope: !5907)
!5969 = !DILocation(line: 462, column: 26, scope: !5966)
!5970 = !DILocation(line: 463, column: 6, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 463, column: 6)
!5972 = !DILocation(line: 463, column: 11, scope: !5971)
!5973 = !DILocation(line: 463, column: 6, scope: !5907)
!5974 = !DILocation(line: 463, column: 26, scope: !5971)
!5975 = !DILocation(line: 464, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 464, column: 6)
!5977 = !DILocation(line: 464, column: 11, scope: !5976)
!5978 = !DILocation(line: 464, column: 6, scope: !5907)
!5979 = !DILocation(line: 464, column: 26, scope: !5976)
!5980 = !DILocation(line: 465, column: 6, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 465, column: 6)
!5982 = !DILocation(line: 465, column: 11, scope: !5981)
!5983 = !DILocation(line: 465, column: 6, scope: !5907)
!5984 = !DILocation(line: 465, column: 26, scope: !5981)
!5985 = !DILocation(line: 466, column: 6, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 466, column: 6)
!5987 = !DILocation(line: 466, column: 11, scope: !5986)
!5988 = !DILocation(line: 466, column: 6, scope: !5907)
!5989 = !DILocation(line: 466, column: 26, scope: !5986)
!5990 = !DILocation(line: 467, column: 6, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 467, column: 6)
!5992 = !DILocation(line: 467, column: 11, scope: !5991)
!5993 = !DILocation(line: 467, column: 6, scope: !5907)
!5994 = !DILocation(line: 467, column: 26, scope: !5991)
!5995 = !DILocation(line: 468, column: 6, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 468, column: 6)
!5997 = !DILocation(line: 468, column: 11, scope: !5996)
!5998 = !DILocation(line: 468, column: 6, scope: !5907)
!5999 = !DILocation(line: 468, column: 26, scope: !5996)
!6000 = !DILocation(line: 469, column: 6, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 469, column: 6)
!6002 = !DILocation(line: 469, column: 11, scope: !6001)
!6003 = !DILocation(line: 469, column: 6, scope: !5907)
!6004 = !DILocation(line: 469, column: 26, scope: !6001)
!6005 = !DILocation(line: 470, column: 6, scope: !6006)
!6006 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 470, column: 6)
!6007 = !DILocation(line: 470, column: 11, scope: !6006)
!6008 = !DILocation(line: 470, column: 6, scope: !5907)
!6009 = !DILocation(line: 470, column: 26, scope: !6006)
!6010 = !DILocation(line: 471, column: 6, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 471, column: 6)
!6012 = !DILocation(line: 471, column: 11, scope: !6011)
!6013 = !DILocation(line: 471, column: 6, scope: !5907)
!6014 = !DILocation(line: 471, column: 26, scope: !6011)
!6015 = !DILocation(line: 472, column: 6, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 472, column: 6)
!6017 = !DILocation(line: 472, column: 11, scope: !6016)
!6018 = !DILocation(line: 472, column: 6, scope: !5907)
!6019 = !DILocation(line: 472, column: 26, scope: !6016)
!6020 = !DILocation(line: 473, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 473, column: 6)
!6022 = !DILocation(line: 473, column: 11, scope: !6021)
!6023 = !DILocation(line: 473, column: 6, scope: !5907)
!6024 = !DILocation(line: 473, column: 26, scope: !6021)
!6025 = !DILocation(line: 474, column: 6, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 474, column: 6)
!6027 = !DILocation(line: 474, column: 11, scope: !6026)
!6028 = !DILocation(line: 474, column: 6, scope: !5907)
!6029 = !DILocation(line: 474, column: 27, scope: !6026)
!6030 = !DILocation(line: 475, column: 6, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 475, column: 6)
!6032 = !DILocation(line: 475, column: 11, scope: !6031)
!6033 = !DILocation(line: 475, column: 6, scope: !5907)
!6034 = !DILocation(line: 475, column: 32, scope: !6031)
!6035 = !DILocation(line: 477, column: 50, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !5907, file: !129, line: 477, column: 6)
!6037 = !DILocation(line: 477, column: 6, scope: !5907)
!6038 = !DILocation(line: 478, column: 3, scope: !6036)
!6039 = !DILocation(line: 478, column: 3, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !129, line: 478, column: 3)
!6041 = distinct !DILexicalBlock(scope: !6036, file: !129, line: 478, column: 3)
!6042 = !{i32 -2142160989}
!6043 = !DILocation(line: 478, column: 3, scope: !6041)
!6044 = !DILocation(line: 480, column: 3, scope: !6036)
!6045 = !DILocation(line: 480, column: 3, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6036, file: !129, line: 480, column: 3)
!6047 = !DILocation(line: 480, column: 3, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6046, file: !129, line: 480, column: 3)
!6049 = !DILocation(line: 480, column: 3, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6046, file: !129, line: 480, column: 3)
!6051 = !{i64 2152806510, i64 2152806539, i64 2152806585, i64 2152806643, i64 2152806697, i64 2152806751, i64 2152806806, i64 2152806837}
!6052 = !DILocation(line: 483, column: 2, scope: !5907)
!6053 = !DILocation(line: 484, column: 1, scope: !5907)
!6054 = !DISubprogram(name: "kmalloc_trace", scope: !129, file: !129, line: 525, type: !6055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!139, !6057, !140, !306}
!6057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6058, size: 64)
!6058 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6059, line: 11, flags: DIFlagFwdDecl)
!6059 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6060 = distinct !DISubprogram(name: "kmalloc_type", scope: !129, file: !129, line: 401, type: !6061, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6063)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{!128, !140, !309}
!6063 = !{!6064, !6065}
!6064 = !DILocalVariable(name: "flags", arg: 1, scope: !6060, file: !129, line: 401, type: !140)
!6065 = !DILocalVariable(name: "caller", arg: 2, scope: !6060, file: !129, line: 401, type: !309)
!6066 = !DILocation(line: 401, column: 67, scope: !6060)
!6067 = !DILocation(line: 401, column: 88, scope: !6060)
!6068 = !DILocation(line: 407, column: 6, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !6060, file: !129, line: 407, column: 6)
!6070 = !DILocation(line: 407, column: 6, scope: !6060)
!6071 = !DILocation(line: 413, column: 3, scope: !6069)
!6072 = !DILocation(line: 423, column: 38, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6060, file: !129, line: 423, column: 6)
!6074 = !DILocation(line: 423, column: 44, scope: !6073)
!6075 = !DILocation(line: 423, column: 6, scope: !6060)
!6076 = !DILocation(line: 424, column: 3, scope: !6073)
!6077 = !DILocation(line: 426, column: 3, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6060, file: !129, line: 425, column: 6)
!6079 = !DILocation(line: 429, column: 1, scope: !6060)
!6080 = !DISubprogram(name: "__compiletime_assert_204", scope: !129, file: !129, line: 478, type: !963, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6081 = !DISubprogram(name: "debugfs_create_file", scope: !5748, file: !5748, line: 75, type: !6082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6082 = !DISubroutineType(types: !6083)
!6083 = !{!374, !177, !301, !374, !139, !1376}
!6084 = distinct !DISubprogram(name: "dev_name", scope: !70, file: !70, line: 858, type: !6085, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6087)
!6085 = !DISubroutineType(types: !6086)
!6086 = !{!177, !3968}
!6087 = !{!6088}
!6088 = !DILocalVariable(name: "dev", arg: 1, scope: !6084, file: !70, line: 858, type: !3968)
!6089 = !DILocation(line: 858, column: 57, scope: !6084)
!6090 = !DILocation(line: 861, column: 6, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6084, file: !70, line: 861, column: 6)
!6092 = !DILocation(line: 861, column: 11, scope: !6091)
!6093 = !DILocation(line: 861, column: 6, scope: !6084)
!6094 = !DILocation(line: 862, column: 10, scope: !6091)
!6095 = !DILocation(line: 862, column: 15, scope: !6091)
!6096 = !DILocation(line: 862, column: 3, scope: !6091)
!6097 = !DILocation(line: 864, column: 23, scope: !6084)
!6098 = !DILocation(line: 864, column: 28, scope: !6084)
!6099 = !DILocation(line: 864, column: 9, scope: !6084)
!6100 = !DILocation(line: 864, column: 2, scope: !6084)
!6101 = !DILocation(line: 865, column: 1, scope: !6084)
!6102 = distinct !DISubprogram(name: "kobject_name", scope: !174, file: !174, line: 87, type: !247, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6103)
!6103 = !{!6104}
!6104 = !DILocalVariable(name: "kobj", arg: 1, scope: !6102, file: !174, line: 87, type: !242)
!6105 = !DILocation(line: 87, column: 62, scope: !6102)
!6106 = !DILocation(line: 89, column: 9, scope: !6102)
!6107 = !DILocation(line: 89, column: 15, scope: !6102)
!6108 = !DILocation(line: 89, column: 2, scope: !6102)
!6109 = distinct !DISubprogram(name: "component_devices_open", scope: !3, file: !3, line: 109, type: !1673, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6110)
!6110 = !{!6111, !6112}
!6111 = !DILocalVariable(name: "inode", arg: 1, scope: !6109, file: !3, line: 109, type: !339)
!6112 = !DILocalVariable(name: "file", arg: 2, scope: !6109, file: !3, line: 109, type: !1385)
!6113 = !DILocation(line: 109, column: 1, scope: !6109)
!6114 = !DISubprogram(name: "single_open", scope: !1042, file: !1042, line: 166, type: !6115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!85, !1385, !1071, !139}
!6117 = distinct !DISubprogram(name: "component_devices_show", scope: !3, file: !3, line: 83, type: !1072, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6118)
!6118 = !{!6119, !6120, !6121, !6122, !6123, !6124}
!6119 = !DILocalVariable(name: "s", arg: 1, scope: !6117, file: !3, line: 83, type: !1040)
!6120 = !DILocalVariable(name: "data", arg: 2, scope: !6117, file: !3, line: 83, type: !139)
!6121 = !DILocalVariable(name: "m", scope: !6117, file: !3, line: 85, type: !152)
!6122 = !DILocalVariable(name: "match", scope: !6117, file: !3, line: 86, type: !4432)
!6123 = !DILocalVariable(name: "i", scope: !6117, file: !3, line: 87, type: !306)
!6124 = !DILocalVariable(name: "component", scope: !6125, file: !3, line: 98, type: !142)
!6125 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 97, column: 35)
!6126 = distinct !DILexicalBlock(scope: !6127, file: !3, line: 97, column: 2)
!6127 = distinct !DILexicalBlock(scope: !6117, file: !3, line: 97, column: 2)
!6128 = !DILocation(line: 83, column: 52, scope: !6117)
!6129 = !DILocation(line: 83, column: 61, scope: !6117)
!6130 = !DILocation(line: 85, column: 2, scope: !6117)
!6131 = !DILocation(line: 85, column: 27, scope: !6117)
!6132 = !DILocation(line: 85, column: 31, scope: !6117)
!6133 = !DILocation(line: 85, column: 34, scope: !6117)
!6134 = !DILocation(line: 86, column: 2, scope: !6117)
!6135 = !DILocation(line: 86, column: 26, scope: !6117)
!6136 = !DILocation(line: 86, column: 34, scope: !6117)
!6137 = !DILocation(line: 86, column: 37, scope: !6117)
!6138 = !DILocation(line: 87, column: 2, scope: !6117)
!6139 = !DILocation(line: 87, column: 9, scope: !6117)
!6140 = !DILocation(line: 89, column: 2, scope: !6117)
!6141 = !DILocation(line: 90, column: 13, scope: !6117)
!6142 = !DILocation(line: 90, column: 2, scope: !6117)
!6143 = !DILocation(line: 91, column: 11, scope: !6117)
!6144 = !DILocation(line: 91, column: 2, scope: !6117)
!6145 = !DILocation(line: 92, column: 13, scope: !6117)
!6146 = !DILocation(line: 93, column: 15, scope: !6117)
!6147 = !DILocation(line: 93, column: 18, scope: !6117)
!6148 = !DILocation(line: 93, column: 6, scope: !6117)
!6149 = !DILocation(line: 93, column: 27, scope: !6117)
!6150 = !DILocation(line: 93, column: 30, scope: !6117)
!6151 = !DILocation(line: 92, column: 2, scope: !6117)
!6152 = !DILocation(line: 95, column: 13, scope: !6117)
!6153 = !DILocation(line: 95, column: 2, scope: !6117)
!6154 = !DILocation(line: 96, column: 11, scope: !6117)
!6155 = !DILocation(line: 96, column: 2, scope: !6117)
!6156 = !DILocation(line: 97, column: 9, scope: !6127)
!6157 = !DILocation(line: 97, column: 7, scope: !6127)
!6158 = !DILocation(line: 97, column: 14, scope: !6126)
!6159 = !DILocation(line: 97, column: 18, scope: !6126)
!6160 = !DILocation(line: 97, column: 25, scope: !6126)
!6161 = !DILocation(line: 97, column: 16, scope: !6126)
!6162 = !DILocation(line: 97, column: 2, scope: !6127)
!6163 = !DILocation(line: 98, column: 3, scope: !6125)
!6164 = !DILocation(line: 98, column: 21, scope: !6125)
!6165 = !DILocation(line: 98, column: 33, scope: !6125)
!6166 = !DILocation(line: 98, column: 40, scope: !6125)
!6167 = !DILocation(line: 98, column: 48, scope: !6125)
!6168 = !DILocation(line: 98, column: 51, scope: !6125)
!6169 = !DILocation(line: 100, column: 14, scope: !6125)
!6170 = !DILocation(line: 101, column: 7, scope: !6125)
!6171 = !DILocation(line: 101, column: 28, scope: !6125)
!6172 = !DILocation(line: 101, column: 39, scope: !6125)
!6173 = !DILocation(line: 101, column: 19, scope: !6125)
!6174 = !DILocation(line: 102, column: 7, scope: !6125)
!6175 = !DILocation(line: 102, column: 20, scope: !6125)
!6176 = !DILocation(line: 102, column: 31, scope: !6125)
!6177 = !DILocation(line: 100, column: 3, scope: !6125)
!6178 = !DILocation(line: 103, column: 2, scope: !6126)
!6179 = !DILocation(line: 103, column: 2, scope: !6125)
!6180 = !DILocation(line: 97, column: 31, scope: !6126)
!6181 = !DILocation(line: 97, column: 2, scope: !6126)
!6182 = distinct !{!6182, !6162, !6183, !5081, !5082}
!6183 = !DILocation(line: 103, column: 2, scope: !6127)
!6184 = !DILocation(line: 104, column: 2, scope: !6117)
!6185 = !DILocation(line: 107, column: 1, scope: !6117)
!6186 = !DILocation(line: 106, column: 2, scope: !6117)
!6187 = !DISubprogram(name: "seq_printf", scope: !1042, file: !1042, line: 119, type: !6188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{null, !1040, !177, null}
!6190 = !DISubprogram(name: "seq_puts", scope: !1042, file: !1042, line: 121, type: !6191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{null, !1040, !177}
!6193 = distinct !DISubprogram(name: "__list_add", scope: !4950, file: !4950, line: 146, type: !6194, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6196)
!6194 = !DISubroutineType(types: !6195)
!6195 = !{null, !149, !149, !149}
!6196 = !{!6197, !6198, !6199}
!6197 = !DILocalVariable(name: "new", arg: 1, scope: !6193, file: !4950, line: 146, type: !149)
!6198 = !DILocalVariable(name: "prev", arg: 2, scope: !6193, file: !4950, line: 147, type: !149)
!6199 = !DILocalVariable(name: "next", arg: 3, scope: !6193, file: !4950, line: 148, type: !149)
!6200 = !DILocation(line: 146, column: 49, scope: !6193)
!6201 = !DILocation(line: 147, column: 28, scope: !6193)
!6202 = !DILocation(line: 148, column: 28, scope: !6193)
!6203 = !DILocation(line: 150, column: 24, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6193, file: !4950, line: 150, column: 6)
!6205 = !DILocation(line: 150, column: 29, scope: !6204)
!6206 = !DILocation(line: 150, column: 35, scope: !6204)
!6207 = !DILocation(line: 150, column: 7, scope: !6204)
!6208 = !DILocation(line: 150, column: 6, scope: !6193)
!6209 = !DILocation(line: 151, column: 3, scope: !6204)
!6210 = !DILocation(line: 153, column: 15, scope: !6193)
!6211 = !DILocation(line: 153, column: 2, scope: !6193)
!6212 = !DILocation(line: 153, column: 8, scope: !6193)
!6213 = !DILocation(line: 153, column: 13, scope: !6193)
!6214 = !DILocation(line: 154, column: 14, scope: !6193)
!6215 = !DILocation(line: 154, column: 2, scope: !6193)
!6216 = !DILocation(line: 154, column: 7, scope: !6193)
!6217 = !DILocation(line: 154, column: 12, scope: !6193)
!6218 = !DILocation(line: 155, column: 14, scope: !6193)
!6219 = !DILocation(line: 155, column: 2, scope: !6193)
!6220 = !DILocation(line: 155, column: 7, scope: !6193)
!6221 = !DILocation(line: 155, column: 12, scope: !6193)
!6222 = !DILocation(line: 156, column: 2, scope: !6193)
!6223 = !DILocation(line: 156, column: 2, scope: !6224)
!6224 = distinct !DILexicalBlock(scope: !6193, file: !4950, line: 156, column: 2)
!6225 = !DILocation(line: 156, column: 2, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !6224, file: !4950, line: 156, column: 2)
!6227 = !DILocation(line: 156, column: 2, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6224, file: !4950, line: 156, column: 2)
!6229 = !DILocation(line: 157, column: 1, scope: !6193)
!6230 = distinct !DISubprogram(name: "__list_add_valid", scope: !4950, file: !4950, line: 128, type: !6231, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6233)
!6231 = !DISubroutineType(types: !6232)
!6232 = !{!157, !149, !149, !149}
!6233 = !{!6234, !6235, !6236}
!6234 = !DILocalVariable(name: "new", arg: 1, scope: !6230, file: !4950, line: 128, type: !149)
!6235 = !DILocalVariable(name: "prev", arg: 2, scope: !6230, file: !4950, line: 129, type: !149)
!6236 = !DILocalVariable(name: "next", arg: 3, scope: !6230, file: !4950, line: 130, type: !149)
!6237 = !DILocation(line: 128, column: 55, scope: !6230)
!6238 = !DILocation(line: 129, column: 23, scope: !6230)
!6239 = !DILocation(line: 130, column: 23, scope: !6230)
!6240 = !DILocation(line: 132, column: 2, scope: !6230)
!6241 = distinct !DISubprogram(name: "find_components", scope: !3, file: !3, line: 173, type: !6242, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6244)
!6242 = !DISubroutineType(types: !6243)
!6243 = !{!85, !152}
!6244 = !{!6245, !6246, !6247, !6248, !6249, !6253}
!6245 = !DILocalVariable(name: "adev", arg: 1, scope: !6241, file: !3, line: 173, type: !152)
!6246 = !DILocalVariable(name: "match", scope: !6241, file: !3, line: 175, type: !4432)
!6247 = !DILocalVariable(name: "i", scope: !6241, file: !3, line: 176, type: !306)
!6248 = !DILocalVariable(name: "ret", scope: !6241, file: !3, line: 177, type: !85)
!6249 = !DILocalVariable(name: "mc", scope: !6250, file: !3, line: 184, type: !4438)
!6250 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 183, column: 35)
!6251 = distinct !DILexicalBlock(scope: !6252, file: !3, line: 183, column: 2)
!6252 = distinct !DILexicalBlock(scope: !6241, file: !3, line: 183, column: 2)
!6253 = !DILocalVariable(name: "c", scope: !6250, file: !3, line: 185, type: !142)
!6254 = !DILocation(line: 173, column: 53, scope: !6241)
!6255 = !DILocation(line: 175, column: 2, scope: !6241)
!6256 = !DILocation(line: 175, column: 26, scope: !6241)
!6257 = !DILocation(line: 175, column: 34, scope: !6241)
!6258 = !DILocation(line: 175, column: 40, scope: !6241)
!6259 = !DILocation(line: 176, column: 2, scope: !6241)
!6260 = !DILocation(line: 176, column: 9, scope: !6241)
!6261 = !DILocation(line: 177, column: 2, scope: !6241)
!6262 = !DILocation(line: 177, column: 6, scope: !6241)
!6263 = !DILocation(line: 183, column: 9, scope: !6252)
!6264 = !DILocation(line: 183, column: 7, scope: !6252)
!6265 = !DILocation(line: 183, column: 14, scope: !6251)
!6266 = !DILocation(line: 183, column: 18, scope: !6251)
!6267 = !DILocation(line: 183, column: 25, scope: !6251)
!6268 = !DILocation(line: 183, column: 16, scope: !6251)
!6269 = !DILocation(line: 183, column: 2, scope: !6252)
!6270 = !DILocation(line: 184, column: 3, scope: !6250)
!6271 = !DILocation(line: 184, column: 33, scope: !6250)
!6272 = !DILocation(line: 184, column: 39, scope: !6250)
!6273 = !DILocation(line: 184, column: 46, scope: !6250)
!6274 = !DILocation(line: 184, column: 54, scope: !6250)
!6275 = !DILocation(line: 185, column: 3, scope: !6250)
!6276 = !DILocation(line: 185, column: 21, scope: !6250)
!6277 = !DILocation(line: 189, column: 7, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 189, column: 7)
!6279 = !DILocation(line: 189, column: 14, scope: !6278)
!6280 = !DILocation(line: 189, column: 22, scope: !6278)
!6281 = !DILocation(line: 189, column: 25, scope: !6278)
!6282 = !DILocation(line: 189, column: 7, scope: !6250)
!6283 = !DILocation(line: 190, column: 4, scope: !6278)
!6284 = !DILocation(line: 192, column: 22, scope: !6250)
!6285 = !DILocation(line: 192, column: 28, scope: !6250)
!6286 = !DILocation(line: 192, column: 7, scope: !6250)
!6287 = !DILocation(line: 192, column: 5, scope: !6250)
!6288 = !DILocation(line: 193, column: 8, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 193, column: 7)
!6290 = !DILocation(line: 193, column: 7, scope: !6250)
!6291 = !DILocation(line: 194, column: 8, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6289, file: !3, line: 193, column: 11)
!6293 = !DILocation(line: 195, column: 4, scope: !6292)
!6294 = !DILocation(line: 202, column: 35, scope: !6250)
!6295 = !DILocation(line: 202, column: 38, scope: !6250)
!6296 = !DILocation(line: 202, column: 34, scope: !6250)
!6297 = !DILocation(line: 202, column: 33, scope: !6250)
!6298 = !DILocation(line: 202, column: 3, scope: !6250)
!6299 = !DILocation(line: 202, column: 10, scope: !6250)
!6300 = !DILocation(line: 202, column: 18, scope: !6250)
!6301 = !DILocation(line: 202, column: 21, scope: !6250)
!6302 = !DILocation(line: 202, column: 31, scope: !6250)
!6303 = !DILocation(line: 203, column: 33, scope: !6250)
!6304 = !DILocation(line: 203, column: 3, scope: !6250)
!6305 = !DILocation(line: 203, column: 10, scope: !6250)
!6306 = !DILocation(line: 203, column: 18, scope: !6250)
!6307 = !DILocation(line: 203, column: 21, scope: !6250)
!6308 = !DILocation(line: 203, column: 31, scope: !6250)
!6309 = !DILocation(line: 204, column: 13, scope: !6250)
!6310 = !DILocation(line: 204, column: 3, scope: !6250)
!6311 = !DILocation(line: 204, column: 6, scope: !6250)
!6312 = !DILocation(line: 204, column: 11, scope: !6250)
!6313 = !DILocation(line: 205, column: 2, scope: !6251)
!6314 = !DILocation(line: 205, column: 2, scope: !6250)
!6315 = !DILocation(line: 183, column: 31, scope: !6251)
!6316 = !DILocation(line: 183, column: 2, scope: !6251)
!6317 = distinct !{!6317, !6269, !6318, !5081, !5082}
!6318 = !DILocation(line: 205, column: 2, scope: !6252)
!6319 = !DILocation(line: 206, column: 9, scope: !6241)
!6320 = !DILocation(line: 207, column: 1, scope: !6241)
!6321 = !DILocation(line: 206, column: 2, scope: !6241)
!6322 = !DISubprogram(name: "devres_open_group", scope: !70, file: !70, line: 299, type: !6323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!139, !169, !139, !140}
!6325 = !DISubprogram(name: "devres_release_group", scope: !70, file: !70, line: 302, type: !4444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6326 = !DISubprogram(name: "_dev_info", scope: !6327, file: !6327, line: 56, type: !6328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6327 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6328 = !DISubroutineType(types: !6329)
!6329 = !{null, !3968, !177, null}
!6330 = !DISubprogram(name: "devres_close_group", scope: !70, file: !70, line: 300, type: !4452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6331 = distinct !DISubprogram(name: "find_component", scope: !3, file: !3, line: 153, type: !6332, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6334)
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!142, !152, !4438}
!6334 = !{!6335, !6336, !6337, !6338, !6341}
!6335 = !DILocalVariable(name: "adev", arg: 1, scope: !6331, file: !3, line: 153, type: !152)
!6336 = !DILocalVariable(name: "mc", arg: 2, scope: !6331, file: !3, line: 154, type: !4438)
!6337 = !DILocalVariable(name: "c", scope: !6331, file: !3, line: 156, type: !142)
!6338 = !DILocalVariable(name: "__mptr", scope: !6339, file: !3, line: 158, type: !139)
!6339 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 158, column: 2)
!6340 = distinct !DILexicalBlock(scope: !6331, file: !3, line: 158, column: 2)
!6341 = !DILocalVariable(name: "__mptr", scope: !6342, file: !3, line: 158, type: !139)
!6342 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 158, column: 2)
!6343 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 158, column: 2)
!6344 = !DILocation(line: 153, column: 66, scope: !6331)
!6345 = !DILocation(line: 154, column: 32, scope: !6331)
!6346 = !DILocation(line: 156, column: 2, scope: !6331)
!6347 = !DILocation(line: 156, column: 20, scope: !6331)
!6348 = !DILocation(line: 158, column: 2, scope: !6339)
!6349 = !DILocation(line: 158, column: 2, scope: !6340)
!6350 = !DILocation(line: 158, column: 2, scope: !6343)
!6351 = !DILocation(line: 159, column: 7, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 159, column: 7)
!6353 = distinct !DILexicalBlock(scope: !6343, file: !3, line: 158, column: 48)
!6354 = !DILocation(line: 159, column: 10, scope: !6352)
!6355 = !DILocation(line: 159, column: 15, scope: !6352)
!6356 = !DILocation(line: 159, column: 18, scope: !6352)
!6357 = !DILocation(line: 159, column: 21, scope: !6352)
!6358 = !DILocation(line: 159, column: 29, scope: !6352)
!6359 = !DILocation(line: 159, column: 26, scope: !6352)
!6360 = !DILocation(line: 159, column: 7, scope: !6353)
!6361 = !DILocation(line: 160, column: 4, scope: !6352)
!6362 = !DILocation(line: 162, column: 7, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 162, column: 7)
!6364 = !DILocation(line: 162, column: 11, scope: !6363)
!6365 = !DILocation(line: 162, column: 19, scope: !6363)
!6366 = !DILocation(line: 162, column: 22, scope: !6363)
!6367 = !DILocation(line: 162, column: 26, scope: !6363)
!6368 = !DILocation(line: 162, column: 34, scope: !6363)
!6369 = !DILocation(line: 162, column: 37, scope: !6363)
!6370 = !DILocation(line: 162, column: 42, scope: !6363)
!6371 = !DILocation(line: 162, column: 46, scope: !6363)
!6372 = !DILocation(line: 162, column: 7, scope: !6353)
!6373 = !DILocation(line: 163, column: 11, scope: !6363)
!6374 = !DILocation(line: 163, column: 4, scope: !6363)
!6375 = !DILocation(line: 165, column: 7, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 165, column: 7)
!6377 = !DILocation(line: 165, column: 11, scope: !6376)
!6378 = !DILocation(line: 165, column: 25, scope: !6376)
!6379 = !DILocation(line: 166, column: 7, scope: !6376)
!6380 = !DILocation(line: 166, column: 11, scope: !6376)
!6381 = !DILocation(line: 166, column: 25, scope: !6376)
!6382 = !DILocation(line: 166, column: 28, scope: !6376)
!6383 = !DILocation(line: 166, column: 33, scope: !6376)
!6384 = !DILocation(line: 166, column: 36, scope: !6376)
!6385 = !DILocation(line: 166, column: 50, scope: !6376)
!6386 = !DILocation(line: 166, column: 54, scope: !6376)
!6387 = !DILocation(line: 165, column: 7, scope: !6353)
!6388 = !DILocation(line: 167, column: 11, scope: !6376)
!6389 = !DILocation(line: 167, column: 4, scope: !6376)
!6390 = !DILocation(line: 168, column: 2, scope: !6353)
!6391 = !DILocation(line: 158, column: 2, scope: !6342)
!6392 = distinct !{!6392, !6349, !6393, !5081, !5082}
!6393 = !DILocation(line: 168, column: 2, scope: !6340)
!6394 = !DILocation(line: 170, column: 2, scope: !6331)
!6395 = !DILocation(line: 171, column: 1, scope: !6331)
!6396 = distinct !DISubprogram(name: "component_debugfs_del", scope: !3, file: !3, line: 126, type: !4933, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6397)
!6397 = !{!6398}
!6398 = !DILocalVariable(name: "m", arg: 1, scope: !6396, file: !3, line: 126, type: !152)
!6399 = !DILocation(line: 126, column: 60, scope: !6396)
!6400 = !DILocation(line: 128, column: 37, scope: !6396)
!6401 = !DILocation(line: 128, column: 40, scope: !6396)
!6402 = !DILocation(line: 128, column: 28, scope: !6396)
!6403 = !DILocation(line: 128, column: 49, scope: !6396)
!6404 = !DILocation(line: 128, column: 2, scope: !6396)
!6405 = !DILocation(line: 129, column: 1, scope: !6396)
!6406 = !DISubprogram(name: "debugfs_lookup_and_remove", scope: !5748, file: !5748, line: 100, type: !6407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6407 = !DISubroutineType(types: !6408)
!6408 = !{null, !177, !374}
!6409 = !DISubprogram(name: "devres_remove_group", scope: !70, file: !70, line: 301, type: !4452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6410 = !DISubprogram(name: "_dev_err", scope: !6327, file: !6327, line: 50, type: !6328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6411 = distinct !DISubprogram(name: "list_add_tail", scope: !4950, file: !4950, line: 181, type: !4951, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6412)
!6412 = !{!6413, !6414}
!6413 = !DILocalVariable(name: "new", arg: 1, scope: !6411, file: !4950, line: 181, type: !149)
!6414 = !DILocalVariable(name: "head", arg: 2, scope: !6411, file: !4950, line: 181, type: !149)
!6415 = !DILocation(line: 181, column: 52, scope: !6411)
!6416 = !DILocation(line: 181, column: 75, scope: !6411)
!6417 = !DILocation(line: 183, column: 13, scope: !6411)
!6418 = !DILocation(line: 183, column: 18, scope: !6411)
!6419 = !DILocation(line: 183, column: 24, scope: !6411)
!6420 = !DILocation(line: 183, column: 30, scope: !6411)
!6421 = !DILocation(line: 183, column: 2, scope: !6411)
!6422 = !DILocation(line: 184, column: 1, scope: !6411)
!6423 = distinct !DISubprogram(name: "try_to_bring_up_masters", scope: !3, file: !3, line: 262, type: !6424, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6426)
!6424 = !DISubroutineType(types: !6425)
!6425 = !{!85, !142}
!6426 = !{!6427, !6428, !6429, !6430, !6433}
!6427 = !DILocalVariable(name: "component", arg: 1, scope: !6423, file: !3, line: 262, type: !142)
!6428 = !DILocalVariable(name: "adev", scope: !6423, file: !3, line: 264, type: !152)
!6429 = !DILocalVariable(name: "ret", scope: !6423, file: !3, line: 265, type: !85)
!6430 = !DILocalVariable(name: "__mptr", scope: !6431, file: !3, line: 267, type: !139)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 267, column: 2)
!6432 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 267, column: 2)
!6433 = !DILocalVariable(name: "__mptr", scope: !6434, file: !3, line: 267, type: !139)
!6434 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 267, column: 2)
!6435 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 267, column: 2)
!6436 = !DILocation(line: 262, column: 54, scope: !6423)
!6437 = !DILocation(line: 264, column: 2, scope: !6423)
!6438 = !DILocation(line: 264, column: 27, scope: !6423)
!6439 = !DILocation(line: 265, column: 2, scope: !6423)
!6440 = !DILocation(line: 265, column: 6, scope: !6423)
!6441 = !DILocation(line: 267, column: 2, scope: !6431)
!6442 = !DILocation(line: 267, column: 2, scope: !6432)
!6443 = !DILocation(line: 267, column: 2, scope: !6435)
!6444 = !DILocation(line: 268, column: 8, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 268, column: 7)
!6446 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 267, column: 54)
!6447 = !DILocation(line: 268, column: 14, scope: !6445)
!6448 = !DILocation(line: 268, column: 7, scope: !6446)
!6449 = !DILocation(line: 269, column: 43, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6445, file: !3, line: 268, column: 21)
!6451 = !DILocation(line: 269, column: 49, scope: !6450)
!6452 = !DILocation(line: 269, column: 10, scope: !6450)
!6453 = !DILocation(line: 269, column: 8, scope: !6450)
!6454 = !DILocation(line: 270, column: 8, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6450, file: !3, line: 270, column: 8)
!6456 = !DILocation(line: 270, column: 12, scope: !6455)
!6457 = !DILocation(line: 270, column: 8, scope: !6450)
!6458 = !DILocation(line: 271, column: 5, scope: !6455)
!6459 = !DILocation(line: 272, column: 3, scope: !6450)
!6460 = !DILocation(line: 273, column: 2, scope: !6446)
!6461 = !DILocation(line: 267, column: 2, scope: !6434)
!6462 = distinct !{!6462, !6442, !6463, !5081, !5082}
!6463 = !DILocation(line: 273, column: 2, scope: !6432)
!6464 = !DILocation(line: 275, column: 9, scope: !6423)
!6465 = !DILocation(line: 276, column: 1, scope: !6423)
!6466 = !DILocation(line: 275, column: 2, scope: !6423)
!6467 = distinct !DISubprogram(name: "__list_del_entry", scope: !4950, file: !4950, line: 213, type: !5689, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6468)
!6468 = !{!6469}
!6469 = !DILocalVariable(name: "entry", arg: 1, scope: !6467, file: !4950, line: 213, type: !149)
!6470 = !DILocation(line: 213, column: 55, scope: !6467)
!6471 = !DILocation(line: 215, column: 30, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6467, file: !4950, line: 215, column: 6)
!6473 = !DILocation(line: 215, column: 7, scope: !6472)
!6474 = !DILocation(line: 215, column: 6, scope: !6467)
!6475 = !DILocation(line: 216, column: 3, scope: !6472)
!6476 = !DILocation(line: 218, column: 13, scope: !6467)
!6477 = !DILocation(line: 218, column: 20, scope: !6467)
!6478 = !DILocation(line: 218, column: 26, scope: !6467)
!6479 = !DILocation(line: 218, column: 33, scope: !6467)
!6480 = !DILocation(line: 218, column: 2, scope: !6467)
!6481 = !DILocation(line: 219, column: 1, scope: !6467)
!6482 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4950, file: !4950, line: 134, type: !6483, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6485)
!6483 = !DISubroutineType(types: !6484)
!6484 = !{!157, !149}
!6485 = !{!6486}
!6486 = !DILocalVariable(name: "entry", arg: 1, scope: !6482, file: !4950, line: 134, type: !149)
!6487 = !DILocation(line: 134, column: 61, scope: !6482)
!6488 = !DILocation(line: 136, column: 2, scope: !6482)
!6489 = distinct !DISubprogram(name: "__list_del", scope: !4950, file: !4950, line: 193, type: !4951, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6490)
!6490 = !{!6491, !6492}
!6491 = !DILocalVariable(name: "prev", arg: 1, scope: !6489, file: !4950, line: 193, type: !149)
!6492 = !DILocalVariable(name: "next", arg: 2, scope: !6489, file: !4950, line: 193, type: !149)
!6493 = !DILocation(line: 193, column: 50, scope: !6489)
!6494 = !DILocation(line: 193, column: 75, scope: !6489)
!6495 = !DILocation(line: 195, column: 15, scope: !6489)
!6496 = !DILocation(line: 195, column: 2, scope: !6489)
!6497 = !DILocation(line: 195, column: 8, scope: !6489)
!6498 = !DILocation(line: 195, column: 13, scope: !6489)
!6499 = !DILocation(line: 196, column: 2, scope: !6489)
!6500 = !DILocation(line: 196, column: 2, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6489, file: !4950, line: 196, column: 2)
!6502 = !DILocation(line: 196, column: 2, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !6501, file: !4950, line: 196, column: 2)
!6504 = !DILocation(line: 196, column: 2, scope: !6505)
!6505 = distinct !DILexicalBlock(scope: !6501, file: !4950, line: 196, column: 2)
!6506 = !DILocation(line: 197, column: 1, scope: !6489)
