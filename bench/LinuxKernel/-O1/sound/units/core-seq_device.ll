; ModuleID = 'sound/core/seq_device.c'
source_filename = "sound/core/seq_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_autoload_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_autoload_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_autoload_exit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_autoload_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_device_load_drivers: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_device_load_drivers ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_device_new: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_device_new ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___snd_seq_driver_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __snd_seq_driver_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_seq_driver_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_seq_driver_unregister ; .previous"
module asm ".section\09\22.initcall4.init..kmod_snd_seq_device__279_309_alsa_seq_device_init\22, \22a\22\09\09"
module asm "__initcall__kmod_snd_seq_device__279_309_alsa_seq_device_init4:\09\09\09"
module asm ".long\09__initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.snd_seq_device = type { ptr, i32, ptr, [80 x i8], i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_seq_driver = type { %struct.device_driver, ptr, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i64, i16, %union.anon.15, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.15 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_info_buffer = type { ptr, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author269 = internal constant [51 x i8] c"snd_seq_device.author=Takashi Iwai <tiwai@suse.de>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description270 = internal constant [60 x i8] c"snd_seq_device.description=ALSA sequencer device management\00", section ".modinfo", align 1, !dbg !4491
@__UNIQUE_ID_file271 = internal constant [46 x i8] c"snd_seq_device.file=sound/core/snd-seq-device\00", section ".modinfo", align 1, !dbg !4496
@__UNIQUE_ID_license272 = internal constant [27 x i8] c"snd_seq_device.license=GPL\00", section ".modinfo", align 1, !dbg !4501
@snd_seq_in_init = internal global %struct.atomic_t { i32 1 }, align 4, !dbg !4572
@__UNIQUE_ID___addressable_snd_seq_autoload_init273 = internal global ptr @snd_seq_autoload_init, section ".discard.addressable", align 8, !dbg !4506
@__UNIQUE_ID___addressable_snd_seq_autoload_exit274 = internal global ptr @snd_seq_autoload_exit, section ".discard.addressable", align 8, !dbg !4508
@autoload_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @autoload_work, i64 8), ptr getelementptr (i8, ptr @autoload_work, i64 8) }, ptr @autoload_drivers }, align 8, !dbg !4574
@__UNIQUE_ID___addressable_snd_seq_device_load_drivers275 = internal global ptr @snd_seq_device_load_drivers, section ".discard.addressable", align 8, !dbg !4510
@snd_seq_device_new.dops = internal constant %struct.snd_device_ops { ptr @snd_seq_device_dev_free, ptr @snd_seq_device_dev_register, ptr @snd_seq_device_dev_disconnect }, align 8, !dbg !4512
@snd_seq_bus_type = internal global %struct.bus_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr @snd_seq_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8, !dbg !4586
@.str = private unnamed_addr constant [9 x i8] c"%s-%d-%d\00", align 1, !dbg !4548
@__UNIQUE_ID___addressable_snd_seq_device_new276 = internal global ptr @snd_seq_device_new, section ".discard.addressable", align 8, !dbg !4553
@.str.1 = private unnamed_addr constant [24 x i8] c"sound/core/seq_device.c\00", align 1, !dbg !4555
@__UNIQUE_ID___addressable___snd_seq_driver_register277 = internal global ptr @__snd_seq_driver_register, section ".discard.addressable", align 8, !dbg !4560
@__UNIQUE_ID___addressable_snd_seq_driver_unregister278 = internal global ptr @snd_seq_driver_unregister, section ".discard.addressable", align 8, !dbg !4562
@info_entry = internal global ptr null, align 8, !dbg !4570
@__UNIQUE_ID___addressable___initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4280 = internal global ptr @__initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4, section ".discard.addressable", align 8, !dbg !4564
@__exitcall_alsa_seq_device_exit = internal global ptr @alsa_seq_device_exit, section ".exitcall.exit", align 8, !dbg !4566
@system_wq = external dso_local global ptr, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"snd-%s\00", align 1, !dbg !4576
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4579
@.str.4 = private unnamed_addr constant [8 x i8] c"snd_seq\00", align 1, !dbg !4584
@.str.5 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1, !dbg !4588
@snd_seq_root = external dso_local global ptr, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"snd-%s,%s,%d\0A\00", align 1, !dbg !4590
@.str.7 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1, !dbg !4595
@.str.8 = private unnamed_addr constant [6 x i8] c"empty\00", align 1, !dbg !4597
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author269, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file271, ptr @__UNIQUE_ID_license272, ptr @__UNIQUE_ID___addressable_snd_seq_autoload_init273, ptr @__UNIQUE_ID___addressable_snd_seq_autoload_exit274, ptr @__UNIQUE_ID___addressable_snd_seq_device_load_drivers275, ptr @__UNIQUE_ID___addressable_snd_seq_device_new276, ptr @__UNIQUE_ID___addressable___snd_seq_driver_register277, ptr @__UNIQUE_ID___addressable_snd_seq_driver_unregister278, ptr @alsa_seq_device_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4280, ptr @__exitcall_alsa_seq_device_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_autoload_init() #0 align 16 !dbg !4611 {
entry:
  call void @atomic_dec(ptr noundef @snd_seq_in_init) #14, !dbg !4612
  ret void, !dbg !4613
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #1 align 16 !dbg !4614 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4620, metadata !DIExpression()), !dbg !4621
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4622
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4623
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4624
  call void @raw_atomic_dec(ptr noundef %1) #14, !dbg !4625
  ret void, !dbg !4626
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_autoload_exit() #0 align 16 !dbg !4627 {
entry:
  call void @atomic_inc(ptr noundef @snd_seq_in_init) #14, !dbg !4628
  ret void, !dbg !4629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #1 align 16 !dbg !4630 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4632, metadata !DIExpression()), !dbg !4633
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4634
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !4635
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4636
  call void @raw_atomic_inc(ptr noundef %1) #14, !dbg !4637
  ret void, !dbg !4638
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_device_load_drivers() #0 align 16 !dbg !4639 {
entry:
  call void @queue_autoload_drivers() #14, !dbg !4640
  %call = call zeroext i1 @flush_work(ptr noundef @autoload_work) #14, !dbg !4641
  ret void, !dbg !4642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queue_autoload_drivers() #0 align 16 !dbg !4643 {
entry:
  %call = call zeroext i1 @schedule_work(ptr noundef @autoload_work) #14, !dbg !4644
  ret void, !dbg !4645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4646 dso_local zeroext i1 @flush_work(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_seq_device_new(ptr noundef %card, i32 noundef %device, ptr noundef %id, i32 noundef %argsize, ptr noundef %result) #0 align 16 !dbg !4514 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %device.addr = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %argsize.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4519, metadata !DIExpression()), !dbg !4649
  store i32 %device, ptr %device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4520, metadata !DIExpression()), !dbg !4650
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4521, metadata !DIExpression()), !dbg !4651
  store i32 %argsize, ptr %argsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %argsize.addr, metadata !4522, metadata !DIExpression()), !dbg !4652
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !4523, metadata !DIExpression()), !dbg !4653
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4654
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4524, metadata !DIExpression()), !dbg !4655
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4656
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4525, metadata !DIExpression()), !dbg !4657
  %0 = load ptr, ptr %result.addr, align 8, !dbg !4658
  %tobool = icmp ne ptr %0, null, !dbg !4658
  br i1 %tobool, label %if.then, label %if.end, !dbg !4660

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %result.addr, align 8, !dbg !4661
  store ptr null, ptr %1, align 8, !dbg !4662
  br label %if.end, !dbg !4663

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4664
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4526, metadata !DIExpression()), !dbg !4664
  %2 = load ptr, ptr %id.addr, align 8, !dbg !4664
  %tobool1 = icmp ne ptr %2, null, !dbg !4664
  %lnot = xor i1 %tobool1, true, !dbg !4664
  %lnot2 = xor i1 %lnot, true, !dbg !4664
  %lnot3 = xor i1 %lnot2, true, !dbg !4664
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4664
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4664
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4664
  %tobool4 = icmp ne i32 %3, 0, !dbg !4664
  %lnot5 = xor i1 %tobool4, true, !dbg !4664
  %lnot7 = xor i1 %lnot5, true, !dbg !4664
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4664
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4664
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4664
  store i64 %expval, ptr %tmp, align 8, !dbg !4664
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4665
  %4 = load i64, ptr %tmp, align 8, !dbg !4664
  %tobool9 = icmp ne i64 %4, 0, !dbg !4665
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4666

if.then10:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4667

if.end11:                                         ; preds = %if.end
  %5 = load i32, ptr %argsize.addr, align 4, !dbg !4668
  %conv12 = sext i32 %5 to i64, !dbg !4668
  %add = add i64 864, %conv12, !dbg !4669
  %call = call noalias ptr @kzalloc(i64 noundef %add, i32 noundef 3264) #16, !dbg !4670
  store ptr %call, ptr %dev, align 8, !dbg !4671
  %6 = load ptr, ptr %dev, align 8, !dbg !4672
  %tobool13 = icmp ne ptr %6, null, !dbg !4672
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4674

if.then14:                                        ; preds = %if.end11
  store i32 -12, ptr %retval, align 4, !dbg !4675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4675

if.end15:                                         ; preds = %if.end11
  %7 = load ptr, ptr %card.addr, align 8, !dbg !4676
  %8 = load ptr, ptr %dev, align 8, !dbg !4677
  %card16 = getelementptr inbounds %struct.snd_seq_device, ptr %8, i32 0, i32 0, !dbg !4678
  store ptr %7, ptr %card16, align 8, !dbg !4679
  %9 = load i32, ptr %device.addr, align 4, !dbg !4680
  %10 = load ptr, ptr %dev, align 8, !dbg !4681
  %device17 = getelementptr inbounds %struct.snd_seq_device, ptr %10, i32 0, i32 1, !dbg !4682
  store i32 %9, ptr %device17, align 8, !dbg !4683
  %11 = load ptr, ptr %id.addr, align 8, !dbg !4684
  %12 = load ptr, ptr %dev, align 8, !dbg !4685
  %id18 = getelementptr inbounds %struct.snd_seq_device, ptr %12, i32 0, i32 2, !dbg !4686
  store ptr %11, ptr %id18, align 8, !dbg !4687
  %13 = load i32, ptr %argsize.addr, align 4, !dbg !4688
  %14 = load ptr, ptr %dev, align 8, !dbg !4689
  %argsize19 = getelementptr inbounds %struct.snd_seq_device, ptr %14, i32 0, i32 4, !dbg !4690
  store i32 %13, ptr %argsize19, align 8, !dbg !4691
  %15 = load ptr, ptr %dev, align 8, !dbg !4692
  %dev20 = getelementptr inbounds %struct.snd_seq_device, ptr %15, i32 0, i32 8, !dbg !4693
  call void @device_initialize(ptr noundef %dev20) #14, !dbg !4694
  %16 = load ptr, ptr %card.addr, align 8, !dbg !4695
  %card_dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 31, !dbg !4696
  %17 = load ptr, ptr %dev, align 8, !dbg !4697
  %dev21 = getelementptr inbounds %struct.snd_seq_device, ptr %17, i32 0, i32 8, !dbg !4698
  %parent = getelementptr inbounds %struct.device, ptr %dev21, i32 0, i32 1, !dbg !4699
  store ptr %card_dev, ptr %parent, align 8, !dbg !4700
  %18 = load ptr, ptr %dev, align 8, !dbg !4701
  %dev22 = getelementptr inbounds %struct.snd_seq_device, ptr %18, i32 0, i32 8, !dbg !4702
  %bus = getelementptr inbounds %struct.device, ptr %dev22, i32 0, i32 5, !dbg !4703
  store ptr @snd_seq_bus_type, ptr %bus, align 8, !dbg !4704
  %19 = load ptr, ptr %dev, align 8, !dbg !4705
  %dev23 = getelementptr inbounds %struct.snd_seq_device, ptr %19, i32 0, i32 8, !dbg !4706
  %release = getelementptr inbounds %struct.device, ptr %dev23, i32 0, i32 32, !dbg !4707
  store ptr @snd_seq_dev_release, ptr %release, align 8, !dbg !4708
  %20 = load ptr, ptr %dev, align 8, !dbg !4709
  %dev24 = getelementptr inbounds %struct.snd_seq_device, ptr %20, i32 0, i32 8, !dbg !4710
  %21 = load ptr, ptr %dev, align 8, !dbg !4711
  %id25 = getelementptr inbounds %struct.snd_seq_device, ptr %21, i32 0, i32 2, !dbg !4712
  %22 = load ptr, ptr %id25, align 8, !dbg !4712
  %23 = load ptr, ptr %card.addr, align 8, !dbg !4713
  %number = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 0, !dbg !4714
  %24 = load i32, ptr %number, align 8, !dbg !4714
  %25 = load i32, ptr %device.addr, align 4, !dbg !4715
  %call26 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev24, ptr noundef @.str, ptr noundef %22, i32 noundef %24, i32 noundef %25) #14, !dbg !4716
  %26 = load ptr, ptr %card.addr, align 8, !dbg !4717
  %27 = load ptr, ptr %dev, align 8, !dbg !4718
  %call27 = call i32 @snd_device_new(ptr noundef %26, i32 noundef 8, ptr noundef %27, ptr noundef @snd_seq_device_new.dops) #14, !dbg !4719
  store i32 %call27, ptr %err, align 4, !dbg !4720
  %28 = load i32, ptr %err, align 4, !dbg !4721
  %cmp = icmp slt i32 %28, 0, !dbg !4723
  br i1 %cmp, label %if.then29, label %if.end31, !dbg !4724

if.then29:                                        ; preds = %if.end15
  %29 = load ptr, ptr %dev, align 8, !dbg !4725
  %dev30 = getelementptr inbounds %struct.snd_seq_device, ptr %29, i32 0, i32 8, !dbg !4727
  call void @put_device(ptr noundef %dev30) #14, !dbg !4728
  %30 = load i32, ptr %err, align 4, !dbg !4729
  store i32 %30, ptr %retval, align 4, !dbg !4730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4730

if.end31:                                         ; preds = %if.end15
  %31 = load ptr, ptr %result.addr, align 8, !dbg !4731
  %tobool32 = icmp ne ptr %31, null, !dbg !4731
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4733

if.then33:                                        ; preds = %if.end31
  %32 = load ptr, ptr %dev, align 8, !dbg !4734
  %33 = load ptr, ptr %result.addr, align 8, !dbg !4735
  store ptr %32, ptr %33, align 8, !dbg !4736
  br label %if.end34, !dbg !4737

if.end34:                                         ; preds = %if.then33, %if.end31
  store i32 0, ptr %retval, align 4, !dbg !4738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4738

cleanup:                                          ; preds = %if.end34, %if.then29, %if.then14, %if.then10
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4739
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4739
  %34 = load i32, ptr %retval, align 4, !dbg !4739
  ret i32 %34, !dbg !4739
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_device_dev_free(ptr noundef %device) #0 align 16 !dbg !4740 {
entry:
  %device.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4742, metadata !DIExpression()), !dbg !4744
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4745
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4743, metadata !DIExpression()), !dbg !4746
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4747
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !4748
  %1 = load ptr, ptr %device_data, align 8, !dbg !4748
  store ptr %1, ptr %dev, align 8, !dbg !4746
  call void @cancel_autoload_drivers() #14, !dbg !4749
  %2 = load ptr, ptr %dev, align 8, !dbg !4750
  %private_free = getelementptr inbounds %struct.snd_seq_device, ptr %2, i32 0, i32 7, !dbg !4752
  %3 = load ptr, ptr %private_free, align 8, !dbg !4752
  %tobool = icmp ne ptr %3, null, !dbg !4750
  br i1 %tobool, label %if.then, label %if.end, !dbg !4753

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !4754
  %private_free1 = getelementptr inbounds %struct.snd_seq_device, ptr %4, i32 0, i32 7, !dbg !4755
  %5 = load ptr, ptr %private_free1, align 8, !dbg !4755
  %6 = load ptr, ptr %dev, align 8, !dbg !4756
  call void %5(ptr noundef %6) #14, !dbg !4754
  br label %if.end, !dbg !4754

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !4757
  %dev2 = getelementptr inbounds %struct.snd_seq_device, ptr %7, i32 0, i32 8, !dbg !4758
  call void @put_device(ptr noundef %dev2) #14, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4760
  ret i32 0, !dbg !4761
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_device_dev_register(ptr noundef %device) #0 align 16 !dbg !4762 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4764, metadata !DIExpression()), !dbg !4767
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4768
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4765, metadata !DIExpression()), !dbg !4769
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4770
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !4771
  %1 = load ptr, ptr %device_data, align 8, !dbg !4771
  store ptr %1, ptr %dev, align 8, !dbg !4769
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4766, metadata !DIExpression()), !dbg !4773
  %2 = load ptr, ptr %dev, align 8, !dbg !4774
  %dev1 = getelementptr inbounds %struct.snd_seq_device, ptr %2, i32 0, i32 8, !dbg !4775
  %call = call i32 @device_add(ptr noundef %dev1) #14, !dbg !4776
  store i32 %call, ptr %err, align 4, !dbg !4777
  %3 = load i32, ptr %err, align 4, !dbg !4778
  %cmp = icmp slt i32 %3, 0, !dbg !4780
  br i1 %cmp, label %if.then, label %if.end, !dbg !4781

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %err, align 4, !dbg !4782
  store i32 %4, ptr %retval, align 4, !dbg !4783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4783

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !4784
  %dev2 = getelementptr inbounds %struct.snd_seq_device, ptr %5, i32 0, i32 8, !dbg !4786
  %driver = getelementptr inbounds %struct.device, ptr %dev2, i32 0, i32 6, !dbg !4787
  %6 = load ptr, ptr %driver, align 8, !dbg !4787
  %tobool = icmp ne ptr %6, null, !dbg !4784
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4788

if.then3:                                         ; preds = %if.end
  call void @queue_autoload_drivers() #14, !dbg !4789
  br label %if.end4, !dbg !4789

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !4790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4790

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4791
  %7 = load i32, ptr %retval, align 4, !dbg !4791
  ret i32 %7, !dbg !4791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_device_dev_disconnect(ptr noundef %device) #0 align 16 !dbg !4792 {
entry:
  %device.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4794, metadata !DIExpression()), !dbg !4796
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !4797
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4795, metadata !DIExpression()), !dbg !4798
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4799
  %device_data = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4, !dbg !4800
  %1 = load ptr, ptr %device_data, align 8, !dbg !4800
  store ptr %1, ptr %dev, align 8, !dbg !4798
  %2 = load ptr, ptr %dev, align 8, !dbg !4801
  %dev1 = getelementptr inbounds %struct.snd_seq_device, ptr %2, i32 0, i32 8, !dbg !4802
  call void @device_del(ptr noundef %dev1) #14, !dbg !4803
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !4804
  ret i32 0, !dbg !4805
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !4806 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4810, metadata !DIExpression()), !dbg !4812
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4811, metadata !DIExpression()), !dbg !4813
  %0 = load i64, ptr %size.addr, align 8, !dbg !4814
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4815
  %or = or i32 %1, 256, !dbg !4816
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4817
  ret ptr %call, !dbg !4818
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4819 dso_local void @device_initialize(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_dev_release(ptr noundef %dev) #0 align 16 !dbg !4820 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4822, metadata !DIExpression()), !dbg !4825
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4823, metadata !DIExpression()), !dbg !4826
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4826
  store ptr %0, ptr %__mptr, align 8, !dbg !4826
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4826
  %add.ptr = getelementptr i8, ptr %1, i64 -136, !dbg !4826
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4826
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !4827
  %2 = load ptr, ptr %tmp, align 8, !dbg !4826
  call void @kfree(ptr noundef %2) #14, !dbg !4828
  ret void, !dbg !4829
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4830 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4833 dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4836 dso_local void @put_device(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__snd_seq_driver_register(ptr noundef %drv, ptr noundef %mod) #0 align 16 !dbg !4837 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %mod.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4841, metadata !DIExpression()), !dbg !4849
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !4842, metadata !DIExpression()), !dbg !4850
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4851
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4843, metadata !DIExpression()), !dbg !4851
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4851
  %driver = getelementptr inbounds %struct.snd_seq_driver, ptr %0, i32 0, i32 0, !dbg !4851
  %name = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 0, !dbg !4851
  %1 = load ptr, ptr %name, align 8, !dbg !4851
  %tobool = icmp ne ptr %1, null, !dbg !4851
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4851

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !4851
  %id = getelementptr inbounds %struct.snd_seq_driver, ptr %2, i32 0, i32 1, !dbg !4851
  %3 = load ptr, ptr %id, align 8, !dbg !4851
  %tobool1 = icmp ne ptr %3, null, !dbg !4851
  %lnot = xor i1 %tobool1, true, !dbg !4851
  br label %lor.end, !dbg !4851

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %4, true, !dbg !4851
  %lnot3 = xor i1 %lnot2, true, !dbg !4851
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4851
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4851
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4852
  %tobool4 = icmp ne i32 %5, 0, !dbg !4852
  %lnot5 = xor i1 %tobool4, true, !dbg !4852
  %lnot7 = xor i1 %lnot5, true, !dbg !4852
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4852
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4852
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4852
  %tobool9 = icmp ne i64 %expval, 0, !dbg !4852
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4851

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4852

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !4853
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4846, metadata !DIExpression()), !dbg !4853
  store i32 2305, ptr %__flags, align 4, !dbg !4853
  br label %do.body10, !dbg !4853

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !4854

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !4854

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !4853

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !4856
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 250, i32 %6, i64 12) #15, !dbg !4856, !srcloc !4858
  br label %do.cond12, !dbg !4856

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4856

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4853

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !4859

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4859

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !4852
  br label %do.cond17, !dbg !4853

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4853

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !4853

if.end:                                           ; preds = %do.end18, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4851
  %tobool19 = icmp ne i32 %7, 0, !dbg !4851
  %lnot20 = xor i1 %tobool19, true, !dbg !4851
  %lnot22 = xor i1 %lnot20, true, !dbg !4851
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4851
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4851
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4851
  store i64 %expval25, ptr %tmp, align 8, !dbg !4852
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4861
  %8 = load i64, ptr %tmp, align 8, !dbg !4851
  %tobool26 = icmp ne i64 %8, 0, !dbg !4861
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4862

if.then27:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4863
  br label %return, !dbg !4863

if.end28:                                         ; preds = %if.end
  %9 = load ptr, ptr %drv.addr, align 8, !dbg !4864
  %driver29 = getelementptr inbounds %struct.snd_seq_driver, ptr %9, i32 0, i32 0, !dbg !4865
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver29, i32 0, i32 1, !dbg !4866
  store ptr @snd_seq_bus_type, ptr %bus, align 8, !dbg !4867
  %10 = load ptr, ptr %mod.addr, align 8, !dbg !4868
  %11 = load ptr, ptr %drv.addr, align 8, !dbg !4869
  %driver30 = getelementptr inbounds %struct.snd_seq_driver, ptr %11, i32 0, i32 0, !dbg !4870
  %owner = getelementptr inbounds %struct.device_driver, ptr %driver30, i32 0, i32 2, !dbg !4871
  store ptr %10, ptr %owner, align 8, !dbg !4872
  %12 = load ptr, ptr %drv.addr, align 8, !dbg !4873
  %driver31 = getelementptr inbounds %struct.snd_seq_driver, ptr %12, i32 0, i32 0, !dbg !4874
  %call = call i32 @driver_register(ptr noundef %driver31) #14, !dbg !4875
  store i32 %call, ptr %retval, align 4, !dbg !4876
  br label %return, !dbg !4876

return:                                           ; preds = %if.end28, %if.then27
  %13 = load i32, ptr %retval, align 4, !dbg !4877
  ret i32 %13, !dbg !4877
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4878 dso_local i32 @driver_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @snd_seq_driver_unregister(ptr noundef %drv) #0 align 16 !dbg !4881 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4887
  %driver = getelementptr inbounds %struct.snd_seq_driver, ptr %0, i32 0, i32 0, !dbg !4888
  call void @driver_unregister(ptr noundef %driver) #14, !dbg !4889
  ret void, !dbg !4890
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4891 dso_local void @driver_unregister(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @alsa_seq_device_exit() #7 section ".exit.text" align 16 !dbg !4894 {
entry:
  %call = call zeroext i1 @cancel_work_sync(ptr noundef @autoload_work) #14, !dbg !4895
  %0 = load ptr, ptr @info_entry, align 8, !dbg !4896
  call void @snd_info_free_entry(ptr noundef %0) #14, !dbg !4897
  call void @bus_unregister(ptr noundef @snd_seq_bus_type) #14, !dbg !4898
  ret void, !dbg !4899
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4900 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4901 dso_local void @snd_info_free_entry(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4902 dso_local void @bus_unregister(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4() #7 section ".init.text" align 16 !dbg !4905 {
entry:
  %call = call i32 @alsa_seq_device_init() #17, !dbg !4906
  ret i32 %call, !dbg !4906
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @alsa_seq_device_init() #7 section ".init.text" align 16 !dbg !4907 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4910
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4909, metadata !DIExpression()), !dbg !4911
  %call = call i32 @bus_register(ptr noundef @snd_seq_bus_type) #14, !dbg !4912
  store i32 %call, ptr %err, align 4, !dbg !4913
  %0 = load i32, ptr %err, align 4, !dbg !4914
  %cmp = icmp slt i32 %0, 0, !dbg !4916
  br i1 %cmp, label %if.then, label %if.end, !dbg !4917

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %err, align 4, !dbg !4918
  store i32 %1, ptr %retval, align 4, !dbg !4919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4919

if.end:                                           ; preds = %entry
  %call1 = call i32 @seq_dev_proc_init() #17, !dbg !4920
  store i32 %call1, ptr %err, align 4, !dbg !4921
  %2 = load i32, ptr %err, align 4, !dbg !4922
  %cmp2 = icmp slt i32 %2, 0, !dbg !4924
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4925

if.then3:                                         ; preds = %if.end
  call void @bus_unregister(ptr noundef @snd_seq_bus_type) #14, !dbg !4926
  br label %if.end4, !dbg !4926

if.end4:                                          ; preds = %if.then3, %if.end
  %3 = load i32, ptr %err, align 4, !dbg !4927
  store i32 %3, ptr %retval, align 4, !dbg !4928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4928

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4929
  %4 = load i32, ptr %retval, align 4, !dbg !4929
  ret i32 %4, !dbg !4929
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !4930 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4938, metadata !DIExpression()), !dbg !4940
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4939, metadata !DIExpression()), !dbg !4941
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4942
  %1 = load i64, ptr %size.addr, align 8, !dbg !4943
  %conv = trunc i64 %1 to i32, !dbg !4943
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4944
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4945
  %3 = load i64, ptr %size.addr, align 8, !dbg !4945
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4945
  ret void, !dbg !4946
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #1 align 16 !dbg !4947 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4950, metadata !DIExpression()), !dbg !4951
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4952
  call void @arch_atomic_dec(ptr noundef %0) #14, !dbg !4953
  ret void, !dbg !4954
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #8 align 16 !dbg !4955 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4960, metadata !DIExpression()), !dbg !4962
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4961, metadata !DIExpression()), !dbg !4963
  ret i1 true, !dbg !4964
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #8 align 16 !dbg !4965 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4970, metadata !DIExpression()), !dbg !4973
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4971, metadata !DIExpression()), !dbg !4974
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4972, metadata !DIExpression()), !dbg !4975
  ret void, !dbg !4976
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #1 align 16 !dbg !4977 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4980, metadata !DIExpression()), !dbg !4981
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4982
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4983
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !4984, !srcloc !4985
  ret void, !dbg !4986
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #1 align 16 !dbg !4987 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4991
  call void @arch_atomic_inc(ptr noundef %0) #14, !dbg !4992
  ret void, !dbg !4993
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #1 align 16 !dbg !4994 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4996, metadata !DIExpression()), !dbg !4997
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4998
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4999
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #15, !dbg !5000, !srcloc !5001
  ret void, !dbg !5002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #8 align 16 !dbg !5003 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5005, metadata !DIExpression()), !dbg !5006
  %0 = load ptr, ptr @system_wq, align 8, !dbg !5007
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5008
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #14, !dbg !5009
  ret i1 %call, !dbg !5010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #8 align 16 !dbg !5011 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5015, metadata !DIExpression()), !dbg !5017
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5016, metadata !DIExpression()), !dbg !5018
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5019
  %1 = load ptr, ptr %work.addr, align 8, !dbg !5020
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #14, !dbg !5021
  ret i1 %call, !dbg !5022
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5023 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @autoload_drivers(ptr noundef %work) #0 align 16 !dbg !5026 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  %call = call i32 @atomic_inc_return(ptr noundef @snd_seq_in_init) #14, !dbg !5030
  %cmp = icmp eq i32 %call, 1, !dbg !5032
  br i1 %cmp, label %if.then, label %if.end, !dbg !5033

if.then:                                          ; preds = %entry
  %call1 = call i32 @bus_for_each_dev(ptr noundef @snd_seq_bus_type, ptr noundef null, ptr noundef null, ptr noundef @request_seq_drv) #14, !dbg !5034
  br label %if.end, !dbg !5034

if.end:                                           ; preds = %if.then, %entry
  call void @atomic_dec(ptr noundef @snd_seq_in_init) #14, !dbg !5035
  ret void, !dbg !5036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #1 align 16 !dbg !5037 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  br label %do.body, !dbg !5043

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5044

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5046
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #14, !dbg !5047
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5048
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #14, !dbg !5049
  ret i32 %call, !dbg !5050
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5051 dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @request_seq_drv(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !5057 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5059, metadata !DIExpression()), !dbg !5064
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5060, metadata !DIExpression()), !dbg !5065
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdev) #15, !dbg !5066
  call void @llvm.dbg.declare(metadata ptr %sdev, metadata !5061, metadata !DIExpression()), !dbg !5067
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5068
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5062, metadata !DIExpression()), !dbg !5068
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5068
  store ptr %0, ptr %__mptr, align 8, !dbg !5068
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5068
  %add.ptr = getelementptr i8, ptr %1, i64 -136, !dbg !5068
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5068
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5069
  %2 = load ptr, ptr %tmp, align 8, !dbg !5068
  store ptr %2, ptr %sdev, align 8, !dbg !5067
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5070
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !5072
  %4 = load ptr, ptr %driver, align 8, !dbg !5072
  %tobool = icmp ne ptr %4, null, !dbg !5070
  br i1 %tobool, label %if.end, label %if.then, !dbg !5073

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sdev, align 8, !dbg !5074
  %id = getelementptr inbounds %struct.snd_seq_device, ptr %5, i32 0, i32 2, !dbg !5074
  %6 = load ptr, ptr %id, align 8, !dbg !5074
  %call = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.2, ptr noundef %6) #14, !dbg !5074
  br label %if.end, !dbg !5074

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdev) #15, !dbg !5075
  ret i32 0, !dbg !5076
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #1 align 16 !dbg !5077 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5081
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #14, !dbg !5082
  ret i32 %call, !dbg !5083
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !5084 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5088, metadata !DIExpression()), !dbg !5090
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5089, metadata !DIExpression()), !dbg !5091
  %0 = load i32, ptr %i.addr, align 4, !dbg !5092
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5093
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #14, !dbg !5094
  ret i32 %call, !dbg !5095
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !5096 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5098, metadata !DIExpression()), !dbg !5102
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5099, metadata !DIExpression()), !dbg !5103
  %0 = load i32, ptr %i.addr, align 4, !dbg !5104
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5100, metadata !DIExpression()), !dbg !5105
  %1 = load i32, ptr %i.addr, align 4, !dbg !5105
  store i32 %1, ptr %__ret, align 4, !dbg !5105
  %2 = load i32, ptr %__ret, align 4, !dbg !5105
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5105
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !5105
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #15, !dbg !5105, !srcloc !5106
  store i32 %4, ptr %__ret, align 4, !dbg !5105
  %5 = load i32, ptr %__ret, align 4, !dbg !5105
  store i32 %5, ptr %tmp, align 4, !dbg !5105
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5107
  %6 = load i32, ptr %tmp, align 4, !dbg !5105
  %add = add i32 %0, %6, !dbg !5108
  ret i32 %add, !dbg !5109
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5110 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cancel_autoload_drivers() #8 align 16 !dbg !5114 {
entry:
  %call = call zeroext i1 @cancel_work_sync(ptr noundef @autoload_work) #14, !dbg !5115
  ret void, !dbg !5116
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5117 dso_local i32 @device_add(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5118 dso_local void @device_del(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5119 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5121, metadata !DIExpression()), !dbg !5126
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5122, metadata !DIExpression()), !dbg !5127
  %0 = load i64, ptr %size.addr, align 8, !dbg !5128
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5129
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5130

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5131
  %tobool = icmp ne i64 %2, 0, !dbg !5131
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5132

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5123, metadata !DIExpression()), !dbg !5134
  %3 = load i64, ptr %size.addr, align 8, !dbg !5135
  %cmp = icmp ugt i64 %3, 8192, !dbg !5137
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5138

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5139
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5140
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5141
  store ptr %call, ptr %retval, align 8, !dbg !5142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5142

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5143
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !5143
  store i32 %call2, ptr %index, align 4, !dbg !5144
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5145
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5146
  %9 = ptrtoint ptr %8 to i64, !dbg !5146
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !5147
  %idxprom = zext i32 %call3 to i64, !dbg !5148
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5148
  %10 = load i32, ptr %index, align 4, !dbg !5149
  %idxprom4 = zext i32 %10 to i64, !dbg !5148
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5148
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5148
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5150
  %13 = load i64, ptr %size.addr, align 8, !dbg !5151
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5152
  store ptr %call6, ptr %retval, align 8, !dbg !5153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5153

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5154
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5155
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5156
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5157
  store ptr %call8, ptr %retval, align 8, !dbg !5158
  br label %return, !dbg !5158

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5159
  ret ptr %16, !dbg !5159
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5160 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #1 align 16 !dbg !5161 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5165, metadata !DIExpression()), !dbg !5167
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5166, metadata !DIExpression()), !dbg !5168
  %0 = load i64, ptr %size.addr, align 8, !dbg !5169
  %tobool = icmp ne i64 %0, 0, !dbg !5169
  br i1 %tobool, label %if.end, label %if.then, !dbg !5171

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5172
  br label %return, !dbg !5172

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5173
  %cmp = icmp ule i64 %1, 8, !dbg !5175
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5176

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5177
  br label %return, !dbg !5177

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5178
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5180
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5181

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5182
  %cmp4 = icmp ule i64 %3, 96, !dbg !5183
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5184

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5185
  br label %return, !dbg !5185

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5186
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5188
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5189

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5190
  %cmp9 = icmp ule i64 %5, 192, !dbg !5191
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5192

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5193
  br label %return, !dbg !5193

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5194
  %cmp12 = icmp ule i64 %6, 8, !dbg !5196
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5197

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5198
  br label %return, !dbg !5198

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5199
  %cmp15 = icmp ule i64 %7, 16, !dbg !5201
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5202

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5204
  %cmp18 = icmp ule i64 %8, 32, !dbg !5206
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5207

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5208
  br label %return, !dbg !5208

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5209
  %cmp21 = icmp ule i64 %9, 64, !dbg !5211
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5212

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5213
  br label %return, !dbg !5213

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5214
  %cmp24 = icmp ule i64 %10, 128, !dbg !5216
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5217

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5218
  br label %return, !dbg !5218

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5219
  %cmp27 = icmp ule i64 %11, 256, !dbg !5221
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5222

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5223
  br label %return, !dbg !5223

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5224
  %cmp30 = icmp ule i64 %12, 512, !dbg !5226
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5227

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5228
  br label %return, !dbg !5228

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5229
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5231
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5232

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5233
  br label %return, !dbg !5233

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5234
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5236
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5237

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5238
  br label %return, !dbg !5238

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5239
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5241
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5242

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5243
  br label %return, !dbg !5243

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5244
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5246
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5247

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5248
  br label %return, !dbg !5248

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5249
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5251
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5252

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5253
  br label %return, !dbg !5253

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5254
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5256
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5257

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5258
  br label %return, !dbg !5258

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5259
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5261
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5262

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5263
  br label %return, !dbg !5263

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5264
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5266
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5267

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5268
  br label %return, !dbg !5268

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5269
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5271
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5272

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5273
  br label %return, !dbg !5273

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5274
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5276
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5277

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5278
  br label %return, !dbg !5278

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5279
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5281
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5282

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5283
  br label %return, !dbg !5283

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5284
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5286
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5287

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5288
  br label %return, !dbg !5288

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5289, !range !5291, !noundef !597
  %tobool69 = trunc i8 %25 to i1, !dbg !5289
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5292

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5293

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_265() #19, !dbg !5294, !srcloc !5297
  unreachable, !dbg !5294

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5298

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5299

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5300

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5302

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5300

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !5304, !srcloc !5306
  br label %do.end75, !dbg !5304

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5300

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5307
  br label %return, !dbg !5307

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5308
  ret i32 %26, !dbg !5308
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5309 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #1 align 16 !dbg !5315 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5319, metadata !DIExpression()), !dbg !5321
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5320, metadata !DIExpression()), !dbg !5322
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5323
  %and = and i32 %0, 17, !dbg !5323
  %cmp = icmp eq i32 %and, 0, !dbg !5323
  %lnot = xor i1 %cmp, true, !dbg !5323
  %lnot1 = xor i1 %lnot, true, !dbg !5323
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5323
  %conv = sext i32 %lnot.ext to i64, !dbg !5323
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5323
  %tobool = icmp ne i64 %expval, 0, !dbg !5323
  br i1 %tobool, label %if.then, label %if.end, !dbg !5325

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5327
  %and2 = and i32 %1, 1, !dbg !5329
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5329
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5330

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5331
  br label %return, !dbg !5331

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5332
  br label %return, !dbg !5332

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5334
  ret i32 %2, !dbg !5334
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5335 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5336 dso_local void @__compiletime_assert_265() #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snd_seq_bus_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !5337 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %sdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %sdrv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5339, metadata !DIExpression()), !dbg !5347
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5340, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdev) #15, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %sdev, metadata !5341, metadata !DIExpression()), !dbg !5350
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5342, metadata !DIExpression()), !dbg !5351
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5351
  store ptr %0, ptr %__mptr, align 8, !dbg !5351
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5351
  %add.ptr = getelementptr i8, ptr %1, i64 -136, !dbg !5351
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5351
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5352
  %2 = load ptr, ptr %tmp, align 8, !dbg !5351
  store ptr %2, ptr %sdev, align 8, !dbg !5350
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdrv) #15, !dbg !5353
  call void @llvm.dbg.declare(metadata ptr %sdrv, metadata !5344, metadata !DIExpression()), !dbg !5354
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !5355
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5345, metadata !DIExpression()), !dbg !5355
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !5355
  store ptr %3, ptr %__mptr1, align 8, !dbg !5355
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !5355
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !5355
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5355
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !5356
  %5 = load ptr, ptr %tmp2, align 8, !dbg !5355
  store ptr %5, ptr %sdrv, align 8, !dbg !5354
  %6 = load ptr, ptr %sdrv, align 8, !dbg !5357
  %id = getelementptr inbounds %struct.snd_seq_driver, ptr %6, i32 0, i32 1, !dbg !5358
  %7 = load ptr, ptr %id, align 8, !dbg !5358
  %8 = load ptr, ptr %sdev, align 8, !dbg !5359
  %id4 = getelementptr inbounds %struct.snd_seq_device, ptr %8, i32 0, i32 2, !dbg !5360
  %9 = load ptr, ptr %id4, align 8, !dbg !5360
  %call = call i32 @strcmp(ptr noundef %7, ptr noundef %9) #14, !dbg !5361
  %cmp = icmp eq i32 %call, 0, !dbg !5362
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5363

land.rhs:                                         ; preds = %entry
  %10 = load ptr, ptr %sdrv, align 8, !dbg !5364
  %argsize = getelementptr inbounds %struct.snd_seq_driver, ptr %10, i32 0, i32 2, !dbg !5365
  %11 = load i32, ptr %argsize, align 8, !dbg !5365
  %12 = load ptr, ptr %sdev, align 8, !dbg !5366
  %argsize5 = getelementptr inbounds %struct.snd_seq_device, ptr %12, i32 0, i32 4, !dbg !5367
  %13 = load i32, ptr %argsize5, align 8, !dbg !5367
  %cmp6 = icmp eq i32 %11, %13, !dbg !5368
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %14 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ], !dbg !5369
  %land.ext = zext i1 %14 to i32, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdrv) #15, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdev) #15, !dbg !5370
  ret i32 %land.ext, !dbg !5371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5372 dso_local i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5376 dso_local void @kfree(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5379 dso_local i32 @bus_register(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @seq_dev_proc_init() #7 section ".init.text" align 16 !dbg !5382 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @snd_seq_root, align 8, !dbg !5383
  %call = call ptr @snd_info_create_module_entry(ptr noundef null, ptr noundef @.str.5, ptr noundef %0) #14, !dbg !5384
  store ptr %call, ptr @info_entry, align 8, !dbg !5385
  %1 = load ptr, ptr @info_entry, align 8, !dbg !5386
  %cmp = icmp eq ptr %1, null, !dbg !5388
  br i1 %cmp, label %if.then, label %if.end, !dbg !5389

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5390
  br label %return, !dbg !5390

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @info_entry, align 8, !dbg !5391
  %content = getelementptr inbounds %struct.snd_info_entry, ptr %2, i32 0, i32 3, !dbg !5392
  store i16 0, ptr %content, align 8, !dbg !5393
  %3 = load ptr, ptr @info_entry, align 8, !dbg !5394
  %c = getelementptr inbounds %struct.snd_info_entry, ptr %3, i32 0, i32 4, !dbg !5395
  %read = getelementptr inbounds %struct.snd_info_entry_text, ptr %c, i32 0, i32 0, !dbg !5396
  store ptr @snd_seq_device_info, ptr %read, align 8, !dbg !5397
  %4 = load ptr, ptr @info_entry, align 8, !dbg !5398
  %call1 = call i32 @snd_info_register(ptr noundef %4) #14, !dbg !5400
  %cmp2 = icmp slt i32 %call1, 0, !dbg !5401
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !5402

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr @info_entry, align 8, !dbg !5403
  call void @snd_info_free_entry(ptr noundef %5) #14, !dbg !5405
  store i32 -12, ptr %retval, align 4, !dbg !5406
  br label %return, !dbg !5406

if.end4:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5407
  br label %return, !dbg !5407

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !5408
  ret i32 %6, !dbg !5408
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5409 dso_local ptr @snd_info_create_module_entry(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_seq_device_info(ptr noundef %entry1, ptr noundef %buffer) #0 align 16 !dbg !5412 {
entry:
  %entry.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5414, metadata !DIExpression()), !dbg !5416
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5415, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5418
  %call = call i32 @bus_for_each_dev(ptr noundef @snd_seq_bus_type, ptr noundef null, ptr noundef %0, ptr noundef @print_dev_info) #14, !dbg !5419
  ret void, !dbg !5420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5421 dso_local i32 @snd_info_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @print_dev_info(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !5424 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %sdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %buffer = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5426, metadata !DIExpression()), !dbg !5432
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5427, metadata !DIExpression()), !dbg !5433
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdev) #15, !dbg !5434
  call void @llvm.dbg.declare(metadata ptr %sdev, metadata !5428, metadata !DIExpression()), !dbg !5435
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5429, metadata !DIExpression()), !dbg !5436
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5436
  store ptr %0, ptr %__mptr, align 8, !dbg !5436
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5436
  %add.ptr = getelementptr i8, ptr %1, i64 -136, !dbg !5436
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5436
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5437
  %2 = load ptr, ptr %tmp, align 8, !dbg !5436
  store ptr %2, ptr %sdev, align 8, !dbg !5435
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer) #15, !dbg !5438
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !5431, metadata !DIExpression()), !dbg !5439
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5440
  store ptr %3, ptr %buffer, align 8, !dbg !5439
  %4 = load ptr, ptr %buffer, align 8, !dbg !5441
  %buffer1 = getelementptr inbounds %struct.snd_info_buffer, ptr %4, i32 0, i32 0, !dbg !5441
  %5 = load ptr, ptr %buffer1, align 8, !dbg !5441
  %6 = load ptr, ptr %sdev, align 8, !dbg !5441
  %id = getelementptr inbounds %struct.snd_seq_device, ptr %6, i32 0, i32 2, !dbg !5441
  %7 = load ptr, ptr %id, align 8, !dbg !5441
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5441
  %driver = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 6, !dbg !5441
  %9 = load ptr, ptr %driver, align 8, !dbg !5441
  %tobool = icmp ne ptr %9, null, !dbg !5441
  %10 = zext i1 %tobool to i64, !dbg !5441
  %cond = select i1 %tobool, ptr @.str.7, ptr @.str.8, !dbg !5441
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5441
  %driver2 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 6, !dbg !5441
  %12 = load ptr, ptr %driver2, align 8, !dbg !5441
  %tobool3 = icmp ne ptr %12, null, !dbg !5441
  %13 = zext i1 %tobool3 to i64, !dbg !5441
  %cond4 = select i1 %tobool3, i32 1, i32 0, !dbg !5441
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef @.str.6, ptr noundef %7, ptr noundef %cond, i32 noundef %cond4) #14, !dbg !5441
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer) #15, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdev) #15, !dbg !5442
  ret i32 0, !dbg !5443
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5444 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609}
!llvm.ident = !{!4610}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author269", scope: !2, file: !3, line: 36, type: !4599, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/core/.seq_device.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/core/snd-seq-device\22 -D KBUILD_BASENAME=\22seq_device\22 -D KBUILD_MODNAME=\22snd_seq_device\22 -D __KBUILD_MODNAME=kmod_snd_seq_device -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/core/seq_device.ll sound/core/seq_device.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !178, globals: !4490, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "sound/core/seq_device.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b96982f8c2892ec5f5f1d79a89c6201")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !123, !137, !142, !168}
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
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_state", file: !118, line: 53, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "SNDRV_DEV_BUILD", value: 0)
!121 = !DIEnumerator(name: "SNDRV_DEV_REGISTERED", value: 1)
!122 = !DIEnumerator(name: "SNDRV_DEV_DISCONNECTED", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "snd_device_type", file: !118, line: 38, baseType: !7, size: 32, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!125 = !DIEnumerator(name: "SNDRV_DEV_LOWLEVEL", value: 0)
!126 = !DIEnumerator(name: "SNDRV_DEV_INFO", value: 1)
!127 = !DIEnumerator(name: "SNDRV_DEV_BUS", value: 2)
!128 = !DIEnumerator(name: "SNDRV_DEV_CODEC", value: 3)
!129 = !DIEnumerator(name: "SNDRV_DEV_PCM", value: 4)
!130 = !DIEnumerator(name: "SNDRV_DEV_COMPRESS", value: 5)
!131 = !DIEnumerator(name: "SNDRV_DEV_RAWMIDI", value: 6)
!132 = !DIEnumerator(name: "SNDRV_DEV_TIMER", value: 7)
!133 = !DIEnumerator(name: "SNDRV_DEV_SEQUENCER", value: 8)
!134 = !DIEnumerator(name: "SNDRV_DEV_HWDEP", value: 9)
!135 = !DIEnumerator(name: "SNDRV_DEV_JACK", value: 10)
!136 = !DIEnumerator(name: "SNDRV_DEV_CONTROL", value: 11)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !138, line: 10, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "false", value: 0)
!141 = !DIEnumerator(name: "true", value: 1)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 30, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167}
!145 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!146 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!147 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!148 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!149 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!150 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!151 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!152 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!153 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!154 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!155 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!156 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!157 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!158 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!159 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!160 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!161 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!162 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!163 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!164 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!165 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!166 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!167 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !169, line: 364, baseType: !7, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!170 = !{!171, !172, !173, !174, !175, !176, !177}
!171 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!172 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!173 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!174 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!176 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!177 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!178 = !{!179, !180, !182, !183, !4484, !213, !666}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !181, line: 154, baseType: !7)
!181 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!182 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_device", file: !185, line: 14, size: 6912, elements: !186)
!185 = !DIFile(filename: "./include/sound/seq_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90b931ced12af1d16be5cb65d51861af")
!186 = !{!187, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4483}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !184, file: !185, line: 16, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !118, line: 80, size: 12288, elements: !190)
!190 = !{!191, !192, !197, !198, !202, !206, !207, !208, !212, !4003, !4004, !4008, !4009, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4450, !4451, !4452, !4455, !4456, !4457, !4458, !4459, !4460, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !189, file: !118, line: 81, baseType: !85, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !189, file: !118, line: 84, baseType: !193, size: 128, offset: 32)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !195)
!194 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !{!196}
!196 = !DISubrange(count: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !189, file: !118, line: 85, baseType: !193, size: 128, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !189, file: !118, line: 86, baseType: !199, size: 256, offset: 288)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !189, file: !118, line: 87, baseType: !203, size: 640, offset: 544)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 640, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 80)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !189, file: !118, line: 88, baseType: !199, size: 256, offset: 1184)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !189, file: !118, line: 89, baseType: !203, size: 640, offset: 1440)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !189, file: !118, line: 90, baseType: !209, size: 1024, offset: 2080)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 1024, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !189, file: !118, line: 92, baseType: !213, size: 64, offset: 3136)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !215)
!215 = !{!216, !217, !223, !227, !3679, !3705, !3706, !3707, !3708, !3712, !3715, !3716, !3717, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3784, !3788, !3806, !3823, !3824, !3825, !3826, !3835, !3858, !3859, !3862, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3876, !3877, !3963, !3971, !3972, !3973, !3975, !3979, !3980, !3984, !3985, !3986, !3987, !3989, !3990, !3991, !3998, !3999, !4000, !4002}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !214, file: !6, line: 403, baseType: !5, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !214, file: !6, line: 406, baseType: !218, size: 128, offset: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !181, line: 190, size: 128, elements: !219)
!219 = !{!220, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !181, line: 191, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !218, file: !181, line: 191, baseType: !221, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !6, line: 409, baseType: !224, size: 448, offset: 192)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 448, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 56)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !214, file: !6, line: 417, baseType: !228, size: 768, offset: 640)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !229)
!229 = !{!230, !3673, !3674, !3675, !3678}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !228, file: !6, line: 46, baseType: !231, size: 512)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !232, line: 64, size: 512, elements: !233)
!232 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!233 = !{!234, !237, !238, !240, !329, !3572, !3663, !3668, !3669, !3670, !3671, !3672}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !231, file: !232, line: 65, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !231, file: !232, line: 66, baseType: !218, size: 128, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !231, file: !232, line: 67, baseType: !239, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !231, file: !232, line: 68, baseType: !241, size: 64, offset: 256)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !232, line: 168, size: 768, elements: !243)
!243 = !{!244, !245, !288, !289}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !242, file: !232, line: 169, baseType: !218, size: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !242, file: !232, line: 170, baseType: !246, size: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !247, line: 29, baseType: !248)
!247 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !247, line: 17, size: 32, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !247, line: 18, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 18, size: 32, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !251, file: !247, line: 19, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !255, line: 14, size: 32, elements: !256)
!255 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !254, file: !255, line: 15, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !259, line: 44, baseType: !260)
!259 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !259, line: 14, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, scope: !260, file: !259, line: 15, baseType: !263, size: 32)
!263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !259, line: 15, size: 32, elements: !264)
!264 = !{!265, !270, !280}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !263, file: !259, line: 16, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !181, line: 174, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 172, size: 32, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !267, file: !181, line: 173, baseType: !85, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !259, line: 24, baseType: !271, size: 16)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !259, line: 24, size: 16, elements: !272)
!272 = !{!273, !279}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !271, file: !259, line: 25, baseType: !274, size: 8)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !275, line: 17, baseType: !276)
!275 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !277, line: 21, baseType: !278)
!277 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!278 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !271, file: !259, line: 26, baseType: !274, size: 8, offset: 8)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !259, line: 28, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !259, line: 28, size: 32, elements: !282)
!282 = !{!283, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !281, file: !259, line: 29, baseType: !284, size: 16)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !275, line: 19, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !277, line: 24, baseType: !286)
!286 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !281, file: !259, line: 30, baseType: !284, size: 16, offset: 16)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !242, file: !232, line: 171, baseType: !231, size: 512, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !242, file: !232, line: 172, baseType: !290, size: 64, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !232, line: 133, size: 192, elements: !293)
!293 = !{!294, !301, !306}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !292, file: !232, line: 134, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!85, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !232, line: 135, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!235, !299}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !292, file: !232, line: 136, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!85, !299, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !232, line: 125, size: 20736, elements: !313)
!313 = !{!314, !319, !323, !324, !328}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !312, file: !232, line: 126, baseType: !315, size: 192)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 192, elements: !317)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!317 = !{!318}
!318 = !DISubrange(count: 3)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !312, file: !232, line: 127, baseType: !320, size: 4096, offset: 192)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 4096, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !312, file: !232, line: 128, baseType: !85, size: 32, offset: 4288)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !312, file: !232, line: 129, baseType: !325, size: 16384, offset: 4320)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 16384, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 2048)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !312, file: !232, line: 130, baseType: !85, size: 32, offset: 20704)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !231, file: !232, line: 69, baseType: !330, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !232, line: 116, size: 384, elements: !333)
!333 = !{!334, !338, !366, !3534, !3562, !3566}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !332, file: !232, line: 117, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !239}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !332, file: !232, line: 118, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !342, line: 254, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!343 = !{!344, !359}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !341, file: !342, line: 255, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !239, !353, !316}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !181, line: 66, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !350, line: 73, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !350, line: 15, baseType: !352)
!352 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !342, line: 30, size: 128, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !342, line: 31, baseType: !235, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !354, file: !342, line: 32, baseType: !358, size: 16, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !181, line: 24, baseType: !286)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !341, file: !342, line: 256, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!348, !239, !353, !235, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !181, line: 61, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !350, line: 72, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !350, line: 16, baseType: !182)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !332, file: !232, line: 119, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !342, line: 84, size: 320, elements: !371)
!371 = !{!372, !373, !377, !3530, !3532}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !342, line: 85, baseType: !235, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !370, file: !342, line: 86, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!358, !239, !353, !85}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !370, file: !342, line: 88, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!358, !239, !381, !85}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !342, line: 175, size: 512, elements: !383)
!383 = !{!384, !385, !386, !387, !3521, !3525, !3526}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !382, file: !342, line: 176, baseType: !354, size: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !342, line: 177, baseType: !363, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !382, file: !342, line: 178, baseType: !179, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !382, file: !342, line: 179, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !393)
!393 = !{!394, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3515, !3516, !3517, !3518, !3519, !3520}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !392, file: !14, line: 473, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !397)
!397 = !{!398, !399, !400, !408, !409, !416, !417, !420, !421, !3293, !3294, !3295, !3296, !3297, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3337, !3340, !3341, !3342, !3351, !3352, !3353, !3354}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !396, file: !14, line: 642, baseType: !358, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !396, file: !14, line: 643, baseType: !286, size: 16, offset: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !396, file: !14, line: 644, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !402, line: 23, baseType: !403)
!402 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 21, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !403, file: !402, line: 22, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !181, line: 37, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !350, line: 49, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !396, file: !14, line: 645, baseType: !218, size: 128, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !396, file: !14, line: 646, baseType: !410, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !402, line: 28, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 26, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !411, file: !402, line: 27, baseType: !414, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !181, line: 38, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !350, line: 50, baseType: !7)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !396, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !396, file: !14, line: 650, baseType: !418, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !396, file: !14, line: 651, baseType: !418, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !396, file: !14, line: 654, baseType: !422, size: 64, offset: 384)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !425)
!425 = !{!426, !3118, !3131, !3135, !3139, !3143, !3147, !3151, !3155, !3159, !3163, !3164, !3168, !3172, !3209, !3238, !3242, !3248, !3252, !3256, !3260, !3264, !3268, !3274, !3278}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !424, file: !14, line: 1967, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!430, !395, !430, !7}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !432, line: 82, size: 1536, elements: !433)
!432 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!433 = !{!434, !435, !445, !453, !454, !474, !475, !477, !490, !3102, !3103, !3104, !3105, !3110, !3111, !3112}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !431, file: !432, line: 84, baseType: !7, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !431, file: !432, line: 85, baseType: !436, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !437, line: 275, baseType: !438)
!437 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !437, line: 275, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !438, file: !437, line: 275, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !437, line: 69, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !437, line: 64, size: 32, elements: !443)
!443 = !{!444}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !442, file: !437, line: 65, baseType: !7, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !431, file: !432, line: 86, baseType: !446, size: 128, offset: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !447, line: 38, size: 128, elements: !448)
!447 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!448 = !{!449, !451}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !447, line: 39, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !446, file: !447, line: 39, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !431, file: !432, line: 87, baseType: !430, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !431, file: !432, line: 88, baseType: !455, size: 128, offset: 256)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !432, line: 49, size: 128, elements: !456)
!456 = !{!457, !471}
!457 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !432, line: 50, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !432, line: 50, size: 64, elements: !459)
!459 = !{!460, !467}
!460 = !DIDerivedType(tag: DW_TAG_member, scope: !458, file: !432, line: 51, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !458, file: !432, line: 51, size: 64, elements: !462)
!462 = !{!463, !466}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !461, file: !432, line: 52, baseType: !464, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !275, line: 21, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !277, line: 27, baseType: !7)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !461, file: !432, line: 52, baseType: !464, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !458, file: !432, line: 54, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !275, line: 23, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !277, line: 31, baseType: !470)
!470 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !455, file: !432, line: 56, baseType: !472, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !431, file: !432, line: 89, baseType: !395, size: 64, offset: 384)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !431, file: !432, line: 91, baseType: !476, size: 256, offset: 448)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !200)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !431, file: !432, line: 94, baseType: !478, size: 64, offset: 704)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !479, line: 25, size: 64, elements: !480)
!479 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!480 = !{!481}
!481 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !479, line: 26, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !479, line: 26, size: 64, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !482, file: !479, line: 28, baseType: !469, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, scope: !482, file: !479, line: 30, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !479, line: 30, size: 64, elements: !487)
!487 = !{!488, !489}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !486, file: !479, line: 31, baseType: !246, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !486, file: !479, line: 32, baseType: !85, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !431, file: !432, line: 95, baseType: !491, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !432, line: 128, size: 1024, align: 512, elements: !494)
!494 = !{!495, !499, !500, !507, !513, !517, !521, !525, !526, !530, !534, !3092, !3096}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !493, file: !432, line: 129, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!85, !430, !7}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !493, file: !432, line: 130, baseType: !496, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !493, file: !432, line: 131, baseType: !501, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!85, !504, !506}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !493, file: !432, line: 132, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!85, !504, !7, !235, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !493, file: !432, line: 134, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!85, !504}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !493, file: !432, line: 135, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!85, !430}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !493, file: !432, line: 136, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !430}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !493, file: !432, line: 137, baseType: !522, size: 64, offset: 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !493, file: !432, line: 138, baseType: !527, size: 64, offset: 512)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !430, !395}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !493, file: !432, line: 139, baseType: !531, size: 64, offset: 576)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!316, !430, !316, !85}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !493, file: !432, line: 140, baseType: !535, size: 64, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !3091}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !540, line: 70, size: 256, elements: !541)
!540 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!541 = !{!542, !543, !3087, !3088}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !539, file: !540, line: 71, baseType: !430, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !539, file: !540, line: 72, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !546)
!546 = !{!547, !548, !551, !552, !553, !557, !606, !1523, !1563, !1648, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1665, !1669, !1670, !1673, !1676, !1679, !1682, !1683, !1684, !1725, !3019, !3020, !3021, !3022, !3023, !3024, !3027, !3028, !3035, !3036, !3037, !3038, !3039, !3054, !3055, !3056, !3057, !3058, !3061, !3062, !3063, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !545, file: !14, line: 1191, baseType: !218, size: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !545, file: !14, line: 1192, baseType: !549, size: 32, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !181, line: 21, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !181, line: 18, baseType: !464)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !545, file: !14, line: 1193, baseType: !278, size: 8, offset: 160)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !545, file: !14, line: 1194, baseType: !182, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !545, file: !14, line: 1195, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !181, line: 52, baseType: !555)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !350, line: 88, baseType: !556)
!556 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !545, file: !14, line: 1196, baseType: !558, size: 64, offset: 320)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !560)
!560 = !{!561, !562, !563, !570, !574, !578, !582, !583, !584, !594, !598, !599, !600, !602, !603, !604, !605}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !559, file: !14, line: 2367, baseType: !235, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !559, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !559, file: !14, line: 2376, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!85, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !569, line: 32, flags: DIFlagFwdDecl)
!569 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!570 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !559, file: !14, line: 2377, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !559, file: !14, line: 2378, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!430, !558, !85, !235, !179}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !559, file: !14, line: 2380, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !544}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !559, file: !14, line: 2381, baseType: !213, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !14, line: 2382, baseType: !558, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !559, file: !14, line: 2383, baseType: !585, size: 64, offset: 512)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !181, line: 194, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !585, file: !181, line: 195, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !181, line: 198, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !181, line: 199, baseType: !588, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !589, file: !181, line: 199, baseType: !593, size: 64, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !559, file: !14, line: 2385, baseType: !595, offset: 576)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !596, line: 206, elements: !597)
!596 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!597 = !{}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !559, file: !14, line: 2386, baseType: !595, offset: 576)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !559, file: !14, line: 2387, baseType: !595, offset: 576)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !559, file: !14, line: 2388, baseType: !601, offset: 576)
!601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, elements: !317)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !559, file: !14, line: 2390, baseType: !595, offset: 576)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !559, file: !14, line: 2391, baseType: !595, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !559, file: !14, line: 2392, baseType: !595, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !559, file: !14, line: 2393, baseType: !595, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !545, file: !14, line: 1197, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !610)
!610 = !{!611, !615, !619, !620, !624, !630, !634, !635, !636, !640, !644, !648, !649, !650, !656, !661, !662, !1448, !1449, !1450, !1451, !1455, !1459, !1506, !1521, !1522}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !609, file: !14, line: 2058, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!395, !544}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !609, file: !14, line: 2059, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !395}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !609, file: !14, line: 2060, baseType: !616, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !609, file: !14, line: 2062, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !395, !85}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !609, file: !14, line: 2063, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!85, !395, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !609, file: !14, line: 2064, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!85, !395}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !609, file: !14, line: 2065, baseType: !616, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !609, file: !14, line: 2066, baseType: !579, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !609, file: !14, line: 2067, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!85, !544, !85}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !609, file: !14, line: 2068, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!85, !544, !13}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !609, file: !14, line: 2069, baseType: !645, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!85, !544}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !609, file: !14, line: 2070, baseType: !641, size: 64, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !609, file: !14, line: 2071, baseType: !645, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !609, file: !14, line: 2072, baseType: !651, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!85, !430, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !609, file: !14, line: 2073, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!85, !544, !660, !316}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !609, file: !14, line: 2074, baseType: !579, size: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !609, file: !14, line: 2076, baseType: !663, size: 64, offset: 1024)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!85, !666, !430}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !668, line: 17, size: 960, elements: !669)
!668 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!669 = !{!670, !671, !672, !673, !674, !675, !676, !677, !698, !720, !721, !1447}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !667, file: !668, line: 18, baseType: !316, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !667, file: !668, line: 19, baseType: !363, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !667, file: !668, line: 20, baseType: !363, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !667, file: !668, line: 21, baseType: !363, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !667, file: !668, line: 22, baseType: !363, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !667, file: !668, line: 23, baseType: !554, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !667, file: !668, line: 24, baseType: !554, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !667, file: !668, line: 25, baseType: !678, size: 256, offset: 448)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !679, line: 66, size: 256, elements: !680)
!679 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!680 = !{!681, !690, !692, !697}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !678, file: !679, line: 67, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !683, line: 13, baseType: !684)
!683 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !181, line: 181, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !181, line: 179, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !685, file: !181, line: 180, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !275, line: 22, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !277, line: 30, baseType: !556)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !678, file: !679, line: 68, baseType: !691, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !255, line: 23, baseType: !254)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !678, file: !679, line: 70, baseType: !693, size: 32, offset: 96)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !694, line: 15, size: 32, elements: !695)
!694 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !693, file: !694, line: 20, baseType: !266, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !678, file: !679, line: 72, baseType: !218, size: 128, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !667, file: !668, line: 26, baseType: !699, size: 64, offset: 704)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !668, line: 32, size: 256, elements: !702)
!702 = !{!703, !708, !712, !716}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !701, file: !668, line: 33, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!179, !666, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !701, file: !668, line: 34, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !666, !179}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !668, line: 35, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!179, !666, !179, !707}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !701, file: !668, line: 36, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!85, !666, !179}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !667, file: !668, line: 27, baseType: !85, size: 32, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !667, file: !668, line: 28, baseType: !722, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !725)
!725 = !{!726, !745, !746, !748, !749, !750, !751, !752, !815, !1027, !1036, !1042, !1043, !1437, !1438, !1439, !1440, !1442, !1443, !1446}
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !14, line: 995, baseType: !727, size: 128)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !14, line: 995, size: 128, elements: !728)
!728 = !{!729, !735, !744}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !727, file: !14, line: 996, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !731, line: 60, size: 64, elements: !732)
!731 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !730, file: !731, line: 61, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !727, file: !14, line: 997, baseType: !736, size: 128, align: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !181, line: 232, size: 128, align: 64, elements: !737)
!737 = !{!738, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !181, line: 233, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !736, file: !181, line: 234, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !739}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !727, file: !14, line: 998, baseType: !7, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !724, file: !14, line: 1005, baseType: !246, size: 32, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !724, file: !14, line: 1006, baseType: !747, size: 32, offset: 160)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !181, line: 156, baseType: !7)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !724, file: !14, line: 1007, baseType: !682, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !724, file: !14, line: 1008, baseType: !678, size: 256, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !724, file: !14, line: 1009, baseType: !554, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !724, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !724, file: !14, line: 1011, baseType: !753, size: 256, offset: 640)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !754)
!754 = !{!755, !776, !811, !812, !813, !814}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !753, file: !14, line: 949, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !757, line: 34, baseType: !758)
!757 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !757, line: 25, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !758, file: !757, line: 26, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !762, line: 27, baseType: !763)
!762 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !762, line: 13, size: 64, elements: !764)
!764 = !{!765, !775}
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !763, file: !762, line: 14, baseType: !766, size: 32)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !763, file: !762, line: 14, size: 32, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !766, file: !762, line: 15, baseType: !266, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !762, line: 16, baseType: !770, size: 32)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !766, file: !762, line: 16, size: 32, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !770, file: !762, line: 18, baseType: !274, size: 8)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !770, file: !762, line: 19, baseType: !774, size: 24, offset: 8)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 24, elements: !317)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !763, file: !762, line: 26, baseType: !258, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !753, file: !14, line: 950, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !779)
!779 = !{!780, !786, !787, !788, !792, !793, !800, !801}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !778, file: !19, line: 61, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !782, line: 113, baseType: !783)
!782 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !782, line: 111, size: 32, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !783, file: !782, line: 112, baseType: !266, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !778, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !778, file: !19, line: 63, baseType: !246, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !778, file: !19, line: 65, baseType: !789, size: 256, offset: 128)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !585, size: 256, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 4)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !778, file: !19, line: 66, baseType: !585, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !778, file: !19, line: 68, baseType: !794, size: 192, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !795, line: 41, baseType: !796)
!795 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !795, line: 37, size: 192, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !796, file: !795, line: 38, baseType: !246, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !796, file: !795, line: 39, baseType: !218, size: 128, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !778, file: !19, line: 69, baseType: !736, size: 128, align: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !778, file: !19, line: 70, baseType: !802, offset: 768)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, elements: !809)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !803, file: !19, line: 55, baseType: !85, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !803, file: !19, line: 56, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!809 = !{!810}
!810 = !DISubrange(count: -1)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !753, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !753, file: !14, line: 952, baseType: !401, size: 32, offset: 160)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !753, file: !14, line: 952, baseType: !401, size: 32, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !753, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !724, file: !14, line: 1012, baseType: !816, size: 64, offset: 896)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !819, line: 110, size: 1472, elements: !820)
!819 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!820 = !{!821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !837, !838, !839, !840, !841, !842, !972, !973, !974, !975, !976, !1007, !1010, !1014, !1022}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !818, file: !819, line: 111, baseType: !682, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !818, file: !819, line: 112, baseType: !401, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !818, file: !819, line: 113, baseType: !410, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !818, file: !819, line: 114, baseType: !401, size: 32, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !818, file: !819, line: 115, baseType: !410, size: 32, offset: 160)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !818, file: !819, line: 116, baseType: !401, size: 32, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !818, file: !819, line: 117, baseType: !410, size: 32, offset: 224)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !818, file: !819, line: 118, baseType: !401, size: 32, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !818, file: !819, line: 119, baseType: !410, size: 32, offset: 288)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !818, file: !819, line: 120, baseType: !7, size: 32, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !818, file: !819, line: 121, baseType: !832, size: 64, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !833, line: 24, baseType: !834)
!833 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !833, line: 24, size: 64, elements: !835)
!835 = !{!836}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !834, file: !833, line: 24, baseType: !468, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !818, file: !819, line: 122, baseType: !832, size: 64, offset: 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !818, file: !819, line: 123, baseType: !832, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !818, file: !819, line: 124, baseType: !832, size: 64, offset: 576)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !818, file: !819, line: 125, baseType: !832, size: 64, offset: 640)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !818, file: !819, line: 127, baseType: !278, size: 8, offset: 704)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !818, file: !819, line: 129, baseType: !843, size: 64, offset: 768)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !845, line: 195, size: 1728, elements: !846)
!845 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!846 = !{!847, !848, !853, !865, !874, !877, !878, !885, !886, !887, !888, !891, !892, !893, !895, !896, !936, !957}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !844, file: !845, line: 196, baseType: !781, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !844, file: !845, line: 197, baseType: !849, size: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !845, line: 28, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !181, line: 104, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !275, line: 20, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !277, line: 26, baseType: !85)
!853 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 198, baseType: !854, size: 192, offset: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 198, size: 192, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !854, file: !845, line: 199, baseType: !218, size: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !854, file: !845, line: 200, baseType: !858, size: 192, align: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !859, line: 5, size: 192, align: 64, elements: !860)
!859 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!860 = !{!861, !862, !864}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !858, file: !859, line: 6, baseType: !182, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !858, file: !859, line: 7, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !858, file: !859, line: 8, baseType: !863, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !844, file: !845, line: 205, baseType: !866, size: 320, offset: 256)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !867, line: 48, size: 320, elements: !868)
!867 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!868 = !{!869, !870, !871, !872, !873}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !866, file: !867, line: 49, baseType: !682, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !866, file: !867, line: 55, baseType: !682, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !866, file: !867, line: 57, baseType: !693, size: 32, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !866, file: !867, line: 59, baseType: !691, size: 32, offset: 160)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !866, file: !867, line: 60, baseType: !218, size: 128, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !844, file: !845, line: 206, baseType: !875, size: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !845, line: 206, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !844, file: !845, line: 207, baseType: !179, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 208, baseType: !879, size: 64, offset: 704)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 208, size: 64, elements: !880)
!880 = !{!881, !884}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !879, file: !845, line: 209, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !883, line: 8, baseType: !689)
!883 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!884 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !879, file: !845, line: 210, baseType: !882, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !844, file: !845, line: 212, baseType: !882, size: 64, offset: 768)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !844, file: !845, line: 213, baseType: !401, size: 32, offset: 832)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !844, file: !845, line: 214, baseType: !410, size: 32, offset: 864)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !844, file: !845, line: 215, baseType: !889, size: 32, offset: 896)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !845, line: 31, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !181, line: 110, baseType: !464)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !844, file: !845, line: 216, baseType: !286, size: 16, offset: 928)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !844, file: !845, line: 217, baseType: !286, size: 16, offset: 944)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !844, file: !845, line: 221, baseType: !894, size: 16, offset: 960)
!894 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !844, file: !845, line: 228, baseType: !182, size: 64, offset: 1024)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 245, baseType: !897, size: 320, offset: 1088)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 245, size: 320, elements: !898)
!898 = !{!899, !928}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !897, file: !845, line: 246, baseType: !900, size: 320)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !845, line: 114, size: 320, elements: !901)
!901 = !{!902, !903, !915, !918, !927}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !900, file: !845, line: 116, baseType: !182, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !900, file: !845, line: 117, baseType: !904, size: 64, offset: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !900, file: !845, line: 117, size: 64, elements: !905)
!905 = !{!906, !914}
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !904, file: !845, line: 118, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !904, file: !845, line: 118, size: 64, elements: !908)
!908 = !{!909, !910}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !907, file: !845, line: 120, baseType: !284, size: 16)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !907, file: !845, line: 121, baseType: !911, size: 48, offset: 16)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 48, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 6)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !904, file: !845, line: 127, baseType: !182, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !900, file: !845, line: 129, baseType: !916, size: 64, offset: 128)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !845, line: 102, flags: DIFlagFwdDecl)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !900, file: !845, line: 130, baseType: !919, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !845, line: 108, size: 192, elements: !921)
!921 = !{!922, !923, !924}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !920, file: !845, line: 109, baseType: !736, size: 128, align: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !920, file: !845, line: 110, baseType: !781, size: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !920, file: !845, line: 111, baseType: !925, size: 8, offset: 160)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !181, line: 35, baseType: !926)
!926 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !900, file: !845, line: 131, baseType: !235, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !845, line: 247, baseType: !929, size: 320)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !845, line: 247, size: 320, elements: !930)
!930 = !{!931, !932, !933, !934, !935}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !929, file: !845, line: 248, baseType: !182, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !929, file: !845, line: 249, baseType: !182, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !929, file: !845, line: 250, baseType: !916, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !929, file: !845, line: 251, baseType: !919, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !929, file: !845, line: 252, baseType: !316, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !845, line: 260, baseType: !937, size: 256, offset: 1408)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !845, line: 260, size: 256, elements: !938)
!938 = !{!939, !945}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !937, file: !845, line: 261, baseType: !940, size: 256)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !845, line: 134, size: 256, elements: !941)
!941 = !{!942, !943}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !940, file: !845, line: 135, baseType: !179, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !940, file: !845, line: 136, baseType: !944, size: 256)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !790)
!945 = !DIDerivedType(tag: DW_TAG_member, scope: !937, file: !845, line: 262, baseType: !946, size: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !845, line: 262, size: 256, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !946, file: !845, line: 264, baseType: !218, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !946, file: !845, line: 265, baseType: !950, size: 128, offset: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !951, line: 22, size: 128, elements: !952)
!951 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!952 = !{!953, !956}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !950, file: !951, line: 23, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !951, line: 23, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !950, file: !951, line: 24, baseType: !182, size: 64, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !844, file: !845, line: 280, baseType: !958, size: 64, offset: 1664)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !845, line: 176, size: 192, elements: !960)
!960 = !{!961, !970, !971}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !959, file: !845, line: 177, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !845, line: 171, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!85, !843, !966, !968, !843}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !959, file: !845, line: 178, baseType: !843, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !959, file: !845, line: 179, baseType: !916, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !818, file: !819, line: 130, baseType: !843, size: 64, offset: 832)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !818, file: !819, line: 131, baseType: !843, size: 64, offset: 896)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !818, file: !819, line: 132, baseType: !843, size: 64, offset: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !818, file: !819, line: 135, baseType: !179, size: 64, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !818, file: !819, line: 137, baseType: !977, size: 64, offset: 1088)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !979, line: 14, size: 1088, elements: !980)
!979 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!980 = !{!981, !982, !991, !992, !993, !994, !995, !996}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !978, file: !979, line: 15, baseType: !781, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !978, file: !979, line: 17, baseType: !983, size: 320, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !984, line: 22, size: 320, elements: !985)
!984 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!985 = !{!986, !987, !988, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !983, file: !984, line: 23, baseType: !691, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !983, file: !984, line: 24, baseType: !688, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !983, file: !984, line: 26, baseType: !218, size: 128, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !983, file: !984, line: 28, baseType: !990, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !978, file: !979, line: 19, baseType: !182, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !978, file: !979, line: 20, baseType: !682, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !978, file: !979, line: 23, baseType: !589, size: 128, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !978, file: !979, line: 24, baseType: !401, size: 32, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !978, file: !979, line: 29, baseType: !682, size: 64, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !978, file: !979, line: 36, baseType: !997, size: 320, offset: 768)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !998, line: 15, size: 320, elements: !999)
!998 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!999 = !{!1000, !1001, !1002, !1003, !1004, !1005, !1006}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !998, line: 16, baseType: !691, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !997, file: !998, line: 18, baseType: !85, size: 32, offset: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !997, file: !998, line: 19, baseType: !85, size: 32, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !997, file: !998, line: 20, baseType: !85, size: 32, offset: 96)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !997, file: !998, line: 21, baseType: !85, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !997, file: !998, line: 22, baseType: !182, size: 64, offset: 192)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !997, file: !998, line: 23, baseType: !182, size: 64, offset: 256)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !818, file: !819, line: 138, baseType: !1008, size: 64, offset: 1152)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !402, line: 18, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !818, file: !819, line: 139, baseType: !1011, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1013, line: 16, flags: DIFlagFwdDecl)
!1013 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !818, file: !819, line: 140, baseType: !1015, size: 64, offset: 1280)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !819, line: 25, size: 64, elements: !1017)
!1017 = !{!1018, !1019, !1020}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1016, file: !819, line: 26, baseType: !266, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1016, file: !819, line: 27, baseType: !85, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1016, file: !819, line: 28, baseType: !1021, offset: 64)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, elements: !809)
!1022 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !819, line: 142, baseType: !1023, size: 128, offset: 1344)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !818, file: !819, line: 142, size: 128, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1023, file: !819, line: 143, baseType: !85, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1023, file: !819, line: 144, baseType: !736, size: 128, align: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !724, file: !14, line: 1013, baseType: !1028, size: 256, offset: 960)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1028, file: !14, line: 971, baseType: !182, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1028, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1028, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1028, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1028, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1028, file: !14, line: 976, baseType: !554, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !724, file: !14, line: 1014, baseType: !1037, size: 128, offset: 1216)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1038, line: 8, size: 128, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1037, file: !1038, line: 9, baseType: !538, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1037, file: !1038, line: 10, baseType: !430, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !724, file: !14, line: 1015, baseType: !395, size: 64, offset: 1344)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !724, file: !14, line: 1016, baseType: !1044, size: 64, offset: 1408)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1046)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1047)
!1047 = !{!1048, !1049, !1054, !1058, !1062, !1090, !1091, !1097, !1110, !1127, !1131, !1132, !1359, !1360, !1364, !1369, !1370, !1374, !1378, !1384, !1385, !1389, !1390, !1396, !1400, !1404, !1410, !1414, !1418, !1422, !1426, !1427, !1433}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1046, file: !14, line: 1915, baseType: !213, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1046, file: !14, line: 1916, baseType: !1050, size: 64, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!554, !1053, !554, !85}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1046, file: !14, line: 1917, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!348, !1053, !316, !363, !707}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1046, file: !14, line: 1918, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!348, !1053, !235, !363, !707}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1046, file: !14, line: 1919, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!348, !1066, !1088}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1068)
!1068 = !{!1069, !1070, !1071, !1075, !1076, !1077, !1078}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1067, file: !14, line: 374, baseType: !1053, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1067, file: !14, line: 375, baseType: !554, size: 64, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1067, file: !14, line: 376, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !1066, !352}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1067, file: !14, line: 377, baseType: !179, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1067, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1067, file: !14, line: 379, baseType: !284, size: 16, offset: 288)
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !14, line: 380, baseType: !1079, size: 64, offset: 320)
!1079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !14, line: 380, size: 64, elements: !1080)
!1080 = !{!1081, !1084}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1079, file: !14, line: 386, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1079, file: !14, line: 395, baseType: !1085, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!348, !179}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1046, file: !14, line: 1920, baseType: !1063, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1046, file: !14, line: 1921, baseType: !1092, size: 64, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!85, !1066, !1095, !7}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1046, file: !14, line: 1923, baseType: !1098, size: 64, offset: 448)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!85, !1053, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1103)
!1103 = !{!1104, !1109}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1102, file: !14, line: 1859, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1106)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!925, !1101, !235, !85, !554, !468, !7}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1102, file: !14, line: 1860, baseType: !554, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1046, file: !14, line: 1924, baseType: !1111, size: 64, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114, !1053, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1115, line: 59, baseType: !7)
!1115 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1118, line: 37, size: 128, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1119 = !{!1120, !1126}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1117, file: !1118, line: 38, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1118, line: 31, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1053, !1125, !1116}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1117, file: !1118, line: 39, baseType: !1114, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1046, file: !14, line: 1925, baseType: !1128, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!352, !1053, !7, !182}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1046, file: !14, line: 1926, baseType: !1128, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1046, file: !14, line: 1927, baseType: !1133, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!85, !1053, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1138, line: 625, size: 1344, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1139 = !{!1140, !1149, !1316, !1322, !1329, !1330, !1335, !1336, !1341, !1342, !1345, !1349, !1350, !1351, !1352, !1353, !1357}
!1140 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !1138, line: 628, baseType: !1141, size: 128)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !1138, line: 628, size: 128, elements: !1142)
!1142 = !{!1143, !1148}
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !1138, line: 629, baseType: !1144, size: 128)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1141, file: !1138, line: 629, size: 128, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1144, file: !1138, line: 631, baseType: !182, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1144, file: !1138, line: 632, baseType: !182, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1141, file: !1138, line: 635, baseType: !736, size: 128, align: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1137, file: !1138, line: 639, baseType: !1150, size: 64, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1138, line: 733, size: 10240, elements: !1152)
!1152 = !{!1153, !1314}
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1138, line: 734, baseType: !1154, size: 10240)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1151, file: !1138, line: 734, size: 10240, elements: !1155)
!1155 = !{!1156, !1160, !1173, !1177, !1178, !1179, !1180, !1181, !1182, !1191, !1192, !1193, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1232, !1234, !1237, !1284, !1285, !1286, !1289, !1290, !1291, !1294, !1295, !1296, !1302, !1303}
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1154, file: !1138, line: 739, baseType: !1157, size: 512, align: 512)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1154, file: !1138, line: 739, size: 512, align: 512, elements: !1158)
!1158 = !{!1159}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1157, file: !1138, line: 747, baseType: !266, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1154, file: !1138, line: 750, baseType: !1161, size: 128, offset: 512)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1162, line: 218, size: 128, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1163 = !{!1164, !1171, !1172}
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1162, line: 219, baseType: !1165, size: 32)
!1165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !1162, line: 219, size: 32, elements: !1166)
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1165, file: !1162, line: 220, baseType: !246, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1165, file: !1162, line: 221, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1162, line: 197, baseType: !1170)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1162, line: 197, elements: !597)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1161, file: !1162, line: 223, baseType: !7, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1161, file: !1162, line: 224, baseType: !179, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1154, file: !1138, line: 752, baseType: !1174, size: 64, offset: 640)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!182, !1053, !182, !182, !182, !182}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1154, file: !1138, line: 756, baseType: !182, size: 64, offset: 704)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1154, file: !1138, line: 757, baseType: !182, size: 64, offset: 768)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1154, file: !1138, line: 760, baseType: !182, size: 64, offset: 832)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1154, file: !1138, line: 761, baseType: !182, size: 64, offset: 896)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1154, file: !1138, line: 763, baseType: !182, size: 64, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1154, file: !1138, line: 764, baseType: !1183, size: 64, offset: 1024)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1185, line: 299, baseType: !1186)
!1185 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 299, size: 64, elements: !1187)
!1187 = !{!1188}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1186, file: !1185, line: 299, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1190, line: 18, baseType: !182)
!1190 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1154, file: !1138, line: 773, baseType: !266, size: 32, offset: 1088)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1154, file: !1138, line: 785, baseType: !266, size: 32, offset: 1120)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1154, file: !1138, line: 795, baseType: !1194, size: 64, offset: 1152)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1138, line: 726, size: 128, elements: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1195, file: !1138, line: 727, baseType: !468, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1195, file: !1138, line: 728, baseType: !85, size: 32, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1154, file: !1138, line: 801, baseType: !182, size: 64, offset: 1216)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1154, file: !1138, line: 804, baseType: !682, size: 64, offset: 1280)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1154, file: !1138, line: 806, baseType: !85, size: 32, offset: 1344)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1154, file: !1138, line: 808, baseType: !246, size: 32, offset: 1376)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1154, file: !1138, line: 823, baseType: !866, size: 320, offset: 1408)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1154, file: !1138, line: 825, baseType: !218, size: 128, offset: 1728)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1154, file: !1138, line: 845, baseType: !85, size: 32, offset: 1856)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1154, file: !1138, line: 849, baseType: !182, size: 64, offset: 1920)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1154, file: !1138, line: 850, baseType: !182, size: 64, offset: 1984)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1154, file: !1138, line: 852, baseType: !182, size: 64, offset: 2048)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1154, file: !1138, line: 853, baseType: !182, size: 64, offset: 2112)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1154, file: !1138, line: 854, baseType: !684, size: 64, offset: 2176)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1154, file: !1138, line: 855, baseType: !182, size: 64, offset: 2240)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1154, file: !1138, line: 856, baseType: !182, size: 64, offset: 2304)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1154, file: !1138, line: 857, baseType: !182, size: 64, offset: 2368)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1154, file: !1138, line: 858, baseType: !182, size: 64, offset: 2432)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1154, file: !1138, line: 865, baseType: !441, size: 32, offset: 2496)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1154, file: !1138, line: 867, baseType: !246, size: 32, offset: 2528)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1154, file: !1138, line: 869, baseType: !182, size: 64, offset: 2560)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1154, file: !1138, line: 869, baseType: !182, size: 64, offset: 2624)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1154, file: !1138, line: 869, baseType: !182, size: 64, offset: 2688)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1154, file: !1138, line: 869, baseType: !182, size: 64, offset: 2752)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1154, file: !1138, line: 870, baseType: !182, size: 64, offset: 2816)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1154, file: !1138, line: 870, baseType: !182, size: 64, offset: 2880)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1154, file: !1138, line: 870, baseType: !182, size: 64, offset: 2944)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1154, file: !1138, line: 871, baseType: !182, size: 64, offset: 3008)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1154, file: !1138, line: 871, baseType: !182, size: 64, offset: 3072)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1154, file: !1138, line: 871, baseType: !182, size: 64, offset: 3136)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1154, file: !1138, line: 871, baseType: !182, size: 64, offset: 3200)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1154, file: !1138, line: 873, baseType: !1229, size: 3328, offset: 3264)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 3328, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 52)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1154, file: !1138, line: 875, baseType: !1233, size: 1280, offset: 6592)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 1280, elements: !790)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1154, file: !1138, line: 877, baseType: !1235, size: 64, offset: 7872)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1138, line: 877, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1154, file: !1138, line: 880, baseType: !1238, size: 1088, offset: 7936)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1239, line: 72, baseType: !1240)
!1239 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 23, size: 1088, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245, !1246, !1249, !1250, !1251, !1252, !1279, !1280, !1281}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1240, file: !1239, line: 28, baseType: !468, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1240, file: !1239, line: 38, baseType: !684, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1240, file: !1239, line: 40, baseType: !182, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1240, file: !1239, line: 43, baseType: !866, size: 320, offset: 192)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1240, file: !1239, line: 44, baseType: !1247, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1239, line: 44, flags: DIFlagFwdDecl)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1240, file: !1239, line: 48, baseType: !182, size: 64, offset: 576)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1240, file: !1239, line: 59, baseType: !678, size: 256, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1240, file: !1239, line: 60, baseType: !179, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1240, file: !1239, line: 61, baseType: !1253, size: 64, offset: 960)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1256, line: 13, size: 1216, elements: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1257 = !{!1258, !1259, !1260, !1261, !1262, !1263, !1264, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1255, file: !1256, line: 14, baseType: !179, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1255, file: !1256, line: 15, baseType: !182, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1255, file: !1256, line: 17, baseType: !182, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1255, file: !1256, line: 17, baseType: !182, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1255, file: !1256, line: 18, baseType: !182, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1255, file: !1256, line: 18, baseType: !182, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1255, file: !1256, line: 19, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1255, file: !1256, line: 21, baseType: !352, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1255, file: !1256, line: 23, baseType: !352, size: 64, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1255, file: !1256, line: 24, baseType: !352, size: 64, offset: 576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1255, file: !1256, line: 25, baseType: !352, size: 64, offset: 640)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1255, file: !1256, line: 26, baseType: !352, size: 64, offset: 704)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1255, file: !1256, line: 27, baseType: !352, size: 64, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1255, file: !1256, line: 28, baseType: !352, size: 64, offset: 832)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1255, file: !1256, line: 29, baseType: !352, size: 64, offset: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1255, file: !1256, line: 30, baseType: !352, size: 64, offset: 960)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1255, file: !1256, line: 31, baseType: !352, size: 64, offset: 1024)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1255, file: !1256, line: 32, baseType: !352, size: 64, offset: 1088)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1255, file: !1256, line: 33, baseType: !352, size: 64, offset: 1152)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1240, file: !1239, line: 63, baseType: !266, size: 32, offset: 1024)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1240, file: !1239, line: 69, baseType: !284, size: 16, offset: 1056)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1240, file: !1239, line: 70, baseType: !1282, size: 16, offset: 1072)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !275, line: 18, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !277, line: 23, baseType: !894)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1154, file: !1138, line: 882, baseType: !182, size: 64, offset: 9024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1154, file: !1138, line: 885, baseType: !246, size: 32, offset: 9088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1154, file: !1138, line: 886, baseType: !1287, size: 64, offset: 9152)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1138, line: 732, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1154, file: !1138, line: 901, baseType: !1008, size: 64, offset: 9216)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1154, file: !1138, line: 904, baseType: !1053, size: 64, offset: 9280)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1154, file: !1138, line: 906, baseType: !1292, size: 64, offset: 9344)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1138, line: 906, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1154, file: !1138, line: 930, baseType: !266, size: 32, offset: 9408)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1154, file: !1138, line: 933, baseType: !266, size: 32, offset: 9440)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1154, file: !1138, line: 935, baseType: !1297, size: 64, offset: 9472)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1297, file: !44, line: 104, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1154, file: !1138, line: 940, baseType: !682, size: 64, offset: 9536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1154, file: !1138, line: 942, baseType: !1304, size: 256, offset: 9600)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !143, line: 98, size: 256, elements: !1305)
!1305 = !{!1306, !1307, !1308}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1304, file: !143, line: 99, baseType: !682, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1304, file: !143, line: 100, baseType: !218, size: 128, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1304, file: !143, line: 101, baseType: !1309, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !143, line: 21, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1151, file: !1138, line: 986, baseType: !1315, offset: 10240)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, elements: !809)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1137, file: !1138, line: 640, baseType: !1317, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1185, line: 297, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1185, line: 297, size: 64, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1318, file: !1185, line: 297, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1190, line: 19, baseType: !182)
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !1138, line: 646, baseType: !1323, size: 64, offset: 256)
!1323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !1138, line: 646, size: 64, elements: !1324)
!1324 = !{!1325, !1328}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1323, file: !1138, line: 647, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1327)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1138, line: 542, baseType: !182)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1323, file: !1138, line: 648, baseType: !1327, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1137, file: !1138, line: 666, baseType: !85, size: 32, offset: 320)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1137, file: !1138, line: 667, baseType: !1331, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1138, line: 579, size: 320, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1332, file: !1138, line: 580, baseType: !866, size: 320)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1137, file: !1138, line: 670, baseType: !925, size: 8, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1137, file: !1138, line: 681, baseType: !1337, size: 256, offset: 512)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !1138, line: 678, size: 256, elements: !1338)
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1337, file: !1138, line: 679, baseType: !858, size: 192, align: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1337, file: !1138, line: 680, baseType: !182, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1137, file: !1138, line: 689, baseType: !218, size: 128, offset: 768)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1137, file: !1138, line: 691, baseType: !1343, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1138, line: 691, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1137, file: !1138, line: 694, baseType: !1346, size: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1348)
!1348 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1138, line: 694, flags: DIFlagFwdDecl)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1137, file: !1138, line: 697, baseType: !182, size: 64, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1137, file: !1138, line: 699, baseType: !1053, size: 64, offset: 1088)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1137, file: !1138, line: 700, baseType: !179, size: 64, offset: 1152)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1137, file: !1138, line: 711, baseType: !682, size: 64, offset: 1216)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1137, file: !1138, line: 717, baseType: !1354, size: 64, offset: 1280)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1356, line: 54, flags: DIFlagFwdDecl)
!1356 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1137, file: !1138, line: 722, baseType: !1358, offset: 1344)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1138, line: 570, elements: !597)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1046, file: !14, line: 1928, baseType: !182, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1046, file: !14, line: 1929, baseType: !1361, size: 64, offset: 832)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!85, !395, !1053}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1046, file: !14, line: 1930, baseType: !1365, size: 64, offset: 896)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!85, !1053, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !179)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1046, file: !14, line: 1931, baseType: !1361, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1046, file: !14, line: 1932, baseType: !1371, size: 64, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!85, !1053, !554, !554, !85}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1046, file: !14, line: 1933, baseType: !1375, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!85, !85, !1053, !85}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1046, file: !14, line: 1934, baseType: !1379, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!85, !1053, !85, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1046, file: !14, line: 1935, baseType: !1174, size: 64, offset: 1216)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1046, file: !14, line: 1936, baseType: !1386, size: 64, offset: 1280)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!85, !85}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1046, file: !14, line: 1937, baseType: !1379, size: 64, offset: 1344)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1046, file: !14, line: 1938, baseType: !1391, size: 64, offset: 1408)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!348, !1394, !1053, !707, !363, !7}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1356, line: 59, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1046, file: !14, line: 1939, baseType: !1397, size: 64, offset: 1472)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{!348, !1053, !707, !1394, !363, !7}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1046, file: !14, line: 1940, baseType: !1401, size: 64, offset: 1536)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !1053}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1046, file: !14, line: 1941, baseType: !1405, size: 64, offset: 1600)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!85, !1053, !85, !1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1046, file: !14, line: 1942, baseType: !1411, size: 64, offset: 1664)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!352, !1053, !85, !554, !554}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1046, file: !14, line: 1944, baseType: !1415, size: 64, offset: 1728)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !666, !1053}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1046, file: !14, line: 1948, baseType: !1419, size: 64, offset: 1792)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!348, !1053, !554, !1053, !554, !363, !7}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1046, file: !14, line: 1950, baseType: !1423, size: 64, offset: 1856)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!554, !1053, !554, !1053, !554, !554, !7}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1046, file: !14, line: 1953, baseType: !1371, size: 64, offset: 1920)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1046, file: !14, line: 1954, baseType: !1428, size: 64, offset: 1984)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!85, !1431, !7}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1046, file: !14, line: 1955, baseType: !1434, size: 64, offset: 2048)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!85, !1431, !1095, !7}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !724, file: !14, line: 1018, baseType: !468, size: 64, offset: 1472)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !724, file: !14, line: 1020, baseType: !179, size: 64, offset: 1536)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !724, file: !14, line: 1023, baseType: !179, size: 64, offset: 1600)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !724, file: !14, line: 1027, baseType: !1441, size: 64, offset: 1664)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !724, file: !14, line: 1029, baseType: !391, size: 64, offset: 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !724, file: !14, line: 1030, baseType: !1444, size: 32, offset: 1792)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1445, line: 8, baseType: !464)
!1445 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !724, file: !14, line: 1031, baseType: !1444, size: 32, offset: 1824)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !667, file: !668, line: 29, baseType: !179, size: 64, offset: 896)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !609, file: !14, line: 2077, baseType: !663, size: 64, offset: 1088)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !609, file: !14, line: 2078, baseType: !663, size: 64, offset: 1152)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !609, file: !14, line: 2079, baseType: !663, size: 64, offset: 1216)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !609, file: !14, line: 2081, baseType: !1452, size: 64, offset: 1280)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!348, !544, !85, !316, !363, !554}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !609, file: !14, line: 2082, baseType: !1456, size: 64, offset: 1344)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!348, !544, !85, !235, !363, !554}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !609, file: !14, line: 2083, baseType: !1460, size: 64, offset: 1408)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!1463, !395}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1491, !1492, !1493}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1465, file: !27, line: 297, baseType: !589, size: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1465, file: !27, line: 298, baseType: !218, size: 128, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1465, file: !27, line: 299, baseType: !218, size: 128, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1465, file: !27, line: 300, baseType: !218, size: 128, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1465, file: !27, line: 301, baseType: !678, size: 256, offset: 512)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1465, file: !27, line: 302, baseType: !246, size: 32, offset: 768)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1465, file: !27, line: 303, baseType: !266, size: 32, offset: 800)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1465, file: !27, line: 304, baseType: !544, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1465, file: !27, line: 305, baseType: !1476, size: 64, offset: 896)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1477)
!1477 = !{!1478, !1490}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !27, line: 69, baseType: !1479, size: 32)
!1479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !27, line: 69, size: 32, elements: !1480)
!1480 = !{!1481, !1482, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1479, file: !27, line: 70, baseType: !401, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1479, file: !27, line: 71, baseType: !410, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1479, file: !27, line: 72, baseType: !1484, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1485, line: 24, baseType: !1486)
!1485 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1485, line: 22, size: 32, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1486, file: !1485, line: 23, baseType: !1489, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1485, line: 20, baseType: !407)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1465, file: !27, line: 306, baseType: !554, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1465, file: !27, line: 307, baseType: !182, size: 64, offset: 1024)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1465, file: !27, line: 308, baseType: !1494, size: 576, offset: 1088)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1495)
!1495 = !{!1496, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1494, file: !27, line: 206, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !556)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1494, file: !27, line: 207, baseType: !1497, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1494, file: !27, line: 208, baseType: !1497, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1494, file: !27, line: 209, baseType: !1497, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1494, file: !27, line: 210, baseType: !1497, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1494, file: !27, line: 211, baseType: !1497, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1494, file: !27, line: 212, baseType: !1497, size: 64, offset: 384)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1494, file: !27, line: 213, baseType: !882, size: 64, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1494, file: !27, line: 214, baseType: !882, size: 64, offset: 512)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !609, file: !14, line: 2085, baseType: !1507, size: 64, offset: 1472)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!352, !544, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1512, line: 15, size: 256, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1513 = !{!1514, !1515, !1516, !1517, !1518}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1511, file: !1512, line: 16, baseType: !180, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1511, file: !1512, line: 19, baseType: !85, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1511, file: !1512, line: 26, baseType: !182, size: 64, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1511, file: !1512, line: 33, baseType: !182, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1511, file: !1512, line: 36, baseType: !1519, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1138, line: 33, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !609, file: !14, line: 2087, baseType: !1507, size: 64, offset: 1536)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !609, file: !14, line: 2089, baseType: !579, size: 64, offset: 1600)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !545, file: !14, line: 1198, baseType: !1524, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1527)
!1527 = !{!1528, !1532, !1536, !1540, !1541, !1542, !1543, !1544, !1549, !1554, !1558}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1526, file: !27, line: 325, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!85, !1464}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1526, file: !27, line: 326, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1464, !544, !85}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1526, file: !27, line: 327, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !1464}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1526, file: !27, line: 328, baseType: !1529, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1526, file: !27, line: 329, baseType: !1529, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1526, file: !27, line: 330, baseType: !1529, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1526, file: !27, line: 331, baseType: !637, size: 64, offset: 384)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1526, file: !27, line: 334, baseType: !1545, size: 64, offset: 448)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!1548, !395}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1526, file: !27, line: 335, baseType: !1550, size: 64, offset: 512)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!85, !395, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1526, file: !27, line: 337, baseType: !1555, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!85, !395, !1548}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1526, file: !27, line: 339, baseType: !1559, size: 64, offset: 640)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!85, !544, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !545, file: !14, line: 1199, baseType: !1564, size: 64, offset: 512)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1567)
!1567 = !{!1568, !1574, !1575, !1579, !1580, !1581, !1596, !1619, !1623, !1624, !1647}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1566, file: !27, line: 431, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!85, !544, !85, !85, !1572}
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1566, file: !27, line: 432, baseType: !637, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1566, file: !27, line: 433, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!85, !544, !7}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1566, file: !27, line: 434, baseType: !1576, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1566, file: !27, line: 435, baseType: !637, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1566, file: !27, line: 436, baseType: !1582, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!85, !544, !85, !1585}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1586, file: !27, line: 418, baseType: !85, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1586, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1586, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1586, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1586, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1586, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1586, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1586, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1566, file: !27, line: 437, baseType: !1597, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!85, !544, !1476, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1602)
!1602 = !{!1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1601, file: !27, line: 346, baseType: !85, size: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1601, file: !27, line: 347, baseType: !468, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1601, file: !27, line: 348, baseType: !468, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1601, file: !27, line: 349, baseType: !468, size: 64, offset: 192)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1601, file: !27, line: 350, baseType: !468, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1601, file: !27, line: 351, baseType: !468, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1601, file: !27, line: 352, baseType: !468, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1601, file: !27, line: 353, baseType: !688, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1601, file: !27, line: 355, baseType: !688, size: 64, offset: 512)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1601, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1601, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1601, file: !27, line: 358, baseType: !468, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1601, file: !27, line: 359, baseType: !468, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1601, file: !27, line: 360, baseType: !468, size: 64, offset: 768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1601, file: !27, line: 361, baseType: !688, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1601, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1566, file: !27, line: 438, baseType: !1620, size: 64, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!85, !544, !1562, !1600}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1566, file: !27, line: 440, baseType: !1597, size: 64, offset: 512)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1566, file: !27, line: 441, baseType: !1625, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!85, !544, !1628}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1629, file: !27, line: 412, baseType: !7, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1629, file: !27, line: 413, baseType: !1633, size: 1344, offset: 64)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, size: 1344, elements: !317)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1646}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1634, file: !27, line: 398, baseType: !7, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1634, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1634, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1634, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1634, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1634, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1634, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1634, file: !27, line: 406, baseType: !470, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1634, file: !27, line: 407, baseType: !1645, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !181, line: 132, baseType: !468)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1634, file: !27, line: 408, baseType: !1645, size: 64, offset: 384)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1566, file: !27, line: 442, baseType: !1576, size: 64, offset: 640)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !545, file: !14, line: 1200, baseType: !1649, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !545, file: !14, line: 1201, baseType: !182, size: 64, offset: 640)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !545, file: !14, line: 1202, baseType: !182, size: 64, offset: 704)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !545, file: !14, line: 1203, baseType: !182, size: 64, offset: 768)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !545, file: !14, line: 1204, baseType: !430, size: 64, offset: 832)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !545, file: !14, line: 1205, baseType: !866, size: 320, offset: 896)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !545, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !545, file: !14, line: 1207, baseType: !266, size: 32, offset: 1248)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !545, file: !14, line: 1209, baseType: !179, size: 64, offset: 1280)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !545, file: !14, line: 1211, baseType: !1661, size: 64, offset: 1344)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !545, file: !14, line: 1223, baseType: !1666, size: 64, offset: 1408)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !447, line: 34, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1666, file: !447, line: 35, baseType: !450, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !545, file: !14, line: 1224, baseType: !218, size: 128, offset: 1472)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !545, file: !14, line: 1225, baseType: !1671, size: 64, offset: 1600)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !545, file: !14, line: 1226, baseType: !1674, size: 64, offset: 1664)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !545, file: !14, line: 1227, baseType: !1677, size: 64, offset: 1728)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !545, file: !14, line: 1228, baseType: !1680, size: 64, offset: 1792)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !545, file: !14, line: 1229, baseType: !589, size: 128, offset: 1856)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !545, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !545, file: !14, line: 1231, baseType: !1685, size: 2496, offset: 2048)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1686)
!1686 = !{!1687, !1688, !1689, !1691, !1723}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !27, line: 522, baseType: !7, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1685, file: !27, line: 523, baseType: !866, size: 320, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1685, file: !27, line: 524, baseType: !1690, size: 192, offset: 384)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !317)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1685, file: !27, line: 525, baseType: !1692, size: 1728, offset: 576)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1693, size: 1728, elements: !317)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1694)
!1694 = !{!1695, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1693, file: !27, line: 223, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1698)
!1698 = !{!1699, !1700, !1713, !1714}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1697, file: !27, line: 446, baseType: !85, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1697, file: !27, line: 447, baseType: !1701, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1703)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1703, file: !27, line: 313, baseType: !637, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1703, file: !27, line: 314, baseType: !637, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1703, file: !27, line: 315, baseType: !637, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1703, file: !27, line: 316, baseType: !637, size: 64, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1703, file: !27, line: 317, baseType: !1529, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1703, file: !27, line: 318, baseType: !1529, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1703, file: !27, line: 319, baseType: !1529, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1703, file: !27, line: 320, baseType: !1559, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1697, file: !27, line: 448, baseType: !213, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1697, file: !27, line: 449, baseType: !1696, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1693, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1693, file: !27, line: 226, baseType: !218, size: 128, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1693, file: !27, line: 227, baseType: !182, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1693, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1693, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1693, file: !27, line: 230, baseType: !1497, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1693, file: !27, line: 231, baseType: !1497, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1693, file: !27, line: 232, baseType: !179, size: 64, offset: 512)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1685, file: !27, line: 526, baseType: !1724, size: 192, offset: 2304)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1701, size: 192, elements: !317)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !545, file: !14, line: 1233, baseType: !1726, size: 2368, offset: 4544)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1726, file: !14, line: 1185, baseType: !286, size: 16)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1726, file: !14, line: 1186, baseType: !286, size: 16, offset: 16)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1726, file: !14, line: 1187, baseType: !1731, size: 2304, offset: 64)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1732, size: 2304, elements: !317)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1733, line: 12, size: 768, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1734 = !{!1735, !1743, !1745, !3017, !3018}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1732, file: !1733, line: 13, baseType: !1736, size: 384)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1737, line: 17, size: 384, elements: !1738)
!1737 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1738 = !{!1739, !1740, !1741, !1742}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1736, file: !1737, line: 18, baseType: !85, size: 32)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1736, file: !1737, line: 19, baseType: !85, size: 32, offset: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1736, file: !1737, line: 20, baseType: !794, size: 192, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1736, file: !1737, line: 22, baseType: !736, size: 128, align: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1732, file: !1733, line: 14, baseType: !1744, size: 64, offset: 384)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1732, file: !1733, line: 15, baseType: !1746, size: 64, offset: 448)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1747, line: 16, size: 64, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1746, file: !1747, line: 17, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1356, line: 746, size: 58368, elements: !1752)
!1752 = !{!1753, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1833, !1844, !1939, !1943, !1946, !1977, !1978, !1979, !1980, !1991, !1993, !1994, !1995, !1996, !1997, !1998, !2009, !2010, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2027, !2028, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2121, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2136, !2137, !2138, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2180, !2186, !2187, !2188, !2189, !2190, !2191, !2194, !2201, !2206, !2209, !2212, !2215, !2218, !2358, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2398, !2399, !2400, !2409, !2417, !2418, !2419, !2420, !2421, !2426, !2427, !2428, !2431, !2432, !2435, !2438, !2441, !2449, !2452, !2453, !2539, !2540, !2541, !2542, !2543, !2549, !2550, !2551, !2552, !2555, !2556, !2559, !2562, !2563, !2566, !2567, !2568, !2571, !2572, !2573, !2574, !2575, !2576, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2608, !2609, !2675, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2687, !2759, !2761, !2762, !2763, !2764, !2765, !2777, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2794, !2795, !2796}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1751, file: !1356, line: 752, baseType: !1754, size: 192)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1755, line: 56, size: 192, elements: !1756)
!1755 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1756 = !{!1757, !1758, !1759, !1760}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !1755, line: 57, baseType: !182, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1754, file: !1755, line: 58, baseType: !182, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1754, file: !1755, line: 59, baseType: !464, size: 32, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1754, file: !1755, line: 61, baseType: !464, size: 32, offset: 160)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1751, file: !1356, line: 754, baseType: !7, size: 32, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1751, file: !1356, line: 767, baseType: !179, size: 64, offset: 256)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1751, file: !1356, line: 768, baseType: !781, size: 32, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1751, file: !1356, line: 770, baseType: !7, size: 32, offset: 352)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1751, file: !1356, line: 771, baseType: !7, size: 32, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1751, file: !1356, line: 774, baseType: !85, size: 32, offset: 416)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1751, file: !1356, line: 775, baseType: !1768, size: 128, offset: 448)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1769, line: 58, size: 128, elements: !1770)
!1769 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1770 = !{!1771, !1772, !1777, !1778}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1768, file: !1769, line: 59, baseType: !730, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1769, line: 60, baseType: !1773, size: 32, offset: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1768, file: !1769, line: 60, size: 32, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1773, file: !1769, line: 61, baseType: !7, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1773, file: !1769, line: 62, baseType: !266, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1768, file: !1769, line: 65, baseType: !284, size: 16, offset: 96)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1768, file: !1769, line: 65, baseType: !284, size: 16, offset: 112)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1751, file: !1356, line: 776, baseType: !7, size: 32, offset: 576)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1751, file: !1356, line: 777, baseType: !182, size: 64, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1751, file: !1356, line: 778, baseType: !1750, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1751, file: !1356, line: 787, baseType: !85, size: 32, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1751, file: !1356, line: 788, baseType: !85, size: 32, offset: 800)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1751, file: !1356, line: 790, baseType: !85, size: 32, offset: 832)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1751, file: !1356, line: 792, baseType: !85, size: 32, offset: 864)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1751, file: !1356, line: 793, baseType: !85, size: 32, offset: 896)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1751, file: !1356, line: 794, baseType: !85, size: 32, offset: 928)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1751, file: !1356, line: 795, baseType: !7, size: 32, offset: 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1751, file: !1356, line: 797, baseType: !1790, size: 2048, offset: 1024)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1356, line: 551, size: 2048, elements: !1791)
!1791 = !{!1792, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1812, !1815, !1816, !1817}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1790, file: !1356, line: 553, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1356, line: 411, size: 128, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1793, file: !1356, line: 412, baseType: !182, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1793, file: !1356, line: 413, baseType: !464, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1790, file: !1356, line: 554, baseType: !858, size: 192, align: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1790, file: !1356, line: 555, baseType: !468, size: 64, offset: 320)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1790, file: !1356, line: 556, baseType: !468, size: 64, offset: 384)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1790, file: !1356, line: 558, baseType: !218, size: 128, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1790, file: !1356, line: 559, baseType: !7, size: 32, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1790, file: !1356, line: 561, baseType: !468, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1790, file: !1356, line: 562, baseType: !468, size: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1790, file: !1356, line: 563, baseType: !468, size: 64, offset: 768)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1790, file: !1356, line: 564, baseType: !468, size: 64, offset: 832)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1790, file: !1356, line: 565, baseType: !688, size: 64, offset: 896)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1790, file: !1356, line: 566, baseType: !468, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1790, file: !1356, line: 568, baseType: !468, size: 64, offset: 1024)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1790, file: !1356, line: 571, baseType: !85, size: 32, offset: 1088)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1790, file: !1356, line: 572, baseType: !1811, size: 64, offset: 1152)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1790, file: !1356, line: 574, baseType: !1813, size: 64, offset: 1216)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1356, line: 49, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1790, file: !1356, line: 576, baseType: !1813, size: 64, offset: 1280)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1790, file: !1356, line: 578, baseType: !182, size: 64, offset: 1344)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1790, file: !1356, line: 588, baseType: !1818, size: 512, align: 512, offset: 1536)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1356, line: 497, size: 512, align: 512, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1818, file: !1356, line: 498, baseType: !468, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1818, file: !1356, line: 499, baseType: !468, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1818, file: !1356, line: 500, baseType: !468, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1818, file: !1356, line: 501, baseType: !464, size: 32, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1818, file: !1356, line: 502, baseType: !464, size: 32, offset: 224)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1818, file: !1356, line: 503, baseType: !182, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1818, file: !1356, line: 504, baseType: !182, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1818, file: !1356, line: 505, baseType: !182, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1818, file: !1356, line: 506, baseType: !1829, size: 64, align: 64, offset: 448)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1356, line: 445, size: 64, align: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1829, file: !1356, line: 446, baseType: !7, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1829, file: !1356, line: 447, baseType: !7, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1751, file: !1356, line: 798, baseType: !1834, size: 384, offset: 3072)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1356, line: 592, size: 384, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839, !1840, !1841, !1842}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1834, file: !1356, line: 593, baseType: !218, size: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1834, file: !1356, line: 594, baseType: !182, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1834, file: !1356, line: 595, baseType: !182, size: 64, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1834, file: !1356, line: 596, baseType: !7, size: 32, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1834, file: !1356, line: 597, baseType: !286, size: 16, offset: 288)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1834, file: !1356, line: 598, baseType: !286, size: 16, offset: 304)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1834, file: !1356, line: 600, baseType: !1843, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1751, file: !1356, line: 799, baseType: !1845, size: 1792, offset: 3456)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1356, line: 610, size: 1792, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1936, !1937}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1845, file: !1356, line: 611, baseType: !858, size: 192, align: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1845, file: !1356, line: 618, baseType: !468, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1845, file: !1356, line: 619, baseType: !468, size: 64, offset: 256)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1845, file: !1356, line: 620, baseType: !468, size: 64, offset: 320)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1845, file: !1356, line: 621, baseType: !468, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1845, file: !1356, line: 622, baseType: !468, size: 64, offset: 448)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1845, file: !1356, line: 629, baseType: !688, size: 64, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1845, file: !1356, line: 630, baseType: !468, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1356, line: 631, baseType: !7, size: 32, offset: 640)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1845, file: !1356, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1845, file: !1356, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1845, file: !1356, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1845, file: !1356, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1845, file: !1356, line: 662, baseType: !1861, size: 512, offset: 704)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1862)
!1862 = !{!1863, !1871, !1872, !1877, !1932, !1933, !1934, !1935}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1861, file: !33, line: 119, baseType: !1864, size: 256)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1865, line: 9, size: 256, elements: !1866)
!1865 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1864, file: !1865, line: 10, baseType: !858, size: 192, align: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1864, file: !1865, line: 11, baseType: !1869, size: 64, offset: 192)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1870, line: 29, baseType: !688)
!1870 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1861, file: !33, line: 120, baseType: !1869, size: 64, offset: 256)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1861, file: !33, line: 121, baseType: !1873, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!32, !1876}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1861, file: !33, line: 122, baseType: !1878, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1880)
!1880 = !{!1881, !1906, !1907, !1910, !1915, !1916, !1927, !1931}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1879, file: !33, line: 160, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !33, line: 216, baseType: !691, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1883, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1883, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1883, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1883, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1883, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1883, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1883, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1883, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1883, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1883, file: !33, line: 227, baseType: !286, size: 16, offset: 192)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1883, file: !33, line: 228, baseType: !286, size: 16, offset: 208)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1883, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1883, file: !33, line: 235, baseType: !1869, size: 64, offset: 256)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1883, file: !33, line: 236, baseType: !1876, size: 64, offset: 320)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1883, file: !33, line: 237, baseType: !1869, size: 64, offset: 384)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1883, file: !33, line: 238, baseType: !1876, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1883, file: !33, line: 239, baseType: !1903, size: 4096, align: 512, offset: 512)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 4096, align: 512, elements: !1904)
!1904 = !{!1905}
!1905 = !DISubrange(count: 8)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1879, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1879, file: !33, line: 162, baseType: !1908, size: 32, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !181, line: 32, baseType: !1909)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !350, line: 96, baseType: !85)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1879, file: !33, line: 163, baseType: !1911, size: 32, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !437, line: 274, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !437, line: 274, size: 32, elements: !1913)
!1913 = !{!1914}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1912, file: !437, line: 274, baseType: !441, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1879, file: !33, line: 164, baseType: !1876, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1879, file: !33, line: 165, baseType: !1917, size: 128, offset: 256)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1865, line: 14, size: 128, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1917, file: !1865, line: 15, baseType: !1920, size: 128)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !859, line: 26, size: 128, elements: !1921)
!1921 = !{!1922, !1926}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1920, file: !859, line: 27, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !859, line: 12, size: 64, elements: !1924)
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1923, file: !859, line: 13, baseType: !863, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1920, file: !859, line: 28, baseType: !863, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1879, file: !33, line: 166, baseType: !1928, size: 64, offset: 384)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1869}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1879, file: !33, line: 167, baseType: !1869, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1861, file: !33, line: 123, baseType: !274, size: 8, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1861, file: !33, line: 124, baseType: !274, size: 8, offset: 456)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1861, file: !33, line: 125, baseType: !274, size: 8, offset: 464)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1861, file: !33, line: 126, baseType: !274, size: 8, offset: 472)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1845, file: !1356, line: 671, baseType: !1861, size: 512, offset: 1216)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1845, file: !1356, line: 679, baseType: !1938, size: 64, offset: 1728)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1751, file: !1356, line: 800, baseType: !1940, size: 64, offset: 5248)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1356, line: 800, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1751, file: !1356, line: 809, baseType: !1944, size: 64, offset: 5312)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1356, line: 70, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1751, file: !1356, line: 825, baseType: !1947, size: 2048, align: 512, offset: 5632)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1356, line: 509, size: 2048, align: 512, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1947, file: !1356, line: 511, baseType: !468, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1947, file: !1356, line: 512, baseType: !468, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1947, file: !1356, line: 513, baseType: !468, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1947, file: !1356, line: 514, baseType: !468, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1947, file: !1356, line: 515, baseType: !468, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1947, file: !1356, line: 516, baseType: !468, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1947, file: !1356, line: 518, baseType: !468, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1947, file: !1356, line: 519, baseType: !468, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1947, file: !1356, line: 520, baseType: !688, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1947, file: !1356, line: 522, baseType: !468, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1947, file: !1356, line: 523, baseType: !468, size: 64, offset: 640)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1947, file: !1356, line: 524, baseType: !688, size: 64, offset: 704)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1947, file: !1356, line: 526, baseType: !688, size: 64, offset: 768)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1947, file: !1356, line: 527, baseType: !468, size: 64, offset: 832)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1947, file: !1356, line: 529, baseType: !468, size: 64, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1947, file: !1356, line: 530, baseType: !468, size: 64, offset: 960)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1947, file: !1356, line: 531, baseType: !468, size: 64, offset: 1024)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1947, file: !1356, line: 532, baseType: !468, size: 64, offset: 1088)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1947, file: !1356, line: 533, baseType: !468, size: 64, offset: 1152)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1947, file: !1356, line: 535, baseType: !468, size: 64, offset: 1216)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1947, file: !1356, line: 536, baseType: !468, size: 64, offset: 1280)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1947, file: !1356, line: 537, baseType: !468, size: 64, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1947, file: !1356, line: 538, baseType: !468, size: 64, offset: 1408)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1947, file: !1356, line: 539, baseType: !468, size: 64, offset: 1472)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1947, file: !1356, line: 540, baseType: !468, size: 64, offset: 1536)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1947, file: !1356, line: 541, baseType: !468, size: 64, offset: 1600)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1947, file: !1356, line: 542, baseType: !468, size: 64, offset: 1664)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1947, file: !1356, line: 543, baseType: !468, size: 64, offset: 1728)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1751, file: !1356, line: 833, baseType: !7, size: 32, offset: 7680)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1751, file: !1356, line: 836, baseType: !7, size: 32, offset: 7712)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1751, file: !1356, line: 837, baseType: !85, size: 32, offset: 7744)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1751, file: !1356, line: 838, baseType: !1981, size: 64, offset: 7808)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1984, line: 19, baseType: !1985)
!1984 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1984, line: 19, size: 64, elements: !1986)
!1986 = !{!1987}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1985, file: !1984, line: 19, baseType: !1988, size: 64)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 1)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1751, file: !1356, line: 839, baseType: !1992, size: 64, offset: 7872)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1751, file: !1356, line: 840, baseType: !1983, size: 64, offset: 7936)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1751, file: !1356, line: 841, baseType: !179, size: 64, offset: 8000)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1751, file: !1356, line: 843, baseType: !286, size: 16, offset: 8064)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1751, file: !1356, line: 845, baseType: !286, size: 16, offset: 8080)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1751, file: !1356, line: 848, baseType: !85, size: 32, offset: 8096)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1751, file: !1356, line: 849, baseType: !1999, size: 32, offset: 8128)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1356, line: 718, size: 32, elements: !2000)
!2000 = !{!2001, !2008}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1999, file: !1356, line: 724, baseType: !2002, size: 32)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1999, file: !1356, line: 719, size: 32, elements: !2003)
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2002, file: !1356, line: 720, baseType: !274, size: 8)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2002, file: !1356, line: 721, baseType: !274, size: 8, offset: 8)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2002, file: !1356, line: 722, baseType: !274, size: 8, offset: 16)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2002, file: !1356, line: 723, baseType: !274, size: 8, offset: 24)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1999, file: !1356, line: 725, baseType: !464, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1751, file: !1356, line: 850, baseType: !218, size: 128, offset: 8192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1751, file: !1356, line: 851, baseType: !2011, size: 64, offset: 8320)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1356, line: 60, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1751, file: !1356, line: 855, baseType: !182, size: 64, offset: 8384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1751, file: !1356, line: 856, baseType: !274, size: 8, offset: 8448)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1751, file: !1356, line: 857, baseType: !274, size: 8, offset: 8456)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1751, file: !1356, line: 858, baseType: !85, size: 32, offset: 8480)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1751, file: !1356, line: 859, baseType: !218, size: 128, offset: 8512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1751, file: !1356, line: 860, baseType: !85, size: 32, offset: 8640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1751, file: !1356, line: 861, baseType: !218, size: 128, offset: 8704)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1751, file: !1356, line: 873, baseType: !2021, size: 256, offset: 8832)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1356, line: 376, size: 256, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2021, file: !1356, line: 381, baseType: !182, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2021, file: !1356, line: 384, baseType: !470, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2021, file: !1356, line: 389, baseType: !470, size: 64, offset: 128)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2021, file: !1356, line: 392, baseType: !470, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1751, file: !1356, line: 875, baseType: !218, size: 128, offset: 9088)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1751, file: !1356, line: 877, baseType: !2029, size: 320, offset: 9216)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2030, line: 86, size: 320, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2029, file: !2030, line: 87, baseType: !85, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2029, file: !2030, line: 88, baseType: !218, size: 128, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2029, file: !2030, line: 89, baseType: !218, size: 128, offset: 192)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1751, file: !1356, line: 878, baseType: !858, size: 192, align: 64, offset: 9536)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1751, file: !1356, line: 881, baseType: !1150, size: 64, offset: 9728)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1751, file: !1356, line: 882, baseType: !1150, size: 64, offset: 9792)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1751, file: !1356, line: 884, baseType: !85, size: 32, offset: 9856)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1751, file: !1356, line: 885, baseType: !85, size: 32, offset: 9888)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1751, file: !1356, line: 886, baseType: !85, size: 32, offset: 9920)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1751, file: !1356, line: 888, baseType: !85, size: 32, offset: 9952)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1751, file: !1356, line: 890, baseType: !182, size: 64, offset: 9984)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1751, file: !1356, line: 893, baseType: !7, size: 32, offset: 10048)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1751, file: !1356, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1751, file: !1356, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1751, file: !1356, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1751, file: !1356, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1751, file: !1356, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1751, file: !1356, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1751, file: !1356, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1751, file: !1356, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1751, file: !1356, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1751, file: !1356, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1751, file: !1356, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1751, file: !1356, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1751, file: !1356, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1751, file: !1356, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1751, file: !1356, line: 969, baseType: !182, size: 64, offset: 10176)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1751, file: !1356, line: 971, baseType: !2060, size: 448, offset: 10240)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2061)
!2061 = !{!2062, !2063, !2068}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2060, file: !38, line: 26, baseType: !182, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2060, file: !38, line: 27, baseType: !2064, size: 64, offset: 64)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!352, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2060, file: !38, line: 28, baseType: !2069, size: 320, offset: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2060, file: !38, line: 28, size: 320, elements: !2070)
!2070 = !{!2071, !2081, !2106}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2069, file: !38, line: 37, baseType: !2072, size: 320)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !38, line: 30, size: 320, elements: !2073)
!2073 = !{!2074, !2076, !2077, !2078, !2079, !2080}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2072, file: !38, line: 31, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2072, file: !38, line: 32, baseType: !464, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2072, file: !38, line: 33, baseType: !464, size: 32, offset: 96)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2072, file: !38, line: 34, baseType: !464, size: 32, offset: 128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2072, file: !38, line: 35, baseType: !468, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2072, file: !38, line: 36, baseType: !2075, size: 64, offset: 256)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2069, file: !38, line: 47, baseType: !2082, size: 192)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !38, line: 39, size: 192, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2105}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2082, file: !38, line: 40, baseType: !1908, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2082, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2082, file: !38, line: 42, baseType: !2087, size: 64, offset: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2082, file: !38, line: 42, size: 64, elements: !2088)
!2088 = !{!2089, !2097}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2087, file: !38, line: 43, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2092, line: 7, size: 128, elements: !2093)
!2092 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2093 = !{!2094, !2096}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2091, file: !2092, line: 8, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !350, line: 93, baseType: !556)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2091, file: !2092, line: 9, baseType: !556, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2087, file: !38, line: 44, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2100, line: 7, size: 64, elements: !2101)
!2100 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2101 = !{!2102, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2099, file: !2100, line: 8, baseType: !2103, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2100, line: 5, baseType: !851)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2099, file: !2100, line: 9, baseType: !851, size: 32, offset: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2082, file: !38, line: 46, baseType: !468, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2069, file: !38, line: 55, baseType: !2107, size: 256)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !38, line: 49, size: 256, elements: !2108)
!2108 = !{!2109, !2117, !2118, !2119, !2120}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2107, file: !38, line: 50, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2112, line: 36, size: 64, elements: !2113)
!2112 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2111, file: !2112, line: 37, baseType: !85, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2111, file: !2112, line: 38, baseType: !894, size: 16, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2111, file: !2112, line: 39, baseType: !894, size: 16, offset: 48)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2107, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2107, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2107, file: !38, line: 53, baseType: !182, size: 64, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2107, file: !38, line: 54, baseType: !182, size: 64, offset: 192)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1751, file: !1356, line: 973, baseType: !2122, size: 32, offset: 10688)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !181, line: 27, baseType: !2123)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !350, line: 28, baseType: !85)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1751, file: !1356, line: 974, baseType: !2122, size: 32, offset: 10720)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1751, file: !1356, line: 978, baseType: !182, size: 64, offset: 10752)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1751, file: !1356, line: 987, baseType: !1750, size: 64, offset: 10816)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1751, file: !1356, line: 990, baseType: !1750, size: 64, offset: 10880)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1751, file: !1356, line: 995, baseType: !218, size: 128, offset: 10944)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1751, file: !1356, line: 996, baseType: !218, size: 128, offset: 11072)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1751, file: !1356, line: 997, baseType: !1750, size: 64, offset: 11200)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1751, file: !1356, line: 1005, baseType: !218, size: 128, offset: 11264)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1751, file: !1356, line: 1006, baseType: !218, size: 128, offset: 11392)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1751, file: !1356, line: 1009, baseType: !777, size: 64, offset: 11520)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1751, file: !1356, line: 1010, baseType: !2135, size: 512, offset: 11584)
!2135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 512, elements: !790)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1751, file: !1356, line: 1011, baseType: !218, size: 128, offset: 12096)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1751, file: !1356, line: 1012, baseType: !218, size: 128, offset: 12224)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1751, file: !1356, line: 1014, baseType: !2139, size: 64, offset: 12352)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2141, line: 26, size: 256, elements: !2142)
!2141 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2140, file: !2141, line: 27, baseType: !7, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2140, file: !2141, line: 28, baseType: !2145, size: 192, offset: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2146, line: 43, size: 192, elements: !2147)
!2146 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2147 = !{!2148, !2149}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2145, file: !2146, line: 44, baseType: !691, size: 32)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2145, file: !2146, line: 45, baseType: !218, size: 128, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1751, file: !1356, line: 1017, baseType: !660, size: 64, offset: 12416)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1751, file: !1356, line: 1020, baseType: !660, size: 64, offset: 12480)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1751, file: !1356, line: 1023, baseType: !179, size: 64, offset: 12544)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1751, file: !1356, line: 1025, baseType: !468, size: 64, offset: 12608)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1751, file: !1356, line: 1026, baseType: !468, size: 64, offset: 12672)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1751, file: !1356, line: 1031, baseType: !468, size: 64, offset: 12736)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1751, file: !1356, line: 1032, baseType: !2157, size: 192, offset: 12800)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1356, line: 324, size: 192, elements: !2158)
!2158 = !{!2159, !2160, !2161}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2157, file: !1356, line: 326, baseType: !468, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2157, file: !1356, line: 327, baseType: !468, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2157, file: !1356, line: 328, baseType: !691, size: 32, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1751, file: !1356, line: 1041, baseType: !182, size: 64, offset: 12992)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1751, file: !1356, line: 1042, baseType: !182, size: 64, offset: 13056)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1751, file: !1356, line: 1045, baseType: !468, size: 64, offset: 13120)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1751, file: !1356, line: 1048, baseType: !468, size: 64, offset: 13184)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1751, file: !1356, line: 1051, baseType: !182, size: 64, offset: 13248)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1751, file: !1356, line: 1052, baseType: !182, size: 64, offset: 13312)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1751, file: !1356, line: 1055, baseType: !2169, size: 640, offset: 13376)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2170, line: 132, size: 640, elements: !2171)
!2170 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2171 = !{!2172, !2178, !2179}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2169, file: !2170, line: 133, baseType: !2173, size: 576)
!2173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2174, size: 576, elements: !317)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2170, line: 117, size: 192, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2174, file: !2170, line: 118, baseType: !468, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2174, file: !2170, line: 119, baseType: !1917, size: 128, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2169, file: !2170, line: 134, baseType: !7, size: 32, offset: 576)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2169, file: !2170, line: 135, baseType: !7, size: 32, offset: 608)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1751, file: !1356, line: 1058, baseType: !2181, size: 448, offset: 14016)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2170, line: 144, size: 448, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2181, file: !2170, line: 145, baseType: !736, size: 128, align: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2181, file: !2170, line: 146, baseType: !678, size: 256, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2181, file: !2170, line: 147, baseType: !7, size: 32, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1751, file: !1356, line: 1064, baseType: !816, size: 64, offset: 14464)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1751, file: !1356, line: 1067, baseType: !816, size: 64, offset: 14528)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1751, file: !1356, line: 1070, baseType: !816, size: 64, offset: 14592)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1751, file: !1356, line: 1074, baseType: !843, size: 64, offset: 14656)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1751, file: !1356, line: 1084, baseType: !193, size: 128, offset: 14720)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1751, file: !1356, line: 1086, baseType: !2192, size: 64, offset: 14848)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1356, line: 55, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1751, file: !1356, line: 1089, baseType: !2195, size: 64, offset: 14912)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2196, line: 12, size: 64, elements: !2197)
!2196 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2197 = !{!2198}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2195, file: !2196, line: 13, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2196, line: 8, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1751, file: !1356, line: 1090, baseType: !2202, size: 128, offset: 14976)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2203, line: 13, size: 128, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2204 = !{!2205}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2202, file: !2203, line: 14, baseType: !218, size: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1751, file: !1356, line: 1097, baseType: !2207, size: 64, offset: 15104)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1356, line: 50, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1751, file: !1356, line: 1100, baseType: !2210, size: 64, offset: 15168)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1356, line: 1100, flags: DIFlagFwdDecl)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1751, file: !1356, line: 1103, baseType: !2213, size: 64, offset: 15232)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1356, line: 53, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1751, file: !1356, line: 1107, baseType: !2216, size: 64, offset: 15296)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1356, line: 56, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1751, file: !1356, line: 1110, baseType: !2219, size: 64, offset: 15360)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2221, line: 93, size: 8768, elements: !2222)
!2221 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2222 = !{!2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2272, !2281, !2282, !2284, !2285, !2286, !2289, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2327, !2328, !2335, !2345, !2348, !2349, !2352, !2353, !2354, !2355, !2356, !2357}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2220, file: !2221, line: 94, baseType: !781, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2220, file: !2221, line: 95, baseType: !266, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2220, file: !2221, line: 96, baseType: !85, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2220, file: !2221, line: 97, baseType: !85, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2220, file: !2221, line: 98, baseType: !218, size: 128, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2220, file: !2221, line: 100, baseType: !794, size: 192, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2220, file: !2221, line: 103, baseType: !1750, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2220, file: !2221, line: 106, baseType: !2231, size: 192, offset: 512)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1013, line: 32, size: 192, elements: !2232)
!2232 = !{!2233, !2234}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2231, file: !1013, line: 33, baseType: !218, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2231, file: !1013, line: 34, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2236, line: 25, baseType: !2237)
!2236 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2236, line: 23, size: 64, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2237, file: !2236, line: 24, baseType: !1988, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2220, file: !2221, line: 109, baseType: !585, size: 64, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2220, file: !2221, line: 112, baseType: !85, size: 32, offset: 768)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2220, file: !2221, line: 114, baseType: !85, size: 32, offset: 800)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2220, file: !2221, line: 115, baseType: !1750, size: 64, offset: 832)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2220, file: !2221, line: 118, baseType: !85, size: 32, offset: 896)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2220, file: !2221, line: 119, baseType: !7, size: 32, offset: 928)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2220, file: !2221, line: 121, baseType: !2247, size: 64, offset: 960)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2221, line: 80, size: 448, elements: !2249)
!2249 = !{!2250, !2251, !2257}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2248, file: !2221, line: 81, baseType: !266, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2248, file: !2221, line: 82, baseType: !2252, size: 128, offset: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2221, line: 75, size: 128, elements: !2253)
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2252, file: !2221, line: 76, baseType: !1750, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2252, file: !2221, line: 77, baseType: !2256, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2248, file: !2221, line: 83, baseType: !2140, size: 256, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2220, file: !2221, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2220, file: !2221, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2220, file: !2221, line: 138, baseType: !7, size: 32, offset: 1056)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2220, file: !2221, line: 139, baseType: !218, size: 128, offset: 1088)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2220, file: !2221, line: 142, baseType: !1861, size: 512, offset: 1216)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2220, file: !2221, line: 143, baseType: !1869, size: 64, offset: 1728)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2220, file: !2221, line: 150, baseType: !2265, size: 256, offset: 1792)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2266, size: 256, elements: !2270)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2221, line: 38, size: 128, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2266, file: !2221, line: 39, baseType: !468, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2266, file: !2221, line: 40, baseType: !468, size: 64, offset: 64)
!2270 = !{!2271}
!2271 = !DISubrange(count: 2)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2220, file: !2221, line: 156, baseType: !2273, size: 192, offset: 2048)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2221, line: 66, size: 192, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2273, file: !2221, line: 67, baseType: !2276, size: 192)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2221, line: 47, size: 192, elements: !2277)
!2277 = !{!2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2276, file: !2221, line: 48, baseType: !684, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2276, file: !2221, line: 49, baseType: !684, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2276, file: !2221, line: 50, baseType: !684, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2220, file: !2221, line: 160, baseType: !2169, size: 640, offset: 2240)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2220, file: !2221, line: 163, baseType: !2283, size: 256, offset: 2880)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 256, elements: !790)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2220, file: !2221, line: 169, baseType: !777, size: 64, offset: 3136)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2220, file: !2221, line: 172, baseType: !85, size: 32, offset: 3200)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2220, file: !2221, line: 174, baseType: !2287, size: 64, offset: 3264)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2221, line: 174, flags: DIFlagFwdDecl)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2220, file: !2221, line: 185, baseType: !2290, size: 64, offset: 3328)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !437, line: 860, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !437, line: 853, size: 64, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2291, file: !437, line: 858, baseType: !436, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2291, file: !437, line: 859, baseType: !246, size: 32, offset: 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2220, file: !2221, line: 186, baseType: !468, size: 64, offset: 3392)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2220, file: !2221, line: 186, baseType: !468, size: 64, offset: 3456)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2220, file: !2221, line: 186, baseType: !468, size: 64, offset: 3520)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2220, file: !2221, line: 186, baseType: !468, size: 64, offset: 3584)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2220, file: !2221, line: 187, baseType: !468, size: 64, offset: 3648)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2220, file: !2221, line: 188, baseType: !468, size: 64, offset: 3712)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2220, file: !2221, line: 189, baseType: !2157, size: 192, offset: 3776)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2220, file: !2221, line: 190, baseType: !182, size: 64, offset: 3968)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2220, file: !2221, line: 190, baseType: !182, size: 64, offset: 4032)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2220, file: !2221, line: 190, baseType: !182, size: 64, offset: 4096)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2220, file: !2221, line: 190, baseType: !182, size: 64, offset: 4160)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2220, file: !2221, line: 191, baseType: !182, size: 64, offset: 4224)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2220, file: !2221, line: 191, baseType: !182, size: 64, offset: 4288)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2220, file: !2221, line: 191, baseType: !182, size: 64, offset: 4352)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2220, file: !2221, line: 191, baseType: !182, size: 64, offset: 4416)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2220, file: !2221, line: 192, baseType: !182, size: 64, offset: 4480)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2220, file: !2221, line: 192, baseType: !182, size: 64, offset: 4544)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2220, file: !2221, line: 192, baseType: !182, size: 64, offset: 4608)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2220, file: !2221, line: 192, baseType: !182, size: 64, offset: 4672)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2220, file: !2221, line: 193, baseType: !182, size: 64, offset: 4736)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2220, file: !2221, line: 193, baseType: !182, size: 64, offset: 4800)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2220, file: !2221, line: 194, baseType: !2317, size: 448, offset: 4864)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2318, line: 12, size: 448, elements: !2319)
!2318 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2317, file: !2318, line: 15, baseType: !468, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2317, file: !2318, line: 17, baseType: !468, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2317, file: !2318, line: 19, baseType: !468, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2317, file: !2318, line: 21, baseType: !468, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2317, file: !2318, line: 29, baseType: !468, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2317, file: !2318, line: 35, baseType: !468, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2317, file: !2318, line: 44, baseType: !468, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2220, file: !2221, line: 202, baseType: !470, size: 64, offset: 5312)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2220, file: !2221, line: 213, baseType: !2329, size: 2048, offset: 5376)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2330, size: 2048, elements: !195)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2331, line: 43, size: 128, elements: !2332)
!2331 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2332 = !{!2333, !2334}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2330, file: !2331, line: 44, baseType: !365, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2330, file: !2331, line: 45, baseType: !365, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2220, file: !2221, line: 216, baseType: !2336, size: 448, offset: 7424)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2221, line: 30, size: 448, elements: !2337)
!2337 = !{!2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2336, file: !2221, line: 31, baseType: !85, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2336, file: !2221, line: 32, baseType: !352, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2336, file: !2221, line: 33, baseType: !182, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2336, file: !2221, line: 34, baseType: !468, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2336, file: !2221, line: 34, baseType: !468, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2336, file: !2221, line: 35, baseType: !182, size: 64, offset: 320)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2336, file: !2221, line: 35, baseType: !182, size: 64, offset: 384)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2220, file: !2221, line: 219, baseType: !2346, size: 64, offset: 7872)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2221, line: 219, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2220, file: !2221, line: 222, baseType: !7, size: 32, offset: 7936)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2220, file: !2221, line: 223, baseType: !2350, size: 64, offset: 8000)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2221, line: 223, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2220, file: !2221, line: 230, baseType: !925, size: 8, offset: 8064)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2220, file: !2221, line: 231, baseType: !894, size: 16, offset: 8080)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2220, file: !2221, line: 232, baseType: !894, size: 16, offset: 8096)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2220, file: !2221, line: 234, baseType: !1150, size: 64, offset: 8128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2220, file: !2221, line: 237, baseType: !678, size: 256, offset: 8192)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2220, file: !2221, line: 243, baseType: !866, size: 320, offset: 8448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1751, file: !1356, line: 1111, baseType: !2359, size: 64, offset: 15424)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2221, line: 20, size: 16640, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2360, file: !2221, line: 21, baseType: !246, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2360, file: !2221, line: 22, baseType: !781, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2360, file: !2221, line: 23, baseType: !794, size: 192, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2360, file: !2221, line: 24, baseType: !2366, size: 16384, offset: 256)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2367, size: 16384, elements: !321)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1013, line: 51, size: 256, elements: !2368)
!2368 = !{!2369}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2367, file: !1013, line: 52, baseType: !2370, size: 256)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1013, line: 37, size: 256, elements: !2371)
!2371 = !{!2372, !2379, !2380, !2386}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2370, file: !1013, line: 39, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2374, line: 83, baseType: !2375)
!2374 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2374, line: 82, baseType: !2377)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !85}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2370, file: !1013, line: 40, baseType: !182, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2370, file: !1013, line: 46, baseType: !2381, size: 64, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2374, line: 86, baseType: !2382)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2374, line: 85, baseType: !2384)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2370, file: !1013, line: 48, baseType: !2235, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1751, file: !1356, line: 1112, baseType: !2235, size: 64, offset: 15488)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1751, file: !1356, line: 1113, baseType: !2235, size: 64, offset: 15552)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1751, file: !1356, line: 1115, baseType: !2235, size: 64, offset: 15616)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1751, file: !1356, line: 1116, baseType: !2231, size: 192, offset: 15680)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1751, file: !1356, line: 1117, baseType: !182, size: 64, offset: 15872)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1751, file: !1356, line: 1118, baseType: !363, size: 64, offset: 15936)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1751, file: !1356, line: 1119, baseType: !7, size: 32, offset: 16000)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1751, file: !1356, line: 1121, baseType: !739, size: 64, offset: 16064)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1751, file: !1356, line: 1125, baseType: !2396, size: 64, offset: 16128)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1356, line: 43, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1751, file: !1356, line: 1127, baseType: !401, size: 32, offset: 16192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1751, file: !1356, line: 1128, baseType: !7, size: 32, offset: 16224)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1751, file: !1356, line: 1130, baseType: !2401, size: 128, offset: 16256)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2402, line: 37, size: 128, elements: !2403)
!2402 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2403 = !{!2404, !2405, !2406}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2401, file: !2402, line: 38, baseType: !85, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2401, file: !2402, line: 39, baseType: !266, size: 32, offset: 32)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2401, file: !2402, line: 40, baseType: !2407, size: 64, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2402, line: 24, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1751, file: !1356, line: 1131, baseType: !2410, size: 256, offset: 16384)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2411, line: 12, size: 256, elements: !2412)
!2411 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2412 = !{!2413, !2414, !2415, !2416}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2410, file: !2411, line: 13, baseType: !316, size: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2410, file: !2411, line: 14, baseType: !182, size: 64, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2410, file: !2411, line: 15, baseType: !182, size: 64, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2410, file: !2411, line: 16, baseType: !925, size: 8, offset: 192)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1751, file: !1356, line: 1134, baseType: !468, size: 64, offset: 16640)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1751, file: !1356, line: 1135, baseType: !468, size: 64, offset: 16704)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1751, file: !1356, line: 1138, baseType: !246, size: 32, offset: 16768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1751, file: !1356, line: 1141, baseType: !691, size: 32, offset: 16800)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1751, file: !1356, line: 1143, baseType: !2422, size: 64, offset: 16832)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1356, line: 735, size: 64, elements: !2423)
!2423 = !{!2424}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2422, file: !1356, line: 736, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1751, file: !1356, line: 1147, baseType: !1920, size: 128, offset: 16896)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1751, file: !1356, line: 1149, baseType: !1750, size: 64, offset: 17024)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1751, file: !1356, line: 1151, baseType: !2429, size: 64, offset: 17088)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1356, line: 1151, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1751, file: !1356, line: 1188, baseType: !179, size: 64, offset: 17152)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1751, file: !1356, line: 1191, baseType: !2433, size: 64, offset: 17216)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1356, line: 44, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1751, file: !1356, line: 1194, baseType: !2436, size: 64, offset: 17280)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1356, line: 45, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1751, file: !1356, line: 1197, baseType: !2439, size: 64, offset: 17344)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1356, line: 61, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1751, file: !1356, line: 1199, baseType: !2442, size: 64, offset: 17408)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2444, line: 99, size: 128, elements: !2445)
!2444 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2445 = !{!2446, !2447, !2448}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2443, file: !2444, line: 100, baseType: !682, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2443, file: !2444, line: 101, baseType: !266, size: 32, offset: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2443, file: !2444, line: 103, baseType: !286, size: 16, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1751, file: !1356, line: 1202, baseType: !2450, size: 64, offset: 17472)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1356, line: 48, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1751, file: !1356, line: 1205, baseType: !182, size: 64, offset: 17536)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1751, file: !1356, line: 1206, baseType: !2454, size: 64, offset: 17600)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1013, line: 14, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1013, line: 12, size: 384, elements: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_member, scope: !2456, file: !1013, line: 13, baseType: !2459, size: 384)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2456, file: !1013, line: 13, size: 384, elements: !2460)
!2460 = !{!2461, !2462, !2463, !2464}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2459, file: !1013, line: 13, baseType: !85, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2459, file: !1013, line: 13, baseType: !85, size: 32, offset: 32)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2459, file: !1013, line: 13, baseType: !85, size: 32, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2459, file: !1013, line: 13, baseType: !2465, size: 256, offset: 128)
!2465 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2466, line: 37, size: 256, elements: !2467)
!2466 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2467 = !{!2468, !2473, !2486, !2492, !2501, !2528, !2533}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2465, file: !2466, line: 42, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 39, size: 64, elements: !2470)
!2470 = !{!2471, !2472}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2469, file: !2466, line: 40, baseType: !2123, size: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2469, file: !2466, line: 41, baseType: !407, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2465, file: !2466, line: 50, baseType: !2474, size: 192)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 45, size: 192, elements: !2475)
!2475 = !{!2476, !2478, !2479, !2485}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2474, file: !2466, line: 46, baseType: !2477, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !350, line: 95, baseType: !85)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2474, file: !2466, line: 47, baseType: !85, size: 32, offset: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2474, file: !2466, line: 48, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2466, line: 11, baseType: !2481)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2466, line: 8, size: 64, elements: !2482)
!2482 = !{!2483, !2484}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2481, file: !2466, line: 9, baseType: !85, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2481, file: !2466, line: 10, baseType: !179, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2474, file: !2466, line: 49, baseType: !85, size: 32, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2465, file: !2466, line: 57, baseType: !2487, size: 128)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 53, size: 128, elements: !2488)
!2488 = !{!2489, !2490, !2491}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2487, file: !2466, line: 54, baseType: !2123, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2487, file: !2466, line: 55, baseType: !407, size: 32, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2487, file: !2466, line: 56, baseType: !2480, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2465, file: !2466, line: 66, baseType: !2493, size: 256)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 60, size: 256, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2500}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2493, file: !2466, line: 61, baseType: !2123, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2493, file: !2466, line: 62, baseType: !407, size: 32, offset: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2493, file: !2466, line: 63, baseType: !85, size: 32, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2493, file: !2466, line: 64, baseType: !2499, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !350, line: 94, baseType: !351)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2493, file: !2466, line: 65, baseType: !2499, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2465, file: !2466, line: 105, baseType: !2502, size: 256)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 69, size: 256, elements: !2503)
!2503 = !{!2504, !2505}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2502, file: !2466, line: 70, baseType: !179, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, scope: !2502, file: !2466, line: 79, baseType: !2506, size: 192, offset: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2502, file: !2466, line: 79, size: 192, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2517, !2522}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2506, file: !2466, line: 81, baseType: !85, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2506, file: !2466, line: 86, baseType: !894, size: 16)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2506, file: !2466, line: 92, baseType: !2511, size: 192)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !2466, line: 88, size: 192, elements: !2512)
!2512 = !{!2513, !2515, !2516}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2511, file: !2466, line: 89, baseType: !2514, size: 64)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !1904)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2511, file: !2466, line: 90, baseType: !179, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2511, file: !2466, line: 91, baseType: !179, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2506, file: !2466, line: 97, baseType: !2518, size: 96)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !2466, line: 94, size: 96, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2518, file: !2466, line: 95, baseType: !2514, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2518, file: !2466, line: 96, baseType: !465, size: 32, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2506, file: !2466, line: 103, baseType: !2523, size: 128)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2506, file: !2466, line: 99, size: 128, elements: !2524)
!2524 = !{!2525, !2526, !2527}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2523, file: !2466, line: 100, baseType: !182, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2523, file: !2466, line: 101, baseType: !465, size: 32, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2523, file: !2466, line: 102, baseType: !465, size: 32, offset: 96)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2465, file: !2466, line: 111, baseType: !2529, size: 128)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 108, size: 128, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2529, file: !2466, line: 109, baseType: !352, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2529, file: !2466, line: 110, baseType: !85, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2465, file: !2466, line: 118, baseType: !2534, size: 128)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2466, line: 114, size: 128, elements: !2535)
!2535 = !{!2536, !2537, !2538}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2534, file: !2466, line: 115, baseType: !179, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2534, file: !2466, line: 116, baseType: !85, size: 32, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2534, file: !2466, line: 117, baseType: !7, size: 32, offset: 96)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1751, file: !1356, line: 1208, baseType: !2317, size: 448, offset: 17664)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1751, file: !1356, line: 1215, baseType: !468, size: 64, offset: 18112)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1751, file: !1356, line: 1217, baseType: !468, size: 64, offset: 18176)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1751, file: !1356, line: 1219, baseType: !468, size: 64, offset: 18240)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1751, file: !1356, line: 1223, baseType: !2544, size: 64, offset: 18304)
!2544 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2545, line: 99, baseType: !2546)
!2545 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2545, line: 99, size: 64, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2546, file: !2545, line: 99, baseType: !1988, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1751, file: !1356, line: 1225, baseType: !436, size: 32, offset: 18368)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1751, file: !1356, line: 1226, baseType: !85, size: 32, offset: 18400)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1751, file: !1356, line: 1227, baseType: !85, size: 32, offset: 18432)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1751, file: !1356, line: 1231, baseType: !2553, size: 64, offset: 18496)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1356, line: 1231, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1751, file: !1356, line: 1233, baseType: !218, size: 128, offset: 18560)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1751, file: !1356, line: 1240, baseType: !2557, size: 64, offset: 18688)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1356, line: 62, flags: DIFlagFwdDecl)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1751, file: !1356, line: 1242, baseType: !2560, size: 64, offset: 18752)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1356, line: 1242, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1751, file: !1356, line: 1244, baseType: !218, size: 128, offset: 18816)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1751, file: !1356, line: 1245, baseType: !2564, size: 64, offset: 18944)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1356, line: 51, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1751, file: !1356, line: 1246, baseType: !678, size: 256, offset: 19008)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1751, file: !1356, line: 1247, baseType: !7, size: 32, offset: 19264)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1751, file: !1356, line: 1250, baseType: !2569, size: 64, offset: 19328)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1356, line: 57, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1751, file: !1356, line: 1251, baseType: !678, size: 256, offset: 19392)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1751, file: !1356, line: 1252, baseType: !218, size: 128, offset: 19648)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1751, file: !1356, line: 1259, baseType: !1354, size: 64, offset: 19776)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1751, file: !1356, line: 1260, baseType: !894, size: 16, offset: 19840)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1751, file: !1356, line: 1261, baseType: !894, size: 16, offset: 19856)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1751, file: !1356, line: 1314, baseType: !2577, size: 64, offset: 19904)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2579, line: 62, size: 256, align: 256, elements: !2580)
!2579 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2578, file: !2579, line: 75, baseType: !465, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2578, file: !2579, line: 90, baseType: !465, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2578, file: !2579, line: 112, baseType: !469, size: 64, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2578, file: !2579, line: 132, baseType: !465, size: 32, offset: 128)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2578, file: !2579, line: 140, baseType: !465, size: 32, offset: 160)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2578, file: !2579, line: 149, baseType: !465, size: 32, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2578, file: !2579, line: 154, baseType: !2588, offset: 224)
!2588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !809)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1751, file: !1356, line: 1315, baseType: !464, size: 32, offset: 19968)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1751, file: !1356, line: 1316, baseType: !464, size: 32, offset: 20000)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1751, file: !1356, line: 1321, baseType: !182, size: 64, offset: 20032)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1751, file: !1356, line: 1325, baseType: !85, size: 32, offset: 20096)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1751, file: !1356, line: 1326, baseType: !85, size: 32, offset: 20128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1751, file: !1356, line: 1327, baseType: !85, size: 32, offset: 20160)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1751, file: !1356, line: 1328, baseType: !85, size: 32, offset: 20192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1751, file: !1356, line: 1329, baseType: !736, size: 128, align: 64, offset: 20224)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1751, file: !1356, line: 1332, baseType: !2598, size: 128, offset: 20352)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2599, line: 51, size: 128, elements: !2600)
!2599 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2600 = !{!2601, !2606, !2607}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2598, file: !2599, line: 60, baseType: !2602, size: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2603, line: 7, size: 64, elements: !2604)
!2603 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2604 = !{!2605}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2602, file: !2603, line: 12, baseType: !1985, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2598, file: !2599, line: 63, baseType: !925, size: 8, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2598, file: !2599, line: 70, baseType: !925, size: 8, offset: 72)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1751, file: !1356, line: 1335, baseType: !1394, size: 64, offset: 20480)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1751, file: !1356, line: 1337, baseType: !2610, size: 128, offset: 20544)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2599, line: 39, size: 128, elements: !2611)
!2611 = !{!2612, !2673, !2674}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2610, file: !2599, line: 40, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1138, line: 74, size: 512, align: 128, elements: !2615)
!2615 = !{!2616, !2617, !2667, !2672}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2614, file: !1138, line: 75, baseType: !182, size: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !1138, line: 83, baseType: !2618, size: 320, offset: 64)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !1138, line: 83, size: 320, elements: !2619)
!2619 = !{!2620, !2641, !2655, !2659, !2666}
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !1138, line: 84, baseType: !2621, size: 320)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !1138, line: 84, size: 320, elements: !2622)
!2622 = !{!2623, !2634, !2635, !2640}
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1138, line: 90, baseType: !2624, size: 128)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2621, file: !1138, line: 90, size: 128, elements: !2625)
!2625 = !{!2626, !2627, !2632, !2633}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2624, file: !1138, line: 91, baseType: !218, size: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !2624, file: !1138, line: 94, baseType: !2628, size: 128)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2624, file: !1138, line: 94, size: 128, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2628, file: !1138, line: 96, baseType: !179, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2628, file: !1138, line: 98, baseType: !7, size: 32, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2624, file: !1138, line: 102, baseType: !218, size: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2624, file: !1138, line: 103, baseType: !218, size: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2621, file: !1138, line: 106, baseType: !391, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2621, file: !1138, line: 107, baseType: !2636, size: 64, offset: 192)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2621, file: !1138, line: 107, size: 64, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2636, file: !1138, line: 108, baseType: !182, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2636, file: !1138, line: 109, baseType: !182, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2621, file: !1138, line: 117, baseType: !182, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !1138, line: 119, baseType: !2642, size: 320)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !1138, line: 119, size: 320, elements: !2643)
!2643 = !{!2644, !2645, !2648, !2649, !2650}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2642, file: !1138, line: 124, baseType: !182, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2642, file: !1138, line: 125, baseType: !2646, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1138, line: 125, flags: DIFlagFwdDecl)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2642, file: !1138, line: 126, baseType: !182, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2642, file: !1138, line: 127, baseType: !182, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2642, file: !1138, line: 128, baseType: !2651, size: 64, offset: 256)
!2651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2642, file: !1138, line: 128, size: 64, elements: !2652)
!2652 = !{!2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2651, file: !1138, line: 133, baseType: !182, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2651, file: !1138, line: 138, baseType: !682, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !1138, line: 141, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !1138, line: 141, size: 64, elements: !2657)
!2657 = !{!2658}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2656, file: !1138, line: 142, baseType: !182, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2618, file: !1138, line: 144, baseType: !2660, size: 128)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2618, file: !1138, line: 144, size: 128, elements: !2661)
!2661 = !{!2662, !2665}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2660, file: !1138, line: 146, baseType: !2663, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1138, line: 146, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2660, file: !1138, line: 147, baseType: !179, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2618, file: !1138, line: 161, baseType: !736, size: 128, align: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, scope: !2614, file: !1138, line: 164, baseType: !2668, size: 32, offset: 384)
!2668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2614, file: !1138, line: 164, size: 32, elements: !2669)
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2668, file: !1138, line: 169, baseType: !266, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2668, file: !1138, line: 177, baseType: !7, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2614, file: !1138, line: 181, baseType: !266, size: 32, offset: 416)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2610, file: !2599, line: 42, baseType: !465, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2610, file: !2599, line: 43, baseType: !465, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1751, file: !1356, line: 1340, baseType: !2676, size: 64, offset: 20672)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1356, line: 69, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1751, file: !1356, line: 1351, baseType: !85, size: 32, offset: 20736)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1751, file: !1356, line: 1352, baseType: !85, size: 32, offset: 20768)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1751, file: !1356, line: 1354, baseType: !182, size: 64, offset: 20800)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1751, file: !1356, line: 1364, baseType: !468, size: 64, offset: 20864)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1751, file: !1356, line: 1365, baseType: !468, size: 64, offset: 20928)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1751, file: !1356, line: 1412, baseType: !182, size: 64, offset: 20992)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1751, file: !1356, line: 1453, baseType: !2685, size: 64, offset: 21056)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1356, line: 1453, flags: DIFlagFwdDecl)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1751, file: !1356, line: 1457, baseType: !2688, size: 64, offset: 21120)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2690)
!2690 = !{!2691, !2692, !2711, !2714, !2715, !2748, !2758}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2689, file: !44, line: 62, baseType: !43, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, scope: !2689, file: !44, line: 64, baseType: !2693, size: 192, offset: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2689, file: !44, line: 64, size: 192, elements: !2694)
!2694 = !{!2695, !2706}
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2693, file: !44, line: 65, baseType: !2696, size: 192)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2693, file: !44, line: 65, size: 192, elements: !2697)
!2697 = !{!2698, !2705}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2696, file: !44, line: 66, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2700, line: 50, size: 128, elements: !2701)
!2700 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2701 = !{!2702, !2703, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2699, file: !2700, line: 52, baseType: !182, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2699, file: !2700, line: 54, baseType: !7, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2699, file: !2700, line: 55, baseType: !7, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2696, file: !44, line: 67, baseType: !182, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2693, file: !44, line: 70, baseType: !2707, size: 192)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2693, file: !44, line: 70, size: 192, elements: !2708)
!2708 = !{!2709, !2710}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2707, file: !44, line: 71, baseType: !736, size: 128, align: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2707, file: !44, line: 72, baseType: !182, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2689, file: !44, line: 76, baseType: !2712, size: 64, offset: 256)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2689, file: !44, line: 77, baseType: !182, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2689, file: !44, line: 79, baseType: !2716, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2700, line: 25, size: 256, elements: !2718)
!2718 = !{!2719, !2725, !2729}
!2719 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !2700, line: 26, baseType: !2720, size: 128)
!2720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2717, file: !2700, line: 26, size: 128, elements: !2721)
!2721 = !{!2722, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2720, file: !2700, line: 27, baseType: !2723, size: 128)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, elements: !195)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2720, file: !2700, line: 28, baseType: !2723, size: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2717, file: !2700, line: 31, baseType: !2726, size: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2728)
!2728 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2700, line: 23, flags: DIFlagFwdDecl)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !2717, file: !2700, line: 33, baseType: !2730, size: 64, offset: 192)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2717, file: !2700, line: 33, size: 64, elements: !2731)
!2731 = !{!2732, !2738, !2743}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2730, file: !2700, line: 38, baseType: !2733, size: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !2700, line: 34, size: 64, elements: !2734)
!2734 = !{!2735, !2736, !2737}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2733, file: !2700, line: 35, baseType: !851, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2733, file: !2700, line: 36, baseType: !274, size: 8, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2733, file: !2700, line: 37, baseType: !274, size: 8, offset: 40)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2730, file: !2700, line: 42, baseType: !2739, size: 16)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !2700, line: 39, size: 16, elements: !2740)
!2740 = !{!2741, !2742}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2739, file: !2700, line: 40, baseType: !274, size: 8)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2739, file: !2700, line: 41, baseType: !274, size: 8, offset: 8)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2730, file: !2700, line: 46, baseType: !2744, size: 16)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !2700, line: 43, size: 16, elements: !2745)
!2745 = !{!2746, !2747}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2744, file: !2700, line: 44, baseType: !274, size: 8)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2744, file: !2700, line: 45, baseType: !274, size: 8, offset: 8)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2689, file: !44, line: 81, baseType: !2749, size: 64, offset: 448)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755, !2756, !2757}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2750, file: !44, line: 86, baseType: !2712, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2750, file: !44, line: 87, baseType: !182, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2750, file: !44, line: 88, baseType: !182, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2750, file: !44, line: 89, baseType: !182, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2750, file: !44, line: 90, baseType: !925, size: 8, offset: 256)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2750, file: !44, line: 92, baseType: !2749, size: 64, offset: 320)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2689, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1751, file: !1356, line: 1463, baseType: !2760, offset: 21184)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1356, line: 739, elements: !597)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1751, file: !1356, line: 1470, baseType: !736, size: 128, align: 64, offset: 21184)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1751, file: !1356, line: 1471, baseType: !781, size: 32, offset: 21312)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1751, file: !1356, line: 1472, baseType: !85, size: 32, offset: 21344)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1751, file: !1356, line: 1474, baseType: !1750, size: 64, offset: 21376)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1751, file: !1356, line: 1475, baseType: !2766, size: 320, offset: 21440)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2767, line: 11, size: 320, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2768 = !{!2769, !2770, !2771, !2776}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2766, file: !2767, line: 16, baseType: !589, size: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2766, file: !2767, line: 17, baseType: !182, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2766, file: !2767, line: 18, baseType: !2772, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{null, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2766, file: !2767, line: 19, baseType: !464, size: 32, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1751, file: !1356, line: 1478, baseType: !2778, size: 64, offset: 21760)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1356, line: 1478, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1751, file: !1356, line: 1482, baseType: !781, size: 32, offset: 21824)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1751, file: !1356, line: 1489, baseType: !179, size: 64, offset: 21888)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1751, file: !1356, line: 1504, baseType: !179, size: 64, offset: 21952)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1751, file: !1356, line: 1505, baseType: !469, size: 64, offset: 22016)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1751, file: !1356, line: 1506, baseType: !468, size: 64, offset: 22080)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1751, file: !1356, line: 1507, baseType: !469, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1751, file: !1356, line: 1508, baseType: !469, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1751, file: !1356, line: 1509, baseType: !469, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1751, file: !1356, line: 1510, baseType: !736, size: 128, align: 64, offset: 22208)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1751, file: !1356, line: 1511, baseType: !85, size: 32, offset: 22336)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1751, file: !1356, line: 1515, baseType: !2791, size: 64, offset: 22400)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !731, line: 56, size: 64, elements: !2792)
!2792 = !{!2793}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2791, file: !731, line: 57, baseType: !734, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1751, file: !1356, line: 1518, baseType: !2791, size: 64, offset: 22464)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1751, file: !1356, line: 1528, baseType: !736, size: 128, align: 64, offset: 22528)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1751, file: !1356, line: 1552, baseType: !2797, size: 35328, offset: 23040)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2798, line: 430, size: 35328, elements: !2799)
!2798 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2799 = !{!2800, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2829, !2830, !2831, !2832, !2833, !2834, !2837, !2838, !2839, !2840}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2797, file: !2798, line: 432, baseType: !2801, size: 192)
!2801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2802, size: 192, elements: !317)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2803, line: 16, size: 64, elements: !2804)
!2803 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2802, file: !2803, line: 17, baseType: !284, size: 16)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2802, file: !2803, line: 18, baseType: !284, size: 16, offset: 16)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2802, file: !2803, line: 19, baseType: !284, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2802, file: !2803, line: 19, baseType: !284, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2802, file: !2803, line: 19, baseType: !284, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2802, file: !2803, line: 19, baseType: !284, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2802, file: !2803, line: 19, baseType: !284, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2802, file: !2803, line: 20, baseType: !284, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2802, file: !2803, line: 20, baseType: !284, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2802, file: !2803, line: 20, baseType: !284, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2802, file: !2803, line: 20, baseType: !284, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2802, file: !2803, line: 20, baseType: !284, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2802, file: !2803, line: 20, baseType: !284, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2797, file: !2798, line: 436, baseType: !182, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2797, file: !2798, line: 440, baseType: !286, size: 16, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2797, file: !2798, line: 441, baseType: !286, size: 16, offset: 272)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2797, file: !2798, line: 442, baseType: !286, size: 16, offset: 288)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2797, file: !2798, line: 443, baseType: !286, size: 16, offset: 304)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2797, file: !2798, line: 447, baseType: !182, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2797, file: !2798, line: 448, baseType: !182, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2797, file: !2798, line: 459, baseType: !2826, size: 256, offset: 448)
!2826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2827, size: 256, elements: !790)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2798, line: 428, flags: DIFlagFwdDecl)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2797, file: !2798, line: 461, baseType: !182, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2797, file: !2798, line: 463, baseType: !182, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2797, file: !2798, line: 465, baseType: !182, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2797, file: !2798, line: 466, baseType: !182, size: 64, offset: 896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2797, file: !2798, line: 467, baseType: !182, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2797, file: !2798, line: 473, baseType: !2835, size: 64, offset: 1024)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2798, line: 10, flags: DIFlagFwdDecl)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2797, file: !2798, line: 480, baseType: !182, size: 64, offset: 1088)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2797, file: !2798, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2797, file: !2798, line: 491, baseType: !464, size: 32, offset: 1184)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2797, file: !2798, line: 501, baseType: !2841, size: 33792, offset: 1536)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2842, line: 448, size: 33792, elements: !2843)
!2842 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2843 = !{!2844, !2845, !2846, !3008, !3009, !3015, !3016}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2841, file: !2842, line: 461, baseType: !7, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2841, file: !2842, line: 468, baseType: !182, size: 64, offset: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2841, file: !2842, line: 476, baseType: !2847, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2842, line: 356, size: 33280, align: 512, elements: !2849)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2848, file: !2842, line: 358, baseType: !7, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2848, file: !2842, line: 361, baseType: !7, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2848, file: !2842, line: 364, baseType: !468, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2848, file: !2842, line: 367, baseType: !468, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2848, file: !2842, line: 370, baseType: !468, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2848, file: !2842, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2848, file: !2842, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2848, file: !2842, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2848, file: !2842, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2848, file: !2842, line: 397, baseType: !2860, size: 32768, offset: 512)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2842, line: 348, size: 32768, elements: !2861)
!2861 = !{!2862, !2877, !2914, !2991, !3004}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2860, file: !2842, line: 349, baseType: !2863, size: 896)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2842, line: 12, size: 896, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2876}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2863, file: !2842, line: 13, baseType: !464, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2863, file: !2842, line: 14, baseType: !464, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2863, file: !2842, line: 15, baseType: !464, size: 32, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2863, file: !2842, line: 16, baseType: !464, size: 32, offset: 96)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2863, file: !2842, line: 17, baseType: !464, size: 32, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2863, file: !2842, line: 18, baseType: !464, size: 32, offset: 160)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2863, file: !2842, line: 19, baseType: !464, size: 32, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2863, file: !2842, line: 22, baseType: !2873, size: 640, offset: 224)
!2873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 640, elements: !2874)
!2874 = !{!2875}
!2875 = !DISubrange(count: 20)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2863, file: !2842, line: 25, baseType: !464, size: 32, offset: 864)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2860, file: !2842, line: 350, baseType: !2878, size: 4096, align: 128)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2842, line: 34, size: 4096, align: 128, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2899, !2900, !2901, !2903, !2905, !2909}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2878, file: !2842, line: 35, baseType: !284, size: 16)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2878, file: !2842, line: 36, baseType: !284, size: 16, offset: 16)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2878, file: !2842, line: 37, baseType: !284, size: 16, offset: 32)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2878, file: !2842, line: 38, baseType: !284, size: 16, offset: 48)
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !2842, line: 39, baseType: !2885, size: 128, offset: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !2842, line: 39, size: 128, elements: !2886)
!2886 = !{!2887, !2892}
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !2842, line: 40, baseType: !2888, size: 128)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2842, line: 40, size: 128, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2888, file: !2842, line: 41, baseType: !468, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2888, file: !2842, line: 42, baseType: !468, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !2842, line: 44, baseType: !2893, size: 128)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2842, line: 44, size: 128, elements: !2894)
!2894 = !{!2895, !2896, !2897, !2898}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2893, file: !2842, line: 45, baseType: !464, size: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2893, file: !2842, line: 46, baseType: !464, size: 32, offset: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2893, file: !2842, line: 47, baseType: !464, size: 32, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2893, file: !2842, line: 48, baseType: !464, size: 32, offset: 96)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2878, file: !2842, line: 51, baseType: !464, size: 32, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2878, file: !2842, line: 52, baseType: !464, size: 32, offset: 224)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2878, file: !2842, line: 55, baseType: !2902, size: 1024, offset: 256)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 1024, elements: !200)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2878, file: !2842, line: 58, baseType: !2904, size: 2048, offset: 1280)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 2048, elements: !321)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2878, file: !2842, line: 60, baseType: !2906, size: 384, offset: 3328)
!2906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !464, size: 384, elements: !2907)
!2907 = !{!2908}
!2908 = !DISubrange(count: 12)
!2909 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !2842, line: 62, baseType: !2910, size: 384, offset: 3712)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !2842, line: 62, size: 384, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2910, file: !2842, line: 63, baseType: !2906, size: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2910, file: !2842, line: 64, baseType: !2906, size: 384)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2860, file: !2842, line: 351, baseType: !2915, size: 1088)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2842, line: 79, size: 1088, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2990}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2915, file: !2842, line: 80, baseType: !464, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2915, file: !2842, line: 81, baseType: !464, size: 32, offset: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2915, file: !2842, line: 82, baseType: !464, size: 32, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2915, file: !2842, line: 83, baseType: !464, size: 32, offset: 96)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2915, file: !2842, line: 84, baseType: !464, size: 32, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2915, file: !2842, line: 85, baseType: !464, size: 32, offset: 160)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2915, file: !2842, line: 86, baseType: !464, size: 32, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2915, file: !2842, line: 88, baseType: !2873, size: 640, offset: 224)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2915, file: !2842, line: 89, baseType: !274, size: 8, offset: 864)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2915, file: !2842, line: 90, baseType: !274, size: 8, offset: 872)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2915, file: !2842, line: 91, baseType: !274, size: 8, offset: 880)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2915, file: !2842, line: 92, baseType: !274, size: 8, offset: 888)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2915, file: !2842, line: 93, baseType: !274, size: 8, offset: 896)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2915, file: !2842, line: 94, baseType: !274, size: 8, offset: 904)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2915, file: !2842, line: 95, baseType: !2932, size: 64, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2934, line: 11, size: 128, elements: !2935)
!2934 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2935 = !{!2936, !2937}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2933, file: !2934, line: 12, baseType: !352, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2933, file: !2934, line: 13, baseType: !2938, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2940, line: 103, size: 1344, elements: !2941)
!2940 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2970, !2971, !2972}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2939, file: !2940, line: 109, baseType: !182, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2939, file: !2940, line: 110, baseType: !182, size: 64, offset: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2939, file: !2940, line: 111, baseType: !182, size: 64, offset: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2939, file: !2940, line: 112, baseType: !182, size: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2939, file: !2940, line: 113, baseType: !182, size: 64, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2939, file: !2940, line: 114, baseType: !182, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2939, file: !2940, line: 117, baseType: !182, size: 64, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2939, file: !2940, line: 118, baseType: !182, size: 64, offset: 448)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2939, file: !2940, line: 119, baseType: !182, size: 64, offset: 512)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2939, file: !2940, line: 120, baseType: !182, size: 64, offset: 576)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2939, file: !2940, line: 121, baseType: !182, size: 64, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2939, file: !2940, line: 122, baseType: !182, size: 64, offset: 704)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2939, file: !2940, line: 123, baseType: !182, size: 64, offset: 768)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2939, file: !2940, line: 124, baseType: !182, size: 64, offset: 832)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2939, file: !2940, line: 125, baseType: !182, size: 64, offset: 896)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2939, file: !2940, line: 139, baseType: !182, size: 64, offset: 960)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2939, file: !2940, line: 142, baseType: !182, size: 64, offset: 1024)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2939, file: !2940, line: 144, baseType: !2960, size: 64, offset: 1088)
!2960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2939, file: !2940, line: 144, size: 64, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2960, file: !2940, line: 146, baseType: !284, size: 16)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2960, file: !2940, line: 148, baseType: !468, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2960, file: !2940, line: 150, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2940, line: 59, size: 64, elements: !2966)
!2966 = !{!2967, !2968, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2965, file: !2940, line: 61, baseType: !468, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2965, file: !2940, line: 63, baseType: !468, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2965, file: !2940, line: 65, baseType: !468, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2939, file: !2940, line: 153, baseType: !182, size: 64, offset: 1152)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2939, file: !2940, line: 154, baseType: !182, size: 64, offset: 1216)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2939, file: !2940, line: 156, baseType: !2973, size: 64, offset: 1280)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2939, file: !2940, line: 156, size: 64, elements: !2974)
!2974 = !{!2975, !2976, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2973, file: !2940, line: 158, baseType: !284, size: 16)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2973, file: !2940, line: 160, baseType: !468, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2973, file: !2940, line: 162, baseType: !2978, size: 64)
!2978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2940, line: 69, size: 64, elements: !2979)
!2979 = !{!2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2978, file: !2940, line: 71, baseType: !468, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2978, file: !2940, line: 73, baseType: !468, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2978, file: !2940, line: 75, baseType: !468, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2978, file: !2940, line: 77, baseType: !468, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2978, file: !2940, line: 80, baseType: !468, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2978, file: !2940, line: 83, baseType: !468, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2978, file: !2940, line: 86, baseType: !468, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2978, file: !2940, line: 88, baseType: !468, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2978, file: !2940, line: 93, baseType: !468, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2978, file: !2940, line: 100, baseType: !468, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2915, file: !2842, line: 96, baseType: !464, size: 32, offset: 1024)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2860, file: !2842, line: 352, baseType: !2992, size: 4608, align: 512)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2842, line: 333, size: 4608, align: 512, elements: !2993)
!2993 = !{!2994, !2995, !3002}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2992, file: !2842, line: 334, baseType: !2878, size: 4096, align: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2992, file: !2842, line: 335, baseType: !2996, size: 512, offset: 4096)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2842, line: 312, size: 512, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2996, file: !2842, line: 313, baseType: !468, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2996, file: !2842, line: 314, baseType: !468, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2996, file: !2842, line: 315, baseType: !3001, size: 384, offset: 128)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 384, elements: !912)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2992, file: !2842, line: 336, baseType: !3003, offset: 4608)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, elements: !809)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2860, file: !2842, line: 353, baseType: !3005, size: 32768)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 32768, elements: !3006)
!3006 = !{!3007}
!3007 = !DISubrange(count: 4096)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2841, file: !2842, line: 484, baseType: !2847, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2841, file: !2842, line: 491, baseType: !3010, size: 128, offset: 256)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2842, line: 404, size: 128, elements: !3011)
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3010, file: !2842, line: 424, baseType: !468, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3010, file: !2842, line: 432, baseType: !7, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3010, file: !2842, line: 440, baseType: !7, size: 32, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2841, file: !2842, line: 498, baseType: !3010, size: 128, offset: 384)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2841, file: !2842, line: 508, baseType: !2848, size: 33280, align: 512, offset: 512)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1732, file: !1733, line: 16, baseType: !794, size: 192, offset: 512)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1732, file: !1733, line: 17, baseType: !266, size: 32, offset: 704)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !545, file: !14, line: 1240, baseType: !179, size: 64, offset: 6912)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !545, file: !14, line: 1243, baseType: !464, size: 32, offset: 6976)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !545, file: !14, line: 1245, baseType: !882, size: 64, offset: 7040)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !545, file: !14, line: 1246, baseType: !882, size: 64, offset: 7104)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !545, file: !14, line: 1248, baseType: !465, size: 32, offset: 7168)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !545, file: !14, line: 1249, baseType: !3025, size: 64, offset: 7232)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !545, file: !14, line: 1252, baseType: !199, size: 256, offset: 7296)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !545, file: !14, line: 1253, baseType: !3029, size: 128, offset: 7552)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3030, line: 21, baseType: !3031)
!3030 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3030, line: 19, size: 128, elements: !3032)
!3032 = !{!3033}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3031, file: !3030, line: 20, baseType: !3034, size: 128)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !276, size: 128, elements: !195)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !545, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !545, file: !14, line: 1261, baseType: !678, size: 256, offset: 7744)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !545, file: !14, line: 1267, baseType: !235, size: 64, offset: 8000)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !545, file: !14, line: 1269, baseType: !491, size: 64, offset: 8064)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !545, file: !14, line: 1271, baseType: !3040, size: 448, offset: 8128)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1512, line: 63, size: 448, elements: !3041)
!3041 = !{!3042, !3047, !3048, !3049, !3050, !3051, !3052}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3040, file: !1512, line: 64, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!182, !3046, !1510}
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3040, file: !1512, line: 66, baseType: !3043, size: 64, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3040, file: !1512, line: 69, baseType: !352, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3040, file: !1512, line: 70, baseType: !85, size: 32, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !1512, line: 71, baseType: !7, size: 32, offset: 224)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3040, file: !1512, line: 74, baseType: !218, size: 128, offset: 256)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3040, file: !1512, line: 85, baseType: !3053, size: 64, offset: 384)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !545, file: !14, line: 1274, baseType: !682, size: 64, offset: 8576)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !545, file: !14, line: 1280, baseType: !682, size: 64, offset: 8640)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !545, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !545, file: !14, line: 1286, baseType: !1444, size: 32, offset: 8736)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !545, file: !14, line: 1289, baseType: !3059, size: 64, offset: 8768)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !143, line: 18, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !545, file: !14, line: 1290, baseType: !585, size: 64, offset: 8832)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !545, file: !14, line: 1297, baseType: !1008, size: 64, offset: 8896)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !545, file: !14, line: 1304, baseType: !3064, size: 64, offset: 8960)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3065, line: 49, size: 64, elements: !3066)
!3065 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3064, file: !3065, line: 50, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3065, line: 41, size: 512, align: 512, elements: !3070)
!3070 = !{!3071, !3072, !3077}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3069, file: !3065, line: 43, baseType: !246, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3069, file: !3065, line: 45, baseType: !3073, size: 192, offset: 64)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3065, line: 29, size: 192, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3073, file: !3065, line: 30, baseType: !218, size: 128)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3073, file: !3065, line: 32, baseType: !352, size: 64, offset: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3069, file: !3065, line: 46, baseType: !352, size: 64, offset: 256)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !545, file: !14, line: 1305, baseType: !3064, size: 64, offset: 9024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !545, file: !14, line: 1306, baseType: !736, size: 128, align: 64, offset: 9088)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !545, file: !14, line: 1307, baseType: !1304, size: 256, offset: 9216)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !545, file: !14, line: 1309, baseType: !678, size: 256, offset: 9472)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !545, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !545, file: !14, line: 1317, baseType: !246, size: 32, align: 512, offset: 10240)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !545, file: !14, line: 1318, baseType: !218, size: 128, offset: 10304)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !545, file: !14, line: 1320, baseType: !246, size: 32, offset: 10432)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !545, file: !14, line: 1321, baseType: !218, size: 128, offset: 10496)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !539, file: !540, line: 73, baseType: !85, size: 32, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !539, file: !540, line: 74, baseType: !3089, size: 64, offset: 192)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !833, line: 42, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !493, file: !432, line: 141, baseType: !3093, size: 64, offset: 704)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!85, !1572, !925}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !493, file: !432, line: 142, baseType: !3097, size: 64, offset: 768)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!430, !430, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !431, file: !432, line: 96, baseType: !544, size: 64, offset: 832)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !431, file: !432, line: 97, baseType: !182, size: 64, offset: 896)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !431, file: !432, line: 98, baseType: !179, size: 64, offset: 960)
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !431, file: !432, line: 100, baseType: !3106, size: 128, offset: 1024)
!3106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 100, size: 128, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3106, file: !432, line: 101, baseType: !218, size: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3106, file: !432, line: 102, baseType: !1125, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !431, file: !432, line: 104, baseType: !218, size: 128, offset: 1152)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !431, file: !432, line: 105, baseType: !218, size: 128, offset: 1280)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !431, file: !432, line: 113, baseType: !3113, size: 128, offset: 1408)
!3113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !431, file: !432, line: 109, size: 128, elements: !3114)
!3114 = !{!3115, !3116, !3117}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3113, file: !432, line: 110, baseType: !589, size: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3113, file: !432, line: 111, baseType: !446, size: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3113, file: !432, line: 112, baseType: !736, size: 128, align: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !424, file: !14, line: 1968, baseType: !3119, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!235, !430, !395, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3124, line: 10, size: 128, elements: !3125)
!3124 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3125 = !{!3126, !3130}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3123, file: !3124, line: 11, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !179}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3123, file: !3124, line: 12, baseType: !179, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !424, file: !14, line: 1969, baseType: !3132, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!85, !3089, !395, !85}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !424, file: !14, line: 1970, baseType: !3136, size: 64, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!418, !395, !85, !925}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !424, file: !14, line: 1972, baseType: !3140, size: 64, offset: 256)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!85, !430, !316, !85}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !424, file: !14, line: 1974, baseType: !3144, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!85, !3089, !395, !430, !358, !925}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !424, file: !14, line: 1976, baseType: !3148, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!85, !430, !395, !430}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !424, file: !14, line: 1977, baseType: !3152, size: 64, offset: 448)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!85, !395, !430}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !424, file: !14, line: 1978, baseType: !3156, size: 64, offset: 512)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!85, !3089, !395, !430, !235}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !424, file: !14, line: 1980, baseType: !3160, size: 64, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!85, !3089, !395, !430, !358}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !424, file: !14, line: 1982, baseType: !3152, size: 64, offset: 640)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !424, file: !14, line: 1983, baseType: !3165, size: 64, offset: 704)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!85, !3089, !395, !430, !358, !549}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !424, file: !14, line: 1985, baseType: !3169, size: 64, offset: 768)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!85, !3089, !395, !430, !395, !430, !7}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !424, file: !14, line: 1987, baseType: !3173, size: 64, offset: 832)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!85, !3089, !430, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3178)
!3178 = !{!3179, !3180, !3181, !3191, !3200, !3201, !3206, !3207, !3208}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3177, file: !14, line: 227, baseType: !7, size: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3177, file: !14, line: 228, baseType: !358, size: 16, offset: 32)
!3181 = !DIDerivedType(tag: DW_TAG_member, scope: !3177, file: !14, line: 241, baseType: !3182, size: 32, offset: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3177, file: !14, line: 241, size: 32, elements: !3183)
!3183 = !{!3184, !3185}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3182, file: !14, line: 242, baseType: !401, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3182, file: !14, line: 243, baseType: !3186, size: 32)
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3187, line: 16, baseType: !3188)
!3187 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3187, line: 14, size: 32, elements: !3189)
!3189 = !{!3190}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3188, file: !3187, line: 15, baseType: !406, size: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, scope: !3177, file: !14, line: 245, baseType: !3192, size: 32, offset: 96)
!3192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3177, file: !14, line: 245, size: 32, elements: !3193)
!3193 = !{!3194, !3195}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3192, file: !14, line: 246, baseType: !410, size: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3192, file: !14, line: 247, baseType: !3196, size: 32)
!3196 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3187, line: 20, baseType: !3197)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3187, line: 18, size: 32, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3197, file: !3187, line: 19, baseType: !414, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3177, file: !14, line: 249, baseType: !554, size: 64, offset: 128)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3177, file: !14, line: 250, baseType: !3202, size: 128, offset: 192)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !883, line: 13, size: 128, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3202, file: !883, line: 14, baseType: !882, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3202, file: !883, line: 15, baseType: !352, size: 64, offset: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3177, file: !14, line: 251, baseType: !3202, size: 128, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3177, file: !14, line: 252, baseType: !3202, size: 128, offset: 448)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3177, file: !14, line: 259, baseType: !1053, size: 64, offset: 576)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !424, file: !14, line: 1988, baseType: !3210, size: 64, offset: 896)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{!85, !3089, !1572, !3213, !464, !7}
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3215, line: 22, size: 1280, elements: !3216)
!3215 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3216 = !{!3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3214, file: !3215, line: 23, baseType: !464, size: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3214, file: !3215, line: 24, baseType: !358, size: 16, offset: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3214, file: !3215, line: 25, baseType: !7, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3214, file: !3215, line: 26, baseType: !890, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3214, file: !3215, line: 27, baseType: !468, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3214, file: !3215, line: 28, baseType: !468, size: 64, offset: 192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3214, file: !3215, line: 41, baseType: !468, size: 64, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3214, file: !3215, line: 42, baseType: !549, size: 32, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3214, file: !3215, line: 43, baseType: !549, size: 32, offset: 352)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3214, file: !3215, line: 44, baseType: !401, size: 32, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3214, file: !3215, line: 45, baseType: !410, size: 32, offset: 416)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3214, file: !3215, line: 46, baseType: !554, size: 64, offset: 448)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3214, file: !3215, line: 47, baseType: !3202, size: 128, offset: 512)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3214, file: !3215, line: 48, baseType: !3202, size: 128, offset: 640)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3214, file: !3215, line: 49, baseType: !3202, size: 128, offset: 768)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3214, file: !3215, line: 50, baseType: !3202, size: 128, offset: 896)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3214, file: !3215, line: 51, baseType: !468, size: 64, offset: 1024)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3214, file: !3215, line: 52, baseType: !468, size: 64, offset: 1088)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3214, file: !3215, line: 53, baseType: !464, size: 32, offset: 1152)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3214, file: !3215, line: 54, baseType: !464, size: 32, offset: 1184)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3214, file: !3215, line: 55, baseType: !468, size: 64, offset: 1216)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !424, file: !14, line: 1990, baseType: !3239, size: 64, offset: 960)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!348, !430, !316, !363}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !424, file: !14, line: 1991, baseType: !3243, size: 64, offset: 1024)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{!85, !395, !3246, !468, !468}
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !424, file: !14, line: 1993, baseType: !3249, size: 64, offset: 1088)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!85, !395, !85}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !424, file: !14, line: 1994, baseType: !3253, size: 64, offset: 1152)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!85, !395, !430, !1053, !7, !358}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !424, file: !14, line: 1997, baseType: !3257, size: 64, offset: 1216)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!85, !3089, !395, !1053, !358}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !424, file: !14, line: 1999, baseType: !3261, size: 64, offset: 1280)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!418, !3089, !430, !85}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !424, file: !14, line: 2001, baseType: !3265, size: 64, offset: 1344)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!85, !3089, !430, !418, !85}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !424, file: !14, line: 2003, baseType: !3269, size: 64, offset: 1408)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!85, !3089, !430, !3272}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !424, file: !14, line: 2005, baseType: !3275, size: 64, offset: 1472)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!85, !430, !3272}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !424, file: !14, line: 2006, baseType: !3279, size: 64, offset: 1536)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!3282, !395}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3284)
!3284 = !{!3285, !3292}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3283, file: !14, line: 3193, baseType: !3286, size: 128)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3287, line: 296, size: 128, elements: !3288)
!3287 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3286, file: !3287, line: 297, baseType: !246, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3286, file: !3287, line: 299, baseType: !180, size: 32, offset: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3286, file: !3287, line: 300, baseType: !179, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3283, file: !14, line: 3194, baseType: !464, size: 32, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !396, file: !14, line: 655, baseType: !544, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !396, file: !14, line: 656, baseType: !391, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !396, file: !14, line: 659, baseType: !179, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !396, file: !14, line: 663, baseType: !182, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 671, baseType: !3298, size: 32, offset: 704)
!3298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 671, size: 32, elements: !3299)
!3299 = !{!3300, !3302}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3298, file: !14, line: 672, baseType: !3301, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3298, file: !14, line: 673, baseType: !7, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !396, file: !14, line: 675, baseType: !549, size: 32, offset: 736)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !396, file: !14, line: 676, baseType: !554, size: 64, offset: 768)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !396, file: !14, line: 677, baseType: !3202, size: 128, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !396, file: !14, line: 678, baseType: !3202, size: 128, offset: 960)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !396, file: !14, line: 679, baseType: !3202, size: 128, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !396, file: !14, line: 680, baseType: !246, size: 32, offset: 1216)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !396, file: !14, line: 681, baseType: !286, size: 16, offset: 1248)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !396, file: !14, line: 682, baseType: !274, size: 8, offset: 1264)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !396, file: !14, line: 683, baseType: !274, size: 8, offset: 1272)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !396, file: !14, line: 684, baseType: !1645, size: 64, offset: 1280)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !396, file: !14, line: 691, baseType: !182, size: 64, offset: 1344)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !396, file: !14, line: 692, baseType: !866, size: 320, offset: 1408)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !396, file: !14, line: 694, baseType: !182, size: 64, offset: 1728)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !396, file: !14, line: 695, baseType: !182, size: 64, offset: 1792)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !396, file: !14, line: 697, baseType: !589, size: 128, offset: 1856)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !396, file: !14, line: 698, baseType: !218, size: 128, offset: 1984)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !396, file: !14, line: 707, baseType: !218, size: 128, offset: 2112)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !396, file: !14, line: 708, baseType: !218, size: 128, offset: 2240)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 709, baseType: !3322, size: 128, offset: 2368)
!3322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 709, size: 128, elements: !3323)
!3323 = !{!3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3322, file: !14, line: 710, baseType: !585, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3322, file: !14, line: 711, baseType: !736, size: 128, align: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !396, file: !14, line: 713, baseType: !684, size: 64, offset: 2496)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !396, file: !14, line: 714, baseType: !684, size: 64, offset: 2560)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !396, file: !14, line: 715, baseType: !266, size: 32, offset: 2624)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !396, file: !14, line: 716, baseType: !266, size: 32, offset: 2656)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !396, file: !14, line: 717, baseType: !266, size: 32, offset: 2688)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !396, file: !14, line: 719, baseType: !266, size: 32, offset: 2720)
!3332 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 721, baseType: !3333, size: 64, offset: 2752)
!3333 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 721, size: 64, elements: !3334)
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3333, file: !14, line: 722, baseType: !1044, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3333, file: !14, line: 723, baseType: !616, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !396, file: !14, line: 725, baseType: !3338, size: 64, offset: 2816)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !396, file: !14, line: 726, baseType: !392, size: 1536, align: 64, offset: 2880)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !396, file: !14, line: 727, baseType: !218, size: 128, offset: 4416)
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !14, line: 728, baseType: !3343, size: 64, offset: 4544)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !14, line: 728, size: 64, elements: !3344)
!3344 = !{!3345, !3346, !3349, !3350}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3343, file: !14, line: 729, baseType: !1394, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3343, file: !14, line: 730, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3343, file: !14, line: 731, baseType: !316, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3343, file: !14, line: 732, baseType: !7, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !396, file: !14, line: 735, baseType: !465, size: 32, offset: 4608)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !396, file: !14, line: 738, baseType: !465, size: 32, offset: 4640)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !396, file: !14, line: 739, baseType: !3025, size: 64, offset: 4672)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !396, file: !14, line: 750, baseType: !179, size: 64, offset: 4736)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !392, file: !14, line: 474, baseType: !3286, size: 128, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !392, file: !14, line: 475, baseType: !866, size: 320, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !392, file: !14, line: 476, baseType: !180, size: 32, offset: 512)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !392, file: !14, line: 477, baseType: !266, size: 32, offset: 544)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !392, file: !14, line: 482, baseType: !1920, size: 128, offset: 576)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !392, file: !14, line: 483, baseType: !182, size: 64, offset: 704)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !392, file: !14, line: 484, baseType: !182, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !392, file: !14, line: 485, baseType: !3363, size: 64, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3365)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3366)
!3366 = !{!3367, !3371, !3441, !3445, !3449, !3455, !3460, !3464, !3469, !3473, !3477, !3481, !3482, !3486, !3490, !3494, !3499, !3503, !3510, !3511}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3365, file: !14, line: 405, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!85, !2613, !628}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3365, file: !14, line: 406, baseType: !3372, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!85, !1053, !3375}
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1138, line: 293, size: 1536, elements: !3377)
!3377 = !{!3378, !3408, !3422}
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !1138, line: 295, baseType: !3379, size: 512)
!3379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !1138, line: 295, size: 512, elements: !3380)
!3380 = !{!3381, !3407}
!3381 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !1138, line: 296, baseType: !3382, size: 448)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3379, file: !1138, line: 296, size: 448, elements: !3383)
!3383 = !{!3384, !3385, !3394, !3395, !3396, !3405, !3406}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !1138, line: 298, baseType: !182, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !1138, line: 299, baseType: !3386, size: 128, offset: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3382, file: !1138, line: 299, size: 128, elements: !3387)
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3386, file: !1138, line: 300, baseType: !218, size: 128)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3386, file: !1138, line: 302, baseType: !3390, size: 128)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3386, file: !1138, line: 302, size: 128, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3390, file: !1138, line: 303, baseType: !179, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3390, file: !1138, line: 305, baseType: !7, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3382, file: !1138, line: 310, baseType: !391, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3382, file: !1138, line: 311, baseType: !182, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, scope: !3382, file: !1138, line: 312, baseType: !3397, size: 64, offset: 320)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3382, file: !1138, line: 312, size: 64, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3397, file: !1138, line: 313, baseType: !179, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3397, file: !1138, line: 314, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1138, line: 257, baseType: !3402)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 255, size: 64, elements: !3403)
!3403 = !{!3404}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3402, file: !1138, line: 256, baseType: !182, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3382, file: !1138, line: 316, baseType: !266, size: 32, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3382, file: !1138, line: 317, baseType: !266, size: 32, offset: 416)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3379, file: !1138, line: 323, baseType: !2614, size: 512, align: 128)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !1138, line: 325, baseType: !3409, size: 512, offset: 512)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !1138, line: 325, size: 512, elements: !3410)
!3410 = !{!3411, !3421}
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !1138, line: 326, baseType: !3412, size: 320)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3409, file: !1138, line: 326, size: 320, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3412, file: !1138, line: 327, baseType: !182, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3412, file: !1138, line: 328, baseType: !182, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3412, file: !1138, line: 329, baseType: !182, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3412, file: !1138, line: 331, baseType: !266, size: 32, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3412, file: !1138, line: 332, baseType: !266, size: 32, offset: 224)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3412, file: !1138, line: 333, baseType: !266, size: 32, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3412, file: !1138, line: 335, baseType: !7, size: 32, offset: 288)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3409, file: !1138, line: 339, baseType: !2614, size: 512, align: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !3376, file: !1138, line: 341, baseType: !3423, size: 512, offset: 1024)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3376, file: !1138, line: 341, size: 512, elements: !3424)
!3424 = !{!3425, !3434, !3440}
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3423, file: !1138, line: 342, baseType: !3426, size: 384)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3423, file: !1138, line: 342, size: 384, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3426, file: !1138, line: 343, baseType: !182, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3426, file: !1138, line: 344, baseType: !182, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3426, file: !1138, line: 346, baseType: !179, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3426, file: !1138, line: 347, baseType: !179, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3426, file: !1138, line: 348, baseType: !179, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3426, file: !1138, line: 349, baseType: !179, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3423, file: !1138, line: 352, baseType: !3435, size: 256)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3423, file: !1138, line: 352, size: 256, elements: !3436)
!3436 = !{!3437, !3438, !3439}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3435, file: !1138, line: 353, baseType: !182, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3435, file: !1138, line: 354, baseType: !182, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3435, file: !1138, line: 356, baseType: !218, size: 128, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3423, file: !1138, line: 359, baseType: !2614, size: 512, align: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3365, file: !14, line: 409, baseType: !3442, size: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!85, !391, !628}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3365, file: !14, line: 412, baseType: !3446, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{!925, !391, !3375}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3365, file: !14, line: 414, baseType: !3450, size: 64, offset: 256)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3365, file: !14, line: 416, baseType: !3456, size: 64, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!85, !1053, !391, !554, !7, !3459, !1409}
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3365, file: !14, line: 419, baseType: !3461, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!85, !1053, !391, !554, !7, !7, !2613, !179}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3365, file: !14, line: 424, baseType: !3465, size: 64, offset: 448)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!3468, !391, !3468}
!3468 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !181, line: 131, baseType: !468)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3365, file: !14, line: 425, baseType: !3470, size: 64, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{null, !3375, !363, !363}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3365, file: !14, line: 426, baseType: !3474, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!925, !3375, !180}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3365, file: !14, line: 427, baseType: !3478, size: 64, offset: 640)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{null, !3375}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3365, file: !14, line: 428, baseType: !1063, size: 64, offset: 704)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3365, file: !14, line: 433, baseType: !3483, size: 64, offset: 768)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!85, !391, !3375, !3375, !50}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3365, file: !14, line: 435, baseType: !3487, size: 64, offset: 832)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!85, !3375}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3365, file: !14, line: 436, baseType: !3491, size: 64, offset: 896)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!925, !3375, !363, !363}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3365, file: !14, line: 438, baseType: !3495, size: 64, offset: 960)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !3375, !3498, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3365, file: !14, line: 439, baseType: !3500, size: 64, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!85, !391, !2613}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3365, file: !14, line: 442, baseType: !3504, size: 64, offset: 1088)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!85, !3507, !1053, !3509}
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3365, file: !14, line: 444, baseType: !1401, size: 64, offset: 1152)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3365, file: !14, line: 445, baseType: !3512, size: 64, offset: 1216)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!85, !1066, !1088}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !14, line: 486, baseType: !182, size: 64, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !392, file: !14, line: 487, baseType: !866, size: 320, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !392, file: !14, line: 488, baseType: !1444, size: 32, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !392, file: !14, line: 489, baseType: !246, size: 32, offset: 1312)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !392, file: !14, line: 490, baseType: !218, size: 128, offset: 1344)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !392, file: !14, line: 491, baseType: !179, size: 64, offset: 1472)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !382, file: !342, line: 180, baseType: !3522, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!348, !1053, !239, !381, !316, !554, !363}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !382, file: !342, line: 182, baseType: !3522, size: 64, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !382, file: !342, line: 184, baseType: !3527, size: 64, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!85, !1053, !239, !381, !1136}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !370, file: !342, line: 90, baseType: !3531, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !370, file: !342, line: 91, baseType: !3533, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !332, file: !232, line: 120, baseType: !3535, size: 64, offset: 192)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!3538, !299}
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3541)
!3541 = !{!3542, !3543, !3547, !3551, !3557, !3561}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3540, file: !58, line: 40, baseType: !57, size: 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3540, file: !58, line: 41, baseType: !3544, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!925}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3540, file: !58, line: 42, baseType: !3548, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!179}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3540, file: !58, line: 43, baseType: !3552, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!1265, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3540, file: !58, line: 44, baseType: !3558, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!1265}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3540, file: !58, line: 45, baseType: !3127, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !332, file: !232, line: 121, baseType: !3563, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!1265, !299}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !332, file: !232, line: 122, baseType: !3567, size: 64, offset: 320)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !299, !3570, !3571}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !231, file: !232, line: 70, baseType: !3573, size: 64, offset: 384)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !569, line: 190, size: 1152, elements: !3575)
!3575 = !{!3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3655, !3656, !3657, !3658, !3659, !3662}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3574, file: !569, line: 191, baseType: !266, size: 32)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3574, file: !569, line: 192, baseType: !266, size: 32, offset: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3574, file: !569, line: 202, baseType: !3573, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3574, file: !569, line: 203, baseType: !235, size: 64, offset: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3574, file: !569, line: 205, baseType: !858, size: 192, align: 64, offset: 192)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3574, file: !569, line: 207, baseType: !1265, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3574, file: !569, line: 208, baseType: !7, size: 32, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, scope: !3574, file: !569, line: 209, baseType: !3584, size: 256, offset: 512)
!3584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3574, file: !569, line: 209, size: 256, elements: !3585)
!3585 = !{!3586, !3595, !3599}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3584, file: !569, line: 210, baseType: !3587, size: 256)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !569, line: 153, size: 256, elements: !3588)
!3588 = !{!3589, !3590, !3591, !3594}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3587, file: !569, line: 154, baseType: !182, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3587, file: !569, line: 156, baseType: !1923, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3587, file: !569, line: 162, baseType: !3592, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !569, line: 162, flags: DIFlagFwdDecl)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3587, file: !569, line: 167, baseType: !182, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3584, file: !569, line: 211, baseType: !3596, size: 64)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !569, line: 170, size: 64, elements: !3597)
!3597 = !{!3598}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3596, file: !569, line: 171, baseType: !3573, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3584, file: !569, line: 212, baseType: !3600, size: 256)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !569, line: 174, size: 256, elements: !3601)
!3601 = !{!3602, !3650, !3653, !3654}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3600, file: !569, line: 175, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !569, line: 271, size: 768, elements: !3606)
!3606 = !{!3607, !3627, !3631, !3632, !3633, !3634, !3635, !3639, !3640, !3641, !3642, !3646}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3605, file: !569, line: 276, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!85, !3611}
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !569, line: 251, size: 1216, elements: !3613)
!3613 = !{!3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3612, file: !569, line: 253, baseType: !3573, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3612, file: !569, line: 254, baseType: !1053, size: 64, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3612, file: !569, line: 255, baseType: !666, size: 64, offset: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3612, file: !569, line: 256, baseType: !179, size: 64, offset: 192)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3612, file: !569, line: 259, baseType: !678, size: 256, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3612, file: !569, line: 260, baseType: !678, size: 256, offset: 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3612, file: !569, line: 261, baseType: !85, size: 32, offset: 768)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3612, file: !569, line: 262, baseType: !218, size: 128, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3612, file: !569, line: 263, baseType: !316, size: 64, offset: 960)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3612, file: !569, line: 265, baseType: !363, size: 64, offset: 1024)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3612, file: !569, line: 266, baseType: !925, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3612, file: !569, line: 267, baseType: !925, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3612, file: !569, line: 268, baseType: !1346, size: 64, offset: 1152)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3605, file: !569, line: 277, baseType: !3628, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3611}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3605, file: !569, line: 290, baseType: !717, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3605, file: !569, line: 292, baseType: !704, size: 64, offset: 192)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3605, file: !569, line: 293, baseType: !713, size: 64, offset: 256)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3605, file: !569, line: 294, baseType: !709, size: 64, offset: 320)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3605, file: !569, line: 296, baseType: !3636, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!348, !3611, !316, !363, !554}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3605, file: !569, line: 306, baseType: !363, size: 64, offset: 448)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3605, file: !569, line: 313, baseType: !925, size: 8, offset: 512)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3605, file: !569, line: 314, baseType: !3636, size: 64, offset: 576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3605, file: !569, line: 317, baseType: !3643, size: 64, offset: 640)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!1114, !3611, !1116}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3605, file: !569, line: 320, baseType: !3647, size: 64, offset: 704)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!85, !3611, !1136}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3600, file: !569, line: 176, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !569, line: 35, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3600, file: !569, line: 177, baseType: !554, size: 64, offset: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3600, file: !569, line: 178, baseType: !3573, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3574, file: !569, line: 215, baseType: !179, size: 64, offset: 768)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3574, file: !569, line: 221, baseType: !468, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3574, file: !569, line: 223, baseType: !286, size: 16, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3574, file: !569, line: 224, baseType: !358, size: 16, offset: 912)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3574, file: !569, line: 225, baseType: !3660, size: 64, offset: 960)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !569, line: 36, flags: DIFlagFwdDecl)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3574, file: !569, line: 227, baseType: !736, size: 128, align: 64, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !231, file: !232, line: 71, baseType: !3664, size: 32, offset: 448)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3665, line: 19, size: 32, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3666 = !{!3667}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3664, file: !3665, line: 20, baseType: !781, size: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !231, file: !232, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !231, file: !232, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !231, file: !232, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !231, file: !232, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !231, file: !232, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !228, file: !6, line: 47, baseType: !213, size: 64, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !228, file: !6, line: 48, baseType: !239, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !228, file: !6, line: 49, baseType: !3676, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !228, file: !6, line: 50, baseType: !2139, size: 64, offset: 704)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !214, file: !6, line: 418, baseType: !3680, size: 64, offset: 1408)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3682)
!3682 = !{!3683, !3684, !3689, !3693, !3697, !3701}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3681, file: !6, line: 54, baseType: !354, size: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3681, file: !6, line: 55, baseType: !3685, size: 64, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!348, !3680, !3688, !316}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3681, file: !6, line: 57, baseType: !3690, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!348, !3680, !3688, !235, !363}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3681, file: !6, line: 59, baseType: !3694, size: 64, offset: 256)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{null, !213, !235}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3681, file: !6, line: 60, baseType: !3698, size: 64, offset: 320)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!85, !213}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3681, file: !6, line: 61, baseType: !3702, size: 64, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !213}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !214, file: !6, line: 419, baseType: !235, size: 64, offset: 1472)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !214, file: !6, line: 420, baseType: !235, size: 64, offset: 1536)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !214, file: !6, line: 421, baseType: !239, size: 64, offset: 1600)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !214, file: !6, line: 424, baseType: !3709, size: 64, offset: 1664)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3711)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !214, file: !6, line: 425, baseType: !3713, size: 64, offset: 1728)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !214, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !214, file: !6, line: 435, baseType: !678, size: 256, offset: 1856)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !214, file: !6, line: 437, baseType: !3718, size: 64, offset: 2112)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3720, line: 69, size: 320, elements: !3721)
!3720 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3721 = !{!3722, !3723, !3724, !3741, !3743, !3747, !3748}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3719, file: !3720, line: 70, baseType: !235, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3719, file: !3720, line: 71, baseType: !213, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3719, file: !3720, line: 72, baseType: !3725, size: 64, offset: 128)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3720, line: 47, size: 256, elements: !3728)
!3728 = !{!3729, !3730, !3736, !3740}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3727, file: !3720, line: 49, baseType: !7, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3727, file: !3720, line: 51, baseType: !3731, size: 64, offset: 64)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!85, !235, !3734}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3719)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3727, file: !3720, line: 53, baseType: !3737, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!85, !316, !3734}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3727, file: !3720, line: 55, baseType: !3127, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3719, file: !3720, line: 73, baseType: !3742, size: 16, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3719, file: !3720, line: 74, baseType: !3744, size: 8, offset: 208)
!3744 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !275, line: 16, baseType: !3745)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !277, line: 20, baseType: !3746)
!3746 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3719, file: !3720, line: 75, baseType: !274, size: 8, offset: 216)
!3748 = !DIDerivedType(tag: DW_TAG_member, scope: !3719, file: !3720, line: 76, baseType: !3749, size: 64, offset: 256)
!3749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3719, file: !3720, line: 76, size: 64, elements: !3750)
!3750 = !{!3751, !3752, !3759}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3749, file: !3720, line: 77, baseType: !179, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3749, file: !3720, line: 78, baseType: !3753, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3755)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3720, line: 86, size: 128, elements: !3756)
!3756 = !{!3757, !3758}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3755, file: !3720, line: 87, baseType: !7, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3755, file: !3720, line: 88, baseType: !316, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3749, file: !3720, line: 79, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3762)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3720, line: 92, size: 256, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767, !3768}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3762, file: !3720, line: 94, baseType: !7, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3762, file: !3720, line: 95, baseType: !7, size: 32, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3762, file: !3720, line: 96, baseType: !1744, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3762, file: !3720, line: 97, baseType: !3725, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3762, file: !3720, line: 98, baseType: !179, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !214, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !214, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !214, file: !6, line: 442, baseType: !3709, size: 64, offset: 2240)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !214, file: !6, line: 443, baseType: !3713, size: 64, offset: 2304)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !214, file: !6, line: 444, baseType: !925, size: 8, offset: 2368)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !214, file: !6, line: 451, baseType: !925, size: 8, offset: 2376)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !214, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !214, file: !6, line: 455, baseType: !3777, size: 64, offset: 2432)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3779, line: 23, size: 96, elements: !3780)
!3779 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3780 = !{!3781, !3782, !3783}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3778, file: !3779, line: 24, baseType: !85, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3778, file: !3779, line: 24, baseType: !85, size: 32, offset: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3778, file: !3779, line: 24, baseType: !85, size: 32, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !214, file: !6, line: 458, baseType: !3785, size: 64, offset: 2496)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!85}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !214, file: !6, line: 460, baseType: !3789, size: 4032, align: 512, offset: 2560)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3790, size: 4032, elements: !3804)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3790, file: !6, line: 363, baseType: !179, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3790, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3790, file: !6, line: 367, baseType: !3795, size: 448, offset: 128)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3796)
!3796 = !{!3797, !3798}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3795, file: !6, line: 320, baseType: !213, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3795, file: !6, line: 321, baseType: !3799, size: 384, offset: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3800, line: 40, size: 384, elements: !3801)
!3800 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3801 = !{!3802}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3799, file: !3800, line: 41, baseType: !3803, size: 384, align: 64)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 384, align: 64, elements: !2270)
!3804 = !{!3805}
!3805 = !DISubrange(count: 7)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !214, file: !6, line: 463, baseType: !3807, size: 192, offset: 6592)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3808, line: 8, size: 192, elements: !3809)
!3808 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3809 = !{!3810, !3811, !3812}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3807, file: !3808, line: 10, baseType: !7, size: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3807, file: !3808, line: 11, baseType: !660, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3807, file: !3808, line: 12, baseType: !3813, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3815, line: 59, size: 48, elements: !3816)
!3815 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3816 = !{!3817, !3818, !3819, !3820, !3821, !3822}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3814, file: !3815, line: 60, baseType: !1282, size: 16)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3814, file: !3815, line: 61, baseType: !1282, size: 16, offset: 16)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3814, file: !3815, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3814, file: !3815, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3814, file: !3815, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3814, file: !3815, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !214, file: !6, line: 465, baseType: !182, size: 64, offset: 6784)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !214, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !214, file: !6, line: 470, baseType: !218, size: 128, offset: 6912)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !214, file: !6, line: 471, baseType: !3827, size: 64, offset: 7040)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3829, line: 33, size: 96, elements: !3830)
!3829 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3830 = !{!3831, !3832, !3833, !3834}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3828, file: !3829, line: 37, baseType: !85, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3828, file: !3829, line: 43, baseType: !85, size: 32, offset: 32)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3828, file: !3829, line: 45, baseType: !286, size: 16, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3828, file: !3829, line: 47, baseType: !286, size: 16, offset: 80)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !214, file: !6, line: 476, baseType: !3836, size: 64, offset: 7104)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3838)
!3838 = !{!3839, !3855, !3856, !3857}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3837, file: !6, line: 379, baseType: !3840, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3842, line: 204, baseType: !3843)
!3842 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3842, line: 197, size: 192, elements: !3844)
!3844 = !{!3845, !3847, !3848, !3849, !3851, !3853}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3843, file: !3842, line: 198, baseType: !3846, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3842, line: 21, baseType: !465)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3843, file: !3842, line: 199, baseType: !278, size: 8, offset: 32)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3843, file: !3842, line: 200, baseType: !278, size: 8, offset: 40)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3843, file: !3842, line: 201, baseType: !3850, size: 16, offset: 48)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3842, line: 17, baseType: !285)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3843, file: !3842, line: 202, baseType: !3852, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3842, line: 16, baseType: !469)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3843, file: !3842, line: 203, baseType: !3854, size: 64, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3842, line: 22, baseType: !469)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3837, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3837, file: !6, line: 381, baseType: !316, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3837, file: !6, line: 382, baseType: !316, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !214, file: !6, line: 477, baseType: !3837, size: 256, offset: 7168)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !214, file: !6, line: 480, baseType: !3860, size: 64, offset: 7424)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !214, file: !6, line: 483, baseType: !3863, size: 64, offset: 7488)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !214, file: !6, line: 488, baseType: !316, size: 64, offset: 7552)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !214, file: !6, line: 492, baseType: !179, size: 64, offset: 7616)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !214, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !214, file: !6, line: 495, baseType: !179, size: 64, offset: 7744)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !214, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !214, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !214, file: !6, line: 500, baseType: !3872, size: 64, offset: 7872)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3874, line: 45, baseType: !3875)
!3874 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !214, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !214, file: !6, line: 504, baseType: !3878, size: 64, offset: 8000)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3881, line: 96, size: 192, elements: !3882)
!3881 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3882 = !{!3883, !3884, !3927, !3929}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3880, file: !3881, line: 97, baseType: !7, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3880, file: !3881, line: 98, baseType: !3885, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3881, line: 24, size: 3072, elements: !3887)
!3887 = !{!3888, !3890, !3891, !3892, !3893, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3924, !3925, !3926}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3886, file: !3881, line: 26, baseType: !3889, size: 128)
!3889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !682, size: 128, elements: !2270)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3886, file: !3881, line: 27, baseType: !3889, size: 128, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3886, file: !3881, line: 28, baseType: !85, size: 32, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3886, file: !3881, line: 31, baseType: !246, size: 32, align: 512, offset: 512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3886, file: !3881, line: 32, baseType: !3894, size: 960, offset: 576)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3895, line: 206, size: 960, elements: !3896)
!3895 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3896 = !{!3897, !3898, !3901, !3903, !3904, !3906}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3894, file: !3895, line: 207, baseType: !739, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3894, file: !3895, line: 208, baseType: !3899, size: 256, offset: 64)
!3899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3900, size: 256, elements: !790)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3894, file: !3895, line: 209, baseType: !3902, size: 256, offset: 320)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !790)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3894, file: !3895, line: 213, baseType: !352, size: 64, offset: 576)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3894, file: !3895, line: 215, baseType: !3905, size: 256, offset: 640)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !352, size: 256, elements: !790)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3894, file: !3895, line: 216, baseType: !274, size: 8, offset: 896)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3886, file: !3881, line: 33, baseType: !182, size: 64, offset: 1536)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3886, file: !3881, line: 34, baseType: !182, size: 64, offset: 1600)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3886, file: !3881, line: 35, baseType: !925, size: 8, offset: 1664)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3886, file: !3881, line: 36, baseType: !2766, size: 320, offset: 1728)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3886, file: !3881, line: 37, baseType: !1304, size: 256, offset: 2048)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3886, file: !3881, line: 38, baseType: !736, size: 128, align: 64, offset: 2304)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3886, file: !3881, line: 39, baseType: !3914, size: 64, offset: 2432)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3881, line: 49, size: 768, elements: !3916)
!3916 = !{!3917, !3918, !3919, !3920, !3921, !3922, !3923}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3915, file: !3881, line: 50, baseType: !246, size: 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3915, file: !3881, line: 51, baseType: !3902, size: 256, offset: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3915, file: !3881, line: 53, baseType: !3902, size: 256, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3915, file: !3881, line: 54, baseType: !182, size: 64, offset: 576)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3915, file: !3881, line: 55, baseType: !3914, size: 64, offset: 640)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3915, file: !3881, line: 56, baseType: !85, size: 32, offset: 704)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3915, file: !3881, line: 57, baseType: !85, size: 32, offset: 736)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3886, file: !3881, line: 40, baseType: !182, size: 64, offset: 2496)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3886, file: !3881, line: 42, baseType: !85, size: 32, offset: 2560)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3886, file: !3881, line: 43, baseType: !3879, size: 64, offset: 2624)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3880, file: !3881, line: 99, baseType: !3928, offset: 128)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !596, line: 211, elements: !597)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3880, file: !3881, line: 100, baseType: !3930, size: 64, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3881, line: 63, size: 3008, elements: !3932)
!3932 = !{!3933, !3934, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3962}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3931, file: !3881, line: 64, baseType: !3914, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3931, file: !3881, line: 65, baseType: !3935, size: 192, offset: 64)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3914, size: 192, elements: !317)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3931, file: !3881, line: 67, baseType: !85, size: 32, offset: 256)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3931, file: !3881, line: 68, baseType: !678, size: 256, offset: 320)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3931, file: !3881, line: 69, baseType: !246, size: 32, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3931, file: !3881, line: 70, baseType: !678, size: 256, offset: 640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3931, file: !3881, line: 71, baseType: !182, size: 64, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3931, file: !3881, line: 72, baseType: !182, size: 64, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3931, file: !3881, line: 73, baseType: !182, size: 64, offset: 1024)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3931, file: !3881, line: 74, baseType: !182, size: 64, offset: 1088)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3931, file: !3881, line: 75, baseType: !182, size: 64, offset: 1152)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3931, file: !3881, line: 76, baseType: !182, size: 64, offset: 1216)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3931, file: !3881, line: 77, baseType: !182, size: 64, offset: 1280)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3931, file: !3881, line: 78, baseType: !182, size: 64, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3931, file: !3881, line: 79, baseType: !925, size: 8, offset: 1408)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3931, file: !3881, line: 80, baseType: !182, size: 64, offset: 1472)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3931, file: !3881, line: 81, baseType: !678, size: 256, offset: 1536)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3931, file: !3881, line: 82, baseType: !2140, size: 256, offset: 1792)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3931, file: !3881, line: 84, baseType: !266, size: 32, offset: 2048)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3931, file: !3881, line: 87, baseType: !182, size: 64, offset: 2112)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3931, file: !3881, line: 88, baseType: !182, size: 64, offset: 2176)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3931, file: !3881, line: 89, baseType: !3956, size: 704, offset: 2240)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !143, line: 111, size: 704, elements: !3957)
!3957 = !{!3958, !3959, !3960, !3961}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3956, file: !143, line: 112, baseType: !1304, size: 256)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3956, file: !143, line: 113, baseType: !2766, size: 320, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3956, file: !143, line: 116, baseType: !3059, size: 64, offset: 576)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3956, file: !143, line: 117, baseType: !85, size: 32, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3931, file: !3881, line: 90, baseType: !3879, size: 64, offset: 2944)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !214, file: !6, line: 515, baseType: !3964, size: 64, offset: 8064)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3966, line: 117, size: 128, elements: !3967)
!3966 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3967 = !{!3968, !3969, !3970}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3965, file: !3966, line: 118, baseType: !851, size: 32)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3965, file: !3966, line: 119, baseType: !851, size: 32, offset: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3965, file: !3966, line: 120, baseType: !352, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !214, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !214, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !214, file: !6, line: 520, baseType: !3974, size: 64, offset: 8192)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !214, file: !6, line: 523, baseType: !3976, size: 64, offset: 8256)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !214, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !214, file: !6, line: 525, baseType: !3981, size: 64, offset: 8384)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !214, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !214, file: !6, line: 533, baseType: !179, size: 64, offset: 8512)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !214, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !214, file: !6, line: 535, baseType: !3988, size: 64, offset: 8640)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !214, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !214, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !214, file: !6, line: 540, baseType: !3992, size: 64, offset: 8768)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3994, line: 32, size: 64, elements: !3995)
!3994 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3995 = !{!3996, !3997}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3993, file: !3994, line: 33, baseType: !851, size: 32)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3993, file: !3994, line: 34, baseType: !851, size: 32, offset: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !214, file: !6, line: 563, baseType: !218, size: 128, offset: 8832)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !214, file: !6, line: 565, baseType: !218, size: 128, offset: 8960)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !214, file: !6, line: 568, baseType: !4001, size: 64, offset: 9088)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !214, file: !6, line: 570, baseType: !266, size: 32, offset: 9152)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !189, file: !118, line: 94, baseType: !179, size: 64, offset: 3200)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !189, file: !118, line: 95, baseType: !4005, size: 64, offset: 3264)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{null, !188}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !189, file: !118, line: 97, baseType: !218, size: 128, offset: 3328)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !189, file: !118, line: 99, baseType: !4010, size: 64, offset: 3456)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4012)
!4012 = !{!4013, !4014, !4015, !4018, !4019, !4072, !4142, !4143, !4144, !4145, !4146, !4153, !4245, !4258, !4268, !4272, !4274, !4275, !4276, !4280, !4287, !4288, !4291, !4294, !4298, !4301, !4302, !4303, !4304, !4305, !4306, !4336, !4337, !4338, !4341, !4344, !4353, !4354, !4355, !4356, !4357, !4358}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4011, file: !70, line: 706, baseType: !231, size: 512)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4011, file: !70, line: 707, baseType: !4010, size: 64, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4011, file: !70, line: 709, baseType: !4016, size: 64, offset: 576)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4011, file: !70, line: 711, baseType: !235, size: 64, offset: 640)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4011, file: !70, line: 712, baseType: !4020, size: 64, offset: 704)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4022)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4032, !4037, !4041}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4022, file: !70, line: 90, baseType: !235, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4022, file: !70, line: 91, baseType: !367, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4022, file: !70, line: 92, baseType: !4027, size: 64, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!85, !4030, !311}
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4011)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4022, file: !70, line: 93, baseType: !4033, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!316, !4030, !4036, !3570, !3571}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4022, file: !70, line: 95, baseType: !4038, size: 64, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{null, !4010}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4022, file: !70, line: 97, baseType: !4042, size: 64, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4044)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4045)
!4045 = !{!4046, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4044, file: !77, line: 287, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!85, !4010}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4044, file: !77, line: 288, baseType: !4038, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4044, file: !77, line: 289, baseType: !4047, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4044, file: !77, line: 290, baseType: !4047, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4044, file: !77, line: 291, baseType: !4047, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4044, file: !77, line: 292, baseType: !4047, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4044, file: !77, line: 293, baseType: !4047, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4044, file: !77, line: 294, baseType: !4047, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4044, file: !77, line: 295, baseType: !4047, size: 64, offset: 512)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4044, file: !77, line: 296, baseType: !4047, size: 64, offset: 576)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4044, file: !77, line: 297, baseType: !4047, size: 64, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4044, file: !77, line: 298, baseType: !4047, size: 64, offset: 704)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4044, file: !77, line: 299, baseType: !4047, size: 64, offset: 768)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4044, file: !77, line: 300, baseType: !4047, size: 64, offset: 832)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4044, file: !77, line: 301, baseType: !4047, size: 64, offset: 896)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4044, file: !77, line: 302, baseType: !4047, size: 64, offset: 960)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4044, file: !77, line: 303, baseType: !4047, size: 64, offset: 1024)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4044, file: !77, line: 304, baseType: !4047, size: 64, offset: 1088)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4044, file: !77, line: 305, baseType: !4047, size: 64, offset: 1152)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4044, file: !77, line: 306, baseType: !4047, size: 64, offset: 1216)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4044, file: !77, line: 307, baseType: !4047, size: 64, offset: 1280)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4044, file: !77, line: 308, baseType: !4047, size: 64, offset: 1344)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4044, file: !77, line: 309, baseType: !4047, size: 64, offset: 1408)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4011, file: !70, line: 714, baseType: !4073, size: 64, offset: 768)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4076, line: 80, size: 1344, elements: !4077)
!4076 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4141}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4075, file: !4076, line: 81, baseType: !235, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4075, file: !4076, line: 82, baseType: !235, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4075, file: !4076, line: 83, baseType: !367, size: 64, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4075, file: !4076, line: 84, baseType: !367, size: 64, offset: 192)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4075, file: !4076, line: 85, baseType: !367, size: 64, offset: 256)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4075, file: !4076, line: 87, baseType: !4084, size: 64, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!85, !4010, !4087}
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4096, !4100, !4104, !4105, !4106, !4107, !4108, !4116, !4117, !4118, !4119, !4120, !4121}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4088, file: !64, line: 97, baseType: !235, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4088, file: !64, line: 98, baseType: !4073, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4088, file: !64, line: 100, baseType: !213, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4088, file: !64, line: 101, baseType: !235, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4088, file: !64, line: 103, baseType: !925, size: 8, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4088, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4088, file: !64, line: 106, baseType: !4097, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4088, file: !64, line: 107, baseType: !4101, size: 64, offset: 384)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4103)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4088, file: !64, line: 109, baseType: !4047, size: 64, offset: 448)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4088, file: !64, line: 110, baseType: !4038, size: 64, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4088, file: !64, line: 111, baseType: !4047, size: 64, offset: 576)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4088, file: !64, line: 112, baseType: !4038, size: 64, offset: 640)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4088, file: !64, line: 113, baseType: !4109, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!85, !4010, !4112}
!4112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4114)
!4114 = !{!4115}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4113, file: !77, line: 59, baseType: !85, size: 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4088, file: !64, line: 114, baseType: !4047, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4088, file: !64, line: 115, baseType: !367, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4088, file: !64, line: 116, baseType: !367, size: 64, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4088, file: !64, line: 118, baseType: !4042, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4088, file: !64, line: 119, baseType: !4038, size: 64, offset: 1024)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4088, file: !64, line: 121, baseType: !4122, size: 64, offset: 1088)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4075, file: !4076, line: 88, baseType: !4027, size: 64, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4075, file: !4076, line: 89, baseType: !4047, size: 64, offset: 448)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4075, file: !4076, line: 90, baseType: !4038, size: 64, offset: 512)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4075, file: !4076, line: 91, baseType: !4038, size: 64, offset: 576)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4075, file: !4076, line: 92, baseType: !4038, size: 64, offset: 640)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4075, file: !4076, line: 94, baseType: !4047, size: 64, offset: 704)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4075, file: !4076, line: 95, baseType: !4047, size: 64, offset: 768)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4075, file: !4076, line: 97, baseType: !4109, size: 64, offset: 832)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4075, file: !4076, line: 98, baseType: !4047, size: 64, offset: 896)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4075, file: !4076, line: 100, baseType: !4047, size: 64, offset: 960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4075, file: !4076, line: 102, baseType: !4047, size: 64, offset: 1024)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4075, file: !4076, line: 103, baseType: !4038, size: 64, offset: 1088)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4075, file: !4076, line: 105, baseType: !4042, size: 64, offset: 1152)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4075, file: !4076, line: 107, baseType: !4138, size: 64, offset: 1216)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4140)
!4140 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4076, line: 107, flags: DIFlagFwdDecl)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4075, file: !4076, line: 109, baseType: !925, size: 8, offset: 1280)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4011, file: !70, line: 715, baseType: !4087, size: 64, offset: 832)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4011, file: !70, line: 717, baseType: !179, size: 64, offset: 896)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4011, file: !70, line: 719, baseType: !179, size: 64, offset: 960)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4011, file: !70, line: 721, baseType: !678, size: 256, offset: 1024)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4011, file: !70, line: 725, baseType: !4147, size: 448, offset: 1280)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4148)
!4148 = !{!4149, !4150, !4151, !4152}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4147, file: !70, line: 518, baseType: !218, size: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4147, file: !70, line: 519, baseType: !218, size: 128, offset: 128)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4147, file: !70, line: 520, baseType: !218, size: 128, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4147, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4011, file: !70, line: 726, baseType: !4154, size: 2496, offset: 1728)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4155)
!4155 = !{!4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4238, !4242}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4154, file: !77, line: 664, baseType: !4112, size: 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4154, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4154, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4154, file: !77, line: 667, baseType: !925, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4154, file: !77, line: 668, baseType: !925, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4154, file: !77, line: 669, baseType: !925, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4154, file: !77, line: 670, baseType: !925, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4154, file: !77, line: 671, baseType: !925, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4154, file: !77, line: 672, baseType: !925, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4154, file: !77, line: 673, baseType: !925, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4154, file: !77, line: 674, baseType: !925, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4154, file: !77, line: 675, baseType: !464, size: 32, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4154, file: !77, line: 676, baseType: !246, size: 32, offset: 96)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4154, file: !77, line: 678, baseType: !218, size: 128, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4154, file: !77, line: 679, baseType: !2140, size: 256, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4154, file: !77, line: 680, baseType: !4172, size: 64, offset: 512)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4174, line: 43, size: 1536, elements: !4175)
!4174 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4173, file: !4174, line: 44, baseType: !235, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4173, file: !4174, line: 45, baseType: !85, size: 32, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4173, file: !4174, line: 46, baseType: !218, size: 128, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4173, file: !4174, line: 47, baseType: !246, size: 32, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4173, file: !4174, line: 48, baseType: !4181, size: 64, offset: 320)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4173, file: !4174, line: 49, baseType: !2766, size: 320, offset: 384)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4173, file: !4174, line: 50, baseType: !182, size: 64, offset: 704)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4173, file: !4174, line: 51, baseType: !1869, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4173, file: !4174, line: 52, baseType: !1869, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4173, file: !4174, line: 53, baseType: !1869, size: 64, offset: 896)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4173, file: !4174, line: 54, baseType: !1869, size: 64, offset: 960)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4173, file: !4174, line: 55, baseType: !1869, size: 64, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4173, file: !4174, line: 56, baseType: !182, size: 64, offset: 1088)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4173, file: !4174, line: 57, baseType: !182, size: 64, offset: 1152)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4173, file: !4174, line: 58, baseType: !182, size: 64, offset: 1216)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4173, file: !4174, line: 59, baseType: !182, size: 64, offset: 1280)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4173, file: !4174, line: 60, baseType: !182, size: 64, offset: 1344)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4173, file: !4174, line: 61, baseType: !4010, size: 64, offset: 1408)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4173, file: !4174, line: 62, baseType: !925, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4173, file: !4174, line: 63, baseType: !925, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4154, file: !77, line: 681, baseType: !925, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4154, file: !77, line: 682, baseType: !925, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4154, file: !77, line: 683, baseType: !925, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4154, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4154, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4154, file: !77, line: 690, baseType: !1861, size: 512, offset: 640)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4154, file: !77, line: 691, baseType: !468, size: 64, offset: 1152)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4154, file: !77, line: 692, baseType: !1304, size: 256, offset: 1216)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4154, file: !77, line: 693, baseType: !794, size: 192, offset: 1472)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4154, file: !77, line: 694, baseType: !4181, size: 64, offset: 1664)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4154, file: !77, line: 695, baseType: !266, size: 32, offset: 1728)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4154, file: !77, line: 696, baseType: !266, size: 32, offset: 1760)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4154, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4154, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4154, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4154, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4154, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4154, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4154, file: !77, line: 703, baseType: !925, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4154, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4154, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4154, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4154, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4154, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4154, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4154, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4154, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4154, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4154, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4154, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4154, file: !77, line: 715, baseType: !468, size: 64, offset: 2048)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4154, file: !77, line: 716, baseType: !468, size: 64, offset: 2112)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4154, file: !77, line: 717, baseType: !468, size: 64, offset: 2176)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4154, file: !77, line: 718, baseType: !468, size: 64, offset: 2240)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4154, file: !77, line: 720, baseType: !4233, size: 64, offset: 2304)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4235)
!4235 = !{!4236, !4237}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4234, file: !77, line: 633, baseType: !246, size: 32)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4234, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4154, file: !77, line: 721, baseType: !4239, size: 64, offset: 2368)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !4010, !851}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4154, file: !77, line: 722, baseType: !4243, size: 64, offset: 2432)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4011, file: !70, line: 727, baseType: !4246, size: 64, offset: 4224)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4255, !4256, !4257}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4247, file: !77, line: 743, baseType: !4044, size: 1472)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4247, file: !77, line: 744, baseType: !4047, size: 64, offset: 1472)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4247, file: !77, line: 745, baseType: !4252, size: 64, offset: 1536)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !4010, !925}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4247, file: !77, line: 746, baseType: !4047, size: 64, offset: 1600)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4247, file: !77, line: 747, baseType: !4038, size: 64, offset: 1664)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4247, file: !77, line: 748, baseType: !4038, size: 64, offset: 1728)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4011, file: !70, line: 736, baseType: !4259, size: 128, offset: 4288)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4260)
!4260 = !{!4261, !4265}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4259, file: !70, line: 531, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4264, line: 13, flags: DIFlagFwdDecl)
!4264 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4259, file: !70, line: 532, baseType: !4266, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4011, file: !70, line: 738, baseType: !4269, size: 64, offset: 4416)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4011, file: !70, line: 740, baseType: !4273, size: 64, offset: 4480)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4011, file: !70, line: 741, baseType: !468, size: 64, offset: 4544)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4011, file: !70, line: 746, baseType: !468, size: 64, offset: 4608)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4011, file: !70, line: 747, baseType: !4277, size: 64, offset: 4672)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4279)
!4279 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4011, file: !70, line: 749, baseType: !4281, size: 64, offset: 4736)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4283)
!4283 = !{!4284, !4285, !4286}
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4282, file: !70, line: 433, baseType: !7, size: 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4282, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4282, file: !70, line: 435, baseType: !182, size: 64, offset: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4011, file: !70, line: 751, baseType: !218, size: 128, offset: 4800)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4011, file: !70, line: 762, baseType: !4289, size: 64, offset: 4928)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4011, file: !70, line: 770, baseType: !4292, offset: 4992)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4293, line: 5, elements: !597)
!4293 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4011, file: !70, line: 772, baseType: !4295, size: 64, offset: 4992)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4297, line: 18, flags: DIFlagFwdDecl)
!4297 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4011, file: !70, line: 773, baseType: !4299, size: 64, offset: 5056)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4076, line: 22, flags: DIFlagFwdDecl)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4011, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4011, file: !70, line: 778, baseType: !549, size: 32, offset: 5152)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4011, file: !70, line: 779, baseType: !464, size: 32, offset: 5184)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4011, file: !70, line: 781, baseType: !246, size: 32, offset: 5216)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4011, file: !70, line: 782, baseType: !218, size: 128, offset: 5248)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4011, file: !70, line: 784, baseType: !4307, size: 64, offset: 5376)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4310, line: 52, size: 768, elements: !4311)
!4310 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4311 = !{!4312, !4313, !4314, !4315, !4316, !4320, !4324, !4325, !4326, !4327, !4331, !4335}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4309, file: !4310, line: 53, baseType: !235, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4309, file: !4310, line: 55, baseType: !367, size: 64, offset: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4309, file: !4310, line: 56, baseType: !367, size: 64, offset: 128)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4309, file: !4310, line: 58, baseType: !4027, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4309, file: !4310, line: 59, baseType: !4317, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!316, !4030, !4036}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4309, file: !4310, line: 61, baseType: !4321, size: 64, offset: 320)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4307}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4309, file: !4310, line: 62, baseType: !4038, size: 64, offset: 384)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4309, file: !4310, line: 64, baseType: !4047, size: 64, offset: 448)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4309, file: !4310, line: 66, baseType: !3538, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4309, file: !4310, line: 67, baseType: !4328, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!1265, !4030}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4309, file: !4310, line: 69, baseType: !4332, size: 64, offset: 640)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4030, !3570, !3571}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4309, file: !4310, line: 71, baseType: !4042, size: 64, offset: 704)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4011, file: !70, line: 785, baseType: !367, size: 64, offset: 5440)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4011, file: !70, line: 787, baseType: !4038, size: 64, offset: 5504)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4011, file: !70, line: 788, baseType: !4339, size: 64, offset: 5568)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4011, file: !70, line: 789, baseType: !4342, size: 64, offset: 5632)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4011, file: !70, line: 791, baseType: !4345, size: 64, offset: 5696)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4347)
!4347 = !{!4348, !4349, !4350, !4351, !4352}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4346, file: !70, line: 598, baseType: !92, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4346, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4346, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4346, file: !70, line: 601, baseType: !925, size: 8, offset: 96)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4346, file: !70, line: 602, baseType: !925, size: 8, offset: 104)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4011, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4011, file: !70, line: 795, baseType: !925, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4011, file: !70, line: 796, baseType: !925, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4011, file: !70, line: 797, baseType: !925, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4011, file: !70, line: 798, baseType: !925, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4011, file: !70, line: 799, baseType: !925, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !189, file: !118, line: 100, baseType: !7, size: 32, offset: 3520)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !189, file: !118, line: 101, baseType: !866, size: 320, offset: 3584)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !189, file: !118, line: 102, baseType: !756, size: 64, offset: 3904)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !189, file: !118, line: 103, baseType: !85, size: 32, offset: 3968)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !189, file: !118, line: 104, baseType: !363, size: 64, offset: 4032)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !189, file: !118, line: 105, baseType: !218, size: 128, offset: 4096)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !189, file: !118, line: 106, baseType: !218, size: 128, offset: 4224)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !189, file: !118, line: 108, baseType: !3286, size: 128, offset: 4352)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !189, file: !118, line: 109, baseType: !3286, size: 128, offset: 4480)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !189, file: !118, line: 110, baseType: !925, size: 8, offset: 4608)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !189, file: !118, line: 113, baseType: !4370, size: 64, offset: 4672)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !4372, line: 60, size: 1216, elements: !4373)
!4372 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4437, !4438, !4439, !4440, !4444, !4447, !4448, !4449}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4371, file: !4372, line: 61, baseType: !235, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4371, file: !4372, line: 62, baseType: !358, size: 16, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4371, file: !4372, line: 63, baseType: !352, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !4371, file: !4372, line: 64, baseType: !286, size: 16, offset: 192)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4371, file: !4372, line: 68, baseType: !4379, size: 128, offset: 256)
!4379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4371, file: !4372, line: 65, size: 128, elements: !4380)
!4380 = !{!4381, !4398}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !4379, file: !4372, line: 66, baseType: !4382, size: 128)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !4372, line: 29, size: 128, elements: !4383)
!4383 = !{!4384, !4397}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4382, file: !4372, line: 30, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{null, !4370, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !4372, line: 15, size: 256, elements: !4390)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4389, file: !4372, line: 16, baseType: !316, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !4389, file: !4372, line: 17, baseType: !7, size: 32, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4389, file: !4372, line: 18, baseType: !7, size: 32, offset: 96)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4389, file: !4372, line: 19, baseType: !7, size: 32, offset: 128)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4389, file: !4372, line: 20, baseType: !85, size: 32, offset: 160)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !4389, file: !4372, line: 21, baseType: !85, size: 32, offset: 192)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4382, file: !4372, line: 32, baseType: !4385, size: 64, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4379, file: !4372, line: 67, baseType: !4399, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4401)
!4401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !4372, line: 36, size: 512, elements: !4402)
!4402 = !{!4403, !4407, !4411, !4415, !4419, !4423, !4429, !4433}
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4401, file: !4372, line: 37, baseType: !4404, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DISubroutineType(types: !4406)
!4406 = !{!85, !4370, !286, !1409}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4401, file: !4372, line: 39, baseType: !4408, size: 64, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!85, !4370, !286, !179}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4401, file: !4372, line: 41, baseType: !4412, size: 64, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!348, !4370, !179, !1053, !316, !363, !554}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4401, file: !4372, line: 44, baseType: !4416, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!348, !4370, !179, !1053, !235, !363, !554}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4401, file: !4372, line: 47, baseType: !4420, size: 64, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!554, !4370, !179, !1053, !554, !85}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4401, file: !4372, line: 50, baseType: !4424, size: 64, offset: 320)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!1114, !4370, !179, !1053, !4427}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1118, line: 40, baseType: !1117)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4401, file: !4372, line: 53, baseType: !4430, size: 64, offset: 384)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!85, !4370, !179, !1053, !7, !182}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4401, file: !4372, line: 55, baseType: !4434, size: 64, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!85, !4370, !179, !395, !1053, !1136}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4371, file: !4372, line: 69, baseType: !4370, size: 64, offset: 384)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4371, file: !4372, line: 70, baseType: !213, size: 64, offset: 448)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4371, file: !4372, line: 71, baseType: !179, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4371, file: !4372, line: 72, baseType: !4441, size: 64, offset: 576)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4370}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4371, file: !4372, line: 73, baseType: !4445, size: 64, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !118, line: 114, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !4371, file: !4372, line: 74, baseType: !678, size: 256, offset: 704)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4371, file: !4372, line: 75, baseType: !218, size: 128, offset: 960)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4371, file: !4372, line: 76, baseType: !218, size: 128, offset: 1088)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !189, file: !118, line: 114, baseType: !4445, size: 64, offset: 4736)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !189, file: !118, line: 116, baseType: !218, size: 128, offset: 4800)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !189, file: !118, line: 117, baseType: !4453, size: 64, offset: 4928)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !118, line: 117, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !189, file: !118, line: 119, baseType: !246, size: 32, offset: 4992)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !189, file: !118, line: 120, baseType: !85, size: 32, offset: 5024)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !189, file: !118, line: 121, baseType: !2139, size: 64, offset: 5056)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !189, file: !118, line: 122, baseType: !4010, size: 64, offset: 5120)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !189, file: !118, line: 123, baseType: !4011, size: 5824, offset: 5184)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !189, file: !118, line: 124, baseType: !4461, size: 256, offset: 11008)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !790)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !189, file: !118, line: 125, baseType: !925, size: 8, offset: 11264)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !189, file: !118, line: 126, baseType: !925, size: 8, offset: 11272)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !189, file: !118, line: 127, baseType: !925, size: 8, offset: 11280)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !189, file: !118, line: 128, baseType: !85, size: 32, offset: 11296)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !189, file: !118, line: 129, baseType: !794, size: 192, offset: 11328)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !189, file: !118, line: 131, baseType: !363, size: 64, offset: 11520)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !189, file: !118, line: 132, baseType: !678, size: 256, offset: 11584)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !189, file: !118, line: 138, baseType: !7, size: 32, offset: 11840)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !189, file: !118, line: 139, baseType: !266, size: 32, offset: 11872)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !189, file: !118, line: 140, baseType: !794, size: 192, offset: 11904)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !189, file: !118, line: 141, baseType: !794, size: 192, offset: 12096)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !184, file: !185, line: 17, baseType: !85, size: 32, offset: 64)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !184, file: !185, line: 18, baseType: !235, size: 64, offset: 128)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !185, line: 19, baseType: !203, size: 640, offset: 192)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "argsize", scope: !184, file: !185, line: 20, baseType: !85, size: 32, offset: 832)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !184, file: !185, line: 21, baseType: !179, size: 64, offset: 896)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !184, file: !185, line: 22, baseType: !179, size: 64, offset: 960)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !184, file: !185, line: 23, baseType: !4480, size: 64, offset: 1024)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{null, !183}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !184, file: !185, line: 24, baseType: !4011, size: 5824, offset: 1088)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_seq_driver", file: !185, line: 45, size: 1280, elements: !4486)
!4486 = !{!4487, !4488, !4489}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4485, file: !185, line: 46, baseType: !4088, size: 1152)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4485, file: !185, line: 47, baseType: !316, size: 64, offset: 1152)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "argsize", scope: !4485, file: !185, line: 48, baseType: !85, size: 32, offset: 1216)
!4490 = !{!0, !4491, !4496, !4501, !4506, !4508, !4510, !4512, !4548, !4553, !4555, !4560, !4562, !4564, !4566, !4570, !4572, !4574, !4576, !4579, !4584, !4586, !4588, !4590, !4595, !4597}
!4491 = !DIGlobalVariableExpression(var: !4492, expr: !DIExpression())
!4492 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description270", scope: !2, file: !3, line: 37, type: !4493, isLocal: true, isDefinition: true, align: 8)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 480, elements: !4494)
!4494 = !{!4495}
!4495 = !DISubrange(count: 60)
!4496 = !DIGlobalVariableExpression(var: !4497, expr: !DIExpression())
!4497 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file271", scope: !2, file: !3, line: 38, type: !4498, isLocal: true, isDefinition: true, align: 8)
!4498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 368, elements: !4499)
!4499 = !{!4500}
!4500 = !DISubrange(count: 46)
!4501 = !DIGlobalVariableExpression(var: !4502, expr: !DIExpression())
!4502 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license272", scope: !2, file: !3, line: 38, type: !4503, isLocal: true, isDefinition: true, align: 8)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 216, elements: !4504)
!4504 = !{!4505}
!4505 = !DISubrange(count: 27)
!4506 = !DIGlobalVariableExpression(var: !4507, expr: !DIExpression())
!4507 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_autoload_init273", scope: !2, file: !3, line: 122, type: !179, isLocal: true, isDefinition: true)
!4508 = !DIGlobalVariableExpression(var: !4509, expr: !DIExpression())
!4509 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_autoload_exit274", scope: !2, file: !3, line: 128, type: !179, isLocal: true, isDefinition: true)
!4510 = !DIGlobalVariableExpression(var: !4511, expr: !DIExpression())
!4511 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_device_load_drivers275", scope: !2, file: !3, line: 135, type: !179, isLocal: true, isDefinition: true)
!4512 = !DIGlobalVariableExpression(var: !4513, expr: !DIExpression())
!4513 = distinct !DIGlobalVariable(name: "dops", scope: !4514, file: !3, line: 203, type: !4529, isLocal: true, isDefinition: true)
!4514 = distinct !DISubprogram(name: "snd_seq_device_new", scope: !3, file: !3, line: 198, type: !4515, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4518)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!85, !188, !85, !235, !85, !4517}
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!4518 = !{!4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526}
!4519 = !DILocalVariable(name: "card", arg: 1, scope: !4514, file: !3, line: 198, type: !188)
!4520 = !DILocalVariable(name: "device", arg: 2, scope: !4514, file: !3, line: 198, type: !85)
!4521 = !DILocalVariable(name: "id", arg: 3, scope: !4514, file: !3, line: 198, type: !235)
!4522 = !DILocalVariable(name: "argsize", arg: 4, scope: !4514, file: !3, line: 199, type: !85)
!4523 = !DILocalVariable(name: "result", arg: 5, scope: !4514, file: !3, line: 199, type: !4517)
!4524 = !DILocalVariable(name: "dev", scope: !4514, file: !3, line: 201, type: !183)
!4525 = !DILocalVariable(name: "err", scope: !4514, file: !3, line: 202, type: !85)
!4526 = !DILocalVariable(name: "__ret_warn_on", scope: !4527, file: !3, line: 212, type: !85)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !3, line: 212, column: 6)
!4528 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 212, column: 6)
!4529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4530)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device_ops", file: !118, line: 61, size: 192, elements: !4531)
!4531 = !{!4532, !4546, !4547}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dev_free", scope: !4530, file: !118, line: 62, baseType: !4533, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!85, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_device", file: !118, line: 67, size: 384, elements: !4538)
!4538 = !{!4539, !4540, !4541, !4542, !4543, !4544}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4537, file: !118, line: 68, baseType: !218, size: 128)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4537, file: !118, line: 69, baseType: !188, size: 64, offset: 128)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4537, file: !118, line: 70, baseType: !117, size: 32, offset: 192)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4537, file: !118, line: 71, baseType: !123, size: 32, offset: 224)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "device_data", scope: !4537, file: !118, line: 72, baseType: !179, size: 64, offset: 256)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4537, file: !118, line: 73, baseType: !4545, size: 64, offset: 320)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dev_register", scope: !4530, file: !118, line: 63, baseType: !4533, size: 64, offset: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "dev_disconnect", scope: !4530, file: !118, line: 64, baseType: !4533, size: 64, offset: 128)
!4548 = !DIGlobalVariableExpression(var: !4549, expr: !DIExpression())
!4549 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !4550, isLocal: true, isDefinition: true)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 72, elements: !4551)
!4551 = !{!4552}
!4552 = !DISubrange(count: 9)
!4553 = !DIGlobalVariableExpression(var: !4554, expr: !DIExpression())
!4554 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_device_new276", scope: !2, file: !3, line: 243, type: !179, isLocal: true, isDefinition: true)
!4555 = !DIGlobalVariableExpression(var: !4556, expr: !DIExpression())
!4556 = distinct !DIGlobalVariable(scope: null, file: !3, line: 250, type: !4557, isLocal: true, isDefinition: true)
!4557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 192, elements: !4558)
!4558 = !{!4559}
!4559 = !DISubrange(count: 24)
!4560 = !DIGlobalVariableExpression(var: !4561, expr: !DIExpression())
!4561 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___snd_seq_driver_register277", scope: !2, file: !3, line: 256, type: !179, isLocal: true, isDefinition: true)
!4562 = !DIGlobalVariableExpression(var: !4563, expr: !DIExpression())
!4563 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_seq_driver_unregister278", scope: !2, file: !3, line: 262, type: !179, isLocal: true, isDefinition: true)
!4564 = !DIGlobalVariableExpression(var: !4565, expr: !DIExpression())
!4565 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4280", scope: !2, file: !3, line: 309, type: !179, isLocal: true, isDefinition: true)
!4566 = !DIGlobalVariableExpression(var: !4567, expr: !DIExpression())
!4567 = distinct !DIGlobalVariable(name: "__exitcall_alsa_seq_device_exit", scope: !2, file: !3, line: 310, type: !4568, isLocal: true, isDefinition: true)
!4568 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4569, line: 120, baseType: !4001)
!4569 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4570 = !DIGlobalVariableExpression(var: !4571, expr: !DIExpression())
!4571 = distinct !DIGlobalVariable(name: "info_entry", scope: !2, file: !3, line: 61, type: !4370, isLocal: true, isDefinition: true)
!4572 = !DIGlobalVariableExpression(var: !4573, expr: !DIExpression())
!4573 = distinct !DIGlobalVariable(name: "snd_seq_in_init", scope: !2, file: !3, line: 87, type: !266, isLocal: true, isDefinition: true)
!4574 = !DIGlobalVariableExpression(var: !4575, expr: !DIExpression())
!4575 = distinct !DIGlobalVariable(name: "autoload_work", scope: !2, file: !3, line: 107, type: !1304, isLocal: true, isDefinition: true)
!4576 = !DIGlobalVariableExpression(var: !4577, expr: !DIExpression())
!4577 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !4578, isLocal: true, isDefinition: true)
!4578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 56, elements: !3804)
!4579 = !DIGlobalVariableExpression(var: !4580, expr: !DIExpression())
!4580 = distinct !DIGlobalVariable(scope: null, file: !169, line: 480, type: !4581, isLocal: true, isDefinition: true)
!4581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 168, elements: !4582)
!4582 = !{!4583}
!4583 = !DISubrange(count: 21)
!4584 = !DIGlobalVariableExpression(var: !4585, expr: !DIExpression())
!4585 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !2514, isLocal: true, isDefinition: true)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(name: "snd_seq_bus_type", scope: !2, file: !3, line: 52, type: !4075, isLocal: true, isDefinition: true)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !2514, isLocal: true, isDefinition: true)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !4592, isLocal: true, isDefinition: true)
!4592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 112, elements: !4593)
!4593 = !{!4594}
!4594 = !DISubrange(count: 14)
!4595 = !DIGlobalVariableExpression(var: !4596, expr: !DIExpression())
!4596 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !4578, isLocal: true, isDefinition: true)
!4597 = !DIGlobalVariableExpression(var: !4598, expr: !DIExpression())
!4598 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !911, isLocal: true, isDefinition: true)
!4599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 408, elements: !4600)
!4600 = !{!4601}
!4601 = !DISubrange(count: 51)
!4602 = !{i32 7, !"Dwarf Version", i32 5}
!4603 = !{i32 2, !"Debug Info Version", i32 3}
!4604 = !{i32 1, !"wchar_size", i32 2}
!4605 = !{i32 8, !"cf-protection-branch", i32 1}
!4606 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4607 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4608 = !{i32 1, !"Code Model", i32 2}
!4609 = !{i32 1, !"override-stack-alignment", i32 8}
!4610 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4611 = distinct !DISubprogram(name: "snd_seq_autoload_init", scope: !3, file: !3, line: 114, type: !2384, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4612 = !DILocation(line: 116, column: 2, scope: !4611)
!4613 = !DILocation(line: 121, column: 1, scope: !4611)
!4614 = distinct !DISubprogram(name: "atomic_dec", scope: !4615, file: !4615, line: 590, type: !4616, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4619)
!4615 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4616 = !DISubroutineType(types: !4617)
!4617 = !{null, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!4619 = !{!4620}
!4620 = !DILocalVariable(name: "v", arg: 1, scope: !4614, file: !4615, line: 590, type: !4618)
!4621 = !DILocation(line: 590, column: 22, scope: !4614)
!4622 = !DILocation(line: 592, column: 31, scope: !4614)
!4623 = !DILocation(line: 592, column: 2, scope: !4614)
!4624 = !DILocation(line: 593, column: 17, scope: !4614)
!4625 = !DILocation(line: 593, column: 2, scope: !4614)
!4626 = !DILocation(line: 594, column: 1, scope: !4614)
!4627 = distinct !DISubprogram(name: "snd_seq_autoload_exit", scope: !3, file: !3, line: 124, type: !2384, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4628 = !DILocation(line: 126, column: 2, scope: !4627)
!4629 = !DILocation(line: 127, column: 1, scope: !4627)
!4630 = distinct !DISubprogram(name: "atomic_inc", scope: !4615, file: !4615, line: 433, type: !4616, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4631)
!4631 = !{!4632}
!4632 = !DILocalVariable(name: "v", arg: 1, scope: !4630, file: !4615, line: 433, type: !4618)
!4633 = !DILocation(line: 433, column: 22, scope: !4630)
!4634 = !DILocation(line: 435, column: 31, scope: !4630)
!4635 = !DILocation(line: 435, column: 2, scope: !4630)
!4636 = !DILocation(line: 436, column: 17, scope: !4630)
!4637 = !DILocation(line: 436, column: 2, scope: !4630)
!4638 = !DILocation(line: 437, column: 1, scope: !4630)
!4639 = distinct !DISubprogram(name: "snd_seq_device_load_drivers", scope: !3, file: !3, line: 130, type: !2384, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4640 = !DILocation(line: 132, column: 2, scope: !4639)
!4641 = !DILocation(line: 133, column: 2, scope: !4639)
!4642 = !DILocation(line: 134, column: 1, scope: !4639)
!4643 = distinct !DISubprogram(name: "queue_autoload_drivers", scope: !3, file: !3, line: 109, type: !2384, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4644 = !DILocation(line: 111, column: 2, scope: !4643)
!4645 = !DILocation(line: 112, column: 1, scope: !4643)
!4646 = !DISubprogram(name: "flush_work", scope: !143, file: !143, line: 513, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!925, !1313}
!4649 = !DILocation(line: 198, column: 41, scope: !4514)
!4650 = !DILocation(line: 198, column: 51, scope: !4514)
!4651 = !DILocation(line: 198, column: 71, scope: !4514)
!4652 = !DILocation(line: 199, column: 14, scope: !4514)
!4653 = !DILocation(line: 199, column: 47, scope: !4514)
!4654 = !DILocation(line: 201, column: 2, scope: !4514)
!4655 = !DILocation(line: 201, column: 25, scope: !4514)
!4656 = !DILocation(line: 202, column: 2, scope: !4514)
!4657 = !DILocation(line: 202, column: 6, scope: !4514)
!4658 = !DILocation(line: 209, column: 6, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 209, column: 6)
!4660 = !DILocation(line: 209, column: 6, scope: !4514)
!4661 = !DILocation(line: 210, column: 4, scope: !4659)
!4662 = !DILocation(line: 210, column: 11, scope: !4659)
!4663 = !DILocation(line: 210, column: 3, scope: !4659)
!4664 = !DILocation(line: 212, column: 6, scope: !4527)
!4665 = !DILocation(line: 212, column: 6, scope: !4528)
!4666 = !DILocation(line: 212, column: 6, scope: !4514)
!4667 = !DILocation(line: 213, column: 3, scope: !4528)
!4668 = !DILocation(line: 215, column: 31, scope: !4514)
!4669 = !DILocation(line: 215, column: 29, scope: !4514)
!4670 = !DILocation(line: 215, column: 8, scope: !4514)
!4671 = !DILocation(line: 215, column: 6, scope: !4514)
!4672 = !DILocation(line: 216, column: 7, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 216, column: 6)
!4674 = !DILocation(line: 216, column: 6, scope: !4514)
!4675 = !DILocation(line: 217, column: 3, scope: !4673)
!4676 = !DILocation(line: 220, column: 14, scope: !4514)
!4677 = !DILocation(line: 220, column: 2, scope: !4514)
!4678 = !DILocation(line: 220, column: 7, scope: !4514)
!4679 = !DILocation(line: 220, column: 12, scope: !4514)
!4680 = !DILocation(line: 221, column: 16, scope: !4514)
!4681 = !DILocation(line: 221, column: 2, scope: !4514)
!4682 = !DILocation(line: 221, column: 7, scope: !4514)
!4683 = !DILocation(line: 221, column: 14, scope: !4514)
!4684 = !DILocation(line: 222, column: 12, scope: !4514)
!4685 = !DILocation(line: 222, column: 2, scope: !4514)
!4686 = !DILocation(line: 222, column: 7, scope: !4514)
!4687 = !DILocation(line: 222, column: 10, scope: !4514)
!4688 = !DILocation(line: 223, column: 17, scope: !4514)
!4689 = !DILocation(line: 223, column: 2, scope: !4514)
!4690 = !DILocation(line: 223, column: 7, scope: !4514)
!4691 = !DILocation(line: 223, column: 15, scope: !4514)
!4692 = !DILocation(line: 225, column: 21, scope: !4514)
!4693 = !DILocation(line: 225, column: 26, scope: !4514)
!4694 = !DILocation(line: 225, column: 2, scope: !4514)
!4695 = !DILocation(line: 226, column: 21, scope: !4514)
!4696 = !DILocation(line: 226, column: 27, scope: !4514)
!4697 = !DILocation(line: 226, column: 2, scope: !4514)
!4698 = !DILocation(line: 226, column: 7, scope: !4514)
!4699 = !DILocation(line: 226, column: 11, scope: !4514)
!4700 = !DILocation(line: 226, column: 18, scope: !4514)
!4701 = !DILocation(line: 227, column: 2, scope: !4514)
!4702 = !DILocation(line: 227, column: 7, scope: !4514)
!4703 = !DILocation(line: 227, column: 11, scope: !4514)
!4704 = !DILocation(line: 227, column: 15, scope: !4514)
!4705 = !DILocation(line: 228, column: 2, scope: !4514)
!4706 = !DILocation(line: 228, column: 7, scope: !4514)
!4707 = !DILocation(line: 228, column: 11, scope: !4514)
!4708 = !DILocation(line: 228, column: 19, scope: !4514)
!4709 = !DILocation(line: 229, column: 16, scope: !4514)
!4710 = !DILocation(line: 229, column: 21, scope: !4514)
!4711 = !DILocation(line: 229, column: 38, scope: !4514)
!4712 = !DILocation(line: 229, column: 43, scope: !4514)
!4713 = !DILocation(line: 229, column: 47, scope: !4514)
!4714 = !DILocation(line: 229, column: 53, scope: !4514)
!4715 = !DILocation(line: 229, column: 61, scope: !4514)
!4716 = !DILocation(line: 229, column: 2, scope: !4514)
!4717 = !DILocation(line: 232, column: 23, scope: !4514)
!4718 = !DILocation(line: 232, column: 50, scope: !4514)
!4719 = !DILocation(line: 232, column: 8, scope: !4514)
!4720 = !DILocation(line: 232, column: 6, scope: !4514)
!4721 = !DILocation(line: 233, column: 6, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 233, column: 6)
!4723 = !DILocation(line: 233, column: 10, scope: !4722)
!4724 = !DILocation(line: 233, column: 6, scope: !4514)
!4725 = !DILocation(line: 234, column: 15, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 233, column: 15)
!4727 = !DILocation(line: 234, column: 20, scope: !4726)
!4728 = !DILocation(line: 234, column: 3, scope: !4726)
!4729 = !DILocation(line: 235, column: 10, scope: !4726)
!4730 = !DILocation(line: 235, column: 3, scope: !4726)
!4731 = !DILocation(line: 238, column: 6, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 238, column: 6)
!4733 = !DILocation(line: 238, column: 6, scope: !4514)
!4734 = !DILocation(line: 239, column: 13, scope: !4732)
!4735 = !DILocation(line: 239, column: 4, scope: !4732)
!4736 = !DILocation(line: 239, column: 11, scope: !4732)
!4737 = !DILocation(line: 239, column: 3, scope: !4732)
!4738 = !DILocation(line: 241, column: 2, scope: !4514)
!4739 = !DILocation(line: 242, column: 1, scope: !4514)
!4740 = distinct !DISubprogram(name: "snd_seq_device_dev_free", scope: !3, file: !3, line: 154, type: !4534, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4741)
!4741 = !{!4742, !4743}
!4742 = !DILocalVariable(name: "device", arg: 1, scope: !4740, file: !3, line: 154, type: !4536)
!4743 = !DILocalVariable(name: "dev", scope: !4740, file: !3, line: 156, type: !183)
!4744 = !DILocation(line: 154, column: 55, scope: !4740)
!4745 = !DILocation(line: 156, column: 2, scope: !4740)
!4746 = !DILocation(line: 156, column: 25, scope: !4740)
!4747 = !DILocation(line: 156, column: 31, scope: !4740)
!4748 = !DILocation(line: 156, column: 39, scope: !4740)
!4749 = !DILocation(line: 158, column: 2, scope: !4740)
!4750 = !DILocation(line: 159, column: 6, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 159, column: 6)
!4752 = !DILocation(line: 159, column: 11, scope: !4751)
!4753 = !DILocation(line: 159, column: 6, scope: !4740)
!4754 = !DILocation(line: 160, column: 3, scope: !4751)
!4755 = !DILocation(line: 160, column: 8, scope: !4751)
!4756 = !DILocation(line: 160, column: 21, scope: !4751)
!4757 = !DILocation(line: 161, column: 14, scope: !4740)
!4758 = !DILocation(line: 161, column: 19, scope: !4740)
!4759 = !DILocation(line: 161, column: 2, scope: !4740)
!4760 = !DILocation(line: 163, column: 1, scope: !4740)
!4761 = !DILocation(line: 162, column: 2, scope: !4740)
!4762 = distinct !DISubprogram(name: "snd_seq_device_dev_register", scope: !3, file: !3, line: 165, type: !4534, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4763)
!4763 = !{!4764, !4765, !4766}
!4764 = !DILocalVariable(name: "device", arg: 1, scope: !4762, file: !3, line: 165, type: !4536)
!4765 = !DILocalVariable(name: "dev", scope: !4762, file: !3, line: 167, type: !183)
!4766 = !DILocalVariable(name: "err", scope: !4762, file: !3, line: 168, type: !85)
!4767 = !DILocation(line: 165, column: 59, scope: !4762)
!4768 = !DILocation(line: 167, column: 2, scope: !4762)
!4769 = !DILocation(line: 167, column: 25, scope: !4762)
!4770 = !DILocation(line: 167, column: 31, scope: !4762)
!4771 = !DILocation(line: 167, column: 39, scope: !4762)
!4772 = !DILocation(line: 168, column: 2, scope: !4762)
!4773 = !DILocation(line: 168, column: 6, scope: !4762)
!4774 = !DILocation(line: 170, column: 20, scope: !4762)
!4775 = !DILocation(line: 170, column: 25, scope: !4762)
!4776 = !DILocation(line: 170, column: 8, scope: !4762)
!4777 = !DILocation(line: 170, column: 6, scope: !4762)
!4778 = !DILocation(line: 171, column: 6, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 171, column: 6)
!4780 = !DILocation(line: 171, column: 10, scope: !4779)
!4781 = !DILocation(line: 171, column: 6, scope: !4762)
!4782 = !DILocation(line: 172, column: 10, scope: !4779)
!4783 = !DILocation(line: 172, column: 3, scope: !4779)
!4784 = !DILocation(line: 173, column: 7, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 173, column: 6)
!4786 = !DILocation(line: 173, column: 12, scope: !4785)
!4787 = !DILocation(line: 173, column: 16, scope: !4785)
!4788 = !DILocation(line: 173, column: 6, scope: !4762)
!4789 = !DILocation(line: 174, column: 3, scope: !4785)
!4790 = !DILocation(line: 175, column: 2, scope: !4762)
!4791 = !DILocation(line: 176, column: 1, scope: !4762)
!4792 = distinct !DISubprogram(name: "snd_seq_device_dev_disconnect", scope: !3, file: !3, line: 178, type: !4534, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4793 = !{!4794, !4795}
!4794 = !DILocalVariable(name: "device", arg: 1, scope: !4792, file: !3, line: 178, type: !4536)
!4795 = !DILocalVariable(name: "dev", scope: !4792, file: !3, line: 180, type: !183)
!4796 = !DILocation(line: 178, column: 61, scope: !4792)
!4797 = !DILocation(line: 180, column: 2, scope: !4792)
!4798 = !DILocation(line: 180, column: 25, scope: !4792)
!4799 = !DILocation(line: 180, column: 31, scope: !4792)
!4800 = !DILocation(line: 180, column: 39, scope: !4792)
!4801 = !DILocation(line: 182, column: 14, scope: !4792)
!4802 = !DILocation(line: 182, column: 19, scope: !4792)
!4803 = !DILocation(line: 182, column: 2, scope: !4792)
!4804 = !DILocation(line: 184, column: 1, scope: !4792)
!4805 = !DILocation(line: 183, column: 2, scope: !4792)
!4806 = distinct !DISubprogram(name: "kzalloc", scope: !169, file: !169, line: 719, type: !4807, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4809)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!179, !363, !180}
!4809 = !{!4810, !4811}
!4810 = !DILocalVariable(name: "size", arg: 1, scope: !4806, file: !169, line: 719, type: !363)
!4811 = !DILocalVariable(name: "flags", arg: 2, scope: !4806, file: !169, line: 719, type: !180)
!4812 = !DILocation(line: 719, column: 52, scope: !4806)
!4813 = !DILocation(line: 719, column: 64, scope: !4806)
!4814 = !DILocation(line: 721, column: 17, scope: !4806)
!4815 = !DILocation(line: 721, column: 23, scope: !4806)
!4816 = !DILocation(line: 721, column: 29, scope: !4806)
!4817 = !DILocation(line: 721, column: 9, scope: !4806)
!4818 = !DILocation(line: 721, column: 2, scope: !4806)
!4819 = !DISubprogram(name: "device_initialize", scope: !70, file: !70, line: 1056, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4820 = distinct !DISubprogram(name: "snd_seq_dev_release", scope: !3, file: !3, line: 186, type: !4039, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4821)
!4821 = !{!4822, !4823}
!4822 = !DILocalVariable(name: "dev", arg: 1, scope: !4820, file: !3, line: 186, type: !4010)
!4823 = !DILocalVariable(name: "__mptr", scope: !4824, file: !3, line: 188, type: !179)
!4824 = distinct !DILexicalBlock(scope: !4820, file: !3, line: 188, column: 8)
!4825 = !DILocation(line: 186, column: 48, scope: !4820)
!4826 = !DILocation(line: 188, column: 8, scope: !4824)
!4827 = !DILocation(line: 188, column: 8, scope: !4820)
!4828 = !DILocation(line: 188, column: 2, scope: !4820)
!4829 = !DILocation(line: 189, column: 1, scope: !4820)
!4830 = !DISubprogram(name: "dev_set_name", scope: !70, file: !70, line: 879, type: !4831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!85, !4010, !235, null}
!4833 = !DISubprogram(name: "snd_device_new", scope: !118, file: !118, line: 321, type: !4834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!85, !188, !123, !179, !4545}
!4836 = !DISubprogram(name: "put_device", scope: !70, file: !70, line: 1231, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4837 = distinct !DISubprogram(name: "__snd_seq_driver_register", scope: !3, file: !3, line: 248, type: !4838, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4840)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!85, !4484, !213}
!4840 = !{!4841, !4842, !4843, !4846}
!4841 = !DILocalVariable(name: "drv", arg: 1, scope: !4837, file: !3, line: 248, type: !4484)
!4842 = !DILocalVariable(name: "mod", arg: 2, scope: !4837, file: !3, line: 248, type: !213)
!4843 = !DILocalVariable(name: "__ret_warn_on", scope: !4844, file: !3, line: 250, type: !85)
!4844 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 250, column: 6)
!4845 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 250, column: 6)
!4846 = !DILocalVariable(name: "__flags", scope: !4847, file: !3, line: 250, type: !85)
!4847 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 250, column: 6)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 250, column: 6)
!4849 = !DILocation(line: 248, column: 54, scope: !4837)
!4850 = !DILocation(line: 248, column: 74, scope: !4837)
!4851 = !DILocation(line: 250, column: 6, scope: !4844)
!4852 = !DILocation(line: 250, column: 6, scope: !4848)
!4853 = !DILocation(line: 250, column: 6, scope: !4847)
!4854 = !DILocation(line: 250, column: 6, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 250, column: 6)
!4856 = !DILocation(line: 250, column: 6, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 250, column: 6)
!4858 = !{i64 2154076636, i64 2154076665, i64 2154076711, i64 2154076769, i64 2154076823, i64 2154076877, i64 2154076932, i64 2154076963, i64 2154077271, i64 2154077277, i64 2154077324, i64 2154077347, i64 2154077373}
!4859 = !DILocation(line: 250, column: 6, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 250, column: 6)
!4861 = !DILocation(line: 250, column: 6, scope: !4845)
!4862 = !DILocation(line: 250, column: 6, scope: !4837)
!4863 = !DILocation(line: 251, column: 3, scope: !4845)
!4864 = !DILocation(line: 252, column: 2, scope: !4837)
!4865 = !DILocation(line: 252, column: 7, scope: !4837)
!4866 = !DILocation(line: 252, column: 14, scope: !4837)
!4867 = !DILocation(line: 252, column: 18, scope: !4837)
!4868 = !DILocation(line: 253, column: 22, scope: !4837)
!4869 = !DILocation(line: 253, column: 2, scope: !4837)
!4870 = !DILocation(line: 253, column: 7, scope: !4837)
!4871 = !DILocation(line: 253, column: 14, scope: !4837)
!4872 = !DILocation(line: 253, column: 20, scope: !4837)
!4873 = !DILocation(line: 254, column: 26, scope: !4837)
!4874 = !DILocation(line: 254, column: 31, scope: !4837)
!4875 = !DILocation(line: 254, column: 9, scope: !4837)
!4876 = !DILocation(line: 254, column: 2, scope: !4837)
!4877 = !DILocation(line: 255, column: 1, scope: !4837)
!4878 = !DISubprogram(name: "driver_register", scope: !64, file: !64, line: 125, type: !4879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!85, !4087}
!4881 = distinct !DISubprogram(name: "snd_seq_driver_unregister", scope: !3, file: !3, line: 258, type: !4882, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4884)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{null, !4484}
!4884 = !{!4885}
!4885 = !DILocalVariable(name: "drv", arg: 1, scope: !4881, file: !3, line: 258, type: !4484)
!4886 = !DILocation(line: 258, column: 55, scope: !4881)
!4887 = !DILocation(line: 260, column: 21, scope: !4881)
!4888 = !DILocation(line: 260, column: 26, scope: !4881)
!4889 = !DILocation(line: 260, column: 2, scope: !4881)
!4890 = !DILocation(line: 261, column: 1, scope: !4881)
!4891 = !DISubprogram(name: "driver_unregister", scope: !64, file: !64, line: 126, type: !4892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{null, !4087}
!4894 = distinct !DISubprogram(name: "alsa_seq_device_exit", scope: !3, file: !3, line: 298, type: !2384, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4895 = !DILocation(line: 301, column: 2, scope: !4894)
!4896 = !DILocation(line: 304, column: 22, scope: !4894)
!4897 = !DILocation(line: 304, column: 2, scope: !4894)
!4898 = !DILocation(line: 306, column: 2, scope: !4894)
!4899 = !DILocation(line: 307, column: 1, scope: !4894)
!4900 = !DISubprogram(name: "cancel_work_sync", scope: !143, file: !143, line: 515, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4901 = !DISubprogram(name: "snd_info_free_entry", scope: !4372, file: !4372, line: 120, type: !4442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4902 = !DISubprogram(name: "bus_unregister", scope: !4076, file: !4076, line: 114, type: !4903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{null, !4073}
!4905 = distinct !DISubprogram(name: "__initstub__kmod_snd_seq_device__279_309_alsa_seq_device_init4", scope: !3, file: !3, line: 309, type: !3786, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4906 = !DILocation(line: 309, column: 1, scope: !4905)
!4907 = distinct !DISubprogram(name: "alsa_seq_device_init", scope: !3, file: !3, line: 285, type: !3786, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4908)
!4908 = !{!4909}
!4909 = !DILocalVariable(name: "err", scope: !4907, file: !3, line: 287, type: !85)
!4910 = !DILocation(line: 287, column: 2, scope: !4907)
!4911 = !DILocation(line: 287, column: 6, scope: !4907)
!4912 = !DILocation(line: 289, column: 8, scope: !4907)
!4913 = !DILocation(line: 289, column: 6, scope: !4907)
!4914 = !DILocation(line: 290, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 290, column: 6)
!4916 = !DILocation(line: 290, column: 10, scope: !4915)
!4917 = !DILocation(line: 290, column: 6, scope: !4907)
!4918 = !DILocation(line: 291, column: 10, scope: !4915)
!4919 = !DILocation(line: 291, column: 3, scope: !4915)
!4920 = !DILocation(line: 292, column: 8, scope: !4907)
!4921 = !DILocation(line: 292, column: 6, scope: !4907)
!4922 = !DILocation(line: 293, column: 6, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 293, column: 6)
!4924 = !DILocation(line: 293, column: 10, scope: !4923)
!4925 = !DILocation(line: 293, column: 6, scope: !4907)
!4926 = !DILocation(line: 294, column: 3, scope: !4923)
!4927 = !DILocation(line: 295, column: 9, scope: !4907)
!4928 = !DILocation(line: 295, column: 2, scope: !4907)
!4929 = !DILocation(line: 296, column: 1, scope: !4907)
!4930 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4931, file: !4931, line: 94, type: !4932, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4937)
!4931 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4932 = !DISubroutineType(types: !4933)
!4933 = !{null, !4934, !363}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4936)
!4936 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4937 = !{!4938, !4939}
!4938 = !DILocalVariable(name: "v", arg: 1, scope: !4930, file: !4931, line: 94, type: !4934)
!4939 = !DILocalVariable(name: "size", arg: 2, scope: !4930, file: !4931, line: 94, type: !363)
!4940 = !DILocation(line: 94, column: 79, scope: !4930)
!4941 = !DILocation(line: 94, column: 89, scope: !4930)
!4942 = !DILocation(line: 96, column: 20, scope: !4930)
!4943 = !DILocation(line: 96, column: 23, scope: !4930)
!4944 = !DILocation(line: 96, column: 2, scope: !4930)
!4945 = !DILocation(line: 97, column: 2, scope: !4930)
!4946 = !DILocation(line: 98, column: 1, scope: !4930)
!4947 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !4948, file: !4948, line: 1194, type: !4616, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4949)
!4948 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4949 = !{!4950}
!4950 = !DILocalVariable(name: "v", arg: 1, scope: !4947, file: !4948, line: 1194, type: !4618)
!4951 = !DILocation(line: 1194, column: 26, scope: !4947)
!4952 = !DILocation(line: 1197, column: 18, scope: !4947)
!4953 = !DILocation(line: 1197, column: 2, scope: !4947)
!4954 = !DILocation(line: 1201, column: 1, scope: !4947)
!4955 = distinct !DISubprogram(name: "kasan_check_write", scope: !4956, file: !4956, line: 44, type: !4957, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4959)
!4956 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!925, !4934, !7}
!4959 = !{!4960, !4961}
!4960 = !DILocalVariable(name: "p", arg: 1, scope: !4955, file: !4956, line: 44, type: !4934)
!4961 = !DILocalVariable(name: "size", arg: 2, scope: !4955, file: !4956, line: 44, type: !7)
!4962 = !DILocation(line: 44, column: 59, scope: !4955)
!4963 = !DILocation(line: 44, column: 75, scope: !4955)
!4964 = !DILocation(line: 46, column: 2, scope: !4955)
!4965 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4966, file: !4966, line: 229, type: !4967, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4969)
!4966 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4967 = !DISubroutineType(types: !4968)
!4968 = !{null, !4934, !363, !85}
!4969 = !{!4970, !4971, !4972}
!4970 = !DILocalVariable(name: "ptr", arg: 1, scope: !4965, file: !4966, line: 229, type: !4934)
!4971 = !DILocalVariable(name: "size", arg: 2, scope: !4965, file: !4966, line: 229, type: !363)
!4972 = !DILocalVariable(name: "type", arg: 3, scope: !4965, file: !4966, line: 230, type: !85)
!4973 = !DILocation(line: 229, column: 60, scope: !4965)
!4974 = !DILocation(line: 229, column: 72, scope: !4965)
!4975 = !DILocation(line: 230, column: 15, scope: !4965)
!4976 = !DILocation(line: 230, column: 23, scope: !4965)
!4977 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !4978, file: !4978, line: 58, type: !4616, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4979)
!4978 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4979 = !{!4980}
!4980 = !DILocalVariable(name: "v", arg: 1, scope: !4977, file: !4978, line: 58, type: !4618)
!4981 = !DILocation(line: 58, column: 55, scope: !4977)
!4982 = !DILocation(line: 61, column: 16, scope: !4977)
!4983 = !DILocation(line: 61, column: 19, scope: !4977)
!4984 = !DILocation(line: 60, column: 2, scope: !4977)
!4985 = !{i64 2148457683, i64 2148457722, i64 2148457743, i64 2148457780, i64 2148457803, i64 2148457673}
!4986 = !DILocation(line: 62, column: 1, scope: !4977)
!4987 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !4948, file: !4948, line: 976, type: !4616, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4988)
!4988 = !{!4989}
!4989 = !DILocalVariable(name: "v", arg: 1, scope: !4987, file: !4948, line: 976, type: !4618)
!4990 = !DILocation(line: 976, column: 26, scope: !4987)
!4991 = !DILocation(line: 979, column: 18, scope: !4987)
!4992 = !DILocation(line: 979, column: 2, scope: !4987)
!4993 = !DILocation(line: 983, column: 1, scope: !4987)
!4994 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !4978, file: !4978, line: 51, type: !4616, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4995)
!4995 = !{!4996}
!4996 = !DILocalVariable(name: "v", arg: 1, scope: !4994, file: !4978, line: 51, type: !4618)
!4997 = !DILocation(line: 51, column: 55, scope: !4994)
!4998 = !DILocation(line: 54, column: 16, scope: !4994)
!4999 = !DILocation(line: 54, column: 19, scope: !4994)
!5000 = !DILocation(line: 53, column: 2, scope: !4994)
!5001 = !{i64 2148457320, i64 2148457359, i64 2148457380, i64 2148457417, i64 2148457440, i64 2148457310}
!5002 = !DILocation(line: 55, column: 1, scope: !4994)
!5003 = distinct !DISubprogram(name: "schedule_work", scope: !143, file: !143, line: 621, type: !4647, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5004)
!5004 = !{!5005}
!5005 = !DILocalVariable(name: "work", arg: 1, scope: !5003, file: !143, line: 621, type: !1313)
!5006 = !DILocation(line: 621, column: 54, scope: !5003)
!5007 = !DILocation(line: 623, column: 20, scope: !5003)
!5008 = !DILocation(line: 623, column: 31, scope: !5003)
!5009 = !DILocation(line: 623, column: 9, scope: !5003)
!5010 = !DILocation(line: 623, column: 2, scope: !5003)
!5011 = distinct !DISubprogram(name: "queue_work", scope: !143, file: !143, line: 559, type: !5012, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5014)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!925, !3059, !1313}
!5014 = !{!5015, !5016}
!5015 = !DILocalVariable(name: "wq", arg: 1, scope: !5011, file: !143, line: 559, type: !3059)
!5016 = !DILocalVariable(name: "work", arg: 2, scope: !5011, file: !143, line: 560, type: !1313)
!5017 = !DILocation(line: 559, column: 56, scope: !5011)
!5018 = !DILocation(line: 560, column: 30, scope: !5011)
!5019 = !DILocation(line: 562, column: 41, scope: !5011)
!5020 = !DILocation(line: 562, column: 45, scope: !5011)
!5021 = !DILocation(line: 562, column: 9, scope: !5011)
!5022 = !DILocation(line: 562, column: 2, scope: !5011)
!5023 = !DISubprogram(name: "queue_work_on", scope: !143, file: !143, line: 496, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!925, !85, !3059, !1313}
!5026 = distinct !DISubprogram(name: "autoload_drivers", scope: !3, file: !3, line: 98, type: !1311, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5027)
!5027 = !{!5028}
!5028 = !DILocalVariable(name: "work", arg: 1, scope: !5026, file: !3, line: 98, type: !1313)
!5029 = !DILocation(line: 98, column: 50, scope: !5026)
!5030 = !DILocation(line: 101, column: 6, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 101, column: 6)
!5032 = !DILocation(line: 101, column: 42, scope: !5031)
!5033 = !DILocation(line: 101, column: 6, scope: !5026)
!5034 = !DILocation(line: 102, column: 3, scope: !5031)
!5035 = !DILocation(line: 104, column: 2, scope: !5026)
!5036 = !DILocation(line: 105, column: 1, scope: !5026)
!5037 = distinct !DISubprogram(name: "atomic_inc_return", scope: !4615, file: !4615, line: 450, type: !5038, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{!85, !4618}
!5040 = !{!5041}
!5041 = !DILocalVariable(name: "v", arg: 1, scope: !5037, file: !4615, line: 450, type: !4618)
!5042 = !DILocation(line: 450, column: 29, scope: !5037)
!5043 = !DILocation(line: 452, column: 2, scope: !5037)
!5044 = !DILocation(line: 452, column: 2, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5037, file: !4615, line: 452, column: 2)
!5046 = !DILocation(line: 453, column: 31, scope: !5037)
!5047 = !DILocation(line: 453, column: 2, scope: !5037)
!5048 = !DILocation(line: 454, column: 31, scope: !5037)
!5049 = !DILocation(line: 454, column: 9, scope: !5037)
!5050 = !DILocation(line: 454, column: 2, scope: !5037)
!5051 = !DISubprogram(name: "bus_for_each_dev", scope: !4076, file: !4076, line: 144, type: !5052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!85, !4073, !4010, !179, !5054}
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DISubroutineType(types: !5056)
!5056 = !{!85, !4010, !179}
!5057 = distinct !DISubprogram(name: "request_seq_drv", scope: !3, file: !3, line: 89, type: !5055, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5058 = !{!5059, !5060, !5061, !5062}
!5059 = !DILocalVariable(name: "dev", arg: 1, scope: !5057, file: !3, line: 89, type: !4010)
!5060 = !DILocalVariable(name: "data", arg: 2, scope: !5057, file: !3, line: 89, type: !179)
!5061 = !DILocalVariable(name: "sdev", scope: !5057, file: !3, line: 91, type: !183)
!5062 = !DILocalVariable(name: "__mptr", scope: !5063, file: !3, line: 91, type: !179)
!5063 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 91, column: 32)
!5064 = !DILocation(line: 89, column: 43, scope: !5057)
!5065 = !DILocation(line: 89, column: 54, scope: !5057)
!5066 = !DILocation(line: 91, column: 2, scope: !5057)
!5067 = !DILocation(line: 91, column: 25, scope: !5057)
!5068 = !DILocation(line: 91, column: 32, scope: !5063)
!5069 = !DILocation(line: 91, column: 32, scope: !5057)
!5070 = !DILocation(line: 93, column: 7, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 93, column: 6)
!5072 = !DILocation(line: 93, column: 12, scope: !5071)
!5073 = !DILocation(line: 93, column: 6, scope: !5057)
!5074 = !DILocation(line: 94, column: 3, scope: !5071)
!5075 = !DILocation(line: 96, column: 1, scope: !5057)
!5076 = !DILocation(line: 95, column: 2, scope: !5057)
!5077 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !4948, file: !4948, line: 996, type: !5038, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5078)
!5078 = !{!5079}
!5079 = !DILocalVariable(name: "v", arg: 1, scope: !5077, file: !4948, line: 996, type: !4618)
!5080 = !DILocation(line: 996, column: 33, scope: !5077)
!5081 = !DILocation(line: 1007, column: 34, scope: !5077)
!5082 = !DILocation(line: 1007, column: 9, scope: !5077)
!5083 = !DILocation(line: 1007, column: 2, scope: !5077)
!5084 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !4948, file: !4948, line: 548, type: !5085, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5087)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!85, !85, !4618}
!5087 = !{!5088, !5089}
!5088 = !DILocalVariable(name: "i", arg: 1, scope: !5084, file: !4948, line: 548, type: !85)
!5089 = !DILocalVariable(name: "v", arg: 2, scope: !5084, file: !4948, line: 548, type: !4618)
!5090 = !DILocation(line: 548, column: 27, scope: !5084)
!5091 = !DILocation(line: 548, column: 40, scope: !5084)
!5092 = !DILocation(line: 551, column: 32, scope: !5084)
!5093 = !DILocation(line: 551, column: 35, scope: !5084)
!5094 = !DILocation(line: 551, column: 9, scope: !5084)
!5095 = !DILocation(line: 551, column: 2, scope: !5084)
!5096 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !4978, file: !4978, line: 83, type: !5085, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5097 = !{!5098, !5099, !5100}
!5098 = !DILocalVariable(name: "i", arg: 1, scope: !5096, file: !4978, line: 83, type: !85)
!5099 = !DILocalVariable(name: "v", arg: 2, scope: !5096, file: !4978, line: 83, type: !4618)
!5100 = !DILocalVariable(name: "__ret", scope: !5101, file: !4978, line: 85, type: !85)
!5101 = distinct !DILexicalBlock(scope: !5096, file: !4978, line: 85, column: 13)
!5102 = !DILocation(line: 83, column: 55, scope: !5096)
!5103 = !DILocation(line: 83, column: 68, scope: !5096)
!5104 = !DILocation(line: 85, column: 9, scope: !5096)
!5105 = !DILocation(line: 85, column: 13, scope: !5101)
!5106 = !{i64 2148465396, i64 2148465435, i64 2148465456, i64 2148465493, i64 2148465516, i64 2148465525}
!5107 = !DILocation(line: 85, column: 13, scope: !5096)
!5108 = !DILocation(line: 85, column: 11, scope: !5096)
!5109 = !DILocation(line: 85, column: 2, scope: !5096)
!5110 = !DISubprogram(name: "__request_module", scope: !5111, file: !5111, line: 24, type: !5112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5111 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!85, !925, !235, null}
!5114 = distinct !DISubprogram(name: "cancel_autoload_drivers", scope: !3, file: !3, line: 137, type: !2384, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5115 = !DILocation(line: 139, column: 2, scope: !5114)
!5116 = !DILocation(line: 140, column: 1, scope: !5114)
!5117 = !DISubprogram(name: "device_add", scope: !70, file: !70, line: 1057, type: !4048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5118 = !DISubprogram(name: "device_del", scope: !70, file: !70, line: 1058, type: !4039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5119 = distinct !DISubprogram(name: "kmalloc", scope: !169, file: !169, line: 591, type: !4807, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5120)
!5120 = !{!5121, !5122, !5123}
!5121 = !DILocalVariable(name: "size", arg: 1, scope: !5119, file: !169, line: 591, type: !363)
!5122 = !DILocalVariable(name: "flags", arg: 2, scope: !5119, file: !169, line: 591, type: !180)
!5123 = !DILocalVariable(name: "index", scope: !5124, file: !169, line: 594, type: !7)
!5124 = distinct !DILexicalBlock(scope: !5125, file: !169, line: 593, column: 42)
!5125 = distinct !DILexicalBlock(scope: !5119, file: !169, line: 593, column: 6)
!5126 = !DILocation(line: 591, column: 61, scope: !5119)
!5127 = !DILocation(line: 591, column: 73, scope: !5119)
!5128 = !DILocation(line: 593, column: 27, scope: !5125)
!5129 = !DILocation(line: 593, column: 6, scope: !5125)
!5130 = !DILocation(line: 593, column: 33, scope: !5125)
!5131 = !DILocation(line: 593, column: 36, scope: !5125)
!5132 = !DILocation(line: 593, column: 6, scope: !5119)
!5133 = !DILocation(line: 594, column: 3, scope: !5124)
!5134 = !DILocation(line: 594, column: 16, scope: !5124)
!5135 = !DILocation(line: 596, column: 7, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5124, file: !169, line: 596, column: 7)
!5137 = !DILocation(line: 596, column: 12, scope: !5136)
!5138 = !DILocation(line: 596, column: 7, scope: !5124)
!5139 = !DILocation(line: 597, column: 25, scope: !5136)
!5140 = !DILocation(line: 597, column: 31, scope: !5136)
!5141 = !DILocation(line: 597, column: 11, scope: !5136)
!5142 = !DILocation(line: 597, column: 4, scope: !5136)
!5143 = !DILocation(line: 599, column: 11, scope: !5124)
!5144 = !DILocation(line: 599, column: 9, scope: !5124)
!5145 = !DILocation(line: 601, column: 33, scope: !5124)
!5146 = !DILocation(line: 601, column: 40, scope: !5124)
!5147 = !DILocation(line: 601, column: 20, scope: !5124)
!5148 = !DILocation(line: 601, column: 5, scope: !5124)
!5149 = !DILocation(line: 601, column: 51, scope: !5124)
!5150 = !DILocation(line: 602, column: 5, scope: !5124)
!5151 = !DILocation(line: 602, column: 12, scope: !5124)
!5152 = !DILocation(line: 600, column: 10, scope: !5124)
!5153 = !DILocation(line: 600, column: 3, scope: !5124)
!5154 = !DILocation(line: 603, column: 2, scope: !5125)
!5155 = !DILocation(line: 604, column: 19, scope: !5119)
!5156 = !DILocation(line: 604, column: 25, scope: !5119)
!5157 = !DILocation(line: 604, column: 9, scope: !5119)
!5158 = !DILocation(line: 604, column: 2, scope: !5119)
!5159 = !DILocation(line: 605, column: 1, scope: !5119)
!5160 = !DISubprogram(name: "kmalloc_large", scope: !169, file: !169, line: 531, type: !4807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5161 = distinct !DISubprogram(name: "__kmalloc_index", scope: !169, file: !169, line: 444, type: !5162, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5164)
!5162 = !DISubroutineType(types: !5163)
!5163 = !{!7, !363, !925}
!5164 = !{!5165, !5166}
!5165 = !DILocalVariable(name: "size", arg: 1, scope: !5161, file: !169, line: 444, type: !363)
!5166 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5161, file: !169, line: 445, type: !925)
!5167 = !DILocation(line: 444, column: 60, scope: !5161)
!5168 = !DILocation(line: 445, column: 16, scope: !5161)
!5169 = !DILocation(line: 447, column: 7, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 447, column: 6)
!5171 = !DILocation(line: 447, column: 6, scope: !5161)
!5172 = !DILocation(line: 448, column: 3, scope: !5170)
!5173 = !DILocation(line: 450, column: 6, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 450, column: 6)
!5175 = !DILocation(line: 450, column: 11, scope: !5174)
!5176 = !DILocation(line: 450, column: 6, scope: !5161)
!5177 = !DILocation(line: 451, column: 3, scope: !5174)
!5178 = !DILocation(line: 453, column: 32, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 453, column: 6)
!5180 = !DILocation(line: 453, column: 37, scope: !5179)
!5181 = !DILocation(line: 453, column: 42, scope: !5179)
!5182 = !DILocation(line: 453, column: 45, scope: !5179)
!5183 = !DILocation(line: 453, column: 50, scope: !5179)
!5184 = !DILocation(line: 453, column: 6, scope: !5161)
!5185 = !DILocation(line: 454, column: 3, scope: !5179)
!5186 = !DILocation(line: 455, column: 32, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 455, column: 6)
!5188 = !DILocation(line: 455, column: 37, scope: !5187)
!5189 = !DILocation(line: 455, column: 43, scope: !5187)
!5190 = !DILocation(line: 455, column: 46, scope: !5187)
!5191 = !DILocation(line: 455, column: 51, scope: !5187)
!5192 = !DILocation(line: 455, column: 6, scope: !5161)
!5193 = !DILocation(line: 456, column: 3, scope: !5187)
!5194 = !DILocation(line: 457, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 457, column: 6)
!5196 = !DILocation(line: 457, column: 11, scope: !5195)
!5197 = !DILocation(line: 457, column: 6, scope: !5161)
!5198 = !DILocation(line: 457, column: 26, scope: !5195)
!5199 = !DILocation(line: 458, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 458, column: 6)
!5201 = !DILocation(line: 458, column: 11, scope: !5200)
!5202 = !DILocation(line: 458, column: 6, scope: !5161)
!5203 = !DILocation(line: 458, column: 26, scope: !5200)
!5204 = !DILocation(line: 459, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 459, column: 6)
!5206 = !DILocation(line: 459, column: 11, scope: !5205)
!5207 = !DILocation(line: 459, column: 6, scope: !5161)
!5208 = !DILocation(line: 459, column: 26, scope: !5205)
!5209 = !DILocation(line: 460, column: 6, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 460, column: 6)
!5211 = !DILocation(line: 460, column: 11, scope: !5210)
!5212 = !DILocation(line: 460, column: 6, scope: !5161)
!5213 = !DILocation(line: 460, column: 26, scope: !5210)
!5214 = !DILocation(line: 461, column: 6, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 461, column: 6)
!5216 = !DILocation(line: 461, column: 11, scope: !5215)
!5217 = !DILocation(line: 461, column: 6, scope: !5161)
!5218 = !DILocation(line: 461, column: 26, scope: !5215)
!5219 = !DILocation(line: 462, column: 6, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 462, column: 6)
!5221 = !DILocation(line: 462, column: 11, scope: !5220)
!5222 = !DILocation(line: 462, column: 6, scope: !5161)
!5223 = !DILocation(line: 462, column: 26, scope: !5220)
!5224 = !DILocation(line: 463, column: 6, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 463, column: 6)
!5226 = !DILocation(line: 463, column: 11, scope: !5225)
!5227 = !DILocation(line: 463, column: 6, scope: !5161)
!5228 = !DILocation(line: 463, column: 26, scope: !5225)
!5229 = !DILocation(line: 464, column: 6, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 464, column: 6)
!5231 = !DILocation(line: 464, column: 11, scope: !5230)
!5232 = !DILocation(line: 464, column: 6, scope: !5161)
!5233 = !DILocation(line: 464, column: 26, scope: !5230)
!5234 = !DILocation(line: 465, column: 6, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 465, column: 6)
!5236 = !DILocation(line: 465, column: 11, scope: !5235)
!5237 = !DILocation(line: 465, column: 6, scope: !5161)
!5238 = !DILocation(line: 465, column: 26, scope: !5235)
!5239 = !DILocation(line: 466, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 466, column: 6)
!5241 = !DILocation(line: 466, column: 11, scope: !5240)
!5242 = !DILocation(line: 466, column: 6, scope: !5161)
!5243 = !DILocation(line: 466, column: 26, scope: !5240)
!5244 = !DILocation(line: 467, column: 6, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 467, column: 6)
!5246 = !DILocation(line: 467, column: 11, scope: !5245)
!5247 = !DILocation(line: 467, column: 6, scope: !5161)
!5248 = !DILocation(line: 467, column: 26, scope: !5245)
!5249 = !DILocation(line: 468, column: 6, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 468, column: 6)
!5251 = !DILocation(line: 468, column: 11, scope: !5250)
!5252 = !DILocation(line: 468, column: 6, scope: !5161)
!5253 = !DILocation(line: 468, column: 26, scope: !5250)
!5254 = !DILocation(line: 469, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 469, column: 6)
!5256 = !DILocation(line: 469, column: 11, scope: !5255)
!5257 = !DILocation(line: 469, column: 6, scope: !5161)
!5258 = !DILocation(line: 469, column: 26, scope: !5255)
!5259 = !DILocation(line: 470, column: 6, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 470, column: 6)
!5261 = !DILocation(line: 470, column: 11, scope: !5260)
!5262 = !DILocation(line: 470, column: 6, scope: !5161)
!5263 = !DILocation(line: 470, column: 26, scope: !5260)
!5264 = !DILocation(line: 471, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 471, column: 6)
!5266 = !DILocation(line: 471, column: 11, scope: !5265)
!5267 = !DILocation(line: 471, column: 6, scope: !5161)
!5268 = !DILocation(line: 471, column: 26, scope: !5265)
!5269 = !DILocation(line: 472, column: 6, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 472, column: 6)
!5271 = !DILocation(line: 472, column: 11, scope: !5270)
!5272 = !DILocation(line: 472, column: 6, scope: !5161)
!5273 = !DILocation(line: 472, column: 26, scope: !5270)
!5274 = !DILocation(line: 473, column: 6, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 473, column: 6)
!5276 = !DILocation(line: 473, column: 11, scope: !5275)
!5277 = !DILocation(line: 473, column: 6, scope: !5161)
!5278 = !DILocation(line: 473, column: 26, scope: !5275)
!5279 = !DILocation(line: 474, column: 6, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 474, column: 6)
!5281 = !DILocation(line: 474, column: 11, scope: !5280)
!5282 = !DILocation(line: 474, column: 6, scope: !5161)
!5283 = !DILocation(line: 474, column: 27, scope: !5280)
!5284 = !DILocation(line: 475, column: 6, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 475, column: 6)
!5286 = !DILocation(line: 475, column: 11, scope: !5285)
!5287 = !DILocation(line: 475, column: 6, scope: !5161)
!5288 = !DILocation(line: 475, column: 32, scope: !5285)
!5289 = !DILocation(line: 477, column: 50, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5161, file: !169, line: 477, column: 6)
!5291 = !{i8 0, i8 2}
!5292 = !DILocation(line: 477, column: 6, scope: !5161)
!5293 = !DILocation(line: 478, column: 3, scope: !5290)
!5294 = !DILocation(line: 478, column: 3, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !169, line: 478, column: 3)
!5296 = distinct !DILexicalBlock(scope: !5290, file: !169, line: 478, column: 3)
!5297 = !{i32 -2141157241}
!5298 = !DILocation(line: 478, column: 3, scope: !5296)
!5299 = !DILocation(line: 480, column: 3, scope: !5290)
!5300 = !DILocation(line: 480, column: 3, scope: !5301)
!5301 = distinct !DILexicalBlock(scope: !5290, file: !169, line: 480, column: 3)
!5302 = !DILocation(line: 480, column: 3, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5301, file: !169, line: 480, column: 3)
!5304 = !DILocation(line: 480, column: 3, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5301, file: !169, line: 480, column: 3)
!5306 = !{i64 2153810258, i64 2153810287, i64 2153810333, i64 2153810391, i64 2153810445, i64 2153810499, i64 2153810554, i64 2153810585}
!5307 = !DILocation(line: 483, column: 2, scope: !5161)
!5308 = !DILocation(line: 484, column: 1, scope: !5161)
!5309 = !DISubprogram(name: "kmalloc_trace", scope: !169, file: !169, line: 525, type: !5310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5310 = !DISubroutineType(types: !5311)
!5311 = !{!179, !5312, !180, !363}
!5312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5313, size: 64)
!5313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5314, line: 325, flags: DIFlagFwdDecl)
!5314 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5315 = distinct !DISubprogram(name: "kmalloc_type", scope: !169, file: !169, line: 401, type: !5316, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5318)
!5316 = !DISubroutineType(types: !5317)
!5317 = !{!168, !180, !182}
!5318 = !{!5319, !5320}
!5319 = !DILocalVariable(name: "flags", arg: 1, scope: !5315, file: !169, line: 401, type: !180)
!5320 = !DILocalVariable(name: "caller", arg: 2, scope: !5315, file: !169, line: 401, type: !182)
!5321 = !DILocation(line: 401, column: 67, scope: !5315)
!5322 = !DILocation(line: 401, column: 88, scope: !5315)
!5323 = !DILocation(line: 407, column: 6, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5315, file: !169, line: 407, column: 6)
!5325 = !DILocation(line: 407, column: 6, scope: !5315)
!5326 = !DILocation(line: 413, column: 3, scope: !5324)
!5327 = !DILocation(line: 423, column: 38, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5315, file: !169, line: 423, column: 6)
!5329 = !DILocation(line: 423, column: 44, scope: !5328)
!5330 = !DILocation(line: 423, column: 6, scope: !5315)
!5331 = !DILocation(line: 424, column: 3, scope: !5328)
!5332 = !DILocation(line: 426, column: 3, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5315, file: !169, line: 425, column: 6)
!5334 = !DILocation(line: 429, column: 1, scope: !5315)
!5335 = !DISubprogram(name: "__kmalloc", scope: !169, file: !169, line: 488, type: !4807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5336 = !DISubprogram(name: "__compiletime_assert_265", scope: !169, file: !169, line: 478, type: !2384, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5337 = distinct !DISubprogram(name: "snd_seq_bus_match", scope: !3, file: !3, line: 43, type: !4085, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5338 = !{!5339, !5340, !5341, !5342, !5344, !5345}
!5339 = !DILocalVariable(name: "dev", arg: 1, scope: !5337, file: !3, line: 43, type: !4010)
!5340 = !DILocalVariable(name: "drv", arg: 2, scope: !5337, file: !3, line: 43, type: !4087)
!5341 = !DILocalVariable(name: "sdev", scope: !5337, file: !3, line: 45, type: !183)
!5342 = !DILocalVariable(name: "__mptr", scope: !5343, file: !3, line: 45, type: !179)
!5343 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 45, column: 32)
!5344 = !DILocalVariable(name: "sdrv", scope: !5337, file: !3, line: 46, type: !4484)
!5345 = !DILocalVariable(name: "__mptr", scope: !5346, file: !3, line: 46, type: !179)
!5346 = distinct !DILexicalBlock(scope: !5337, file: !3, line: 46, column: 32)
!5347 = !DILocation(line: 43, column: 45, scope: !5337)
!5348 = !DILocation(line: 43, column: 72, scope: !5337)
!5349 = !DILocation(line: 45, column: 2, scope: !5337)
!5350 = !DILocation(line: 45, column: 25, scope: !5337)
!5351 = !DILocation(line: 45, column: 32, scope: !5343)
!5352 = !DILocation(line: 45, column: 32, scope: !5337)
!5353 = !DILocation(line: 46, column: 2, scope: !5337)
!5354 = !DILocation(line: 46, column: 25, scope: !5337)
!5355 = !DILocation(line: 46, column: 32, scope: !5346)
!5356 = !DILocation(line: 46, column: 32, scope: !5337)
!5357 = !DILocation(line: 48, column: 16, scope: !5337)
!5358 = !DILocation(line: 48, column: 22, scope: !5337)
!5359 = !DILocation(line: 48, column: 26, scope: !5337)
!5360 = !DILocation(line: 48, column: 32, scope: !5337)
!5361 = !DILocation(line: 48, column: 9, scope: !5337)
!5362 = !DILocation(line: 48, column: 36, scope: !5337)
!5363 = !DILocation(line: 48, column: 41, scope: !5337)
!5364 = !DILocation(line: 49, column: 3, scope: !5337)
!5365 = !DILocation(line: 49, column: 9, scope: !5337)
!5366 = !DILocation(line: 49, column: 20, scope: !5337)
!5367 = !DILocation(line: 49, column: 26, scope: !5337)
!5368 = !DILocation(line: 49, column: 17, scope: !5337)
!5369 = !DILocation(line: 0, scope: !5337)
!5370 = !DILocation(line: 50, column: 1, scope: !5337)
!5371 = !DILocation(line: 48, column: 2, scope: !5337)
!5372 = !DISubprogram(name: "strcmp", scope: !5373, file: !5373, line: 88, type: !5374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5373 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5374 = !DISubroutineType(types: !5375)
!5375 = !{!85, !235, !235}
!5376 = !DISubprogram(name: "kfree", scope: !169, file: !169, line: 227, type: !5377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{null, !1265}
!5379 = !DISubprogram(name: "bus_register", scope: !4076, file: !4076, line: 112, type: !5380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!85, !4073}
!5382 = distinct !DISubprogram(name: "seq_dev_proc_init", scope: !3, file: !3, line: 268, type: !3786, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5383 = !DILocation(line: 272, column: 9, scope: !5382)
!5384 = !DILocation(line: 271, column: 15, scope: !5382)
!5385 = !DILocation(line: 271, column: 13, scope: !5382)
!5386 = !DILocation(line: 273, column: 6, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 273, column: 6)
!5388 = !DILocation(line: 273, column: 17, scope: !5387)
!5389 = !DILocation(line: 273, column: 6, scope: !5382)
!5390 = !DILocation(line: 274, column: 3, scope: !5387)
!5391 = !DILocation(line: 275, column: 2, scope: !5382)
!5392 = !DILocation(line: 275, column: 14, scope: !5382)
!5393 = !DILocation(line: 275, column: 22, scope: !5382)
!5394 = !DILocation(line: 276, column: 2, scope: !5382)
!5395 = !DILocation(line: 276, column: 14, scope: !5382)
!5396 = !DILocation(line: 276, column: 21, scope: !5382)
!5397 = !DILocation(line: 276, column: 26, scope: !5382)
!5398 = !DILocation(line: 277, column: 24, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 277, column: 6)
!5400 = !DILocation(line: 277, column: 6, scope: !5399)
!5401 = !DILocation(line: 277, column: 36, scope: !5399)
!5402 = !DILocation(line: 277, column: 6, scope: !5382)
!5403 = !DILocation(line: 278, column: 23, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 277, column: 41)
!5405 = !DILocation(line: 278, column: 3, scope: !5404)
!5406 = !DILocation(line: 279, column: 3, scope: !5404)
!5407 = !DILocation(line: 282, column: 2, scope: !5382)
!5408 = !DILocation(line: 283, column: 1, scope: !5382)
!5409 = !DISubprogram(name: "snd_info_create_module_entry", scope: !4372, file: !4372, line: 114, type: !5410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!4370, !213, !235, !4370}
!5412 = distinct !DISubprogram(name: "snd_seq_device_info", scope: !3, file: !3, line: 74, type: !4386, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5413)
!5413 = !{!5414, !5415}
!5414 = !DILocalVariable(name: "entry", arg: 1, scope: !5412, file: !3, line: 74, type: !4370)
!5415 = !DILocalVariable(name: "buffer", arg: 2, scope: !5412, file: !3, line: 75, type: !4388)
!5416 = !DILocation(line: 74, column: 56, scope: !5412)
!5417 = !DILocation(line: 75, column: 29, scope: !5412)
!5418 = !DILocation(line: 77, column: 44, scope: !5412)
!5419 = !DILocation(line: 77, column: 2, scope: !5412)
!5420 = !DILocation(line: 78, column: 1, scope: !5412)
!5421 = !DISubprogram(name: "snd_info_register", scope: !4372, file: !4372, line: 127, type: !5422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!85, !4370}
!5424 = distinct !DISubprogram(name: "print_dev_info", scope: !3, file: !3, line: 63, type: !5055, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5425 = !{!5426, !5427, !5428, !5429, !5431}
!5426 = !DILocalVariable(name: "dev", arg: 1, scope: !5424, file: !3, line: 63, type: !4010)
!5427 = !DILocalVariable(name: "data", arg: 2, scope: !5424, file: !3, line: 63, type: !179)
!5428 = !DILocalVariable(name: "sdev", scope: !5424, file: !3, line: 65, type: !183)
!5429 = !DILocalVariable(name: "__mptr", scope: !5430, file: !3, line: 65, type: !179)
!5430 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 65, column: 32)
!5431 = !DILocalVariable(name: "buffer", scope: !5424, file: !3, line: 66, type: !4388)
!5432 = !DILocation(line: 63, column: 42, scope: !5424)
!5433 = !DILocation(line: 63, column: 53, scope: !5424)
!5434 = !DILocation(line: 65, column: 2, scope: !5424)
!5435 = !DILocation(line: 65, column: 25, scope: !5424)
!5436 = !DILocation(line: 65, column: 32, scope: !5430)
!5437 = !DILocation(line: 65, column: 32, scope: !5424)
!5438 = !DILocation(line: 66, column: 2, scope: !5424)
!5439 = !DILocation(line: 66, column: 26, scope: !5424)
!5440 = !DILocation(line: 66, column: 35, scope: !5424)
!5441 = !DILocation(line: 68, column: 2, scope: !5424)
!5442 = !DILocation(line: 72, column: 1, scope: !5424)
!5443 = !DILocation(line: 71, column: 2, scope: !5424)
!5444 = !DISubprogram(name: "seq_printf", scope: !668, file: !668, line: 119, type: !5445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5445 = !DISubroutineType(types: !5446)
!5446 = !{null, !666, !235, null}
