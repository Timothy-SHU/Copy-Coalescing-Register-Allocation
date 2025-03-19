; ModuleID = 'sound/pci/hda/hda_bind.c'
source_filename = "sound/pci/hda/hda_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hda_codec_set_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hda_codec_set_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___hda_codec_driver_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __hda_codec_driver_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_hda_codec_driver_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad hda_codec_driver_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_snd_hda_codec_configure: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad snd_hda_codec_configure ; .previous"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, ptr, i24, i64, i64, i64, ptr, ptr, %struct.snd_array, i64, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, ptr, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i64, %struct.list_head, %struct.list_head, %struct.xarray, %struct.xarray, i8, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i64, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.15, %struct.qspinlock }
%union.anon.15 = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [1 x i64], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i64, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i64, i64, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i64, i64, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i64, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i64, i64, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hda_codec_driver = type { %struct.hdac_driver, ptr }
%struct.hdac_driver = type { %struct.device_driver, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_ext_bus_ops = type { ptr, ptr }
%struct.hda_device_id = type { i32, i32, i8, ptr, i64 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_snd_hda_codec_set_name299 = internal global ptr @snd_hda_codec_set_name, section ".discard.addressable", align 8, !dbg !7
@snd_hda_bus_type = external dso_local global %struct.bus_type, align 8
@hda_codec_driver_pm = external dso_local constant %struct.dev_pm_ops, align 8
@__UNIQUE_ID___addressable___hda_codec_driver_register300 = internal global ptr @__hda_codec_driver_register, section ".discard.addressable", align 8, !dbg !5682
@__UNIQUE_ID___addressable_hda_codec_driver_unregister301 = internal global ptr @hda_codec_driver_unregister, section ".discard.addressable", align 8, !dbg !5684
@__UNIQUE_ID___addressable_snd_hda_codec_configure302 = internal global ptr @snd_hda_codec_configure, section ".discard.addressable", align 8, !dbg !5686
@.str.1 = private unnamed_addr constant [25 x i8] c"sound/pci/hda/hda_bind.c\00", align 1, !dbg !5688
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !5693
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_snd_hda_codec_set_name299, ptr @__UNIQUE_ID___addressable___hda_codec_driver_register300, ptr @__UNIQUE_ID___addressable_hda_codec_driver_unregister301, ptr @__UNIQUE_ID___addressable_snd_hda_codec_configure302, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hda_codec_set_name(ptr noundef %codec, ptr noundef %name) #0 align 16 !dbg !5706 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !5710, metadata !DIExpression()), !dbg !5713
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5711, metadata !DIExpression()), !dbg !5714
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !5715
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5712, metadata !DIExpression()), !dbg !5716
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5717
  %tobool = icmp ne ptr %0, null, !dbg !5717
  br i1 %tobool, label %if.end, label %if.then, !dbg !5719

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5720

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !5721
  %core = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 0, !dbg !5722
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5723
  %call = call i32 @snd_hdac_device_set_chip_name(ptr noundef %core, ptr noundef %2) #8, !dbg !5724
  store i32 %call, ptr %err, align 4, !dbg !5725
  %3 = load i32, ptr %err, align 4, !dbg !5726
  %cmp = icmp slt i32 %3, 0, !dbg !5728
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5729

if.then1:                                         ; preds = %if.end
  %4 = load i32, ptr %err, align 4, !dbg !5730
  store i32 %4, ptr %retval, align 4, !dbg !5731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5731

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %codec.addr, align 8, !dbg !5732
  %card = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 2, !dbg !5734
  %6 = load ptr, ptr %card, align 8, !dbg !5734
  %mixername = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 6, !dbg !5735
  %arraydecay = getelementptr inbounds [80 x i8], ptr %mixername, i64 0, i64 0, !dbg !5736
  %7 = load i8, ptr %arraydecay, align 4, !dbg !5736
  %tobool3 = icmp ne i8 %7, 0, !dbg !5736
  br i1 %tobool3, label %lor.lhs.false, label %if.then6, !dbg !5737

lor.lhs.false:                                    ; preds = %if.end2
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !5738
  %bus = getelementptr inbounds %struct.hda_codec, ptr %8, i32 0, i32 1, !dbg !5739
  %9 = load ptr, ptr %bus, align 8, !dbg !5739
  %mixer_assigned = getelementptr inbounds %struct.hda_bus, ptr %9, i32 0, i32 8, !dbg !5740
  %10 = load i32, ptr %mixer_assigned, align 8, !dbg !5740
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !5741
  %core4 = getelementptr inbounds %struct.hda_codec, ptr %11, i32 0, i32 0, !dbg !5742
  %addr = getelementptr inbounds %struct.hdac_device, ptr %core4, i32 0, i32 3, !dbg !5743
  %12 = load i32, ptr %addr, align 8, !dbg !5743
  %cmp5 = icmp uge i32 %10, %12, !dbg !5744
  br i1 %cmp5, label %if.then6, label %if.end17, !dbg !5745

if.then6:                                         ; preds = %lor.lhs.false, %if.end2
  %13 = load ptr, ptr %codec.addr, align 8, !dbg !5746
  %card7 = getelementptr inbounds %struct.hda_codec, ptr %13, i32 0, i32 2, !dbg !5748
  %14 = load ptr, ptr %card7, align 8, !dbg !5748
  %mixername8 = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 6, !dbg !5749
  %arraydecay9 = getelementptr inbounds [80 x i8], ptr %mixername8, i64 0, i64 0, !dbg !5746
  %15 = load ptr, ptr %codec.addr, align 8, !dbg !5750
  %core10 = getelementptr inbounds %struct.hda_codec, ptr %15, i32 0, i32 0, !dbg !5751
  %vendor_name = getelementptr inbounds %struct.hdac_device, ptr %core10, i32 0, i32 14, !dbg !5752
  %16 = load ptr, ptr %vendor_name, align 8, !dbg !5752
  %17 = load ptr, ptr %codec.addr, align 8, !dbg !5753
  %core11 = getelementptr inbounds %struct.hda_codec, ptr %17, i32 0, i32 0, !dbg !5754
  %chip_name = getelementptr inbounds %struct.hdac_device, ptr %core11, i32 0, i32 15, !dbg !5755
  %18 = load ptr, ptr %chip_name, align 8, !dbg !5755
  %call12 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay9, i64 noundef 80, ptr noundef @.str, ptr noundef %16, ptr noundef %18) #8, !dbg !5756
  %19 = load ptr, ptr %codec.addr, align 8, !dbg !5757
  %core13 = getelementptr inbounds %struct.hda_codec, ptr %19, i32 0, i32 0, !dbg !5758
  %addr14 = getelementptr inbounds %struct.hdac_device, ptr %core13, i32 0, i32 3, !dbg !5759
  %20 = load i32, ptr %addr14, align 8, !dbg !5759
  %21 = load ptr, ptr %codec.addr, align 8, !dbg !5760
  %bus15 = getelementptr inbounds %struct.hda_codec, ptr %21, i32 0, i32 1, !dbg !5761
  %22 = load ptr, ptr %bus15, align 8, !dbg !5761
  %mixer_assigned16 = getelementptr inbounds %struct.hda_bus, ptr %22, i32 0, i32 8, !dbg !5762
  store i32 %20, ptr %mixer_assigned16, align 8, !dbg !5763
  br label %if.end17, !dbg !5764

if.end17:                                         ; preds = %if.then6, %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5765

cleanup:                                          ; preds = %if.end17, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !5766
  %23 = load i32, ptr %retval, align 4, !dbg !5766
  ret i32 %23, !dbg !5766
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5767 dso_local i32 @snd_hdac_device_set_chip_name(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5770 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__hda_codec_driver_register(ptr noundef %drv, ptr noundef %name, ptr noundef %owner) #0 align 16 !dbg !5774 {
entry:
  %drv.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5778, metadata !DIExpression()), !dbg !5781
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5779, metadata !DIExpression()), !dbg !5782
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5780, metadata !DIExpression()), !dbg !5783
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5784
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !5785
  %core = getelementptr inbounds %struct.hda_codec_driver, ptr %1, i32 0, i32 0, !dbg !5786
  %driver = getelementptr inbounds %struct.hdac_driver, ptr %core, i32 0, i32 0, !dbg !5787
  %name1 = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 0, !dbg !5788
  store ptr %0, ptr %name1, align 8, !dbg !5789
  %2 = load ptr, ptr %owner.addr, align 8, !dbg !5790
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !5791
  %core2 = getelementptr inbounds %struct.hda_codec_driver, ptr %3, i32 0, i32 0, !dbg !5792
  %driver3 = getelementptr inbounds %struct.hdac_driver, ptr %core2, i32 0, i32 0, !dbg !5793
  %owner4 = getelementptr inbounds %struct.device_driver, ptr %driver3, i32 0, i32 2, !dbg !5794
  store ptr %2, ptr %owner4, align 8, !dbg !5795
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !5796
  %core5 = getelementptr inbounds %struct.hda_codec_driver, ptr %4, i32 0, i32 0, !dbg !5797
  %driver6 = getelementptr inbounds %struct.hdac_driver, ptr %core5, i32 0, i32 0, !dbg !5798
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver6, i32 0, i32 1, !dbg !5799
  store ptr @snd_hda_bus_type, ptr %bus, align 8, !dbg !5800
  %5 = load ptr, ptr %drv.addr, align 8, !dbg !5801
  %core7 = getelementptr inbounds %struct.hda_codec_driver, ptr %5, i32 0, i32 0, !dbg !5802
  %driver8 = getelementptr inbounds %struct.hdac_driver, ptr %core7, i32 0, i32 0, !dbg !5803
  %probe = getelementptr inbounds %struct.device_driver, ptr %driver8, i32 0, i32 8, !dbg !5804
  store ptr @hda_codec_driver_probe, ptr %probe, align 8, !dbg !5805
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !5806
  %core9 = getelementptr inbounds %struct.hda_codec_driver, ptr %6, i32 0, i32 0, !dbg !5807
  %driver10 = getelementptr inbounds %struct.hdac_driver, ptr %core9, i32 0, i32 0, !dbg !5808
  %remove = getelementptr inbounds %struct.device_driver, ptr %driver10, i32 0, i32 10, !dbg !5809
  store ptr @hda_codec_driver_remove, ptr %remove, align 8, !dbg !5810
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !5811
  %core11 = getelementptr inbounds %struct.hda_codec_driver, ptr %7, i32 0, i32 0, !dbg !5812
  %driver12 = getelementptr inbounds %struct.hdac_driver, ptr %core11, i32 0, i32 0, !dbg !5813
  %shutdown = getelementptr inbounds %struct.device_driver, ptr %driver12, i32 0, i32 11, !dbg !5814
  store ptr @hda_codec_driver_shutdown, ptr %shutdown, align 8, !dbg !5815
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !5816
  %core13 = getelementptr inbounds %struct.hda_codec_driver, ptr %8, i32 0, i32 0, !dbg !5817
  %driver14 = getelementptr inbounds %struct.hdac_driver, ptr %core13, i32 0, i32 0, !dbg !5818
  %pm = getelementptr inbounds %struct.device_driver, ptr %driver14, i32 0, i32 16, !dbg !5819
  store ptr @hda_codec_driver_pm, ptr %pm, align 8, !dbg !5820
  %9 = load ptr, ptr %drv.addr, align 8, !dbg !5821
  %core15 = getelementptr inbounds %struct.hda_codec_driver, ptr %9, i32 0, i32 0, !dbg !5822
  %type = getelementptr inbounds %struct.hdac_driver, ptr %core15, i32 0, i32 1, !dbg !5823
  store i32 1, ptr %type, align 8, !dbg !5824
  %10 = load ptr, ptr %drv.addr, align 8, !dbg !5825
  %core16 = getelementptr inbounds %struct.hda_codec_driver, ptr %10, i32 0, i32 0, !dbg !5826
  %match = getelementptr inbounds %struct.hdac_driver, ptr %core16, i32 0, i32 3, !dbg !5827
  store ptr @hda_codec_match, ptr %match, align 8, !dbg !5828
  %11 = load ptr, ptr %drv.addr, align 8, !dbg !5829
  %core17 = getelementptr inbounds %struct.hda_codec_driver, ptr %11, i32 0, i32 0, !dbg !5830
  %unsol_event = getelementptr inbounds %struct.hdac_driver, ptr %core17, i32 0, i32 4, !dbg !5831
  store ptr @hda_codec_unsol_event, ptr %unsol_event, align 8, !dbg !5832
  %12 = load ptr, ptr %drv.addr, align 8, !dbg !5833
  %core18 = getelementptr inbounds %struct.hda_codec_driver, ptr %12, i32 0, i32 0, !dbg !5834
  %driver19 = getelementptr inbounds %struct.hdac_driver, ptr %core18, i32 0, i32 0, !dbg !5835
  %call = call i32 @driver_register(ptr noundef %driver19) #8, !dbg !5836
  ret i32 %call, !dbg !5837
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_codec_driver_probe(ptr noundef %dev) #0 align 16 !dbg !5838 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %owner = alloca ptr, align 8
  %patch = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp24 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on41 = alloca i32, align 4
  %__flags59 = alloca i32, align 4
  %tmp72 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5840, metadata !DIExpression()), !dbg !5864
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #7, !dbg !5865
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !5841, metadata !DIExpression()), !dbg !5866
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !5867
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5842, metadata !DIExpression()), !dbg !5867
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5867
  store ptr %0, ptr %__mptr, align 8, !dbg !5867
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5867
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5867
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5867
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !5868
  %2 = load ptr, ptr %tmp, align 8, !dbg !5867
  store ptr %2, ptr %codec, align 8, !dbg !5866
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #7, !dbg !5869
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !5844, metadata !DIExpression()), !dbg !5870
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5871
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !5872
  %4 = load ptr, ptr %driver, align 8, !dbg !5872
  %owner1 = getelementptr inbounds %struct.device_driver, ptr %4, i32 0, i32 2, !dbg !5873
  %5 = load ptr, ptr %owner1, align 8, !dbg !5873
  store ptr %5, ptr %owner, align 8, !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %patch) #7, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %patch, metadata !5845, metadata !DIExpression()), !dbg !5875
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5846, metadata !DIExpression()), !dbg !5877
  %6 = load ptr, ptr %codec, align 8, !dbg !5878
  %bus = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 1, !dbg !5879
  %7 = load ptr, ptr %bus, align 8, !dbg !5879
  %core = getelementptr inbounds %struct.hda_bus, ptr %7, i32 0, i32 0, !dbg !5880
  %ext_ops = getelementptr inbounds %struct.hdac_bus, ptr %core, i32 0, i32 2, !dbg !5881
  %8 = load ptr, ptr %ext_ops, align 8, !dbg !5881
  %tobool = icmp ne ptr %8, null, !dbg !5878
  br i1 %tobool, label %if.then, label %if.end40, !dbg !5882

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !5883
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5847, metadata !DIExpression()), !dbg !5883
  %9 = load ptr, ptr %codec, align 8, !dbg !5883
  %bus2 = getelementptr inbounds %struct.hda_codec, ptr %9, i32 0, i32 1, !dbg !5883
  %10 = load ptr, ptr %bus2, align 8, !dbg !5883
  %core3 = getelementptr inbounds %struct.hda_bus, ptr %10, i32 0, i32 0, !dbg !5883
  %ext_ops4 = getelementptr inbounds %struct.hdac_bus, ptr %core3, i32 0, i32 2, !dbg !5883
  %11 = load ptr, ptr %ext_ops4, align 8, !dbg !5883
  %hdev_attach = getelementptr inbounds %struct.hdac_ext_bus_ops, ptr %11, i32 0, i32 0, !dbg !5883
  %12 = load ptr, ptr %hdev_attach, align 8, !dbg !5883
  %tobool5 = icmp ne ptr %12, null, !dbg !5883
  %lnot = xor i1 %tobool5, true, !dbg !5883
  %lnot6 = xor i1 %lnot, true, !dbg !5883
  %lnot7 = xor i1 %lnot6, true, !dbg !5883
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5883
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5883
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5884
  %tobool8 = icmp ne i32 %13, 0, !dbg !5884
  %lnot9 = xor i1 %tobool8, true, !dbg !5884
  %lnot11 = xor i1 %lnot9, true, !dbg !5884
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5884
  %conv = sext i32 %lnot.ext12 to i64, !dbg !5884
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5884
  %tobool13 = icmp ne i64 %expval, 0, !dbg !5884
  br i1 %tobool13, label %if.then14, label %if.end, !dbg !5883

if.then14:                                        ; preds = %if.then
  br label %do.body, !dbg !5884

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !5885
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5852, metadata !DIExpression()), !dbg !5885
  store i32 2305, ptr %__flags, align 4, !dbg !5885
  br label %do.body15, !dbg !5885

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !5886

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !5886

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !5885

do.body16:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !5888
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 94, i32 %14, i64 12) #7, !dbg !5888, !srcloc !5890
  br label %do.cond17, !dbg !5888

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5888

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !5885

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !5891

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5891

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !5884
  br label %do.cond22, !dbg !5885

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5885

do.end23:                                         ; preds = %do.cond22
  br label %if.end, !dbg !5885

if.end:                                           ; preds = %do.end23, %if.then
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !5883
  %tobool25 = icmp ne i32 %15, 0, !dbg !5883
  %lnot26 = xor i1 %tobool25, true, !dbg !5883
  %lnot28 = xor i1 %lnot26, true, !dbg !5883
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5883
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5883
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !5883
  store i64 %expval31, ptr %tmp24, align 8, !dbg !5884
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !5893
  %16 = load i64, ptr %tmp24, align 8, !dbg !5883
  %tobool32 = icmp ne i64 %16, 0, !dbg !5893
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5894

if.then33:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5895

if.end34:                                         ; preds = %if.end
  %17 = load ptr, ptr %codec, align 8, !dbg !5896
  %bus35 = getelementptr inbounds %struct.hda_codec, ptr %17, i32 0, i32 1, !dbg !5897
  %18 = load ptr, ptr %bus35, align 8, !dbg !5897
  %core36 = getelementptr inbounds %struct.hda_bus, ptr %18, i32 0, i32 0, !dbg !5898
  %ext_ops37 = getelementptr inbounds %struct.hdac_bus, ptr %core36, i32 0, i32 2, !dbg !5899
  %19 = load ptr, ptr %ext_ops37, align 8, !dbg !5899
  %hdev_attach38 = getelementptr inbounds %struct.hdac_ext_bus_ops, ptr %19, i32 0, i32 0, !dbg !5900
  %20 = load ptr, ptr %hdev_attach38, align 8, !dbg !5900
  %21 = load ptr, ptr %codec, align 8, !dbg !5901
  %core39 = getelementptr inbounds %struct.hda_codec, ptr %21, i32 0, i32 0, !dbg !5902
  %call = call i32 %20(ptr noundef %core39) #8, !dbg !5896
  store i32 %call, ptr %retval, align 4, !dbg !5903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5903

if.end40:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on41) #7, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on41, metadata !5855, metadata !DIExpression()), !dbg !5904
  %22 = load ptr, ptr %codec, align 8, !dbg !5904
  %preset = getelementptr inbounds %struct.hda_codec, ptr %22, i32 0, i32 5, !dbg !5904
  %23 = load ptr, ptr %preset, align 8, !dbg !5904
  %tobool42 = icmp ne ptr %23, null, !dbg !5904
  %lnot43 = xor i1 %tobool42, true, !dbg !5904
  %lnot45 = xor i1 %lnot43, true, !dbg !5904
  %lnot47 = xor i1 %lnot45, true, !dbg !5904
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !5904
  store i32 %lnot.ext48, ptr %__ret_warn_on41, align 4, !dbg !5904
  %24 = load i32, ptr %__ret_warn_on41, align 4, !dbg !5905
  %tobool49 = icmp ne i32 %24, 0, !dbg !5905
  %lnot50 = xor i1 %tobool49, true, !dbg !5905
  %lnot52 = xor i1 %lnot50, true, !dbg !5905
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !5905
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !5905
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !5905
  %tobool56 = icmp ne i64 %expval55, 0, !dbg !5905
  br i1 %tobool56, label %if.then57, label %if.end71, !dbg !5904

if.then57:                                        ; preds = %if.end40
  br label %do.body58, !dbg !5905

do.body58:                                        ; preds = %if.then57
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags59) #7, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %__flags59, metadata !5858, metadata !DIExpression()), !dbg !5906
  store i32 2305, ptr %__flags59, align 4, !dbg !5906
  br label %do.body60, !dbg !5906

do.body60:                                        ; preds = %do.body58
  br label %do.cond61, !dbg !5907

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5907

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !5906

do.body63:                                        ; preds = %do.end62
  %25 = load i32, ptr %__flags59, align 4, !dbg !5909
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 99, i32 %25, i64 12) #7, !dbg !5909, !srcloc !5911
  br label %do.cond64, !dbg !5909

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !5909

do.end65:                                         ; preds = %do.cond64
  br label %do.body66, !dbg !5906

do.body66:                                        ; preds = %do.end65
  br label %do.cond67, !dbg !5912

do.cond67:                                        ; preds = %do.body66
  br label %do.end68, !dbg !5912

do.end68:                                         ; preds = %do.cond67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags59) #7, !dbg !5905
  br label %do.cond69, !dbg !5906

do.cond69:                                        ; preds = %do.end68
  br label %do.end70, !dbg !5906

do.end70:                                         ; preds = %do.cond69
  br label %if.end71, !dbg !5906

if.end71:                                         ; preds = %do.end70, %if.end40
  %26 = load i32, ptr %__ret_warn_on41, align 4, !dbg !5904
  %tobool73 = icmp ne i32 %26, 0, !dbg !5904
  %lnot74 = xor i1 %tobool73, true, !dbg !5904
  %lnot76 = xor i1 %lnot74, true, !dbg !5904
  %lnot.ext77 = zext i1 %lnot76 to i32, !dbg !5904
  %conv78 = sext i32 %lnot.ext77 to i64, !dbg !5904
  %expval79 = call i64 @llvm.expect.i64(i64 %conv78, i64 0), !dbg !5904
  store i64 %expval79, ptr %tmp72, align 8, !dbg !5905
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on41) #7, !dbg !5914
  %27 = load i64, ptr %tmp72, align 8, !dbg !5904
  %tobool80 = icmp ne i64 %27, 0, !dbg !5914
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !5915

if.then81:                                        ; preds = %if.end71
  store i32 -22, ptr %retval, align 4, !dbg !5916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5916

if.end82:                                         ; preds = %if.end71
  %28 = load ptr, ptr %codec, align 8, !dbg !5917
  %29 = load ptr, ptr %codec, align 8, !dbg !5918
  %preset83 = getelementptr inbounds %struct.hda_codec, ptr %29, i32 0, i32 5, !dbg !5919
  %30 = load ptr, ptr %preset83, align 8, !dbg !5919
  %name = getelementptr inbounds %struct.hda_device_id, ptr %30, i32 0, i32 3, !dbg !5920
  %31 = load ptr, ptr %name, align 8, !dbg !5920
  %call84 = call i32 @snd_hda_codec_set_name(ptr noundef %28, ptr noundef %31) #8, !dbg !5921
  store i32 %call84, ptr %err, align 4, !dbg !5922
  %32 = load i32, ptr %err, align 4, !dbg !5923
  %cmp = icmp slt i32 %32, 0, !dbg !5925
  br i1 %cmp, label %if.then86, label %if.end87, !dbg !5926

if.then86:                                        ; preds = %if.end82
  br label %error, !dbg !5927

if.end87:                                         ; preds = %if.end82
  %33 = load ptr, ptr %codec, align 8, !dbg !5928
  %core88 = getelementptr inbounds %struct.hda_codec, ptr %33, i32 0, i32 0, !dbg !5929
  %call89 = call i32 @snd_hdac_regmap_init(ptr noundef %core88) #8, !dbg !5930
  store i32 %call89, ptr %err, align 4, !dbg !5931
  %34 = load i32, ptr %err, align 4, !dbg !5932
  %cmp90 = icmp slt i32 %34, 0, !dbg !5934
  br i1 %cmp90, label %if.then92, label %if.end93, !dbg !5935

if.then92:                                        ; preds = %if.end87
  br label %error, !dbg !5936

if.end93:                                         ; preds = %if.end87
  %35 = load ptr, ptr %owner, align 8, !dbg !5937
  %call94 = call zeroext i1 @try_module_get(ptr noundef %35) #8, !dbg !5939
  br i1 %call94, label %if.end96, label %if.then95, !dbg !5940

if.then95:                                        ; preds = %if.end93
  store i32 -22, ptr %err, align 4, !dbg !5941
  br label %error, !dbg !5943

if.end96:                                         ; preds = %if.end93
  %36 = load ptr, ptr %codec, align 8, !dbg !5944
  %preset97 = getelementptr inbounds %struct.hda_codec, ptr %36, i32 0, i32 5, !dbg !5945
  %37 = load ptr, ptr %preset97, align 8, !dbg !5945
  %driver_data = getelementptr inbounds %struct.hda_device_id, ptr %37, i32 0, i32 4, !dbg !5946
  %38 = load i64, ptr %driver_data, align 8, !dbg !5946
  %39 = inttoptr i64 %38 to ptr, !dbg !5947
  store ptr %39, ptr %patch, align 8, !dbg !5948
  %40 = load ptr, ptr %patch, align 8, !dbg !5949
  %tobool98 = icmp ne ptr %40, null, !dbg !5949
  br i1 %tobool98, label %if.then99, label %if.end105, !dbg !5951

if.then99:                                        ; preds = %if.end96
  %41 = load ptr, ptr %patch, align 8, !dbg !5952
  %42 = load ptr, ptr %codec, align 8, !dbg !5954
  %call100 = call i32 %41(ptr noundef %42) #8, !dbg !5952
  store i32 %call100, ptr %err, align 4, !dbg !5955
  %43 = load i32, ptr %err, align 4, !dbg !5956
  %cmp101 = icmp slt i32 %43, 0, !dbg !5958
  br i1 %cmp101, label %if.then103, label %if.end104, !dbg !5959

if.then103:                                       ; preds = %if.then99
  br label %error_module_put, !dbg !5960

if.end104:                                        ; preds = %if.then99
  br label %if.end105, !dbg !5961

if.end105:                                        ; preds = %if.end104, %if.end96
  %44 = load ptr, ptr %codec, align 8, !dbg !5962
  %call106 = call i32 @snd_hda_codec_build_pcms(ptr noundef %44) #8, !dbg !5963
  store i32 %call106, ptr %err, align 4, !dbg !5964
  %45 = load i32, ptr %err, align 4, !dbg !5965
  %cmp107 = icmp slt i32 %45, 0, !dbg !5967
  br i1 %cmp107, label %if.then109, label %if.end110, !dbg !5968

if.then109:                                       ; preds = %if.end105
  br label %error_module, !dbg !5969

if.end110:                                        ; preds = %if.end105
  %46 = load ptr, ptr %codec, align 8, !dbg !5970
  %call111 = call i32 @snd_hda_codec_build_controls(ptr noundef %46) #8, !dbg !5971
  store i32 %call111, ptr %err, align 4, !dbg !5972
  %47 = load i32, ptr %err, align 4, !dbg !5973
  %cmp112 = icmp slt i32 %47, 0, !dbg !5975
  br i1 %cmp112, label %if.then114, label %if.end115, !dbg !5976

if.then114:                                       ; preds = %if.end110
  br label %error_module, !dbg !5977

if.end115:                                        ; preds = %if.end110
  %48 = load ptr, ptr %codec, align 8, !dbg !5978
  %bus116 = getelementptr inbounds %struct.hda_codec, ptr %48, i32 0, i32 1, !dbg !5980
  %49 = load ptr, ptr %bus116, align 8, !dbg !5980
  %bus_probing = getelementptr inbounds %struct.hda_bus, ptr %49, i32 0, i32 6, !dbg !5981
  %bf.load = load i8, ptr %bus_probing, align 8, !dbg !5981
  %bf.lshr = lshr i8 %bf.load, 5, !dbg !5981
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5981
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5981
  %tobool117 = icmp ne i32 %bf.cast, 0, !dbg !5978
  br i1 %tobool117, label %if.end127, label %land.lhs.true, !dbg !5982

land.lhs.true:                                    ; preds = %if.end115
  %50 = load ptr, ptr %codec, align 8, !dbg !5983
  %card = getelementptr inbounds %struct.hda_codec, ptr %50, i32 0, i32 2, !dbg !5984
  %51 = load ptr, ptr %card, align 8, !dbg !5984
  %registered = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 33, !dbg !5985
  %52 = load i8, ptr %registered, align 8, !dbg !5985, !range !5986, !noundef !924
  %tobool118 = trunc i8 %52 to i1, !dbg !5985
  br i1 %tobool118, label %if.then120, label %if.end127, !dbg !5987

if.then120:                                       ; preds = %land.lhs.true
  %53 = load ptr, ptr %codec, align 8, !dbg !5988
  %card121 = getelementptr inbounds %struct.hda_codec, ptr %53, i32 0, i32 2, !dbg !5990
  %54 = load ptr, ptr %card121, align 8, !dbg !5990
  %call122 = call i32 @snd_card_register(ptr noundef %54) #8, !dbg !5991
  store i32 %call122, ptr %err, align 4, !dbg !5992
  %55 = load i32, ptr %err, align 4, !dbg !5993
  %cmp123 = icmp slt i32 %55, 0, !dbg !5995
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !5996

if.then125:                                       ; preds = %if.then120
  br label %error_module, !dbg !5997

if.end126:                                        ; preds = %if.then120
  %56 = load ptr, ptr %codec, align 8, !dbg !5998
  call void @snd_hda_codec_register(ptr noundef %56) #8, !dbg !5999
  br label %if.end127, !dbg !6000

if.end127:                                        ; preds = %if.end126, %land.lhs.true, %if.end115
  %57 = load ptr, ptr %codec, align 8, !dbg !6001
  %core128 = getelementptr inbounds %struct.hda_codec, ptr %57, i32 0, i32 0, !dbg !6002
  %lazy_cache = getelementptr inbounds %struct.hdac_device, ptr %core128, i32 0, i32 26, !dbg !6003
  %bf.load129 = load i8, ptr %lazy_cache, align 8, !dbg !6004
  %bf.clear130 = and i8 %bf.load129, -2, !dbg !6004
  %bf.set = or i8 %bf.clear130, 1, !dbg !6004
  store i8 %bf.set, ptr %lazy_cache, align 8, !dbg !6004
  store i32 0, ptr %retval, align 4, !dbg !6005
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6005

error_module:                                     ; preds = %if.then125, %if.then114, %if.then109
  call void @llvm.dbg.label(metadata !5861), !dbg !6006
  %58 = load ptr, ptr %codec, align 8, !dbg !6007
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %58, i32 0, i32 7, !dbg !6009
  %free = getelementptr inbounds %struct.hda_codec_ops, ptr %patch_ops, i32 0, i32 3, !dbg !6010
  %59 = load ptr, ptr %free, align 8, !dbg !6010
  %tobool131 = icmp ne ptr %59, null, !dbg !6007
  br i1 %tobool131, label %if.then132, label %if.end135, !dbg !6011

if.then132:                                       ; preds = %error_module
  %60 = load ptr, ptr %codec, align 8, !dbg !6012
  %patch_ops133 = getelementptr inbounds %struct.hda_codec, ptr %60, i32 0, i32 7, !dbg !6013
  %free134 = getelementptr inbounds %struct.hda_codec_ops, ptr %patch_ops133, i32 0, i32 3, !dbg !6014
  %61 = load ptr, ptr %free134, align 8, !dbg !6014
  %62 = load ptr, ptr %codec, align 8, !dbg !6015
  call void %61(ptr noundef %62) #8, !dbg !6012
  br label %if.end135, !dbg !6012

if.end135:                                        ; preds = %if.then132, %error_module
  br label %error_module_put, !dbg !6010

error_module_put:                                 ; preds = %if.end135, %if.then103
  call void @llvm.dbg.label(metadata !5862), !dbg !6016
  %63 = load ptr, ptr %owner, align 8, !dbg !6017
  call void @module_put(ptr noundef %63) #8, !dbg !6018
  br label %error, !dbg !6018

error:                                            ; preds = %error_module_put, %if.then95, %if.then92, %if.then86
  call void @llvm.dbg.label(metadata !5863), !dbg !6019
  %64 = load ptr, ptr %codec, align 8, !dbg !6020
  call void @snd_hda_codec_cleanup_for_unbind(ptr noundef %64) #8, !dbg !6021
  %65 = load ptr, ptr %codec, align 8, !dbg !6022
  %preset136 = getelementptr inbounds %struct.hda_codec, ptr %65, i32 0, i32 5, !dbg !6023
  store ptr null, ptr %preset136, align 8, !dbg !6024
  %66 = load i32, ptr %err, align 4, !dbg !6025
  store i32 %66, ptr %retval, align 4, !dbg !6026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6026

cleanup:                                          ; preds = %error, %if.end127, %if.then81, %if.end34, %if.then33
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !6027
  call void @llvm.lifetime.end.p0(i64 8, ptr %patch) #7, !dbg !6027
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #7, !dbg !6027
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #7, !dbg !6027
  %67 = load i32, ptr %retval, align 4, !dbg !6027
  ret i32 %67, !dbg !6027
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_codec_driver_remove(ptr noundef %dev) #0 align 16 !dbg !6028 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp58 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6030, metadata !DIExpression()), !dbg !6063
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #7, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !6031, metadata !DIExpression()), !dbg !6065
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !6066
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6032, metadata !DIExpression()), !dbg !6066
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6066
  store ptr %0, ptr %__mptr, align 8, !dbg !6066
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6066
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6066
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6066
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6067
  %2 = load ptr, ptr %tmp, align 8, !dbg !6066
  store ptr %2, ptr %codec, align 8, !dbg !6065
  %3 = load ptr, ptr %codec, align 8, !dbg !6068
  %bus = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 1, !dbg !6069
  %4 = load ptr, ptr %bus, align 8, !dbg !6069
  %core = getelementptr inbounds %struct.hda_bus, ptr %4, i32 0, i32 0, !dbg !6070
  %ext_ops = getelementptr inbounds %struct.hdac_bus, ptr %core, i32 0, i32 2, !dbg !6071
  %5 = load ptr, ptr %ext_ops, align 8, !dbg !6071
  %tobool = icmp ne ptr %5, null, !dbg !6068
  br i1 %tobool, label %if.then, label %if.end39, !dbg !6072

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6034, metadata !DIExpression()), !dbg !6073
  %6 = load ptr, ptr %codec, align 8, !dbg !6073
  %bus1 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 1, !dbg !6073
  %7 = load ptr, ptr %bus1, align 8, !dbg !6073
  %core2 = getelementptr inbounds %struct.hda_bus, ptr %7, i32 0, i32 0, !dbg !6073
  %ext_ops3 = getelementptr inbounds %struct.hdac_bus, ptr %core2, i32 0, i32 2, !dbg !6073
  %8 = load ptr, ptr %ext_ops3, align 8, !dbg !6073
  %hdev_detach = getelementptr inbounds %struct.hdac_ext_bus_ops, ptr %8, i32 0, i32 1, !dbg !6073
  %9 = load ptr, ptr %hdev_detach, align 8, !dbg !6073
  %tobool4 = icmp ne ptr %9, null, !dbg !6073
  %lnot = xor i1 %tobool4, true, !dbg !6073
  %lnot5 = xor i1 %lnot, true, !dbg !6073
  %lnot6 = xor i1 %lnot5, true, !dbg !6073
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6073
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6073
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !6074
  %tobool7 = icmp ne i32 %10, 0, !dbg !6074
  %lnot8 = xor i1 %tobool7, true, !dbg !6074
  %lnot10 = xor i1 %lnot8, true, !dbg !6074
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !6074
  %conv = sext i32 %lnot.ext11 to i64, !dbg !6074
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6074
  %tobool12 = icmp ne i64 %expval, 0, !dbg !6074
  br i1 %tobool12, label %if.then13, label %if.end, !dbg !6073

if.then13:                                        ; preds = %if.then
  br label %do.body, !dbg !6074

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !6075
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6039, metadata !DIExpression()), !dbg !6075
  store i32 2305, ptr %__flags, align 4, !dbg !6075
  br label %do.body14, !dbg !6075

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !6076

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !6076

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !6075

do.body15:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !6078
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 155, i32 %11, i64 12) #7, !dbg !6078, !srcloc !6080
  br label %do.cond16, !dbg !6078

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6078

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !6075

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !6081

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !6081

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !6074
  br label %do.cond21, !dbg !6075

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !6075

do.end22:                                         ; preds = %do.cond21
  br label %if.end, !dbg !6075

if.end:                                           ; preds = %do.end22, %if.then
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6073
  %tobool24 = icmp ne i32 %12, 0, !dbg !6073
  %lnot25 = xor i1 %tobool24, true, !dbg !6073
  %lnot27 = xor i1 %lnot25, true, !dbg !6073
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6073
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6073
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6073
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6074
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !6083
  %13 = load i64, ptr %tmp23, align 8, !dbg !6073
  %tobool31 = icmp ne i64 %13, 0, !dbg !6083
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6084

if.then32:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !6085

if.end33:                                         ; preds = %if.end
  %14 = load ptr, ptr %codec, align 8, !dbg !6086
  %bus34 = getelementptr inbounds %struct.hda_codec, ptr %14, i32 0, i32 1, !dbg !6087
  %15 = load ptr, ptr %bus34, align 8, !dbg !6087
  %core35 = getelementptr inbounds %struct.hda_bus, ptr %15, i32 0, i32 0, !dbg !6088
  %ext_ops36 = getelementptr inbounds %struct.hdac_bus, ptr %core35, i32 0, i32 2, !dbg !6089
  %16 = load ptr, ptr %ext_ops36, align 8, !dbg !6089
  %hdev_detach37 = getelementptr inbounds %struct.hdac_ext_bus_ops, ptr %16, i32 0, i32 1, !dbg !6090
  %17 = load ptr, ptr %hdev_detach37, align 8, !dbg !6090
  %18 = load ptr, ptr %codec, align 8, !dbg !6091
  %core38 = getelementptr inbounds %struct.hda_codec, ptr %18, i32 0, i32 0, !dbg !6092
  %call = call i32 %17(ptr noundef %core38) #8, !dbg !6086
  store i32 %call, ptr %retval, align 4, !dbg !6093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !6093

if.end39:                                         ; preds = %entry
  %19 = load ptr, ptr %codec, align 8, !dbg !6094
  call void @snd_hda_codec_disconnect_pcms(ptr noundef %19) #8, !dbg !6095
  %20 = load ptr, ptr %codec, align 8, !dbg !6096
  call void @snd_hda_jack_tbl_disconnect(ptr noundef %20) #8, !dbg !6097
  %21 = load ptr, ptr %codec, align 8, !dbg !6098
  %pcm_ref = getelementptr inbounds %struct.hda_codec, ptr %21, i32 0, i32 9, !dbg !6099
  %call40 = call zeroext i1 @refcount_dec_and_test(ptr noundef %pcm_ref) #8, !dbg !6100
  br i1 %call40, label %if.end61, label %if.then41, !dbg !6101

if.then41:                                        ; preds = %if.end39
  br label %do.body42, !dbg !6102

do.body42:                                        ; preds = %if.then41
  br label %do.body43, !dbg !6103

do.body43:                                        ; preds = %do.body42
  call void @might_resched() #8, !dbg !6104
  br label %do.cond44, !dbg !6104

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !6104

do.end45:                                         ; preds = %do.cond44
  %22 = load ptr, ptr %codec, align 8, !dbg !6106
  %pcm_ref46 = getelementptr inbounds %struct.hda_codec, ptr %22, i32 0, i32 9, !dbg !6106
  %call47 = call i32 @refcount_read(ptr noundef %pcm_ref46) #8, !dbg !6106
  %tobool48 = icmp ne i32 %call47, 0, !dbg !6106
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !6103

if.then49:                                        ; preds = %do.end45
  br label %do.end60, !dbg !6106

if.end50:                                         ; preds = %do.end45
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #7, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !6042, metadata !DIExpression()), !dbg !6108
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #7, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6057, metadata !DIExpression()), !dbg !6108
  store i64 0, ptr %__ret, align 8, !dbg !6108
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #8, !dbg !6108
  br label %for.cond, !dbg !6108

for.cond:                                         ; preds = %cleanup.cont, %if.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #7, !dbg !6109
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !6058, metadata !DIExpression()), !dbg !6109
  %23 = load ptr, ptr %codec, align 8, !dbg !6109
  %remove_sleep = getelementptr inbounds %struct.hda_codec, ptr %23, i32 0, i32 10, !dbg !6109
  %call51 = call i64 @prepare_to_wait_event(ptr noundef %remove_sleep, ptr noundef %__wq_entry, i32 noundef 2) #8, !dbg !6109
  store i64 %call51, ptr %__int, align 8, !dbg !6109
  %24 = load ptr, ptr %codec, align 8, !dbg !6110
  %pcm_ref52 = getelementptr inbounds %struct.hda_codec, ptr %24, i32 0, i32 9, !dbg !6110
  %call53 = call i32 @refcount_read(ptr noundef %pcm_ref52) #8, !dbg !6110
  %tobool54 = icmp ne i32 %call53, 0, !dbg !6110
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !6109

if.then55:                                        ; preds = %for.cond
  store i32 14, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6110

if.end56:                                         ; preds = %for.cond
  call void @schedule() #8, !dbg !6109
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6112
  br label %cleanup, !dbg !6112

cleanup:                                          ; preds = %if.end56, %if.then55
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #7, !dbg !6112
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 14, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6112, !llvm.loop !6113

for.end:                                          ; preds = %cleanup
  %25 = load ptr, ptr %codec, align 8, !dbg !6108
  %remove_sleep57 = getelementptr inbounds %struct.hda_codec, ptr %25, i32 0, i32 10, !dbg !6108
  call void @finish_wait(ptr noundef %remove_sleep57, ptr noundef %__wq_entry) #8, !dbg !6108
  br label %__out, !dbg !6108

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !6062), !dbg !6108
  %26 = load i64, ptr %__ret, align 8, !dbg !6108
  store i64 %26, ptr %tmp58, align 8, !dbg !6108
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #7, !dbg !6103
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #7, !dbg !6103
  %27 = load i64, ptr %tmp58, align 8, !dbg !6108
  br label %do.cond59, !dbg !6103

do.cond59:                                        ; preds = %__out
  br label %do.end60, !dbg !6103

do.end60:                                         ; preds = %do.cond59, %if.then49
  br label %if.end61, !dbg !6103

if.end61:                                         ; preds = %do.end60, %if.end39
  %28 = load ptr, ptr %codec, align 8, !dbg !6116
  %bus62 = getelementptr inbounds %struct.hda_codec, ptr %28, i32 0, i32 1, !dbg !6117
  %29 = load ptr, ptr %bus62, align 8, !dbg !6117
  %card = getelementptr inbounds %struct.hda_bus, ptr %29, i32 0, i32 1, !dbg !6118
  %30 = load ptr, ptr %card, align 8, !dbg !6118
  call void @snd_power_sync_ref(ptr noundef %30) #8, !dbg !6119
  %31 = load ptr, ptr %codec, align 8, !dbg !6120
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %31, i32 0, i32 7, !dbg !6122
  %free = getelementptr inbounds %struct.hda_codec_ops, ptr %patch_ops, i32 0, i32 3, !dbg !6123
  %32 = load ptr, ptr %free, align 8, !dbg !6123
  %tobool63 = icmp ne ptr %32, null, !dbg !6120
  br i1 %tobool63, label %if.then64, label %if.end67, !dbg !6124

if.then64:                                        ; preds = %if.end61
  %33 = load ptr, ptr %codec, align 8, !dbg !6125
  %patch_ops65 = getelementptr inbounds %struct.hda_codec, ptr %33, i32 0, i32 7, !dbg !6126
  %free66 = getelementptr inbounds %struct.hda_codec_ops, ptr %patch_ops65, i32 0, i32 3, !dbg !6127
  %34 = load ptr, ptr %free66, align 8, !dbg !6127
  %35 = load ptr, ptr %codec, align 8, !dbg !6128
  call void %34(ptr noundef %35) #8, !dbg !6125
  br label %if.end67, !dbg !6125

if.end67:                                         ; preds = %if.then64, %if.end61
  %36 = load ptr, ptr %codec, align 8, !dbg !6129
  call void @snd_hda_codec_cleanup_for_unbind(ptr noundef %36) #8, !dbg !6130
  %37 = load ptr, ptr %codec, align 8, !dbg !6131
  %preset = getelementptr inbounds %struct.hda_codec, ptr %37, i32 0, i32 5, !dbg !6132
  store ptr null, ptr %preset, align 8, !dbg !6133
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !6134
  %driver = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 6, !dbg !6135
  %39 = load ptr, ptr %driver, align 8, !dbg !6135
  %owner = getelementptr inbounds %struct.device_driver, ptr %39, i32 0, i32 2, !dbg !6136
  %40 = load ptr, ptr %owner, align 8, !dbg !6136
  call void @module_put(ptr noundef %40) #8, !dbg !6137
  store i32 0, ptr %retval, align 4, !dbg !6138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup68, !dbg !6138

cleanup68:                                        ; preds = %if.end67, %if.end33, %if.then32
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #7, !dbg !6139
  %41 = load i32, ptr %retval, align 4, !dbg !6139
  ret i32 %41, !dbg !6139

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hda_codec_driver_shutdown(ptr noundef %dev) #0 align 16 !dbg !6140 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6142, metadata !DIExpression()), !dbg !6145
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6143, metadata !DIExpression()), !dbg !6146
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6146
  store ptr %0, ptr %__mptr, align 8, !dbg !6146
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6146
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6146
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6147
  %2 = load ptr, ptr %tmp, align 8, !dbg !6146
  call void @snd_hda_codec_shutdown(ptr noundef %2) #8, !dbg !6148
  ret void, !dbg !6149
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hda_codec_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !6150 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %driver = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %list = alloca ptr, align 8
  %id = alloca i32, align 4
  %rev_id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6152, metadata !DIExpression()), !dbg !6163
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6153, metadata !DIExpression()), !dbg !6164
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #7, !dbg !6165
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !6154, metadata !DIExpression()), !dbg !6166
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6155, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6167
  store ptr %0, ptr %__mptr, align 8, !dbg !6167
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6167
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6167
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6168
  %2 = load ptr, ptr %tmp, align 8, !dbg !6167
  store ptr %2, ptr %codec, align 8, !dbg !6166
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver) #7, !dbg !6169
  call void @llvm.dbg.declare(metadata ptr %driver, metadata !6157, metadata !DIExpression()), !dbg !6170
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #7, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6158, metadata !DIExpression()), !dbg !6171
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !6171
  store ptr %3, ptr %__mptr1, align 8, !dbg !6171
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6171
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !6171
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6171
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #7, !dbg !6172
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6171
  store ptr %5, ptr %driver, align 8, !dbg !6170
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #7, !dbg !6173
  call void @llvm.dbg.declare(metadata ptr %list, metadata !6160, metadata !DIExpression()), !dbg !6174
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #7, !dbg !6175
  call void @llvm.dbg.declare(metadata ptr %id, metadata !6161, metadata !DIExpression()), !dbg !6176
  %6 = load ptr, ptr %codec, align 8, !dbg !6177
  %probe_id = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 4, !dbg !6178
  %7 = load i32, ptr %probe_id, align 4, !dbg !6178
  %tobool = icmp ne i32 %7, 0, !dbg !6177
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6177

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %codec, align 8, !dbg !6179
  %probe_id4 = getelementptr inbounds %struct.hda_codec, ptr %8, i32 0, i32 4, !dbg !6180
  %9 = load i32, ptr %probe_id4, align 4, !dbg !6180
  br label %cond.end, !dbg !6177

cond.false:                                       ; preds = %entry
  %10 = load ptr, ptr %codec, align 8, !dbg !6181
  %core = getelementptr inbounds %struct.hda_codec, ptr %10, i32 0, i32 0, !dbg !6182
  %vendor_id = getelementptr inbounds %struct.hdac_device, ptr %core, i32 0, i32 7, !dbg !6183
  %11 = load i32, ptr %vendor_id, align 4, !dbg !6183
  br label %cond.end, !dbg !6177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ], !dbg !6177
  store i32 %cond, ptr %id, align 4, !dbg !6176
  call void @llvm.lifetime.start.p0(i64 4, ptr %rev_id) #7, !dbg !6184
  call void @llvm.dbg.declare(metadata ptr %rev_id, metadata !6162, metadata !DIExpression()), !dbg !6185
  %12 = load ptr, ptr %codec, align 8, !dbg !6186
  %core5 = getelementptr inbounds %struct.hda_codec, ptr %12, i32 0, i32 0, !dbg !6187
  %revision_id = getelementptr inbounds %struct.hdac_device, ptr %core5, i32 0, i32 9, !dbg !6188
  %13 = load i32, ptr %revision_id, align 4, !dbg !6188
  store i32 %13, ptr %rev_id, align 4, !dbg !6185
  %14 = load ptr, ptr %driver, align 8, !dbg !6189
  %id6 = getelementptr inbounds %struct.hda_codec_driver, ptr %14, i32 0, i32 1, !dbg !6191
  %15 = load ptr, ptr %id6, align 8, !dbg !6191
  store ptr %15, ptr %list, align 8, !dbg !6192
  br label %for.cond, !dbg !6193

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load ptr, ptr %list, align 8, !dbg !6194
  %vendor_id7 = getelementptr inbounds %struct.hda_device_id, ptr %16, i32 0, i32 0, !dbg !6196
  %17 = load i32, ptr %vendor_id7, align 8, !dbg !6196
  %tobool8 = icmp ne i32 %17, 0, !dbg !6197
  br i1 %tobool8, label %for.body, label %for.end, !dbg !6197

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %list, align 8, !dbg !6198
  %vendor_id9 = getelementptr inbounds %struct.hda_device_id, ptr %18, i32 0, i32 0, !dbg !6201
  %19 = load i32, ptr %vendor_id9, align 8, !dbg !6201
  %20 = load i32, ptr %id, align 4, !dbg !6202
  %cmp = icmp eq i32 %19, %20, !dbg !6203
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6204

land.lhs.true:                                    ; preds = %for.body
  %21 = load ptr, ptr %list, align 8, !dbg !6205
  %rev_id10 = getelementptr inbounds %struct.hda_device_id, ptr %21, i32 0, i32 1, !dbg !6206
  %22 = load i32, ptr %rev_id10, align 4, !dbg !6206
  %tobool11 = icmp ne i32 %22, 0, !dbg !6205
  br i1 %tobool11, label %lor.lhs.false, label %if.then, !dbg !6207

lor.lhs.false:                                    ; preds = %land.lhs.true
  %23 = load ptr, ptr %list, align 8, !dbg !6208
  %rev_id12 = getelementptr inbounds %struct.hda_device_id, ptr %23, i32 0, i32 1, !dbg !6209
  %24 = load i32, ptr %rev_id12, align 4, !dbg !6209
  %25 = load i32, ptr %rev_id, align 4, !dbg !6210
  %cmp13 = icmp eq i32 %24, %25, !dbg !6211
  br i1 %cmp13, label %if.then, label %if.end, !dbg !6212

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %26 = load ptr, ptr %list, align 8, !dbg !6213
  %27 = load ptr, ptr %codec, align 8, !dbg !6215
  %preset = getelementptr inbounds %struct.hda_codec, ptr %27, i32 0, i32 5, !dbg !6216
  store ptr %26, ptr %preset, align 8, !dbg !6217
  store i32 1, ptr %retval, align 4, !dbg !6218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6218

if.end:                                           ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !6219

for.inc:                                          ; preds = %if.end
  %28 = load ptr, ptr %list, align 8, !dbg !6220
  %incdec.ptr = getelementptr %struct.hda_device_id, ptr %28, i32 1, !dbg !6220
  store ptr %incdec.ptr, ptr %list, align 8, !dbg !6220
  br label %for.cond, !dbg !6221, !llvm.loop !6222

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !6225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6225

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rev_id) #7, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #7, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #7, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver) #7, !dbg !6226
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #7, !dbg !6226
  %29 = load i32, ptr %retval, align 4, !dbg !6226
  ret i32 %29, !dbg !6226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hda_codec_unsol_event(ptr noundef %dev, i32 noundef %ev) #0 align 16 !dbg !6227 {
entry:
  %dev.addr = alloca ptr, align 8
  %ev.addr = alloca i32, align 4
  %codec = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6229, metadata !DIExpression()), !dbg !6234
  store i32 %ev, ptr %ev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !6230, metadata !DIExpression()), !dbg !6235
  call void @llvm.lifetime.start.p0(i64 8, ptr %codec) #7, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %codec, metadata !6231, metadata !DIExpression()), !dbg !6237
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #7, !dbg !6238
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6232, metadata !DIExpression()), !dbg !6238
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6238
  store ptr %0, ptr %__mptr, align 8, !dbg !6238
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6238
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6238
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6238
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #7, !dbg !6239
  %2 = load ptr, ptr %tmp, align 8, !dbg !6238
  store ptr %2, ptr %codec, align 8, !dbg !6237
  %3 = load ptr, ptr %codec, align 8, !dbg !6240
  %bus = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 1, !dbg !6242
  %4 = load ptr, ptr %bus, align 8, !dbg !6242
  %shutdown = getelementptr inbounds %struct.hda_bus, ptr %4, i32 0, i32 6, !dbg !6243
  %bf.load = load i8, ptr %shutdown, align 8, !dbg !6243
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6243
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6243
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6243
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6240
  br i1 %tobool, label %if.then, label %if.end, !dbg !6244

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6245

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %codec, align 8, !dbg !6246
  %core = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 0, !dbg !6248
  %dev1 = getelementptr inbounds %struct.hdac_device, ptr %core, i32 0, i32 0, !dbg !6249
  %power = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 11, !dbg !6250
  %power_state = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 0, !dbg !6251
  %event = getelementptr inbounds %struct.pm_message, ptr %power_state, i32 0, i32 0, !dbg !6252
  %6 = load i32, ptr %event, align 8, !dbg !6252
  %cmp = icmp ne i32 %6, 0, !dbg !6253
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6254

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6255

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %codec, align 8, !dbg !6256
  %patch_ops = getelementptr inbounds %struct.hda_codec, ptr %7, i32 0, i32 7, !dbg !6258
  %unsol_event = getelementptr inbounds %struct.hda_codec_ops, ptr %patch_ops, i32 0, i32 4, !dbg !6259
  %8 = load ptr, ptr %unsol_event, align 8, !dbg !6259
  %tobool4 = icmp ne ptr %8, null, !dbg !6256
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !6260

if.then5:                                         ; preds = %if.end3
  %9 = load ptr, ptr %codec, align 8, !dbg !6261
  %patch_ops6 = getelementptr inbounds %struct.hda_codec, ptr %9, i32 0, i32 7, !dbg !6262
  %unsol_event7 = getelementptr inbounds %struct.hda_codec_ops, ptr %patch_ops6, i32 0, i32 4, !dbg !6263
  %10 = load ptr, ptr %unsol_event7, align 8, !dbg !6263
  %11 = load ptr, ptr %codec, align 8, !dbg !6264
  %12 = load i32, ptr %ev.addr, align 4, !dbg !6265
  call void %10(ptr noundef %11, i32 noundef %12) #8, !dbg !6261
  br label %if.end8, !dbg !6261

if.end8:                                          ; preds = %if.then5, %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6266
  br label %cleanup, !dbg !6266

cleanup:                                          ; preds = %if.end8, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %codec) #7, !dbg !6266
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6266

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6267 dso_local i32 @driver_register(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @hda_codec_driver_unregister(ptr noundef %drv) #0 align 16 !dbg !6270 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !6276
  %core = getelementptr inbounds %struct.hda_codec_driver, ptr %0, i32 0, i32 0, !dbg !6277
  %driver = getelementptr inbounds %struct.hdac_driver, ptr %core, i32 0, i32 0, !dbg !6278
  call void @driver_unregister(ptr noundef %driver) #8, !dbg !6279
  ret void, !dbg !6280
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6281 dso_local void @driver_unregister(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @snd_hda_codec_configure(ptr noundef %codec) #0 align 16 !dbg !6284 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6286, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #7, !dbg !6289
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6287, metadata !DIExpression()), !dbg !6290
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6291
  %configured = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, !dbg !6293
  %bf.load = load i32, ptr %configured, align 8, !dbg !6293
  %bf.clear = and i32 %bf.load, 1, !dbg !6293
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !6291
  br i1 %tobool, label %if.then, label %if.end, !dbg !6294

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6295

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6296
  %probe_id = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 4, !dbg !6298
  store i32 0, ptr %probe_id, align 4, !dbg !6299
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !6300
  %core = getelementptr inbounds %struct.hda_codec, ptr %2, i32 0, i32 0, !dbg !6302
  %dev = getelementptr inbounds %struct.hdac_device, ptr %core, i32 0, i32 0, !dbg !6303
  %call = call i32 @device_is_registered(ptr noundef %dev) #8, !dbg !6304
  %tobool1 = icmp ne i32 %call, 0, !dbg !6304
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !6305

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6306
  %core3 = getelementptr inbounds %struct.hda_codec, ptr %3, i32 0, i32 0, !dbg !6308
  %call4 = call i32 @snd_hdac_device_register(ptr noundef %core3) #8, !dbg !6309
  store i32 %call4, ptr %err, align 4, !dbg !6310
  %4 = load i32, ptr %err, align 4, !dbg !6311
  %cmp = icmp slt i32 %4, 0, !dbg !6313
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !6314

if.then5:                                         ; preds = %if.then2
  %5 = load i32, ptr %err, align 4, !dbg !6315
  store i32 %5, ptr %retval, align 4, !dbg !6316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6316

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !6317

if.end7:                                          ; preds = %if.end6, %if.end
  %6 = load ptr, ptr %codec.addr, align 8, !dbg !6318
  %preset = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 5, !dbg !6320
  %7 = load ptr, ptr %preset, align 8, !dbg !6320
  %tobool8 = icmp ne ptr %7, null, !dbg !6318
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6321

if.then9:                                         ; preds = %if.end7
  %8 = load ptr, ptr %codec.addr, align 8, !dbg !6322
  call void @codec_bind_module(ptr noundef %8) #8, !dbg !6323
  br label %if.end10, !dbg !6323

if.end10:                                         ; preds = %if.then9, %if.end7
  %9 = load ptr, ptr %codec.addr, align 8, !dbg !6324
  %preset11 = getelementptr inbounds %struct.hda_codec, ptr %9, i32 0, i32 5, !dbg !6326
  %10 = load ptr, ptr %preset11, align 8, !dbg !6326
  %tobool12 = icmp ne ptr %10, null, !dbg !6324
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !6327

if.then13:                                        ; preds = %if.end10
  %11 = load ptr, ptr %codec.addr, align 8, !dbg !6328
  %call14 = call i32 @codec_bind_generic(ptr noundef %11) #8, !dbg !6330
  store i32 %call14, ptr %err, align 4, !dbg !6331
  %12 = load i32, ptr %err, align 4, !dbg !6332
  %cmp15 = icmp slt i32 %12, 0, !dbg !6334
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6335

if.then16:                                        ; preds = %if.then13
  %13 = load i32, ptr %err, align 4, !dbg !6336
  store i32 %13, ptr %retval, align 4, !dbg !6338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6338

if.end17:                                         ; preds = %if.then13
  br label %if.end18, !dbg !6339

if.end18:                                         ; preds = %if.end17, %if.end10
  %14 = load ptr, ptr %codec.addr, align 8, !dbg !6340
  %configured19 = getelementptr inbounds %struct.hda_codec, ptr %14, i32 0, i32 28, !dbg !6341
  %bf.load20 = load i32, ptr %configured19, align 8, !dbg !6342
  %bf.clear21 = and i32 %bf.load20, -2, !dbg !6342
  %bf.set = or i32 %bf.clear21, 1, !dbg !6342
  store i32 %bf.set, ptr %configured19, align 8, !dbg !6342
  store i32 0, ptr %retval, align 4, !dbg !6343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6343

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #7, !dbg !6344
  %15 = load i32, ptr %retval, align 4, !dbg !6344
  ret i32 %15, !dbg !6344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #4 align 16 !dbg !6345 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6347, metadata !DIExpression()), !dbg !6348
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6349
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !6350
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !6351
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !6351
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !6351
  %bf.clear = and i8 %bf.lshr, 1, !dbg !6351
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6351
  ret i32 %bf.cast, !dbg !6352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6353 dso_local i32 @snd_hdac_device_register(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @codec_bind_module(ptr noundef %codec) #0 align 16 !dbg !6354 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  ret void, !dbg !6358
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @codec_bind_generic(ptr noundef %codec) #0 align 16 !dbg !6359 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6361, metadata !DIExpression()), !dbg !6362
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6363
  %probe_id = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 4, !dbg !6365
  %1 = load i32, ptr %probe_id, align 4, !dbg !6365
  %tobool = icmp ne i32 %1, 0, !dbg !6363
  br i1 %tobool, label %if.then, label %if.end, !dbg !6366

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6367
  br label %return, !dbg !6367

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %codec.addr, align 8, !dbg !6368
  %probe_id1 = getelementptr inbounds %struct.hda_codec, ptr %2, i32 0, i32 4, !dbg !6369
  store i32 513, ptr %probe_id1, align 4, !dbg !6370
  %3 = load ptr, ptr %codec.addr, align 8, !dbg !6371
  call void @request_codec_module(ptr noundef %3) #8, !dbg !6372
  %4 = load ptr, ptr %codec.addr, align 8, !dbg !6373
  %call = call zeroext i1 @codec_probed(ptr noundef %4) #8, !dbg !6375
  br i1 %call, label %if.then2, label %if.end3, !dbg !6376

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !6377
  br label %return, !dbg !6377

if.end3:                                          ; preds = %if.end
  store i32 -19, ptr %retval, align 4, !dbg !6378
  br label %return, !dbg !6378

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !6379
  ret i32 %5, !dbg !6379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6380 dso_local i32 @snd_hdac_regmap_init(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6382 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6385 dso_local i32 @snd_hda_codec_build_pcms(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6386 dso_local i32 @snd_hda_codec_build_controls(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6387 dso_local i32 @snd_card_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6390 dso_local void @snd_hda_codec_register(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6391 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6392 dso_local void @snd_hda_codec_cleanup_for_unbind(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6393 dso_local void @snd_hda_codec_disconnect_pcms(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6394 dso_local void @snd_hda_jack_tbl_disconnect(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !6396 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6401, metadata !DIExpression()), !dbg !6402
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6403
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #8, !dbg !6404
  ret i1 %call, !dbg !6405
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !5695 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !6406
  %0 = load ptr, ptr %tmp, align 8, !dbg !6406
  %call = call i32 %0() #8, !dbg !6408
  ret void, !dbg !6409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #4 align 16 !dbg !6410 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6418
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !6419
  %call = call i32 @atomic_read(ptr noundef %refs) #8, !dbg !6420
  ret i32 %call, !dbg !6421
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6422 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6425 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6429 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6430 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @snd_power_sync_ref(ptr noundef %card) #4 align 16 !dbg !6433 {
entry:
  %card.addr = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6435, metadata !DIExpression()), !dbg !6445
  br label %do.body, !dbg !6446

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6447

do.body1:                                         ; preds = %do.body
  call void @might_resched() #8, !dbg !6448
  br label %do.end, !dbg !6448

do.end:                                           ; preds = %do.body1
  %0 = load ptr, ptr %card.addr, align 8, !dbg !6450
  %power_ref = getelementptr inbounds %struct.snd_card, ptr %0, i32 0, i32 41, !dbg !6450
  %call = call i32 @atomic_read(ptr noundef %power_ref) #8, !dbg !6450
  %tobool = icmp ne i32 %call, 0, !dbg !6450
  br i1 %tobool, label %if.end, label %if.then, !dbg !6447

if.then:                                          ; preds = %do.end
  br label %do.end9, !dbg !6450

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #7, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !6436, metadata !DIExpression()), !dbg !6452
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #7, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6439, metadata !DIExpression()), !dbg !6452
  store i64 0, ptr %__ret, align 8, !dbg !6452
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #8, !dbg !6452
  br label %for.cond, !dbg !6452

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #7, !dbg !6453
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !6440, metadata !DIExpression()), !dbg !6453
  %1 = load ptr, ptr %card.addr, align 8, !dbg !6453
  %power_ref_sleep = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 43, !dbg !6453
  %call2 = call i64 @prepare_to_wait_event(ptr noundef %power_ref_sleep, ptr noundef %__wq_entry, i32 noundef 2) #8, !dbg !6453
  store i64 %call2, ptr %__int, align 8, !dbg !6453
  %2 = load ptr, ptr %card.addr, align 8, !dbg !6454
  %power_ref3 = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 41, !dbg !6454
  %call4 = call i32 @atomic_read(ptr noundef %power_ref3) #8, !dbg !6454
  %tobool5 = icmp ne i32 %call4, 0, !dbg !6454
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6453

if.then6:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6454

if.end7:                                          ; preds = %for.cond
  call void @schedule() #8, !dbg !6453
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6456
  br label %cleanup, !dbg !6456

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #7, !dbg !6456
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6456, !llvm.loop !6457

for.end:                                          ; preds = %cleanup
  %3 = load ptr, ptr %card.addr, align 8, !dbg !6452
  %power_ref_sleep8 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 43, !dbg !6452
  call void @finish_wait(ptr noundef %power_ref_sleep8, ptr noundef %__wq_entry) #8, !dbg !6452
  br label %__out, !dbg !6452

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !6444), !dbg !6452
  %4 = load i64, ptr %__ret, align 8, !dbg !6452
  store i64 %4, ptr %tmp, align 8, !dbg !6452
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #7, !dbg !6447
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #7, !dbg !6447
  %5 = load i64, ptr %tmp, align 8, !dbg !6452
  br label %do.end9, !dbg !6447

do.end9:                                          ; preds = %__out, %if.then
  ret void, !dbg !6459

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6460 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6464, metadata !DIExpression()), !dbg !6466
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6465, metadata !DIExpression()), !dbg !6467
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6468
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6469
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #8, !dbg !6470
  ret i1 %call, !dbg !6471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !6472 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6476, metadata !DIExpression()), !dbg !6480
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6477, metadata !DIExpression()), !dbg !6481
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6478, metadata !DIExpression()), !dbg !6482
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #7, !dbg !6483
  call void @llvm.dbg.declare(metadata ptr %old, metadata !6479, metadata !DIExpression()), !dbg !6484
  %0 = load i32, ptr %i.addr, align 4, !dbg !6485
  %1 = load ptr, ptr %r.addr, align 8, !dbg !6486
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !6487
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #8, !dbg !6488
  store i32 %call, ptr %old, align 4, !dbg !6484
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !6489
  %tobool = icmp ne ptr %2, null, !dbg !6489
  br i1 %tobool, label %if.then, label %if.end, !dbg !6491

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !6492
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !6493
  store i32 %3, ptr %4, align 4, !dbg !6494
  br label %if.end, !dbg !6495

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !6496
  %6 = load i32, ptr %i.addr, align 4, !dbg !6498
  %cmp = icmp eq i32 %5, %6, !dbg !6499
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !6500

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !6501

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !6503

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !6505

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6505

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !6503

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6507

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !6509

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !6509

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !dbg !6507, !srcloc !6511
  br label %do.cond7, !dbg !6507

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !6507

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !6503

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !6503

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !6512
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6512

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !6513
  %cmp12 = icmp slt i32 %7, 0, !dbg !6513
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !6513

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !6513
  %9 = load i32, ptr %i.addr, align 4, !dbg !6513
  %sub = sub i32 %8, %9, !dbg !6513
  %cmp13 = icmp slt i32 %sub, 0, !dbg !6513
  br label %lor.end, !dbg !6513

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !6513
  %lnot14 = xor i1 %lnot, true, !dbg !6513
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !6513
  %conv = sext i32 %lnot.ext to i64, !dbg !6513
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6513
  %tobool15 = icmp ne i64 %expval, 0, !dbg !6513
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6515

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !6516
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #8, !dbg !6517
  br label %if.end17, !dbg !6517

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !6518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6518

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #7, !dbg !6519
  %12 = load i1, ptr %retval, align 1, !dbg !6519
  ret i1 %12, !dbg !6519
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6520 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6526, metadata !DIExpression()), !dbg !6528
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  br label %do.body, !dbg !6530

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6531

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6533
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !6534
  %1 = load i32, ptr %i.addr, align 4, !dbg !6535
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6536
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #8, !dbg !6537
  ret i32 %call, !dbg !6538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6539 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6542 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6550, metadata !DIExpression()), !dbg !6552
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6551, metadata !DIExpression()), !dbg !6553
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6554
  %1 = load i64, ptr %size.addr, align 8, !dbg !6555
  %conv = trunc i64 %1 to i32, !dbg !6555
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !6556
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6557
  %3 = load i64, ptr %size.addr, align 8, !dbg !6557
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !6557
  ret void, !dbg !6558
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6559 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6562, metadata !DIExpression()), !dbg !6564
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6563, metadata !DIExpression()), !dbg !6565
  %0 = load i32, ptr %i.addr, align 4, !dbg !6566
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6567
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #8, !dbg !6568
  ret i32 %call, !dbg !6569
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6570 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6575, metadata !DIExpression()), !dbg !6577
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6576, metadata !DIExpression()), !dbg !6578
  ret i1 true, !dbg !6579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6580 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6585, metadata !DIExpression()), !dbg !6588
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6586, metadata !DIExpression()), !dbg !6589
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6587, metadata !DIExpression()), !dbg !6590
  ret void, !dbg !6591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !6592 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6595, metadata !DIExpression()), !dbg !6599
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6596, metadata !DIExpression()), !dbg !6600
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #7, !dbg !6601
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !6597, metadata !DIExpression()), !dbg !6601
  %0 = load i32, ptr %i.addr, align 4, !dbg !6601
  %sub = sub i32 0, %0, !dbg !6601
  store i32 %sub, ptr %__ret, align 4, !dbg !6601
  %1 = load i32, ptr %__ret, align 4, !dbg !6601
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6601
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !6601
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #7, !dbg !6601, !srcloc !6602
  store i32 %3, ptr %__ret, align 4, !dbg !6601
  %4 = load i32, ptr %__ret, align 4, !dbg !6601
  store i32 %4, ptr %tmp, align 4, !dbg !6601
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #7, !dbg !6603
  %5 = load i32, ptr %tmp, align 4, !dbg !6601
  ret i32 %5, !dbg !6604
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !6605 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6611, metadata !DIExpression()), !dbg !6612
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6613
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !6614
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6615
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !6616
  ret i32 %call, !dbg !6617
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6618 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6620, metadata !DIExpression()), !dbg !6622
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6621, metadata !DIExpression()), !dbg !6623
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6624
  %1 = load i64, ptr %size.addr, align 8, !dbg !6625
  %conv = trunc i64 %1 to i32, !dbg !6625
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !6626
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6627
  %3 = load i64, ptr %size.addr, align 8, !dbg !6627
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !6627
  ret void, !dbg !6628
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !6629 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6631, metadata !DIExpression()), !dbg !6632
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6633
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !6634
  ret i32 %call, !dbg !6635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6636 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6638, metadata !DIExpression()), !dbg !6640
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6639, metadata !DIExpression()), !dbg !6641
  ret i1 true, !dbg !6642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !6643 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6645, metadata !DIExpression()), !dbg !6646
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6647
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6647
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6647
  ret i32 %1, !dbg !6648
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6649 dso_local void @snd_hda_codec_shutdown(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @request_codec_module(ptr noundef %codec) #0 align 16 !dbg !6650 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6652, metadata !DIExpression()), !dbg !6653
  ret void, !dbg !6654
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @codec_probed(ptr noundef %codec) #4 align 16 !dbg !6655 {
entry:
  %codec.addr = alloca ptr, align 8
  store ptr %codec, ptr %codec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %codec.addr, metadata !6659, metadata !DIExpression()), !dbg !6660
  %0 = load ptr, ptr %codec.addr, align 8, !dbg !6661
  %core = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 0, !dbg !6661
  %dev = getelementptr inbounds %struct.hdac_device, ptr %core, i32 0, i32 0, !dbg !6661
  %call = call i32 @device_attach(ptr noundef %dev) #8, !dbg !6662
  %cmp = icmp sgt i32 %call, 0, !dbg !6663
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6664

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %codec.addr, align 8, !dbg !6665
  %preset = getelementptr inbounds %struct.hda_codec, ptr %1, i32 0, i32 5, !dbg !6666
  %2 = load ptr, ptr %preset, align 8, !dbg !6666
  %tobool = icmp ne ptr %2, null, !dbg !6664
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !6667
  ret i1 %3, !dbg !6668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6669 dso_local i32 @device_attach(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704}
!llvm.ident = !{!5705}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "sound/pci/hda/hda_bind.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "beba084d494e7d88fb3c099adbbe6caa")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hda_codec_set_name299", scope: !9, file: !2, line: 84, type: !191, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF sound/pci/hda/.hda_bind.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22sound/pci/hda/snd-hda-codec\22 -D KBUILD_BASENAME=\22hda_bind\22 -D KBUILD_MODNAME=\22snd_hda_codec\22 -D __KBUILD_MODNAME=kmod_snd_hda_codec -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o sound/pci/hda/hda_bind.ll sound/pci/hda/hda_bind.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !190, globals: !5681, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !32, !48, !56, !62, !67, !73, !80, !87, !93, !99, !106, !114, !122, !128, !135, !139, !148, !153, !158, !164, !171, !177, !182}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !25, line: 9, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!28 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!29 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!30 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!31 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !33, line: 1325, baseType: !13, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!36 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!37 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!38 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!39 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!40 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!41 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!42 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!43 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!44 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!45 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!46 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!47 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !49, line: 68, baseType: !13, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!50 = !{!51, !52, !53, !54, !55}
!51 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!55 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !57, line: 54, baseType: !13, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "USRQUOTA", value: 0)
!60 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!61 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !63, line: 65, baseType: !13, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!66 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !123, line: 41, baseType: !13, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!126 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!127 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !123, line: 99, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134}
!130 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!131 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!132 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!133 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!134 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !123, line: 80, baseType: !13, size: 32, elements: !136)
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!138 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147}
!141 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!142 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!143 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!144 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!145 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!146 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!147 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!151 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!152 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!156 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!157 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !159)
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!161 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!162 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!163 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dma_data_direction", file: !165, line: 5, baseType: !13, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/dma-direction.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f3ca6b923deacc70f1b33611ff89af91")
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "DMA_BIDIRECTIONAL", value: 0)
!168 = !DIEnumerator(name: "DMA_TO_DEVICE", value: 1)
!169 = !DIEnumerator(name: "DMA_FROM_DEVICE", value: 2)
!170 = !DIEnumerator(name: "DMA_NONE", value: 3)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !172, line: 102, baseType: !13, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/sound/hdaudio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "507832bfa56b8fb9054739385c0935fd")
!173 = !{!174, !175, !176}
!174 = !DIEnumerator(name: "HDA_DEV_CORE", value: 0)
!175 = !DIEnumerator(name: "HDA_DEV_LEGACY", value: 1)
!176 = !DIEnumerator(name: "HDA_DEV_ASOC", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !178, line: 10, baseType: !13, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!179 = !{!180, !181}
!180 = !DIEnumerator(name: "false", value: 0)
!181 = !DIEnumerator(name: "true", value: 1)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !183, line: 119, baseType: !13, size: 32, elements: !184)
!183 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!186 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!187 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!188 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!189 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!190 = !{!191, !192, !5652, !5653, !5656}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_codec", file: !194, line: 174, size: 13184, elements: !195)
!194 = !DIFile(filename: "./include/sound/hda_codec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57bbae33ea0092590fe8dddb7ec6c3bf")
!195 = !{!196, !4970, !5427, !5428, !5429, !5430, !5440, !5441, !5472, !5473, !5474, !5475, !5476, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5491, !5492, !5493, !5494, !5495, !5578, !5579, !5580, !5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5609, !5613, !5614, !5615, !5616, !5617, !5618, !5650, !5651}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !193, file: !194, line: 175, baseType: !197, size: 7616)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_device", file: !172, line: 52, size: 7616, elements: !198)
!198 = !{!199, !4759, !4760, !4927, !4928, !4929, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4946, !4947, !4948, !4949, !4950, !4951, !4954, !4957, !4958, !4966, !4967, !4968, !4969}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !197, file: !172, line: 53, baseType: !200, size: 5824)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !201)
!201 = !{!202, !4231, !4233, !4236, !4237, !4290, !4375, !4376, !4377, !4378, !4379, !4386, !4544, !4557, !4567, !4571, !4573, !4574, !4575, !4579, !4586, !4587, !4590, !4593, !4597, !4701, !4702, !4703, !4704, !4705, !4706, !4736, !4737, !4738, !4741, !4744, !4753, !4754, !4755, !4756, !4757, !4758}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !200, file: !100, line: 706, baseType: !203, size: 512)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !204, line: 64, size: 512, elements: !205)
!204 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!205 = !{!206, !209, !216, !218, !307, !4130, !4221, !4226, !4227, !4228, !4229, !4230}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 65, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !203, file: !204, line: 66, baseType: !210, size: 128, offset: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !211, line: 190, size: 128, elements: !212)
!211 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !211, line: 191, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !211, line: 191, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !204, line: 67, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !203, file: !204, line: 68, baseType: !219, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !204, line: 168, size: 768, elements: !221)
!221 = !{!222, !223, !266, !267}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !220, file: !204, line: 169, baseType: !210, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !220, file: !204, line: 170, baseType: !224, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !225, line: 29, baseType: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !225, line: 17, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !225, line: 18, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 18, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !229, file: !225, line: 19, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !233, line: 14, size: 32, elements: !234)
!233 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !232, file: !233, line: 15, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !237, line: 44, baseType: !238)
!237 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !237, line: 14, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !237, line: 15, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 15, size: 32, elements: !242)
!242 = !{!243, !248, !258}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !241, file: !237, line: 16, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !211, line: 174, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 172, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !245, file: !211, line: 173, baseType: !115, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !237, line: 24, baseType: !249, size: 16)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !237, line: 24, size: 16, elements: !250)
!250 = !{!251, !257}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !249, file: !237, line: 25, baseType: !252, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !253, line: 17, baseType: !254)
!253 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !255, line: 21, baseType: !256)
!255 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!256 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !249, file: !237, line: 26, baseType: !252, size: 8, offset: 8)
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !237, line: 28, baseType: !259, size: 32)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !237, line: 28, size: 32, elements: !260)
!260 = !{!261, !265}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !259, file: !237, line: 29, baseType: !262, size: 16)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !253, line: 19, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !255, line: 24, baseType: !264)
!264 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !259, file: !237, line: 30, baseType: !262, size: 16, offset: 16)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !220, file: !204, line: 171, baseType: !203, size: 512, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !220, file: !204, line: 172, baseType: !268, size: 64, offset: 704)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !204, line: 133, size: 192, elements: !271)
!271 = !{!272, !279, !284}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !270, file: !204, line: 134, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!115, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !204, line: 135, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!207, !277}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !270, file: !204, line: 136, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!115, !277, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !204, line: 125, size: 20736, elements: !291)
!291 = !{!292, !297, !301, !302, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !290, file: !204, line: 126, baseType: !293, size: 192)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !295)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!295 = !{!296}
!296 = !DISubrange(count: 3)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !290, file: !204, line: 127, baseType: !298, size: 4096, offset: 192)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 4096, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !290, file: !204, line: 128, baseType: !115, size: 32, offset: 4288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !290, file: !204, line: 129, baseType: !303, size: 16384, offset: 4320)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 2048)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !290, file: !204, line: 130, baseType: !115, size: 32, offset: 20704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !203, file: !204, line: 69, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !204, line: 116, size: 384, elements: !311)
!311 = !{!312, !316, !345, !4092, !4120, !4124}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !310, file: !204, line: 117, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !217}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !310, file: !204, line: 118, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !320, line: 254, size: 128, elements: !321)
!320 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!321 = !{!322, !337}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !319, file: !320, line: 255, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !217, !331, !294}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !211, line: 66, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !328, line: 73, baseType: !329)
!328 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !328, line: 15, baseType: !330)
!330 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !320, line: 30, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !332, file: !320, line: 31, baseType: !207, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !332, file: !320, line: 32, baseType: !336, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !211, line: 24, baseType: !264)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !319, file: !320, line: 256, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!326, !217, !331, !207, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 61, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !328, line: 72, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !328, line: 16, baseType: !344)
!344 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !310, file: !204, line: 119, baseType: !346, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !320, line: 84, size: 320, elements: !350)
!350 = !{!351, !352, !356, !4088, !4090}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !320, line: 85, baseType: !207, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !349, file: !320, line: 86, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!336, !217, !331, !115}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !349, file: !320, line: 88, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!336, !217, !360, !115}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !320, line: 175, size: 512, elements: !362)
!362 = !{!363, !364, !365, !366, !4079, !4083, !4084}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !361, file: !320, line: 176, baseType: !332, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !361, file: !320, line: 177, baseType: !341, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !361, file: !320, line: 178, baseType: !191, size: 64, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !361, file: !320, line: 179, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !372)
!372 = !{!373, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !4073, !4074, !4075, !4076, !4077, !4078}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !371, file: !20, line: 473, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !376)
!376 = !{!377, !378, !379, !387, !388, !395, !396, !399, !400, !3852, !3853, !3854, !3855, !3856, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3896, !3899, !3900, !3901, !3910, !3911, !3912, !3913}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !375, file: !20, line: 642, baseType: !336, size: 16)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !375, file: !20, line: 643, baseType: !264, size: 16, offset: 16)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !375, file: !20, line: 644, baseType: !380, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !381, line: 23, baseType: !382)
!381 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 21, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !381, line: 22, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !211, line: 37, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !328, line: 49, baseType: !13)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !375, file: !20, line: 645, baseType: !210, size: 128, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !375, file: !20, line: 646, baseType: !389, size: 32, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !381, line: 28, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 26, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !390, file: !381, line: 27, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !211, line: 38, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !328, line: 50, baseType: !13)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !375, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !375, file: !20, line: 650, baseType: !397, size: 64, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !375, file: !20, line: 651, baseType: !397, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !375, file: !20, line: 654, baseType: !401, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !404)
!404 = !{!405, !3686, !3696, !3700, !3704, !3708, !3712, !3716, !3720, !3724, !3728, !3729, !3733, !3737, !3774, !3803, !3807, !3813, !3817, !3821, !3825, !3829, !3833, !3839, !3843}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !403, file: !20, line: 1967, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!409, !374, !409, !13}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !411, line: 82, size: 1536, elements: !412)
!411 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!412 = !{!413, !414, !424, !432, !433, !453, !454, !458, !471, !3670, !3671, !3672, !3673, !3678, !3679, !3680}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !410, file: !411, line: 84, baseType: !13, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !410, file: !411, line: 85, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !416, line: 275, baseType: !417)
!416 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !416, line: 275, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !417, file: !416, line: 275, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !416, line: 69, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !416, line: 64, size: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !421, file: !416, line: 65, baseType: !13, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !410, file: !411, line: 86, baseType: !425, size: 128, offset: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !426, line: 38, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!427 = !{!428, !430}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !426, line: 39, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !425, file: !426, line: 39, baseType: !431, size: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !410, file: !411, line: 87, baseType: !409, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !410, file: !411, line: 88, baseType: !434, size: 128, offset: 256)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !411, line: 49, size: 128, elements: !435)
!435 = !{!436, !450}
!436 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !411, line: 50, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !411, line: 50, size: 64, elements: !438)
!438 = !{!439, !446}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !437, file: !411, line: 51, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !437, file: !411, line: 51, size: 64, elements: !441)
!441 = !{!442, !445}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !440, file: !411, line: 52, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !253, line: 21, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !255, line: 27, baseType: !13)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !440, file: !411, line: 52, baseType: !443, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !437, file: !411, line: 54, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !253, line: 23, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !255, line: 31, baseType: !449)
!449 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !434, file: !411, line: 56, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !410, file: !411, line: 89, baseType: !374, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !410, file: !411, line: 91, baseType: !455, size: 256, offset: 448)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 256, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !410, file: !411, line: 94, baseType: !459, size: 64, offset: 704)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !460, line: 25, size: 64, elements: !461)
!460 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !460, line: 26, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !459, file: !460, line: 26, size: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !463, file: !460, line: 28, baseType: !448, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !460, line: 30, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !460, line: 30, size: 64, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !467, file: !460, line: 31, baseType: !224, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !467, file: !460, line: 32, baseType: !115, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !410, file: !411, line: 95, baseType: !472, size: 64, offset: 768)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !411, line: 128, size: 1024, align: 512, elements: !475)
!475 = !{!476, !480, !481, !488, !494, !498, !502, !506, !507, !511, !515, !3660, !3664}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !474, file: !411, line: 129, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!115, !409, !13}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !474, file: !411, line: 130, baseType: !477, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !474, file: !411, line: 131, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!115, !485, !487}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !474, file: !411, line: 132, baseType: !489, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!115, !485, !13, !207, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !474, file: !411, line: 134, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!115, !485}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !474, file: !411, line: 135, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!115, !409}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !474, file: !411, line: 136, baseType: !503, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !409}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !474, file: !411, line: 137, baseType: !503, size: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !474, file: !411, line: 138, baseType: !508, size: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !409, !374}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !474, file: !411, line: 139, baseType: !512, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!294, !409, !294, !115}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !474, file: !411, line: 140, baseType: !516, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !3659}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !521, line: 70, size: 256, elements: !522)
!521 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!522 = !{!523, !524, !3655, !3656}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !520, file: !521, line: 71, baseType: !409, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !520, file: !521, line: 72, baseType: !525, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !527)
!527 = !{!528, !529, !532, !533, !534, !538, !1018, !2162, !2202, !2287, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2304, !2308, !2309, !2312, !2315, !2318, !2321, !2322, !2323, !2364, !3588, !3589, !3590, !3591, !3592, !3593, !3596, !3598, !3605, !3606, !3607, !3608, !3609, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !526, file: !20, line: 1191, baseType: !210, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !526, file: !20, line: 1192, baseType: !530, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !211, line: 21, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !211, line: 18, baseType: !443)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !526, file: !20, line: 1193, baseType: !256, size: 8, offset: 160)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !526, file: !20, line: 1194, baseType: !344, size: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !526, file: !20, line: 1195, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !211, line: 52, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !328, line: 88, baseType: !537)
!537 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !526, file: !20, line: 1196, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !541)
!541 = !{!542, !543, !544, !551, !555, !559, !563, !1003, !1004, !1008, !1010, !1011, !1012, !1014, !1015, !1016, !1017}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !540, file: !20, line: 2367, baseType: !207, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !540, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !540, file: !20, line: 2376, baseType: !545, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!115, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !550, line: 32, flags: DIFlagFwdDecl)
!550 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !540, file: !20, line: 2377, baseType: !552, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !540, file: !20, line: 2378, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!409, !539, !115, !207, !191}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !540, file: !20, line: 2380, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !525}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !540, file: !20, line: 2381, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !566)
!566 = !{!567, !568, !569, !573, !595, !621, !622, !623, !624, !628, !633, !634, !654, !710, !711, !712, !713, !714, !717, !718, !719, !727, !731, !758, !779, !780, !781, !782, !791, !814, !815, !818, !821, !822, !823, !824, !825, !826, !827, !832, !833, !961, !969, !970, !971, !973, !977, !978, !982, !983, !984, !985, !987, !988, !989, !996, !997, !998, !1002}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !565, file: !12, line: 403, baseType: !11, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !565, file: !12, line: 406, baseType: !210, size: 128, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !12, line: 409, baseType: !570, size: 448, offset: 192)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 56)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !565, file: !12, line: 417, baseType: !574, size: 768, offset: 640)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !575)
!575 = !{!576, !577, !578, !579, !582}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !574, file: !12, line: 46, baseType: !203, size: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !574, file: !12, line: 47, baseType: !564, size: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !574, file: !12, line: 48, baseType: !217, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !574, file: !12, line: 49, baseType: !580, size: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !574, file: !12, line: 50, baseType: !583, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !585, line: 26, size: 256, elements: !586)
!585 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!586 = !{!587, !588}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !584, file: !585, line: 27, baseType: !13, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !584, file: !585, line: 28, baseType: !589, size: 192, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !590, line: 43, size: 192, elements: !591)
!590 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!591 = !{!592, !594}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !589, file: !590, line: 44, baseType: !593, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !233, line: 23, baseType: !232)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !589, file: !590, line: 45, baseType: !210, size: 128, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !565, file: !12, line: 418, baseType: !596, size: 64, offset: 1408)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !598)
!598 = !{!599, !600, !605, !609, !613, !617}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !597, file: !12, line: 54, baseType: !332, size: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !597, file: !12, line: 55, baseType: !601, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!326, !596, !604, !294}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !597, file: !12, line: 57, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!326, !596, !604, !207, !341}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !597, file: !12, line: 59, baseType: !610, size: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !564, !207}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !597, file: !12, line: 60, baseType: !614, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!115, !564}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !597, file: !12, line: 61, baseType: !618, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !564}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !565, file: !12, line: 419, baseType: !207, size: 64, offset: 1472)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !565, file: !12, line: 420, baseType: !207, size: 64, offset: 1536)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !565, file: !12, line: 421, baseType: !217, size: 64, offset: 1600)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !565, file: !12, line: 424, baseType: !625, size: 64, offset: 1664)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !565, file: !12, line: 425, baseType: !629, size: 64, offset: 1728)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !253, line: 20, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !255, line: 26, baseType: !115)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !565, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !565, file: !12, line: 435, baseType: !635, size: 256, offset: 1856)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !636, line: 66, size: 256, elements: !637)
!636 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!637 = !{!638, !647, !648, !653}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !635, file: !636, line: 67, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !640, line: 13, baseType: !641)
!640 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !211, line: 181, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !211, line: 179, size: 64, elements: !643)
!643 = !{!644}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !642, file: !211, line: 180, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !253, line: 22, baseType: !646)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !255, line: 30, baseType: !537)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !635, file: !636, line: 68, baseType: !593, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !635, file: !636, line: 70, baseType: !649, size: 32, offset: 96)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !650, line: 15, size: 32, elements: !651)
!650 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !649, file: !650, line: 20, baseType: !244, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !635, file: !636, line: 72, baseType: !210, size: 128, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !565, file: !12, line: 437, baseType: !655, size: 64, offset: 2112)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !657, line: 69, size: 320, elements: !658)
!657 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!658 = !{!659, !660, !661, !681, !683, !687, !688}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !656, file: !657, line: 70, baseType: !207, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !656, file: !657, line: 71, baseType: !564, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !656, file: !657, line: 72, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !657, line: 47, size: 256, elements: !665)
!665 = !{!666, !667, !673, !677}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !664, file: !657, line: 49, baseType: !13, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !664, file: !657, line: 51, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!115, !207, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !664, file: !657, line: 53, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!115, !294, !671}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !664, file: !657, line: 55, baseType: !678, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !191}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !656, file: !657, line: 73, baseType: !682, size: 16, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !656, file: !657, line: 74, baseType: !684, size: 8, offset: 208)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !253, line: 16, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !255, line: 20, baseType: !686)
!686 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !657, line: 75, baseType: !252, size: 8, offset: 216)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !656, file: !657, line: 76, baseType: !689, size: 64, offset: 256)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !656, file: !657, line: 76, size: 64, elements: !690)
!690 = !{!691, !692, !699}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !689, file: !657, line: 77, baseType: !191, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !689, file: !657, line: 78, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !657, line: 86, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !695, file: !657, line: 87, baseType: !13, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !695, file: !657, line: 88, baseType: !294, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !689, file: !657, line: 79, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !657, line: 92, size: 256, elements: !703)
!703 = !{!704, !705, !706, !708, !709}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !702, file: !657, line: 94, baseType: !13, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !702, file: !657, line: 95, baseType: !13, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !702, file: !657, line: 96, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !702, file: !657, line: 97, baseType: !662, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !702, file: !657, line: 98, baseType: !191, size: 64, offset: 192)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !565, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !565, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !565, file: !12, line: 442, baseType: !625, size: 64, offset: 2240)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !565, file: !12, line: 443, baseType: !629, size: 64, offset: 2304)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !565, file: !12, line: 444, baseType: !715, size: 8, offset: 2368)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !211, line: 35, baseType: !716)
!716 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !565, file: !12, line: 451, baseType: !715, size: 8, offset: 2376)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !565, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !565, file: !12, line: 455, baseType: !720, size: 64, offset: 2432)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !722, line: 23, size: 96, elements: !723)
!722 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!723 = !{!724, !725, !726}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !721, file: !722, line: 24, baseType: !115, size: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !721, file: !722, line: 24, baseType: !115, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !721, file: !722, line: 24, baseType: !115, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !565, file: !12, line: 458, baseType: !728, size: 64, offset: 2496)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!115}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !565, file: !12, line: 460, baseType: !732, size: 4032, align: 512, offset: 2560)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 4032, elements: !756)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !734)
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !733, file: !12, line: 363, baseType: !191, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !733, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !733, file: !12, line: 367, baseType: !738, size: 448, offset: 128)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !738, file: !12, line: 320, baseType: !564, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !12, line: 321, baseType: !742, size: 384, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !743, line: 40, size: 384, elements: !744)
!743 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !742, file: !743, line: 41, baseType: !746, size: 384, align: 64)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 384, align: 64, elements: !754)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !748, line: 5, size: 192, align: 64, elements: !749)
!748 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!749 = !{!750, !751, !753}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !747, file: !748, line: 6, baseType: !344, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !747, file: !748, line: 7, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !747, file: !748, line: 8, baseType: !752, size: 64, offset: 128)
!754 = !{!755}
!755 = !DISubrange(count: 2)
!756 = !{!757}
!757 = !DISubrange(count: 7)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !565, file: !12, line: 463, baseType: !759, size: 192, offset: 6592)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !760, line: 8, size: 192, elements: !761)
!760 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!761 = !{!762, !763, !765}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !759, file: !760, line: 10, baseType: !13, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !759, file: !760, line: 11, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !759, file: !760, line: 12, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !768, line: 59, size: 48, elements: !769)
!768 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!769 = !{!770, !774, !775, !776, !777, !778}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !767, file: !768, line: 60, baseType: !771, size: 16)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !253, line: 18, baseType: !772)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !255, line: 23, baseType: !773)
!773 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !767, file: !768, line: 61, baseType: !771, size: 16, offset: 16)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !767, file: !768, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !767, file: !768, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !768, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !767, file: !768, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !565, file: !12, line: 465, baseType: !344, size: 64, offset: 6784)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !565, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !565, file: !12, line: 470, baseType: !210, size: 128, offset: 6912)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !565, file: !12, line: 471, baseType: !783, size: 64, offset: 7040)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !785, line: 33, size: 96, elements: !786)
!785 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!786 = !{!787, !788, !789, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !784, file: !785, line: 37, baseType: !115, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !784, file: !785, line: 43, baseType: !115, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !784, file: !785, line: 45, baseType: !264, size: 16, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !785, line: 47, baseType: !264, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !565, file: !12, line: 476, baseType: !792, size: 64, offset: 7104)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !794)
!794 = !{!795, !811, !812, !813}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !793, file: !12, line: 379, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !798, line: 204, baseType: !799)
!798 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !798, line: 197, size: 192, elements: !800)
!800 = !{!801, !803, !804, !805, !807, !809}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !799, file: !798, line: 198, baseType: !802, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !798, line: 21, baseType: !444)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !799, file: !798, line: 199, baseType: !256, size: 8, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !799, file: !798, line: 200, baseType: !256, size: 8, offset: 40)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !799, file: !798, line: 201, baseType: !806, size: 16, offset: 48)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !798, line: 17, baseType: !263)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !799, file: !798, line: 202, baseType: !808, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !798, line: 16, baseType: !448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !799, file: !798, line: 203, baseType: !810, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !798, line: 22, baseType: !448)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !793, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !793, file: !12, line: 381, baseType: !294, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !793, file: !12, line: 382, baseType: !294, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !565, file: !12, line: 477, baseType: !793, size: 256, offset: 7168)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !565, file: !12, line: 480, baseType: !816, size: 64, offset: 7424)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !565, file: !12, line: 483, baseType: !819, size: 64, offset: 7488)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !565, file: !12, line: 488, baseType: !294, size: 64, offset: 7552)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !565, file: !12, line: 492, baseType: !191, size: 64, offset: 7616)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !565, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !565, file: !12, line: 495, baseType: !191, size: 64, offset: 7744)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !565, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !565, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !565, file: !12, line: 500, baseType: !828, size: 64, offset: 7872)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !830, line: 45, baseType: !831)
!830 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !565, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !565, file: !12, line: 504, baseType: !834, size: 64, offset: 8000)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !837, line: 96, size: 192, elements: !838)
!837 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!838 = !{!839, !840, !921, !925}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !836, file: !837, line: 97, baseType: !13, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !836, file: !837, line: 98, baseType: !841, size: 64, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !837, line: 24, size: 3072, elements: !843)
!843 = !{!844, !846, !847, !848, !849, !873, !874, !875, !876, !894, !906, !907, !918, !919, !920}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !842, file: !837, line: 26, baseType: !845, size: 128)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !639, size: 128, elements: !754)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !842, file: !837, line: 27, baseType: !845, size: 128, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !842, file: !837, line: 28, baseType: !115, size: 32, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !842, file: !837, line: 31, baseType: !224, size: 32, align: 512, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !842, file: !837, line: 32, baseType: !850, size: 960, offset: 576)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !851, line: 206, size: 960, elements: !852)
!851 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!852 = !{!853, !862, !867, !869, !870, !872}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !850, file: !851, line: 207, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !211, line: 232, size: 128, align: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !211, line: 233, baseType: !854, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !855, file: !211, line: 234, baseType: !859, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !854}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !850, file: !851, line: 208, baseType: !863, size: 256, offset: 64)
!863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 256, elements: !865)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!865 = !{!866}
!866 = !DISubrange(count: 4)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !850, file: !851, line: 209, baseType: !868, size: 256, offset: 320)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !865)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !850, file: !851, line: 213, baseType: !330, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !850, file: !851, line: 215, baseType: !871, size: 256, offset: 640)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !865)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !850, file: !851, line: 216, baseType: !252, size: 8, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !842, file: !837, line: 33, baseType: !344, size: 64, offset: 1536)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !842, file: !837, line: 34, baseType: !344, size: 64, offset: 1600)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !842, file: !837, line: 35, baseType: !715, size: 8, offset: 1664)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !842, file: !837, line: 36, baseType: !877, size: 320, offset: 1728)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !878, line: 11, size: 320, elements: !879)
!878 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!879 = !{!880, !887, !888, !893}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !877, file: !878, line: 16, baseType: !881, size: 128)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !211, line: 198, size: 128, elements: !882)
!882 = !{!883, !885}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !881, file: !211, line: 199, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !881, file: !211, line: 199, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !877, file: !878, line: 17, baseType: !344, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !877, file: !878, line: 18, baseType: !889, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{null, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !877, file: !878, line: 19, baseType: !443, size: 32, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !842, file: !837, line: 37, baseType: !895, size: 256, offset: 2048)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !896, line: 98, size: 256, elements: !897)
!896 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !895, file: !896, line: 99, baseType: !639, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !895, file: !896, line: 100, baseType: !210, size: 128, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !895, file: !896, line: 101, baseType: !901, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !896, line: 21, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !842, file: !837, line: 38, baseType: !855, size: 128, align: 64, offset: 2304)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !842, file: !837, line: 39, baseType: !908, size: 64, offset: 2432)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !837, line: 49, size: 768, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !916, !917}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !837, line: 50, baseType: !224, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !909, file: !837, line: 51, baseType: !868, size: 256, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !909, file: !837, line: 53, baseType: !868, size: 256, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !909, file: !837, line: 54, baseType: !344, size: 64, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !909, file: !837, line: 55, baseType: !908, size: 64, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !909, file: !837, line: 56, baseType: !115, size: 32, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !909, file: !837, line: 57, baseType: !115, size: 32, offset: 736)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !842, file: !837, line: 40, baseType: !344, size: 64, offset: 2496)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !842, file: !837, line: 42, baseType: !115, size: 32, offset: 2560)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !842, file: !837, line: 43, baseType: !835, size: 64, offset: 2624)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !836, file: !837, line: 99, baseType: !922, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !923, line: 211, elements: !924)
!923 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!924 = !{}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !836, file: !837, line: 100, baseType: !926, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !837, line: 63, size: 3008, elements: !928)
!928 = !{!929, !930, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !960}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !927, file: !837, line: 64, baseType: !908, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !927, file: !837, line: 65, baseType: !931, size: 192, offset: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 192, elements: !295)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !927, file: !837, line: 67, baseType: !115, size: 32, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !927, file: !837, line: 68, baseType: !635, size: 256, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !927, file: !837, line: 69, baseType: !224, size: 32, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !927, file: !837, line: 70, baseType: !635, size: 256, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !927, file: !837, line: 71, baseType: !344, size: 64, offset: 896)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !927, file: !837, line: 72, baseType: !344, size: 64, offset: 960)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !927, file: !837, line: 73, baseType: !344, size: 64, offset: 1024)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !927, file: !837, line: 74, baseType: !344, size: 64, offset: 1088)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !927, file: !837, line: 75, baseType: !344, size: 64, offset: 1152)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !927, file: !837, line: 76, baseType: !344, size: 64, offset: 1216)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !927, file: !837, line: 77, baseType: !344, size: 64, offset: 1280)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !927, file: !837, line: 78, baseType: !344, size: 64, offset: 1344)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !927, file: !837, line: 79, baseType: !715, size: 8, offset: 1408)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !927, file: !837, line: 80, baseType: !344, size: 64, offset: 1472)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !927, file: !837, line: 81, baseType: !635, size: 256, offset: 1536)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !927, file: !837, line: 82, baseType: !584, size: 256, offset: 1792)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !927, file: !837, line: 84, baseType: !244, size: 32, offset: 2048)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !927, file: !837, line: 87, baseType: !344, size: 64, offset: 2112)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !927, file: !837, line: 88, baseType: !344, size: 64, offset: 2176)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !927, file: !837, line: 89, baseType: !952, size: 704, offset: 2240)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !896, line: 111, size: 704, elements: !953)
!953 = !{!954, !955, !956, !959}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !952, file: !896, line: 112, baseType: !895, size: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !952, file: !896, line: 113, baseType: !877, size: 320, offset: 256)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !952, file: !896, line: 116, baseType: !957, size: 64, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !896, line: 18, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !952, file: !896, line: 117, baseType: !115, size: 32, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !927, file: !837, line: 90, baseType: !835, size: 64, offset: 2944)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !565, file: !12, line: 515, baseType: !962, size: 64, offset: 8064)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !964, line: 117, size: 128, elements: !965)
!964 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!965 = !{!966, !967, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !963, file: !964, line: 118, baseType: !631, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !963, file: !964, line: 119, baseType: !631, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !963, file: !964, line: 120, baseType: !330, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !565, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !565, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !565, file: !12, line: 520, baseType: !972, size: 64, offset: 8192)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !565, file: !12, line: 523, baseType: !974, size: 64, offset: 8256)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !565, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !565, file: !12, line: 525, baseType: !979, size: 64, offset: 8384)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !565, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !565, file: !12, line: 533, baseType: !191, size: 64, offset: 8512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !565, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !565, file: !12, line: 535, baseType: !986, size: 64, offset: 8640)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !565, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !565, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !565, file: !12, line: 540, baseType: !990, size: 64, offset: 8768)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !992, line: 32, size: 64, elements: !993)
!992 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !991, file: !992, line: 33, baseType: !631, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !991, file: !992, line: 34, baseType: !631, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !565, file: !12, line: 563, baseType: !210, size: 128, offset: 8832)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !565, file: !12, line: 565, baseType: !210, size: 128, offset: 8960)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !565, file: !12, line: 568, baseType: !999, size: 64, offset: 9088)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{null}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !565, file: !12, line: 570, baseType: !244, size: 32, offset: 9152)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !540, file: !20, line: 2382, baseType: !539, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !540, file: !20, line: 2383, baseType: !1005, size: 64, offset: 512)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !211, line: 194, size: 64, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1005, file: !211, line: 195, baseType: !884, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !540, file: !20, line: 2385, baseType: !1009, offset: 576)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !923, line: 206, elements: !924)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !540, file: !20, line: 2386, baseType: !1009, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !540, file: !20, line: 2387, baseType: !1009, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !540, file: !20, line: 2388, baseType: !1013, offset: 576)
!1013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1009, elements: !295)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !540, file: !20, line: 2390, baseType: !1009, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !540, file: !20, line: 2391, baseType: !1009, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !540, file: !20, line: 2392, baseType: !1009, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !540, file: !20, line: 2393, baseType: !1009, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !526, file: !20, line: 1197, baseType: !1019, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1022)
!1022 = !{!1023, !1027, !1031, !1032, !1036, !1042, !1046, !1047, !1048, !1052, !1056, !1060, !1061, !1062, !1068, !1072, !1073, !2087, !2088, !2089, !2090, !2094, !2098, !2145, !2160, !2161}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1021, file: !20, line: 2058, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!374, !525}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1021, file: !20, line: 2059, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !374}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1021, file: !20, line: 2060, baseType: !1028, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1021, file: !20, line: 2062, baseType: !1033, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{null, !374, !115}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1021, file: !20, line: 2063, baseType: !1037, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!115, !374, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1021, file: !20, line: 2064, baseType: !1043, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!115, !374}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1021, file: !20, line: 2065, baseType: !1028, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1021, file: !20, line: 2066, baseType: !560, size: 64, offset: 448)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1021, file: !20, line: 2067, baseType: !1049, size: 64, offset: 512)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!115, !525, !115}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1021, file: !20, line: 2068, baseType: !1053, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!115, !525, !19}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1021, file: !20, line: 2069, baseType: !1057, size: 64, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!115, !525}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1021, file: !20, line: 2070, baseType: !1053, size: 64, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1021, file: !20, line: 2071, baseType: !1057, size: 64, offset: 768)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1021, file: !20, line: 2072, baseType: !1063, size: 64, offset: 832)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!115, !409, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1021, file: !20, line: 2073, baseType: !1069, size: 64, offset: 896)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!115, !525, !764, !294}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1021, file: !20, line: 2074, baseType: !560, size: 64, offset: 960)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1021, file: !20, line: 2076, baseType: !1074, size: 64, offset: 1024)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!115, !1077, !409}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1079, line: 17, size: 960, elements: !1080)
!1079 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1111, !1112, !2086}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1078, file: !1079, line: 18, baseType: !294, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1078, file: !1079, line: 19, baseType: !341, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1078, file: !1079, line: 20, baseType: !341, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1078, file: !1079, line: 21, baseType: !341, size: 64, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1078, file: !1079, line: 22, baseType: !341, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1078, file: !1079, line: 23, baseType: !535, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1078, file: !1079, line: 24, baseType: !535, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1078, file: !1079, line: 25, baseType: !635, size: 256, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1078, file: !1079, line: 26, baseType: !1090, size: 64, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1079, line: 32, size: 256, elements: !1093)
!1093 = !{!1094, !1099, !1103, !1107}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1092, file: !1079, line: 33, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!191, !1077, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1092, file: !1079, line: 34, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{null, !1077, !191}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1092, file: !1079, line: 35, baseType: !1104, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!191, !1077, !191, !1098}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1092, file: !1079, line: 36, baseType: !1108, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!115, !1077, !191}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1078, file: !1079, line: 27, baseType: !115, size: 32, offset: 768)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1078, file: !1079, line: 28, baseType: !1113, size: 64, offset: 832)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1116)
!1116 = !{!1117, !1128, !1129, !1131, !1132, !1133, !1134, !1135, !1195, !1392, !1401, !1407, !1408, !2076, !2077, !2078, !2079, !2081, !2082, !2085}
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !20, line: 995, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !20, line: 995, size: 128, elements: !1119)
!1119 = !{!1120, !1126, !1127}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1118, file: !20, line: 996, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1122, line: 60, size: 64, elements: !1123)
!1122 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1121, file: !1122, line: 61, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1118, file: !20, line: 997, baseType: !855, size: 128, align: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1118, file: !20, line: 998, baseType: !13, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1115, file: !20, line: 1005, baseType: !224, size: 32, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1115, file: !20, line: 1006, baseType: !1130, size: 32, offset: 160)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !211, line: 156, baseType: !13)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1115, file: !20, line: 1007, baseType: !639, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1115, file: !20, line: 1008, baseType: !635, size: 256, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1115, file: !20, line: 1009, baseType: !535, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1115, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1115, file: !20, line: 1011, baseType: !1136, size: 256, offset: 640)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1137)
!1137 = !{!1138, !1159, !1191, !1192, !1193, !1194}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !20, line: 949, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1140, line: 34, baseType: !1141)
!1140 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1140, line: 25, size: 64, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1141, file: !1140, line: 26, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1145, line: 27, baseType: !1146)
!1145 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1145, line: 13, size: 64, elements: !1147)
!1147 = !{!1148, !1158}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1145, line: 14, baseType: !1149, size: 32)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1146, file: !1145, line: 14, size: 32, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1149, file: !1145, line: 15, baseType: !244, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1149, file: !1145, line: 16, baseType: !1153, size: 32)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1149, file: !1145, line: 16, size: 32, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1153, file: !1145, line: 18, baseType: !252, size: 8)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1153, file: !1145, line: 19, baseType: !1157, size: 24, offset: 8)
!1157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 24, elements: !295)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1146, file: !1145, line: 26, baseType: !236, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1136, file: !20, line: 950, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !25, line: 59, size: 768, elements: !1162)
!1162 = !{!1163, !1168, !1169, !1170, !1172, !1173, !1180, !1181}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1161, file: !25, line: 61, baseType: !1164, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !183, line: 113, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !183, line: 111, size: 32, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1165, file: !183, line: 112, baseType: !244, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1161, file: !25, line: 62, baseType: !13, size: 32, offset: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !25, line: 63, baseType: !224, size: 32, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1161, file: !25, line: 65, baseType: !1171, size: 256, offset: 128)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 256, elements: !865)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1161, file: !25, line: 66, baseType: !1005, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1161, file: !25, line: 68, baseType: !1174, size: 192, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1175, line: 41, baseType: !1176)
!1175 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1175, line: 37, size: 192, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !1175, line: 38, baseType: !224, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1176, file: !1175, line: 39, baseType: !210, size: 128, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1161, file: !25, line: 69, baseType: !855, size: 128, align: 64, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1161, file: !25, line: 70, baseType: !1182, offset: 768)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, elements: !1189)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !25, line: 54, size: 128, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1183, file: !25, line: 55, baseType: !115, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1183, file: !25, line: 56, baseType: !1187, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !25, line: 56, flags: DIFlagFwdDecl)
!1189 = !{!1190}
!1190 = !DISubrange(count: -1)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1136, file: !20, line: 951, baseType: !24, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1136, file: !20, line: 952, baseType: !380, size: 32, offset: 160)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1136, file: !20, line: 952, baseType: !380, size: 32, offset: 192)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1136, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1115, file: !20, line: 1012, baseType: !1196, size: 64, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1199, line: 110, size: 1472, elements: !1200)
!1199 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1217, !1218, !1219, !1220, !1221, !1222, !1337, !1338, !1339, !1340, !1341, !1372, !1375, !1379, !1387}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1198, file: !1199, line: 111, baseType: !639, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1198, file: !1199, line: 112, baseType: !380, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1198, file: !1199, line: 113, baseType: !389, size: 32, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1198, file: !1199, line: 114, baseType: !380, size: 32, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1198, file: !1199, line: 115, baseType: !389, size: 32, offset: 160)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1198, file: !1199, line: 116, baseType: !380, size: 32, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1198, file: !1199, line: 117, baseType: !389, size: 32, offset: 224)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1198, file: !1199, line: 118, baseType: !380, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1198, file: !1199, line: 119, baseType: !389, size: 32, offset: 288)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1198, file: !1199, line: 120, baseType: !13, size: 32, offset: 320)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1198, file: !1199, line: 121, baseType: !1212, size: 64, offset: 384)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1213, line: 24, baseType: !1214)
!1213 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1213, line: 24, size: 64, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1214, file: !1213, line: 24, baseType: !447, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1198, file: !1199, line: 122, baseType: !1212, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1198, file: !1199, line: 123, baseType: !1212, size: 64, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1198, file: !1199, line: 124, baseType: !1212, size: 64, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1198, file: !1199, line: 125, baseType: !1212, size: 64, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1198, file: !1199, line: 127, baseType: !256, size: 8, offset: 704)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1198, file: !1199, line: 129, baseType: !1223, size: 64, offset: 768)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1225, line: 195, size: 1728, elements: !1226)
!1225 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1226 = !{!1227, !1228, !1231, !1236, !1245, !1248, !1249, !1256, !1257, !1258, !1259, !1262, !1263, !1264, !1265, !1266, !1301, !1322}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1224, file: !1225, line: 196, baseType: !1164, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1224, file: !1225, line: 197, baseType: !1229, size: 32, offset: 32)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1225, line: 28, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !211, line: 104, baseType: !631)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !1225, line: 198, baseType: !1232, size: 192, offset: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !1225, line: 198, size: 192, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1232, file: !1225, line: 199, baseType: !210, size: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1232, file: !1225, line: 200, baseType: !747, size: 192, align: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1224, file: !1225, line: 205, baseType: !1237, size: 320, offset: 256)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1238, line: 48, size: 320, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1239 = !{!1240, !1241, !1242, !1243, !1244}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1237, file: !1238, line: 49, baseType: !639, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1237, file: !1238, line: 55, baseType: !639, size: 64, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1237, file: !1238, line: 57, baseType: !649, size: 32, offset: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1237, file: !1238, line: 59, baseType: !593, size: 32, offset: 160)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1237, file: !1238, line: 60, baseType: !210, size: 128, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1224, file: !1225, line: 206, baseType: !1246, size: 64, offset: 576)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1225, line: 206, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1224, file: !1225, line: 207, baseType: !191, size: 64, offset: 640)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !1225, line: 208, baseType: !1250, size: 64, offset: 704)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !1225, line: 208, size: 64, elements: !1251)
!1251 = !{!1252, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1250, file: !1225, line: 209, baseType: !1253, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1254, line: 8, baseType: !646)
!1254 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1250, file: !1225, line: 210, baseType: !1253, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1224, file: !1225, line: 212, baseType: !1253, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1224, file: !1225, line: 213, baseType: !380, size: 32, offset: 832)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1224, file: !1225, line: 214, baseType: !389, size: 32, offset: 864)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1224, file: !1225, line: 215, baseType: !1260, size: 32, offset: 896)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1225, line: 31, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !211, line: 110, baseType: !443)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1224, file: !1225, line: 216, baseType: !264, size: 16, offset: 928)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1224, file: !1225, line: 217, baseType: !264, size: 16, offset: 944)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1224, file: !1225, line: 221, baseType: !773, size: 16, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1224, file: !1225, line: 228, baseType: !344, size: 64, offset: 1024)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !1225, line: 245, baseType: !1267, size: 320, offset: 1088)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !1225, line: 245, size: 320, elements: !1268)
!1268 = !{!1269, !1293}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1267, file: !1225, line: 246, baseType: !1270, size: 320)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1225, line: 114, size: 320, elements: !1271)
!1271 = !{!1272, !1273, !1282, !1285, !1292}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1270, file: !1225, line: 116, baseType: !344, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !1225, line: 117, baseType: !1274, size: 64, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !1225, line: 117, size: 64, elements: !1275)
!1275 = !{!1276, !1281}
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !1225, line: 118, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !1225, line: 118, size: 64, elements: !1278)
!1278 = !{!1279, !1280}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1277, file: !1225, line: 120, baseType: !262, size: 16)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1277, file: !1225, line: 121, baseType: !3, size: 48, offset: 16)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1274, file: !1225, line: 127, baseType: !344, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1270, file: !1225, line: 129, baseType: !1283, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1225, line: 102, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1270, file: !1225, line: 130, baseType: !1286, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1225, line: 108, size: 192, elements: !1288)
!1288 = !{!1289, !1290, !1291}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1287, file: !1225, line: 109, baseType: !855, size: 128, align: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1287, file: !1225, line: 110, baseType: !1164, size: 32, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1287, file: !1225, line: 111, baseType: !715, size: 8, offset: 160)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1270, file: !1225, line: 131, baseType: !207, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1225, line: 247, baseType: !1294, size: 320)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1267, file: !1225, line: 247, size: 320, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1294, file: !1225, line: 248, baseType: !344, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1294, file: !1225, line: 249, baseType: !344, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1294, file: !1225, line: 250, baseType: !1283, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1294, file: !1225, line: 251, baseType: !1286, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1294, file: !1225, line: 252, baseType: !294, size: 64, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !1225, line: 260, baseType: !1302, size: 256, offset: 1408)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1224, file: !1225, line: 260, size: 256, elements: !1303)
!1303 = !{!1304, !1310}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1302, file: !1225, line: 261, baseType: !1305, size: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1225, line: 134, size: 256, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1305, file: !1225, line: 135, baseType: !191, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1305, file: !1225, line: 136, baseType: !1309, size: 256)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !865)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !1225, line: 262, baseType: !1311, size: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !1225, line: 262, size: 256, elements: !1312)
!1312 = !{!1313, !1314}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1311, file: !1225, line: 264, baseType: !210, size: 128)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1311, file: !1225, line: 265, baseType: !1315, size: 128, offset: 128)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1316, line: 22, size: 128, elements: !1317)
!1316 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1317 = !{!1318, !1321}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1315, file: !1316, line: 23, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1316, line: 23, flags: DIFlagFwdDecl)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1315, file: !1316, line: 24, baseType: !344, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1224, file: !1225, line: 280, baseType: !1323, size: 64, offset: 1664)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1225, line: 176, size: 192, elements: !1325)
!1325 = !{!1326, !1335, !1336}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1324, file: !1225, line: 177, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1225, line: 171, baseType: !1328)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!115, !1223, !1331, !1333, !1223}
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1305)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1324, file: !1225, line: 178, baseType: !1223, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1324, file: !1225, line: 179, baseType: !1283, size: 64, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1198, file: !1199, line: 130, baseType: !1223, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1198, file: !1199, line: 131, baseType: !1223, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1198, file: !1199, line: 132, baseType: !1223, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1198, file: !1199, line: 135, baseType: !191, size: 64, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1198, file: !1199, line: 137, baseType: !1342, size: 64, offset: 1088)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1344, line: 14, size: 1088, elements: !1345)
!1344 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1345 = !{!1346, !1347, !1356, !1357, !1358, !1359, !1360, !1361}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1343, file: !1344, line: 15, baseType: !1164, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1343, file: !1344, line: 17, baseType: !1348, size: 320, offset: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1349, line: 22, size: 320, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1350 = !{!1351, !1352, !1353, !1354}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !1349, line: 23, baseType: !593, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1348, file: !1349, line: 24, baseType: !645, size: 64, offset: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1348, file: !1349, line: 26, baseType: !210, size: 128, offset: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1348, file: !1349, line: 28, baseType: !1355, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1343, file: !1344, line: 19, baseType: !344, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1343, file: !1344, line: 20, baseType: !639, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1343, file: !1344, line: 23, baseType: !881, size: 128, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1343, file: !1344, line: 24, baseType: !380, size: 32, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1343, file: !1344, line: 29, baseType: !639, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1343, file: !1344, line: 36, baseType: !1362, size: 320, offset: 768)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1363, line: 15, size: 320, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1362, file: !1363, line: 16, baseType: !593, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1362, file: !1363, line: 18, baseType: !115, size: 32, offset: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1362, file: !1363, line: 19, baseType: !115, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1362, file: !1363, line: 20, baseType: !115, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1362, file: !1363, line: 21, baseType: !115, size: 32, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1362, file: !1363, line: 22, baseType: !344, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1362, file: !1363, line: 23, baseType: !344, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1198, file: !1199, line: 138, baseType: !1373, size: 64, offset: 1152)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !33, line: 901, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1198, file: !1199, line: 139, baseType: !1376, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1378, line: 16, flags: DIFlagFwdDecl)
!1378 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1198, file: !1199, line: 140, baseType: !1380, size: 64, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1199, line: 25, size: 64, elements: !1382)
!1382 = !{!1383, !1384, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1381, file: !1199, line: 26, baseType: !244, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1381, file: !1199, line: 27, baseType: !115, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1381, file: !1199, line: 28, baseType: !1386, offset: 64)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, elements: !1189)
!1387 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1199, line: 142, baseType: !1388, size: 128, offset: 1344)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !1199, line: 142, size: 128, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1388, file: !1199, line: 143, baseType: !115, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1388, file: !1199, line: 144, baseType: !855, size: 128, align: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1115, file: !20, line: 1013, baseType: !1393, size: 256, offset: 960)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1393, file: !20, line: 971, baseType: !344, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1393, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1393, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1393, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1393, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1393, file: !20, line: 976, baseType: !535, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1115, file: !20, line: 1014, baseType: !1402, size: 128, offset: 1216)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1403, line: 8, size: 128, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1402, file: !1403, line: 9, baseType: !519, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1402, file: !1403, line: 10, baseType: !409, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1115, file: !20, line: 1015, baseType: !374, size: 64, offset: 1344)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1115, file: !20, line: 1016, baseType: !1409, size: 64, offset: 1408)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !1412)
!1412 = !{!1413, !1414, !1419, !1423, !1427, !1512, !1513, !1519, !1532, !1549, !1553, !1554, !1997, !1998, !2002, !2007, !2008, !2012, !2016, !2022, !2023, !2027, !2028, !2035, !2039, !2043, !2049, !2053, !2057, !2061, !2065, !2066, !2072}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1411, file: !20, line: 1915, baseType: !564, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1411, file: !20, line: 1916, baseType: !1415, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!535, !1418, !535, !115}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1411, file: !20, line: 1917, baseType: !1420, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!326, !1418, !294, !341, !1098}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1411, file: !20, line: 1918, baseType: !1424, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!326, !1418, !207, !341, !1098}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1411, file: !20, line: 1919, baseType: !1428, size: 64, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!326, !1431, !1453}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1440, !1441, !1442, !1443}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1432, file: !20, line: 374, baseType: !1418, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1432, file: !20, line: 375, baseType: !535, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1432, file: !20, line: 376, baseType: !1437, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{null, !1431, !330}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1432, file: !20, line: 377, baseType: !191, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1432, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1432, file: !20, line: 379, baseType: !262, size: 16, offset: 288)
!1443 = !DIDerivedType(tag: DW_TAG_member, scope: !1432, file: !20, line: 380, baseType: !1444, size: 64, offset: 320)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !20, line: 380, size: 64, elements: !1445)
!1445 = !{!1446, !1449}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1444, file: !20, line: 386, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1444, file: !20, line: 395, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!326, !191}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1455, line: 41, size: 320, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1467, !1507}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1454, file: !1455, line: 42, baseType: !252, size: 8)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1454, file: !1455, line: 43, baseType: !715, size: 8, offset: 8)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1454, file: !1455, line: 44, baseType: !715, size: 8, offset: 16)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1454, file: !1455, line: 45, baseType: !715, size: 8, offset: 24)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1454, file: !1455, line: 46, baseType: !715, size: 8, offset: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 47, baseType: !1463, size: 64, offset: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 47, size: 64, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1463, file: !1455, line: 48, baseType: !341, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1463, file: !1455, line: 49, baseType: !115, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 61, baseType: !1468, size: 128, offset: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 61, size: 128, elements: !1469)
!1469 = !{!1470, !1476}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1468, file: !1455, line: 67, baseType: !1471, size: 128)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1472, line: 17, size: 128, elements: !1473)
!1472 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1471, file: !1472, line: 19, baseType: !191, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1471, file: !1472, line: 20, baseType: !342, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1455, line: 68, baseType: !1477, size: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1468, file: !1455, line: 68, size: 128, elements: !1478)
!1478 = !{!1479, !1506}
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1477, file: !1455, line: 69, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1477, file: !1455, line: 69, size: 64, elements: !1481)
!1481 = !{!1482, !1485, !1492, !1496, !1505}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1480, file: !1455, line: 71, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1471)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1480, file: !1455, line: 72, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1455, line: 17, size: 128, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1488, file: !1455, line: 18, baseType: !191, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1488, file: !1455, line: 19, baseType: !341, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1480, file: !1455, line: 73, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1495)
!1495 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1455, line: 73, flags: DIFlagFwdDecl)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1480, file: !1455, line: 74, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1499, line: 296, size: 128, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1500 = !{!1501, !1502, !1504}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1498, file: !1499, line: 297, baseType: !224, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1498, file: !1499, line: 299, baseType: !1503, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !211, line: 154, baseType: !13)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1498, file: !1499, line: 300, baseType: !191, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1480, file: !1455, line: 75, baseType: !191, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1477, file: !1455, line: 77, baseType: !341, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1455, line: 80, baseType: !1508, size: 64, offset: 256)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !1455, line: 80, size: 64, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1508, file: !1455, line: 81, baseType: !344, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1508, file: !1455, line: 82, baseType: !535, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1411, file: !20, line: 1920, baseType: !1428, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1411, file: !20, line: 1921, baseType: !1514, size: 64, offset: 384)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!115, !1431, !1517, !13}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1411, file: !20, line: 1923, baseType: !1520, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!115, !1418, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !1525)
!1525 = !{!1526, !1531}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1524, file: !20, line: 1859, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !1528)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!715, !1523, !207, !115, !535, !447, !13}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1524, file: !20, line: 1860, baseType: !535, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1411, file: !20, line: 1924, baseType: !1533, size: 64, offset: 512)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!1536, !1418, !1538}
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1537, line: 59, baseType: !13)
!1537 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1540, line: 37, size: 128, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1541 = !{!1542, !1548}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1539, file: !1540, line: 38, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1540, line: 31, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1418, !1547, !1538}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1539, file: !1540, line: 39, baseType: !1536, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1411, file: !20, line: 1925, baseType: !1550, size: 64, offset: 576)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!330, !1418, !13, !344}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1411, file: !20, line: 1926, baseType: !1550, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1411, file: !20, line: 1927, baseType: !1555, size: 64, offset: 704)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!115, !1418, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !33, line: 625, size: 1344, elements: !1560)
!1560 = !{!1561, !1570, !1725, !1731, !1738, !1739, !1744, !1745, !1750, !1751, !1754, !1990, !1991, !1992, !1993, !1994, !1995}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !33, line: 628, baseType: !1562, size: 128)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !33, line: 628, size: 128, elements: !1563)
!1563 = !{!1564, !1569}
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1562, file: !33, line: 629, baseType: !1565, size: 128)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1562, file: !33, line: 629, size: 128, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1565, file: !33, line: 631, baseType: !344, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1565, file: !33, line: 632, baseType: !344, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1562, file: !33, line: 635, baseType: !855, size: 128, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1559, file: !33, line: 639, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !33, line: 733, size: 10240, elements: !1573)
!1573 = !{!1574, !1723}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !33, line: 734, baseType: !1575, size: 10240)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !33, line: 734, size: 10240, elements: !1576)
!1576 = !{!1577, !1581, !1594, !1598, !1599, !1600, !1601, !1602, !1603, !1612, !1613, !1614, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1653, !1655, !1658, !1703, !1704, !1705, !1708, !1709, !1710, !1713, !1714, !1715, !1721, !1722}
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !33, line: 739, baseType: !1578, size: 512, align: 512)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !33, line: 739, size: 512, align: 512, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1578, file: !33, line: 747, baseType: !244, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1575, file: !33, line: 750, baseType: !1582, size: 128, offset: 512)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1583, line: 218, size: 128, elements: !1584)
!1583 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1584 = !{!1585, !1592, !1593}
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1583, line: 219, baseType: !1586, size: 32)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !1583, line: 219, size: 32, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1586, file: !1583, line: 220, baseType: !224, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1586, file: !1583, line: 221, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1583, line: 197, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1583, line: 197, elements: !924)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1582, file: !1583, line: 223, baseType: !13, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1582, file: !1583, line: 224, baseType: !191, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1575, file: !33, line: 752, baseType: !1595, size: 64, offset: 640)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!344, !1418, !344, !344, !344, !344}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1575, file: !33, line: 756, baseType: !344, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1575, file: !33, line: 757, baseType: !344, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1575, file: !33, line: 760, baseType: !344, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1575, file: !33, line: 761, baseType: !344, size: 64, offset: 896)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1575, file: !33, line: 763, baseType: !344, size: 64, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1575, file: !33, line: 764, baseType: !1604, size: 64, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1606, line: 299, baseType: !1607)
!1606 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1606, line: 299, size: 64, elements: !1608)
!1608 = !{!1609}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1607, file: !1606, line: 299, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1611, line: 18, baseType: !344)
!1611 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1575, file: !33, line: 773, baseType: !244, size: 32, offset: 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1575, file: !33, line: 785, baseType: !244, size: 32, offset: 1120)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1575, file: !33, line: 795, baseType: !1615, size: 64, offset: 1152)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !33, line: 726, size: 128, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1616, file: !33, line: 727, baseType: !447, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1616, file: !33, line: 728, baseType: !115, size: 32, offset: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1575, file: !33, line: 801, baseType: !344, size: 64, offset: 1216)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1575, file: !33, line: 804, baseType: !639, size: 64, offset: 1280)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1575, file: !33, line: 806, baseType: !115, size: 32, offset: 1344)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1575, file: !33, line: 808, baseType: !224, size: 32, offset: 1376)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1575, file: !33, line: 823, baseType: !1237, size: 320, offset: 1408)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1575, file: !33, line: 825, baseType: !210, size: 128, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1575, file: !33, line: 845, baseType: !115, size: 32, offset: 1856)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1575, file: !33, line: 849, baseType: !344, size: 64, offset: 1920)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1575, file: !33, line: 850, baseType: !344, size: 64, offset: 1984)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1575, file: !33, line: 852, baseType: !344, size: 64, offset: 2048)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1575, file: !33, line: 853, baseType: !344, size: 64, offset: 2112)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1575, file: !33, line: 854, baseType: !641, size: 64, offset: 2176)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1575, file: !33, line: 855, baseType: !344, size: 64, offset: 2240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1575, file: !33, line: 856, baseType: !344, size: 64, offset: 2304)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1575, file: !33, line: 857, baseType: !344, size: 64, offset: 2368)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1575, file: !33, line: 858, baseType: !344, size: 64, offset: 2432)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1575, file: !33, line: 865, baseType: !420, size: 32, offset: 2496)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1575, file: !33, line: 867, baseType: !224, size: 32, offset: 2528)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1575, file: !33, line: 869, baseType: !344, size: 64, offset: 2560)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1575, file: !33, line: 869, baseType: !344, size: 64, offset: 2624)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1575, file: !33, line: 869, baseType: !344, size: 64, offset: 2688)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1575, file: !33, line: 869, baseType: !344, size: 64, offset: 2752)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1575, file: !33, line: 870, baseType: !344, size: 64, offset: 2816)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1575, file: !33, line: 870, baseType: !344, size: 64, offset: 2880)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1575, file: !33, line: 870, baseType: !344, size: 64, offset: 2944)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1575, file: !33, line: 871, baseType: !344, size: 64, offset: 3008)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1575, file: !33, line: 871, baseType: !344, size: 64, offset: 3072)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1575, file: !33, line: 871, baseType: !344, size: 64, offset: 3136)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1575, file: !33, line: 871, baseType: !344, size: 64, offset: 3200)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1575, file: !33, line: 873, baseType: !1650, size: 3328, offset: 3264)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 3328, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 52)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1575, file: !33, line: 875, baseType: !1654, size: 1280, offset: 6592)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1348, size: 1280, elements: !865)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1575, file: !33, line: 877, baseType: !1656, size: 64, offset: 7872)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !33, line: 877, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1575, file: !33, line: 880, baseType: !1659, size: 1088, offset: 7936)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1660, line: 72, baseType: !1661)
!1660 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1660, line: 23, size: 1088, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1670, !1671, !1672, !1673, !1700, !1701, !1702}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1661, file: !1660, line: 28, baseType: !447, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1661, file: !1660, line: 38, baseType: !641, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1661, file: !1660, line: 40, baseType: !344, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1661, file: !1660, line: 43, baseType: !1237, size: 320, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1661, file: !1660, line: 44, baseType: !1668, size: 64, offset: 512)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1660, line: 44, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1661, file: !1660, line: 48, baseType: !344, size: 64, offset: 576)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1661, file: !1660, line: 59, baseType: !635, size: 256, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1661, file: !1660, line: 60, baseType: !191, size: 64, offset: 896)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1661, file: !1660, line: 61, baseType: !1674, size: 64, offset: 960)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1676)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1677, line: 13, size: 1216, elements: !1678)
!1677 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1676, file: !1677, line: 14, baseType: !191, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1676, file: !1677, line: 15, baseType: !344, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1676, file: !1677, line: 17, baseType: !344, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1676, file: !1677, line: 17, baseType: !344, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1676, file: !1677, line: 18, baseType: !344, size: 64, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1676, file: !1677, line: 18, baseType: !344, size: 64, offset: 320)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1676, file: !1677, line: 19, baseType: !1686, size: 64, offset: 384)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1676, file: !1677, line: 21, baseType: !330, size: 64, offset: 448)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1676, file: !1677, line: 23, baseType: !330, size: 64, offset: 512)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1676, file: !1677, line: 24, baseType: !330, size: 64, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1676, file: !1677, line: 25, baseType: !330, size: 64, offset: 640)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1676, file: !1677, line: 26, baseType: !330, size: 64, offset: 704)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1676, file: !1677, line: 27, baseType: !330, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1676, file: !1677, line: 28, baseType: !330, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1676, file: !1677, line: 29, baseType: !330, size: 64, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1676, file: !1677, line: 30, baseType: !330, size: 64, offset: 960)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1676, file: !1677, line: 31, baseType: !330, size: 64, offset: 1024)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1676, file: !1677, line: 32, baseType: !330, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1676, file: !1677, line: 33, baseType: !330, size: 64, offset: 1152)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1661, file: !1660, line: 63, baseType: !244, size: 32, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1661, file: !1660, line: 69, baseType: !262, size: 16, offset: 1056)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1661, file: !1660, line: 70, baseType: !771, size: 16, offset: 1072)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !33, line: 882, baseType: !344, size: 64, offset: 9024)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1575, file: !33, line: 885, baseType: !224, size: 32, offset: 9088)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1575, file: !33, line: 886, baseType: !1706, size: 64, offset: 9152)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !33, line: 732, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1575, file: !33, line: 901, baseType: !1373, size: 64, offset: 9216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1575, file: !33, line: 904, baseType: !1418, size: 64, offset: 9280)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1575, file: !33, line: 906, baseType: !1711, size: 64, offset: 9344)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !33, line: 906, flags: DIFlagFwdDecl)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1575, file: !33, line: 930, baseType: !244, size: 32, offset: 9408)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1575, file: !33, line: 933, baseType: !244, size: 32, offset: 9440)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1575, file: !33, line: 935, baseType: !1716, size: 64, offset: 9472)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1716, file: !74, line: 104, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1575, file: !33, line: 940, baseType: !639, size: 64, offset: 9536)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1575, file: !33, line: 942, baseType: !895, size: 256, offset: 9600)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1572, file: !33, line: 986, baseType: !1724, offset: 10240)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, elements: !1189)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1559, file: !33, line: 640, baseType: !1726, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1606, line: 297, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1606, line: 297, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1727, file: !1606, line: 297, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1611, line: 19, baseType: !344)
!1731 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !33, line: 646, baseType: !1732, size: 64, offset: 256)
!1732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !33, line: 646, size: 64, elements: !1733)
!1733 = !{!1734, !1737}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1732, file: !33, line: 647, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !33, line: 542, baseType: !344)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1732, file: !33, line: 648, baseType: !1736, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1559, file: !33, line: 666, baseType: !115, size: 32, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1559, file: !33, line: 667, baseType: !1740, size: 64, offset: 384)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !33, line: 579, size: 320, elements: !1742)
!1742 = !{!1743}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !33, line: 580, baseType: !1237, size: 320)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1559, file: !33, line: 670, baseType: !715, size: 8, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1559, file: !33, line: 681, baseType: !1746, size: 256, offset: 512)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1559, file: !33, line: 678, size: 256, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1746, file: !33, line: 679, baseType: !747, size: 192, align: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1746, file: !33, line: 680, baseType: !344, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1559, file: !33, line: 689, baseType: !210, size: 128, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1559, file: !33, line: 691, baseType: !1752, size: 64, offset: 896)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !33, line: 691, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1559, file: !33, line: 694, baseType: !1755, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1758, line: 563, size: 1024, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1759 = !{!1760, !1764, !1765, !1769, !1773, !1777, !1954, !1958, !1962, !1966, !1967, !1968, !1972, !1976, !1982, !1986}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1757, file: !1758, line: 564, baseType: !1761, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1558}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1757, file: !1758, line: 569, baseType: !1761, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1757, file: !1758, line: 571, baseType: !1766, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!115, !1558, !344}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1757, file: !1758, line: 572, baseType: !1770, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!115, !1558}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1757, file: !1758, line: 578, baseType: !1774, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!115, !1558, !344, !344, !344}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1757, file: !1758, line: 580, baseType: !1778, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !33, line: 1184, baseType: !13)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1758, line: 512, size: 896, elements: !1784)
!1784 = !{!1785, !1793, !1794, !1801, !1808, !1818, !1947, !1948, !1950, !1952}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1758, line: 513, baseType: !1786, size: 320)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !1758, line: 513, size: 320, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1786, file: !1758, line: 514, baseType: !1558, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1786, file: !1758, line: 515, baseType: !1503, size: 32, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1786, file: !1758, line: 516, baseType: !344, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1786, file: !1758, line: 517, baseType: !344, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1786, file: !1758, line: 518, baseType: !344, size: 64, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1783, file: !1758, line: 520, baseType: !32, size: 32, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1783, file: !1758, line: 522, baseType: !1795, size: 64, offset: 384)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1611, line: 22, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1611, line: 22, size: 64, elements: !1798)
!1798 = !{!1799}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1797, file: !1611, line: 22, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1611, line: 15, baseType: !344)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1783, file: !1758, line: 524, baseType: !1802, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1606, line: 372, baseType: !1804)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1606, line: 372, size: 64, elements: !1805)
!1805 = !{!1806}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1804, file: !1606, line: 372, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1611, line: 16, baseType: !344)
!1808 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !1758, line: 527, baseType: !1809, size: 64, offset: 512)
!1809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1783, file: !1758, line: 527, size: 64, elements: !1810)
!1810 = !{!1811, !1817}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1809, file: !1758, line: 528, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1611, line: 21, baseType: !1813)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1611, line: 21, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1813, file: !1611, line: 21, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1611, line: 14, baseType: !344)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1809, file: !1758, line: 529, baseType: !1796, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1783, file: !1758, line: 534, baseType: !1819, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !33, line: 74, size: 512, align: 128, elements: !1821)
!1821 = !{!1822, !1823, !1941, !1946}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !33, line: 75, baseType: !344, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !33, line: 83, baseType: !1824, size: 320, offset: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !33, line: 83, size: 320, elements: !1825)
!1825 = !{!1826, !1847, !1861, !1865, !1940}
!1826 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !33, line: 84, baseType: !1827, size: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !33, line: 84, size: 320, elements: !1828)
!1828 = !{!1829, !1840, !1841, !1846}
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !33, line: 90, baseType: !1830, size: 128)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !33, line: 90, size: 128, elements: !1831)
!1831 = !{!1832, !1833, !1838, !1839}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1830, file: !33, line: 91, baseType: !210, size: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !33, line: 94, baseType: !1834, size: 128)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1830, file: !33, line: 94, size: 128, elements: !1835)
!1835 = !{!1836, !1837}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1834, file: !33, line: 96, baseType: !191, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1834, file: !33, line: 98, baseType: !13, size: 32, offset: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1830, file: !33, line: 102, baseType: !210, size: 128)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1830, file: !33, line: 103, baseType: !210, size: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1827, file: !33, line: 106, baseType: !370, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !33, line: 107, baseType: !1842, size: 64, offset: 192)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1827, file: !33, line: 107, size: 64, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1842, file: !33, line: 108, baseType: !344, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1842, file: !33, line: 109, baseType: !344, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1827, file: !33, line: 117, baseType: !344, size: 64, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !33, line: 119, baseType: !1848, size: 320)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !33, line: 119, size: 320, elements: !1849)
!1849 = !{!1850, !1851, !1854, !1855, !1856}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1848, file: !33, line: 124, baseType: !344, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1848, file: !33, line: 125, baseType: !1852, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !33, line: 125, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1848, file: !33, line: 126, baseType: !344, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1848, file: !33, line: 127, baseType: !344, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !33, line: 128, baseType: !1857, size: 64, offset: 256)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !33, line: 128, size: 64, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1857, file: !33, line: 133, baseType: !344, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1857, file: !33, line: 138, baseType: !639, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !33, line: 141, baseType: !1862, size: 64)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !33, line: 141, size: 64, elements: !1863)
!1863 = !{!1864}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1862, file: !33, line: 142, baseType: !344, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1824, file: !33, line: 144, baseType: !1866, size: 128)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !33, line: 144, size: 128, elements: !1867)
!1867 = !{!1868, !1939}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1866, file: !33, line: 146, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !49, line: 126, size: 1216, elements: !1871)
!1871 = !{!1872, !1882, !1903, !1904, !1905, !1906, !1907, !1921, !1922, !1923}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1870, file: !49, line: 127, baseType: !1873, size: 384)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !49, line: 21, size: 384, elements: !1874)
!1874 = !{!1875, !1876, !1878, !1879, !1880, !1881}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1873, file: !49, line: 22, baseType: !344, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1873, file: !49, line: 23, baseType: !1877, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1873, file: !49, line: 24, baseType: !1877, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1873, file: !49, line: 25, baseType: !344, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1873, file: !49, line: 26, baseType: !344, size: 64, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1873, file: !49, line: 27, baseType: !344, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1870, file: !49, line: 128, baseType: !1883, size: 128, offset: 384)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1884, line: 105, size: 128, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1883, file: !1884, line: 110, baseType: !344, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1883, file: !1884, line: 118, baseType: !1888, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1884, line: 95, size: 448, elements: !1890)
!1890 = !{!1891, !1892, !1898, !1899, !1900, !1901, !1902}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1889, file: !1884, line: 96, baseType: !639, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1889, file: !1884, line: 97, baseType: !1893, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1884, line: 60, baseType: !1895)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{null, !1897}
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1889, file: !1884, line: 98, baseType: !1893, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1889, file: !1884, line: 99, baseType: !715, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1889, file: !1884, line: 100, baseType: !715, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1889, file: !1884, line: 101, baseType: !855, size: 128, align: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1889, file: !1884, line: 102, baseType: !1897, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1870, file: !49, line: 129, baseType: !584, size: 256, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1870, file: !49, line: 130, baseType: !48, size: 32, offset: 768)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !49, line: 131, baseType: !13, size: 32, offset: 800)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1870, file: !49, line: 132, baseType: !344, size: 64, offset: 832)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1870, file: !49, line: 133, baseType: !1908, size: 64, offset: 896)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !49, line: 77, size: 192, elements: !1911)
!1911 = !{!1912, !1916, !1917}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1910, file: !49, line: 83, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1819}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1910, file: !49, line: 89, baseType: !1778, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1910, file: !49, line: 100, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!115, !1869, !344, !344, !115}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1870, file: !49, line: 134, baseType: !191, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1870, file: !49, line: 135, baseType: !115, size: 32, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !49, line: 136, baseType: !1924, size: 128, offset: 1088)
!1924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1870, file: !49, line: 136, size: 128, elements: !1925)
!1925 = !{!1926, !1932}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1924, file: !49, line: 137, baseType: !1927, size: 128)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1928, line: 6, size: 128, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1929 = !{!1930, !1931}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1927, file: !1928, line: 7, baseType: !447, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1927, file: !1928, line: 8, baseType: !447, size: 64, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1924, file: !49, line: 138, baseType: !1933)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1924, file: !49, line: 138, elements: !1934)
!1934 = !{!1935, !1937}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1933, file: !49, line: 138, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !49, line: 138, elements: !924)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1933, file: !49, line: 138, baseType: !1938)
!1938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1927, elements: !1189)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1866, file: !33, line: 147, baseType: !191, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1824, file: !33, line: 161, baseType: !855, size: 128, align: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1820, file: !33, line: 164, baseType: !1942, size: 32, offset: 384)
!1942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1820, file: !33, line: 164, size: 32, elements: !1943)
!1943 = !{!1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1942, file: !33, line: 169, baseType: !244, size: 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1942, file: !33, line: 177, baseType: !13, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1820, file: !33, line: 181, baseType: !244, size: 32, offset: 416)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1783, file: !1758, line: 535, baseType: !1819, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1783, file: !1758, line: 541, baseType: !1949, size: 64, offset: 704)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1783, file: !1758, line: 545, baseType: !1951, size: 64, offset: 768)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1783, file: !1758, line: 549, baseType: !1953, size: 64, offset: 832)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1606, line: 520, baseType: !1819)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1757, file: !1758, line: 581, baseType: !1955, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1781, !1782, !13}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1757, file: !1758, line: 582, baseType: !1959, size: 64, offset: 448)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1781, !1782, !344, !344}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1757, file: !1758, line: 584, baseType: !1963, size: 64, offset: 512)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!344, !1558}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1757, file: !1758, line: 588, baseType: !1778, size: 64, offset: 576)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1757, file: !1758, line: 591, baseType: !1778, size: 64, offset: 640)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1757, file: !1758, line: 597, baseType: !1969, size: 64, offset: 704)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!115, !1558, !344, !191, !115, !115}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !1758, line: 603, baseType: !1973, size: 64, offset: 768)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!207, !1558}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1757, file: !1758, line: 613, baseType: !1977, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!115, !1558, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !33, line: 717, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1757, file: !1758, line: 625, baseType: !1983, size: 64, offset: 896)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!1980, !1558, !344}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1757, file: !1758, line: 633, baseType: !1987, size: 64, offset: 960)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!1819, !1558, !344}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1559, file: !33, line: 697, baseType: !344, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1559, file: !33, line: 699, baseType: !1418, size: 64, offset: 1088)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1559, file: !33, line: 700, baseType: !191, size: 64, offset: 1152)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1559, file: !33, line: 711, baseType: !639, size: 64, offset: 1216)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1559, file: !33, line: 717, baseType: !1980, size: 64, offset: 1280)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1559, file: !33, line: 722, baseType: !1996, offset: 1344)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !33, line: 570, elements: !924)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1411, file: !20, line: 1928, baseType: !344, size: 64, offset: 768)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1411, file: !20, line: 1929, baseType: !1999, size: 64, offset: 832)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!115, !374, !1418}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1411, file: !20, line: 1930, baseType: !2003, size: 64, offset: 896)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!115, !1418, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !191)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1411, file: !20, line: 1931, baseType: !1999, size: 64, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1411, file: !20, line: 1932, baseType: !2009, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!115, !1418, !535, !535, !115}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1411, file: !20, line: 1933, baseType: !2013, size: 64, offset: 1088)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!115, !115, !1418, !115}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !20, line: 1934, baseType: !2017, size: 64, offset: 1152)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!115, !1418, !115, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1411, file: !20, line: 1935, baseType: !1595, size: 64, offset: 1216)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1411, file: !20, line: 1936, baseType: !2024, size: 64, offset: 1280)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!115, !115}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1411, file: !20, line: 1937, baseType: !2017, size: 64, offset: 1344)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1411, file: !20, line: 1938, baseType: !2029, size: 64, offset: 1408)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!326, !2032, !1418, !1098, !341, !13}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2034, line: 59, flags: DIFlagFwdDecl)
!2034 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1411, file: !20, line: 1939, baseType: !2036, size: 64, offset: 1472)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!326, !1418, !1098, !2032, !341, !13}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1411, file: !20, line: 1940, baseType: !2040, size: 64, offset: 1536)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{null, !1418}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1411, file: !20, line: 1941, baseType: !2044, size: 64, offset: 1600)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!115, !1418, !115, !2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1411, file: !20, line: 1942, baseType: !2050, size: 64, offset: 1664)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!330, !1418, !115, !535, !535}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1411, file: !20, line: 1944, baseType: !2054, size: 64, offset: 1728)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1077, !1418}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1411, file: !20, line: 1948, baseType: !2058, size: 64, offset: 1792)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!326, !1418, !535, !1418, !535, !341, !13}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1411, file: !20, line: 1950, baseType: !2062, size: 64, offset: 1856)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!535, !1418, !535, !1418, !535, !535, !13}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1411, file: !20, line: 1953, baseType: !2009, size: 64, offset: 1920)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1411, file: !20, line: 1954, baseType: !2067, size: 64, offset: 1984)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!115, !2070, !13}
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1411, file: !20, line: 1955, baseType: !2073, size: 64, offset: 2048)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!115, !2070, !1517, !13}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1115, file: !20, line: 1018, baseType: !447, size: 64, offset: 1472)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1115, file: !20, line: 1020, baseType: !191, size: 64, offset: 1536)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1115, file: !20, line: 1023, baseType: !191, size: 64, offset: 1600)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1115, file: !20, line: 1027, baseType: !2080, size: 64, offset: 1664)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1115, file: !20, line: 1029, baseType: !370, size: 64, offset: 1728)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1115, file: !20, line: 1030, baseType: !2083, size: 32, offset: 1792)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2084, line: 8, baseType: !443)
!2084 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1115, file: !20, line: 1031, baseType: !2083, size: 32, offset: 1824)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1078, file: !1079, line: 29, baseType: !191, size: 64, offset: 896)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1021, file: !20, line: 2077, baseType: !1074, size: 64, offset: 1088)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1021, file: !20, line: 2078, baseType: !1074, size: 64, offset: 1152)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1021, file: !20, line: 2079, baseType: !1074, size: 64, offset: 1216)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1021, file: !20, line: 2081, baseType: !2091, size: 64, offset: 1280)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!326, !525, !115, !294, !341, !535}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1021, file: !20, line: 2082, baseType: !2095, size: 64, offset: 1344)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!326, !525, !115, !207, !341, !535}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1021, file: !20, line: 2083, baseType: !2099, size: 64, offset: 1408)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!2102, !374}
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !57, line: 296, size: 1664, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2130, !2131, !2132}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2104, file: !57, line: 297, baseType: !881, size: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2104, file: !57, line: 298, baseType: !210, size: 128, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2104, file: !57, line: 299, baseType: !210, size: 128, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2104, file: !57, line: 300, baseType: !210, size: 128, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2104, file: !57, line: 301, baseType: !635, size: 256, offset: 512)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2104, file: !57, line: 302, baseType: !224, size: 32, offset: 768)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2104, file: !57, line: 303, baseType: !244, size: 32, offset: 800)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2104, file: !57, line: 304, baseType: !525, size: 64, offset: 832)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2104, file: !57, line: 305, baseType: !2115, size: 64, offset: 896)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !57, line: 68, size: 64, elements: !2116)
!2116 = !{!2117, !2129}
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !57, line: 69, baseType: !2118, size: 32)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !57, line: 69, size: 32, elements: !2119)
!2119 = !{!2120, !2121, !2122}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2118, file: !57, line: 70, baseType: !380, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2118, file: !57, line: 71, baseType: !389, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2118, file: !57, line: 72, baseType: !2123, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2124, line: 24, baseType: !2125)
!2124 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2124, line: 22, size: 32, elements: !2126)
!2126 = !{!2127}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2125, file: !2124, line: 23, baseType: !2128, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2124, line: 20, baseType: !386)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2115, file: !57, line: 74, baseType: !56, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2104, file: !57, line: 306, baseType: !535, size: 64, offset: 960)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2104, file: !57, line: 307, baseType: !344, size: 64, offset: 1024)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2104, file: !57, line: 308, baseType: !2133, size: 576, offset: 1088)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !57, line: 205, size: 576, elements: !2134)
!2134 = !{!2135, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2133, file: !57, line: 206, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !57, line: 66, baseType: !537)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2133, file: !57, line: 207, baseType: !2136, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2133, file: !57, line: 208, baseType: !2136, size: 64, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2133, file: !57, line: 209, baseType: !2136, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2133, file: !57, line: 210, baseType: !2136, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2133, file: !57, line: 211, baseType: !2136, size: 64, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2133, file: !57, line: 212, baseType: !2136, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2133, file: !57, line: 213, baseType: !1253, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2133, file: !57, line: 214, baseType: !1253, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1021, file: !20, line: 2085, baseType: !2146, size: 64, offset: 1472)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!330, !525, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2151, line: 15, size: 256, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2152 = !{!2153, !2154, !2155, !2156, !2157}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2150, file: !2151, line: 16, baseType: !1503, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2150, file: !2151, line: 19, baseType: !115, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2150, file: !2151, line: 26, baseType: !344, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2150, file: !2151, line: 33, baseType: !344, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2150, file: !2151, line: 36, baseType: !2158, size: 64, offset: 192)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !33, line: 33, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1021, file: !20, line: 2087, baseType: !2146, size: 64, offset: 1536)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1021, file: !20, line: 2089, baseType: !560, size: 64, offset: 1600)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !526, file: !20, line: 1198, baseType: !2163, size: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !57, line: 324, size: 704, elements: !2166)
!2166 = !{!2167, !2171, !2175, !2179, !2180, !2181, !2182, !2183, !2188, !2193, !2197}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2165, file: !57, line: 325, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!115, !2103}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2165, file: !57, line: 326, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!2103, !525, !115}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2165, file: !57, line: 327, baseType: !2176, size: 64, offset: 128)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{null, !2103}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2165, file: !57, line: 328, baseType: !2168, size: 64, offset: 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2165, file: !57, line: 329, baseType: !2168, size: 64, offset: 256)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2165, file: !57, line: 330, baseType: !2168, size: 64, offset: 320)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2165, file: !57, line: 331, baseType: !1049, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2165, file: !57, line: 334, baseType: !2184, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2187, !374}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2165, file: !57, line: 335, baseType: !2189, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!115, !374, !2192}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2165, file: !57, line: 337, baseType: !2194, size: 64, offset: 576)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!115, !374, !2187}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2165, file: !57, line: 339, baseType: !2198, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!115, !525, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !526, file: !20, line: 1199, baseType: !2203, size: 64, offset: 512)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !57, line: 430, size: 704, elements: !2206)
!2206 = !{!2207, !2213, !2214, !2218, !2219, !2220, !2235, !2258, !2262, !2263, !2286}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2205, file: !57, line: 431, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!115, !525, !115, !115, !2211}
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1402)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2205, file: !57, line: 432, baseType: !1049, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2205, file: !57, line: 433, baseType: !2215, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!115, !525, !13}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2205, file: !57, line: 434, baseType: !2215, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2205, file: !57, line: 435, baseType: !1049, size: 64, offset: 256)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2205, file: !57, line: 436, baseType: !2221, size: 64, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!115, !525, !115, !2224}
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !57, line: 417, size: 256, elements: !2226)
!2226 = !{!2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2225, file: !57, line: 418, baseType: !115, size: 32)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2225, file: !57, line: 419, baseType: !13, size: 32, offset: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2225, file: !57, line: 420, baseType: !13, size: 32, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2225, file: !57, line: 422, baseType: !13, size: 32, offset: 96)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2225, file: !57, line: 423, baseType: !13, size: 32, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2225, file: !57, line: 424, baseType: !13, size: 32, offset: 160)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2225, file: !57, line: 425, baseType: !13, size: 32, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2225, file: !57, line: 426, baseType: !13, size: 32, offset: 224)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2205, file: !57, line: 437, baseType: !2236, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!115, !525, !2115, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !57, line: 345, size: 960, elements: !2241)
!2241 = !{!2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2240, file: !57, line: 346, baseType: !115, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2240, file: !57, line: 347, baseType: !447, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2240, file: !57, line: 348, baseType: !447, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2240, file: !57, line: 349, baseType: !447, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2240, file: !57, line: 350, baseType: !447, size: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2240, file: !57, line: 351, baseType: !447, size: 64, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2240, file: !57, line: 352, baseType: !447, size: 64, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2240, file: !57, line: 353, baseType: !645, size: 64, offset: 448)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2240, file: !57, line: 355, baseType: !645, size: 64, offset: 512)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2240, file: !57, line: 356, baseType: !115, size: 32, offset: 576)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2240, file: !57, line: 357, baseType: !115, size: 32, offset: 608)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2240, file: !57, line: 358, baseType: !447, size: 64, offset: 640)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2240, file: !57, line: 359, baseType: !447, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2240, file: !57, line: 360, baseType: !447, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2240, file: !57, line: 361, baseType: !645, size: 64, offset: 832)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2240, file: !57, line: 362, baseType: !115, size: 32, offset: 896)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2205, file: !57, line: 438, baseType: !2259, size: 64, offset: 448)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!115, !525, !2201, !2239}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2205, file: !57, line: 440, baseType: !2236, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2205, file: !57, line: 441, baseType: !2264, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!115, !525, !2267}
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !57, line: 411, size: 1408, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2268, file: !57, line: 412, baseType: !13, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2268, file: !57, line: 413, baseType: !2272, size: 1344, offset: 64)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2273, size: 1344, elements: !295)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !57, line: 397, size: 448, elements: !2274)
!2274 = !{!2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2285}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2273, file: !57, line: 398, baseType: !13, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2273, file: !57, line: 399, baseType: !13, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2273, file: !57, line: 401, baseType: !13, size: 32, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2273, file: !57, line: 402, baseType: !13, size: 32, offset: 96)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2273, file: !57, line: 403, baseType: !13, size: 32, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2273, file: !57, line: 404, baseType: !13, size: 32, offset: 160)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2273, file: !57, line: 405, baseType: !13, size: 32, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2273, file: !57, line: 406, baseType: !449, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2273, file: !57, line: 407, baseType: !2284, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !211, line: 132, baseType: !447)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2273, file: !57, line: 408, baseType: !2284, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2205, file: !57, line: 442, baseType: !2215, size: 64, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !526, file: !20, line: 1200, baseType: !2288, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !526, file: !20, line: 1201, baseType: !344, size: 64, offset: 640)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !526, file: !20, line: 1202, baseType: !344, size: 64, offset: 704)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !526, file: !20, line: 1203, baseType: !344, size: 64, offset: 768)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !526, file: !20, line: 1204, baseType: !409, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !526, file: !20, line: 1205, baseType: !1237, size: 320, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !526, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !526, file: !20, line: 1207, baseType: !244, size: 32, offset: 1248)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !526, file: !20, line: 1209, baseType: !191, size: 64, offset: 1280)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !526, file: !20, line: 1211, baseType: !2300, size: 64, offset: 1344)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2303)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !526, file: !20, line: 1223, baseType: !2305, size: 64, offset: 1408)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !426, line: 34, size: 64, elements: !2306)
!2306 = !{!2307}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2305, file: !426, line: 35, baseType: !429, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !526, file: !20, line: 1224, baseType: !210, size: 128, offset: 1472)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !526, file: !20, line: 1225, baseType: !2310, size: 64, offset: 1600)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !526, file: !20, line: 1226, baseType: !2313, size: 64, offset: 1664)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !526, file: !20, line: 1227, baseType: !2316, size: 64, offset: 1728)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !526, file: !20, line: 1228, baseType: !2319, size: 64, offset: 1792)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !526, file: !20, line: 1229, baseType: !881, size: 128, offset: 1856)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !526, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !526, file: !20, line: 1231, baseType: !2324, size: 2496, offset: 2048)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !57, line: 521, size: 2496, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2330, !2362}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !57, line: 522, baseType: !13, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2324, file: !57, line: 523, baseType: !1237, size: 320, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2324, file: !57, line: 524, baseType: !2329, size: 192, offset: 384)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 192, elements: !295)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2324, file: !57, line: 525, baseType: !2331, size: 1728, offset: 576)
!2331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2332, size: 1728, elements: !295)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !57, line: 222, size: 576, elements: !2333)
!2333 = !{!2334, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2332, file: !57, line: 223, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !57, line: 445, size: 256, elements: !2337)
!2337 = !{!2338, !2339, !2352, !2353}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2336, file: !57, line: 446, baseType: !115, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2336, file: !57, line: 447, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !57, line: 312, size: 512, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2342, file: !57, line: 313, baseType: !1049, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2342, file: !57, line: 314, baseType: !1049, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2342, file: !57, line: 315, baseType: !1049, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2342, file: !57, line: 316, baseType: !1049, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2342, file: !57, line: 317, baseType: !2168, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2342, file: !57, line: 318, baseType: !2168, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2342, file: !57, line: 319, baseType: !2168, size: 64, offset: 384)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2342, file: !57, line: 320, baseType: !2198, size: 64, offset: 448)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2336, file: !57, line: 448, baseType: !564, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2336, file: !57, line: 449, baseType: !2335, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2332, file: !57, line: 224, baseType: !115, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2332, file: !57, line: 226, baseType: !210, size: 128, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2332, file: !57, line: 227, baseType: !344, size: 64, offset: 256)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2332, file: !57, line: 228, baseType: !13, size: 32, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2332, file: !57, line: 229, baseType: !13, size: 32, offset: 352)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2332, file: !57, line: 230, baseType: !2136, size: 64, offset: 384)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2332, file: !57, line: 231, baseType: !2136, size: 64, offset: 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2332, file: !57, line: 232, baseType: !191, size: 64, offset: 512)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2324, file: !57, line: 526, baseType: !2363, size: 192, offset: 2304)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2340, size: 192, elements: !295)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !526, file: !20, line: 1233, baseType: !2365, size: 2368, offset: 4544)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !2366)
!2366 = !{!2367, !2368, !2369}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2365, file: !20, line: 1185, baseType: !264, size: 16)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2365, file: !20, line: 1186, baseType: !264, size: 16, offset: 16)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2365, file: !20, line: 1187, baseType: !2370, size: 2304, offset: 64)
!2370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2371, size: 2304, elements: !295)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2372, line: 12, size: 768, elements: !2373)
!2372 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2373 = !{!2374, !2382, !2383, !3586, !3587}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2371, file: !2372, line: 13, baseType: !2375, size: 384)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2376, line: 17, size: 384, elements: !2377)
!2376 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2377 = !{!2378, !2379, !2380, !2381}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2375, file: !2376, line: 18, baseType: !115, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2375, file: !2376, line: 19, baseType: !115, size: 32, offset: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2375, file: !2376, line: 20, baseType: !1174, size: 192, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2375, file: !2376, line: 22, baseType: !855, size: 128, align: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2371, file: !2372, line: 14, baseType: !707, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2371, file: !2372, line: 15, baseType: !2384, size: 64, offset: 448)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2385, line: 16, size: 64, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2386 = !{!2387}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2384, file: !2385, line: 17, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2034, line: 746, size: 58368, elements: !2390)
!2390 = !{!2391, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2471, !2482, !2577, !2581, !2584, !2615, !2616, !2617, !2618, !2629, !2631, !2632, !2633, !2634, !2635, !2636, !2647, !2648, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2665, !2666, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2759, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2807, !2813, !2814, !2815, !2816, !2817, !2821, !2824, !2831, !2836, !2839, !2842, !2845, !2849, !2987, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3025, !3026, !3027, !3036, !3044, !3045, !3046, !3047, !3048, !3053, !3054, !3055, !3058, !3059, !3062, !3065, !3068, !3076, !3079, !3080, !3166, !3167, !3168, !3169, !3170, !3176, !3177, !3178, !3179, !3182, !3183, !3186, !3189, !3190, !3193, !3194, !3195, !3198, !3199, !3200, !3201, !3202, !3203, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3235, !3236, !3242, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3254, !3326, !3328, !3329, !3330, !3331, !3332, !3333, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3363, !3364, !3365}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2389, file: !2034, line: 752, baseType: !2392, size: 192)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2393, line: 56, size: 192, elements: !2394)
!2393 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2394 = !{!2395, !2396, !2397, !2398}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2392, file: !2393, line: 57, baseType: !344, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2392, file: !2393, line: 58, baseType: !344, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2392, file: !2393, line: 59, baseType: !443, size: 32, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2392, file: !2393, line: 61, baseType: !443, size: 32, offset: 160)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2389, file: !2034, line: 754, baseType: !13, size: 32, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2389, file: !2034, line: 767, baseType: !191, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2389, file: !2034, line: 768, baseType: !1164, size: 32, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2389, file: !2034, line: 770, baseType: !13, size: 32, offset: 352)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2389, file: !2034, line: 771, baseType: !13, size: 32, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2389, file: !2034, line: 774, baseType: !115, size: 32, offset: 416)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2389, file: !2034, line: 775, baseType: !2406, size: 128, offset: 448)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2407, line: 58, size: 128, elements: !2408)
!2407 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2408 = !{!2409, !2410, !2415, !2416}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2406, file: !2407, line: 59, baseType: !1121, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2406, file: !2407, line: 60, baseType: !2411, size: 32, offset: 64)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2406, file: !2407, line: 60, size: 32, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2411, file: !2407, line: 61, baseType: !13, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2411, file: !2407, line: 62, baseType: !244, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2406, file: !2407, line: 65, baseType: !262, size: 16, offset: 96)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2406, file: !2407, line: 65, baseType: !262, size: 16, offset: 112)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2389, file: !2034, line: 776, baseType: !13, size: 32, offset: 576)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2389, file: !2034, line: 777, baseType: !344, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2389, file: !2034, line: 778, baseType: !2388, size: 64, offset: 704)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2389, file: !2034, line: 787, baseType: !115, size: 32, offset: 768)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2389, file: !2034, line: 788, baseType: !115, size: 32, offset: 800)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2389, file: !2034, line: 790, baseType: !115, size: 32, offset: 832)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2389, file: !2034, line: 792, baseType: !115, size: 32, offset: 864)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2389, file: !2034, line: 793, baseType: !115, size: 32, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2389, file: !2034, line: 794, baseType: !115, size: 32, offset: 928)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2389, file: !2034, line: 795, baseType: !13, size: 32, offset: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2389, file: !2034, line: 797, baseType: !2428, size: 2048, offset: 1024)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2034, line: 551, size: 2048, elements: !2429)
!2429 = !{!2430, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2450, !2453, !2454, !2455}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2428, file: !2034, line: 553, baseType: !2431, size: 128)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2034, line: 411, size: 128, elements: !2432)
!2432 = !{!2433, !2434}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2431, file: !2034, line: 412, baseType: !344, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2431, file: !2034, line: 413, baseType: !443, size: 32, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2428, file: !2034, line: 554, baseType: !747, size: 192, align: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2428, file: !2034, line: 555, baseType: !447, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2428, file: !2034, line: 556, baseType: !447, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2428, file: !2034, line: 558, baseType: !210, size: 128, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2428, file: !2034, line: 559, baseType: !13, size: 32, offset: 576)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2428, file: !2034, line: 561, baseType: !447, size: 64, offset: 640)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2428, file: !2034, line: 562, baseType: !447, size: 64, offset: 704)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2428, file: !2034, line: 563, baseType: !447, size: 64, offset: 768)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2428, file: !2034, line: 564, baseType: !447, size: 64, offset: 832)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2428, file: !2034, line: 565, baseType: !645, size: 64, offset: 896)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2428, file: !2034, line: 566, baseType: !447, size: 64, offset: 960)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2428, file: !2034, line: 568, baseType: !447, size: 64, offset: 1024)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2428, file: !2034, line: 571, baseType: !115, size: 32, offset: 1088)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2428, file: !2034, line: 572, baseType: !2449, size: 64, offset: 1152)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2428, file: !2034, line: 574, baseType: !2451, size: 64, offset: 1216)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2034, line: 49, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2428, file: !2034, line: 576, baseType: !2451, size: 64, offset: 1280)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2428, file: !2034, line: 578, baseType: !344, size: 64, offset: 1344)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2428, file: !2034, line: 588, baseType: !2456, size: 512, align: 512, offset: 1536)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2034, line: 497, size: 512, align: 512, elements: !2457)
!2457 = !{!2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2456, file: !2034, line: 498, baseType: !447, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2456, file: !2034, line: 499, baseType: !447, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2456, file: !2034, line: 500, baseType: !447, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2456, file: !2034, line: 501, baseType: !443, size: 32, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2456, file: !2034, line: 502, baseType: !443, size: 32, offset: 224)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2456, file: !2034, line: 503, baseType: !344, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2456, file: !2034, line: 504, baseType: !344, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2456, file: !2034, line: 505, baseType: !344, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2456, file: !2034, line: 506, baseType: !2467, size: 64, align: 64, offset: 448)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2034, line: 445, size: 64, align: 64, elements: !2468)
!2468 = !{!2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2467, file: !2034, line: 446, baseType: !13, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2467, file: !2034, line: 447, baseType: !13, size: 32, offset: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2389, file: !2034, line: 798, baseType: !2472, size: 384, offset: 3072)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2034, line: 592, size: 384, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2472, file: !2034, line: 593, baseType: !210, size: 128)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2472, file: !2034, line: 594, baseType: !344, size: 64, offset: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2472, file: !2034, line: 595, baseType: !344, size: 64, offset: 192)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2472, file: !2034, line: 596, baseType: !13, size: 32, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2472, file: !2034, line: 597, baseType: !264, size: 16, offset: 288)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2472, file: !2034, line: 598, baseType: !264, size: 16, offset: 304)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2472, file: !2034, line: 600, baseType: !2481, size: 64, offset: 320)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2389, file: !2034, line: 799, baseType: !2483, size: 1792, offset: 3456)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2034, line: 610, size: 1792, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2574, !2575}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2483, file: !2034, line: 611, baseType: !747, size: 192, align: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2483, file: !2034, line: 618, baseType: !447, size: 64, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2483, file: !2034, line: 619, baseType: !447, size: 64, offset: 256)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2483, file: !2034, line: 620, baseType: !447, size: 64, offset: 320)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2483, file: !2034, line: 621, baseType: !447, size: 64, offset: 384)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2483, file: !2034, line: 622, baseType: !447, size: 64, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2483, file: !2034, line: 629, baseType: !645, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2483, file: !2034, line: 630, baseType: !447, size: 64, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2483, file: !2034, line: 631, baseType: !13, size: 32, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2483, file: !2034, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2483, file: !2034, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2483, file: !2034, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2483, file: !2034, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2483, file: !2034, line: 662, baseType: !2499, size: 512, offset: 704)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !63, line: 118, size: 512, elements: !2500)
!2500 = !{!2501, !2509, !2510, !2515, !2570, !2571, !2572, !2573}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2499, file: !63, line: 119, baseType: !2502, size: 256)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2503, line: 9, size: 256, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2504 = !{!2505, !2506}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2502, file: !2503, line: 10, baseType: !747, size: 192, align: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2502, file: !2503, line: 11, baseType: !2507, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2508, line: 29, baseType: !645)
!2508 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2499, file: !63, line: 120, baseType: !2507, size: 64, offset: 256)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2499, file: !63, line: 121, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!62, !2514}
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2499, file: !63, line: 122, baseType: !2516, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !63, line: 159, size: 512, align: 512, elements: !2518)
!2518 = !{!2519, !2544, !2545, !2548, !2553, !2554, !2565, !2569}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2517, file: !63, line: 160, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !63, line: 215, size: 4608, align: 512, elements: !2522)
!2522 = !{!2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2521, file: !63, line: 216, baseType: !593, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2521, file: !63, line: 217, baseType: !13, size: 32, offset: 32)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2521, file: !63, line: 218, baseType: !13, size: 32, offset: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2521, file: !63, line: 219, baseType: !13, size: 32, offset: 96)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2521, file: !63, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2521, file: !63, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2521, file: !63, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2521, file: !63, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2521, file: !63, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2521, file: !63, line: 226, baseType: !13, size: 32, offset: 160)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2521, file: !63, line: 227, baseType: !264, size: 16, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2521, file: !63, line: 228, baseType: !264, size: 16, offset: 208)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2521, file: !63, line: 229, baseType: !13, size: 32, offset: 224)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2521, file: !63, line: 235, baseType: !2507, size: 64, offset: 256)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2521, file: !63, line: 236, baseType: !2514, size: 64, offset: 320)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2521, file: !63, line: 237, baseType: !2507, size: 64, offset: 384)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2521, file: !63, line: 238, baseType: !2514, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2521, file: !63, line: 239, baseType: !2541, size: 4096, align: 512, offset: 512)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2517, size: 4096, align: 512, elements: !2542)
!2542 = !{!2543}
!2543 = !DISubrange(count: 8)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2517, file: !63, line: 161, baseType: !13, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2517, file: !63, line: 162, baseType: !2546, size: 32, offset: 96)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !211, line: 32, baseType: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !328, line: 96, baseType: !115)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2517, file: !63, line: 163, baseType: !2549, size: 32, offset: 128)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !416, line: 274, baseType: !2550)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !416, line: 274, size: 32, elements: !2551)
!2551 = !{!2552}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2550, file: !416, line: 274, baseType: !420, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2517, file: !63, line: 164, baseType: !2514, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2517, file: !63, line: 165, baseType: !2555, size: 128, offset: 256)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2503, line: 14, size: 128, elements: !2556)
!2556 = !{!2557}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2555, file: !2503, line: 15, baseType: !2558, size: 128)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !748, line: 26, size: 128, elements: !2559)
!2559 = !{!2560, !2564}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2558, file: !748, line: 27, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !748, line: 12, size: 64, elements: !2562)
!2562 = !{!2563}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2561, file: !748, line: 13, baseType: !752, size: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2558, file: !748, line: 28, baseType: !752, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2517, file: !63, line: 166, baseType: !2566, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!2507}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2517, file: !63, line: 167, baseType: !2507, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2499, file: !63, line: 123, baseType: !252, size: 8, offset: 448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2499, file: !63, line: 124, baseType: !252, size: 8, offset: 456)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2499, file: !63, line: 125, baseType: !252, size: 8, offset: 464)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2499, file: !63, line: 126, baseType: !252, size: 8, offset: 472)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2483, file: !2034, line: 671, baseType: !2499, size: 512, offset: 1216)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2483, file: !2034, line: 679, baseType: !2576, size: 64, offset: 1728)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2389, file: !2034, line: 800, baseType: !2578, size: 64, offset: 5248)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2580)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2034, line: 800, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2389, file: !2034, line: 809, baseType: !2582, size: 64, offset: 5312)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2034, line: 70, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2389, file: !2034, line: 825, baseType: !2585, size: 2048, align: 512, offset: 5632)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2034, line: 509, size: 2048, align: 512, elements: !2586)
!2586 = !{!2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2585, file: !2034, line: 511, baseType: !447, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2585, file: !2034, line: 512, baseType: !447, size: 64, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2585, file: !2034, line: 513, baseType: !447, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2585, file: !2034, line: 514, baseType: !447, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2585, file: !2034, line: 515, baseType: !447, size: 64, offset: 256)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2585, file: !2034, line: 516, baseType: !447, size: 64, offset: 320)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2585, file: !2034, line: 518, baseType: !447, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2585, file: !2034, line: 519, baseType: !447, size: 64, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2585, file: !2034, line: 520, baseType: !645, size: 64, offset: 512)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2585, file: !2034, line: 522, baseType: !447, size: 64, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2585, file: !2034, line: 523, baseType: !447, size: 64, offset: 640)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2585, file: !2034, line: 524, baseType: !645, size: 64, offset: 704)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2585, file: !2034, line: 526, baseType: !645, size: 64, offset: 768)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2585, file: !2034, line: 527, baseType: !447, size: 64, offset: 832)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2585, file: !2034, line: 529, baseType: !447, size: 64, offset: 896)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2585, file: !2034, line: 530, baseType: !447, size: 64, offset: 960)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2585, file: !2034, line: 531, baseType: !447, size: 64, offset: 1024)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2585, file: !2034, line: 532, baseType: !447, size: 64, offset: 1088)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2585, file: !2034, line: 533, baseType: !447, size: 64, offset: 1152)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2585, file: !2034, line: 535, baseType: !447, size: 64, offset: 1216)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2585, file: !2034, line: 536, baseType: !447, size: 64, offset: 1280)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2585, file: !2034, line: 537, baseType: !447, size: 64, offset: 1344)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2585, file: !2034, line: 538, baseType: !447, size: 64, offset: 1408)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2585, file: !2034, line: 539, baseType: !447, size: 64, offset: 1472)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2585, file: !2034, line: 540, baseType: !447, size: 64, offset: 1536)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2585, file: !2034, line: 541, baseType: !447, size: 64, offset: 1600)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2585, file: !2034, line: 542, baseType: !447, size: 64, offset: 1664)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2585, file: !2034, line: 543, baseType: !447, size: 64, offset: 1728)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2389, file: !2034, line: 833, baseType: !13, size: 32, offset: 7680)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2389, file: !2034, line: 836, baseType: !13, size: 32, offset: 7712)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2389, file: !2034, line: 837, baseType: !115, size: 32, offset: 7744)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2389, file: !2034, line: 838, baseType: !2619, size: 64, offset: 7808)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2621)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2622, line: 19, baseType: !2623)
!2622 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2622, line: 19, size: 64, elements: !2624)
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2623, file: !2622, line: 19, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 64, elements: !2627)
!2627 = !{!2628}
!2628 = !DISubrange(count: 1)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2389, file: !2034, line: 839, baseType: !2630, size: 64, offset: 7872)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2389, file: !2034, line: 840, baseType: !2621, size: 64, offset: 7936)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2389, file: !2034, line: 841, baseType: !191, size: 64, offset: 8000)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2389, file: !2034, line: 843, baseType: !264, size: 16, offset: 8064)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2389, file: !2034, line: 845, baseType: !264, size: 16, offset: 8080)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2389, file: !2034, line: 848, baseType: !115, size: 32, offset: 8096)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2389, file: !2034, line: 849, baseType: !2637, size: 32, offset: 8128)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2034, line: 718, size: 32, elements: !2638)
!2638 = !{!2639, !2646}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2637, file: !2034, line: 724, baseType: !2640, size: 32)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2637, file: !2034, line: 719, size: 32, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2640, file: !2034, line: 720, baseType: !252, size: 8)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2640, file: !2034, line: 721, baseType: !252, size: 8, offset: 8)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2640, file: !2034, line: 722, baseType: !252, size: 8, offset: 16)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2640, file: !2034, line: 723, baseType: !252, size: 8, offset: 24)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2637, file: !2034, line: 725, baseType: !443, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2389, file: !2034, line: 850, baseType: !210, size: 128, offset: 8192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2389, file: !2034, line: 851, baseType: !2649, size: 64, offset: 8320)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2034, line: 60, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2389, file: !2034, line: 855, baseType: !344, size: 64, offset: 8384)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2389, file: !2034, line: 856, baseType: !252, size: 8, offset: 8448)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2389, file: !2034, line: 857, baseType: !252, size: 8, offset: 8456)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2389, file: !2034, line: 858, baseType: !115, size: 32, offset: 8480)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2389, file: !2034, line: 859, baseType: !210, size: 128, offset: 8512)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2389, file: !2034, line: 860, baseType: !115, size: 32, offset: 8640)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2389, file: !2034, line: 861, baseType: !210, size: 128, offset: 8704)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2389, file: !2034, line: 873, baseType: !2659, size: 256, offset: 8832)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2034, line: 376, size: 256, elements: !2660)
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2659, file: !2034, line: 381, baseType: !344, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2659, file: !2034, line: 384, baseType: !449, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2659, file: !2034, line: 389, baseType: !449, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2659, file: !2034, line: 392, baseType: !449, size: 64, offset: 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2389, file: !2034, line: 875, baseType: !210, size: 128, offset: 9088)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2389, file: !2034, line: 877, baseType: !2667, size: 320, offset: 9216)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2668, line: 86, size: 320, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2667, file: !2668, line: 87, baseType: !115, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2667, file: !2668, line: 88, baseType: !210, size: 128, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2667, file: !2668, line: 89, baseType: !210, size: 128, offset: 192)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2389, file: !2034, line: 878, baseType: !747, size: 192, align: 64, offset: 9536)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2389, file: !2034, line: 881, baseType: !1571, size: 64, offset: 9728)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2389, file: !2034, line: 882, baseType: !1571, size: 64, offset: 9792)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2389, file: !2034, line: 884, baseType: !115, size: 32, offset: 9856)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2389, file: !2034, line: 885, baseType: !115, size: 32, offset: 9888)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2389, file: !2034, line: 886, baseType: !115, size: 32, offset: 9920)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2389, file: !2034, line: 888, baseType: !115, size: 32, offset: 9952)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2389, file: !2034, line: 890, baseType: !344, size: 64, offset: 9984)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2389, file: !2034, line: 893, baseType: !13, size: 32, offset: 10048)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2389, file: !2034, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2389, file: !2034, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2389, file: !2034, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2389, file: !2034, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2389, file: !2034, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2389, file: !2034, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2389, file: !2034, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2389, file: !2034, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2389, file: !2034, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2389, file: !2034, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2389, file: !2034, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2389, file: !2034, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2389, file: !2034, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2389, file: !2034, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2389, file: !2034, line: 969, baseType: !344, size: 64, offset: 10176)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2389, file: !2034, line: 971, baseType: !2698, size: 448, offset: 10240)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2699)
!2699 = !{!2700, !2701, !2706}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2698, file: !68, line: 26, baseType: !344, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2698, file: !68, line: 27, baseType: !2702, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!330, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, scope: !2698, file: !68, line: 28, baseType: !2707, size: 320, offset: 128)
!2707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2698, file: !68, line: 28, size: 320, elements: !2708)
!2708 = !{!2709, !2719, !2744}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2707, file: !68, line: 37, baseType: !2710, size: 320)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2707, file: !68, line: 30, size: 320, elements: !2711)
!2711 = !{!2712, !2714, !2715, !2716, !2717, !2718}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2710, file: !68, line: 31, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2710, file: !68, line: 32, baseType: !443, size: 32, offset: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2710, file: !68, line: 33, baseType: !443, size: 32, offset: 96)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2710, file: !68, line: 34, baseType: !443, size: 32, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2710, file: !68, line: 35, baseType: !447, size: 64, offset: 192)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2710, file: !68, line: 36, baseType: !2713, size: 64, offset: 256)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2707, file: !68, line: 47, baseType: !2720, size: 192)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2707, file: !68, line: 39, size: 192, elements: !2721)
!2721 = !{!2722, !2723, !2724, !2743}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2720, file: !68, line: 40, baseType: !2546, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2720, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !68, line: 42, baseType: !2725, size: 64, offset: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !68, line: 42, size: 64, elements: !2726)
!2726 = !{!2727, !2735}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2725, file: !68, line: 43, baseType: !2728, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2730, line: 7, size: 128, elements: !2731)
!2730 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2731 = !{!2732, !2734}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2729, file: !2730, line: 8, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !328, line: 93, baseType: !537)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2729, file: !2730, line: 9, baseType: !537, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2725, file: !68, line: 44, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2738, line: 7, size: 64, elements: !2739)
!2738 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2739 = !{!2740, !2742}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2737, file: !2738, line: 8, baseType: !2741, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2738, line: 5, baseType: !631)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2737, file: !2738, line: 9, baseType: !631, size: 32, offset: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2720, file: !68, line: 46, baseType: !447, size: 64, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2707, file: !68, line: 55, baseType: !2745, size: 256)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2707, file: !68, line: 49, size: 256, elements: !2746)
!2746 = !{!2747, !2755, !2756, !2757, !2758}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2745, file: !68, line: 50, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2750, line: 36, size: 64, elements: !2751)
!2750 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2751 = !{!2752, !2753, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2749, file: !2750, line: 37, baseType: !115, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2749, file: !2750, line: 38, baseType: !773, size: 16, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2749, file: !2750, line: 39, baseType: !773, size: 16, offset: 48)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2745, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2745, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2745, file: !68, line: 53, baseType: !344, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2745, file: !68, line: 54, baseType: !344, size: 64, offset: 192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2389, file: !2034, line: 973, baseType: !2760, size: 32, offset: 10688)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !211, line: 27, baseType: !2761)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !328, line: 28, baseType: !115)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2389, file: !2034, line: 974, baseType: !2760, size: 32, offset: 10720)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2389, file: !2034, line: 978, baseType: !344, size: 64, offset: 10752)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2389, file: !2034, line: 987, baseType: !2388, size: 64, offset: 10816)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2389, file: !2034, line: 990, baseType: !2388, size: 64, offset: 10880)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2389, file: !2034, line: 995, baseType: !210, size: 128, offset: 10944)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2389, file: !2034, line: 996, baseType: !210, size: 128, offset: 11072)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2389, file: !2034, line: 997, baseType: !2388, size: 64, offset: 11200)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2389, file: !2034, line: 1005, baseType: !210, size: 128, offset: 11264)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2389, file: !2034, line: 1006, baseType: !210, size: 128, offset: 11392)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2389, file: !2034, line: 1009, baseType: !1160, size: 64, offset: 11520)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2389, file: !2034, line: 1010, baseType: !2773, size: 512, offset: 11584)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 512, elements: !865)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2389, file: !2034, line: 1011, baseType: !210, size: 128, offset: 12096)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2389, file: !2034, line: 1012, baseType: !210, size: 128, offset: 12224)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2389, file: !2034, line: 1014, baseType: !583, size: 64, offset: 12352)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2389, file: !2034, line: 1017, baseType: !764, size: 64, offset: 12416)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2389, file: !2034, line: 1020, baseType: !764, size: 64, offset: 12480)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2389, file: !2034, line: 1023, baseType: !191, size: 64, offset: 12544)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2389, file: !2034, line: 1025, baseType: !447, size: 64, offset: 12608)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2389, file: !2034, line: 1026, baseType: !447, size: 64, offset: 12672)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2389, file: !2034, line: 1031, baseType: !447, size: 64, offset: 12736)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2389, file: !2034, line: 1032, baseType: !2784, size: 192, offset: 12800)
!2784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2034, line: 324, size: 192, elements: !2785)
!2785 = !{!2786, !2787, !2788}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2784, file: !2034, line: 326, baseType: !447, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2784, file: !2034, line: 327, baseType: !447, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2784, file: !2034, line: 328, baseType: !593, size: 32, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2389, file: !2034, line: 1041, baseType: !344, size: 64, offset: 12992)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2389, file: !2034, line: 1042, baseType: !344, size: 64, offset: 13056)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2389, file: !2034, line: 1045, baseType: !447, size: 64, offset: 13120)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2389, file: !2034, line: 1048, baseType: !447, size: 64, offset: 13184)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2389, file: !2034, line: 1051, baseType: !344, size: 64, offset: 13248)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2389, file: !2034, line: 1052, baseType: !344, size: 64, offset: 13312)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2389, file: !2034, line: 1055, baseType: !2796, size: 640, offset: 13376)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2797, line: 132, size: 640, elements: !2798)
!2797 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2798 = !{!2799, !2805, !2806}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2796, file: !2797, line: 133, baseType: !2800, size: 576)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2801, size: 576, elements: !295)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2797, line: 117, size: 192, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2801, file: !2797, line: 118, baseType: !447, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2801, file: !2797, line: 119, baseType: !2555, size: 128, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2796, file: !2797, line: 134, baseType: !13, size: 32, offset: 576)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2796, file: !2797, line: 135, baseType: !13, size: 32, offset: 608)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2389, file: !2034, line: 1058, baseType: !2808, size: 448, offset: 14016)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2797, line: 144, size: 448, elements: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2808, file: !2797, line: 145, baseType: !855, size: 128, align: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2808, file: !2797, line: 146, baseType: !635, size: 256, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2808, file: !2797, line: 147, baseType: !13, size: 32, offset: 384)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2389, file: !2034, line: 1064, baseType: !1196, size: 64, offset: 14464)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2389, file: !2034, line: 1067, baseType: !1196, size: 64, offset: 14528)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2389, file: !2034, line: 1070, baseType: !1196, size: 64, offset: 14592)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2389, file: !2034, line: 1074, baseType: !1223, size: 64, offset: 14656)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2389, file: !2034, line: 1084, baseType: !2818, size: 128, offset: 14720)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2819)
!2819 = !{!2820}
!2820 = !DISubrange(count: 16)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2389, file: !2034, line: 1086, baseType: !2822, size: 64, offset: 14848)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2034, line: 55, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2389, file: !2034, line: 1089, baseType: !2825, size: 64, offset: 14912)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2826, line: 12, size: 64, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2827 = !{!2828}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2825, file: !2826, line: 13, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2826, line: 8, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2389, file: !2034, line: 1090, baseType: !2832, size: 128, offset: 14976)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2833, line: 13, size: 128, elements: !2834)
!2833 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2834 = !{!2835}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2832, file: !2833, line: 14, baseType: !210, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2389, file: !2034, line: 1097, baseType: !2837, size: 64, offset: 15104)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2034, line: 50, flags: DIFlagFwdDecl)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2389, file: !2034, line: 1100, baseType: !2840, size: 64, offset: 15168)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2034, line: 1100, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2389, file: !2034, line: 1103, baseType: !2843, size: 64, offset: 15232)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2034, line: 53, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2389, file: !2034, line: 1107, baseType: !2846, size: 64, offset: 15296)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2848, line: 35, flags: DIFlagFwdDecl)
!2848 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2389, file: !2034, line: 1110, baseType: !2850, size: 64, offset: 15360)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2852, line: 93, size: 8768, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2853 = !{!2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2901, !2910, !2911, !2913, !2914, !2915, !2918, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2956, !2957, !2964, !2974, !2977, !2978, !2981, !2982, !2983, !2984, !2985, !2986}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2851, file: !2852, line: 94, baseType: !1164, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2851, file: !2852, line: 95, baseType: !244, size: 32, offset: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2851, file: !2852, line: 96, baseType: !115, size: 32, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2851, file: !2852, line: 97, baseType: !115, size: 32, offset: 96)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2851, file: !2852, line: 98, baseType: !210, size: 128, offset: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2851, file: !2852, line: 100, baseType: !1174, size: 192, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2851, file: !2852, line: 103, baseType: !2388, size: 64, offset: 448)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2851, file: !2852, line: 106, baseType: !2862, size: 192, offset: 512)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1378, line: 32, size: 192, elements: !2863)
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2862, file: !1378, line: 33, baseType: !210, size: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2862, file: !1378, line: 34, baseType: !2866, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2867, line: 25, baseType: !2868)
!2867 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2867, line: 23, size: 64, elements: !2869)
!2869 = !{!2870}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2868, file: !2867, line: 24, baseType: !2626, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2851, file: !2852, line: 109, baseType: !1005, size: 64, offset: 704)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2851, file: !2852, line: 112, baseType: !115, size: 32, offset: 768)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2851, file: !2852, line: 114, baseType: !115, size: 32, offset: 800)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2851, file: !2852, line: 115, baseType: !2388, size: 64, offset: 832)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2851, file: !2852, line: 118, baseType: !115, size: 32, offset: 896)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2851, file: !2852, line: 119, baseType: !13, size: 32, offset: 928)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2851, file: !2852, line: 121, baseType: !2878, size: 64, offset: 960)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2852, line: 80, size: 448, elements: !2880)
!2880 = !{!2881, !2882, !2888}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2879, file: !2852, line: 81, baseType: !244, size: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2879, file: !2852, line: 82, baseType: !2883, size: 128, offset: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2852, line: 75, size: 128, elements: !2884)
!2884 = !{!2885, !2886}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2883, file: !2852, line: 76, baseType: !2388, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2883, file: !2852, line: 77, baseType: !2887, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2879, file: !2852, line: 83, baseType: !584, size: 256, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2851, file: !2852, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2851, file: !2852, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2851, file: !2852, line: 138, baseType: !13, size: 32, offset: 1056)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2851, file: !2852, line: 139, baseType: !210, size: 128, offset: 1088)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2851, file: !2852, line: 142, baseType: !2499, size: 512, offset: 1216)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2851, file: !2852, line: 143, baseType: !2507, size: 64, offset: 1728)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2851, file: !2852, line: 150, baseType: !2896, size: 256, offset: 1792)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 256, elements: !754)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2852, line: 38, size: 128, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2897, file: !2852, line: 39, baseType: !447, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2897, file: !2852, line: 40, baseType: !447, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2851, file: !2852, line: 156, baseType: !2902, size: 192, offset: 2048)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2852, line: 66, size: 192, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2902, file: !2852, line: 67, baseType: !2905, size: 192)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2852, line: 47, size: 192, elements: !2906)
!2906 = !{!2907, !2908, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2905, file: !2852, line: 48, baseType: !641, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2905, file: !2852, line: 49, baseType: !641, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2905, file: !2852, line: 50, baseType: !641, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2851, file: !2852, line: 160, baseType: !2796, size: 640, offset: 2240)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2851, file: !2852, line: 163, baseType: !2912, size: 256, offset: 2880)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, size: 256, elements: !865)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2851, file: !2852, line: 169, baseType: !1160, size: 64, offset: 3136)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2851, file: !2852, line: 172, baseType: !115, size: 32, offset: 3200)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2851, file: !2852, line: 174, baseType: !2916, size: 64, offset: 3264)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2852, line: 174, flags: DIFlagFwdDecl)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2851, file: !2852, line: 185, baseType: !2919, size: 64, offset: 3328)
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !416, line: 860, baseType: !2920)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 853, size: 64, elements: !2921)
!2921 = !{!2922, !2923}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2920, file: !416, line: 858, baseType: !415, size: 32)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2920, file: !416, line: 859, baseType: !224, size: 32, offset: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2851, file: !2852, line: 186, baseType: !447, size: 64, offset: 3392)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2851, file: !2852, line: 186, baseType: !447, size: 64, offset: 3456)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2851, file: !2852, line: 186, baseType: !447, size: 64, offset: 3520)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2851, file: !2852, line: 186, baseType: !447, size: 64, offset: 3584)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2851, file: !2852, line: 187, baseType: !447, size: 64, offset: 3648)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2851, file: !2852, line: 188, baseType: !447, size: 64, offset: 3712)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2851, file: !2852, line: 189, baseType: !2784, size: 192, offset: 3776)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2851, file: !2852, line: 190, baseType: !344, size: 64, offset: 3968)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2851, file: !2852, line: 190, baseType: !344, size: 64, offset: 4032)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2851, file: !2852, line: 190, baseType: !344, size: 64, offset: 4096)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2851, file: !2852, line: 190, baseType: !344, size: 64, offset: 4160)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2851, file: !2852, line: 191, baseType: !344, size: 64, offset: 4224)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2851, file: !2852, line: 191, baseType: !344, size: 64, offset: 4288)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2851, file: !2852, line: 191, baseType: !344, size: 64, offset: 4352)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2851, file: !2852, line: 191, baseType: !344, size: 64, offset: 4416)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2851, file: !2852, line: 192, baseType: !344, size: 64, offset: 4480)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2851, file: !2852, line: 192, baseType: !344, size: 64, offset: 4544)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2851, file: !2852, line: 192, baseType: !344, size: 64, offset: 4608)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2851, file: !2852, line: 192, baseType: !344, size: 64, offset: 4672)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2851, file: !2852, line: 193, baseType: !344, size: 64, offset: 4736)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2851, file: !2852, line: 193, baseType: !344, size: 64, offset: 4800)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2851, file: !2852, line: 194, baseType: !2946, size: 448, offset: 4864)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2947, line: 12, size: 448, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2948 = !{!2949, !2950, !2951, !2952, !2953, !2954, !2955}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2946, file: !2947, line: 15, baseType: !447, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2946, file: !2947, line: 17, baseType: !447, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2946, file: !2947, line: 19, baseType: !447, size: 64, offset: 128)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2946, file: !2947, line: 21, baseType: !447, size: 64, offset: 192)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2946, file: !2947, line: 29, baseType: !447, size: 64, offset: 256)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2946, file: !2947, line: 35, baseType: !447, size: 64, offset: 320)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2946, file: !2947, line: 44, baseType: !447, size: 64, offset: 384)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2851, file: !2852, line: 202, baseType: !449, size: 64, offset: 5312)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2851, file: !2852, line: 213, baseType: !2958, size: 2048, offset: 5376)
!2958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2959, size: 2048, elements: !2819)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2960, line: 43, size: 128, elements: !2961)
!2960 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2959, file: !2960, line: 44, baseType: !343, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2959, file: !2960, line: 45, baseType: !343, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2851, file: !2852, line: 216, baseType: !2965, size: 448, offset: 7424)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2852, line: 30, size: 448, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2965, file: !2852, line: 31, baseType: !115, size: 32)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2965, file: !2852, line: 32, baseType: !330, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2965, file: !2852, line: 33, baseType: !344, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2965, file: !2852, line: 34, baseType: !447, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2965, file: !2852, line: 34, baseType: !447, size: 64, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2965, file: !2852, line: 35, baseType: !344, size: 64, offset: 320)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2965, file: !2852, line: 35, baseType: !344, size: 64, offset: 384)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2851, file: !2852, line: 219, baseType: !2975, size: 64, offset: 7872)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2852, line: 219, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2851, file: !2852, line: 222, baseType: !13, size: 32, offset: 7936)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2851, file: !2852, line: 223, baseType: !2979, size: 64, offset: 8000)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2852, line: 223, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2851, file: !2852, line: 230, baseType: !715, size: 8, offset: 8064)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2851, file: !2852, line: 231, baseType: !773, size: 16, offset: 8080)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2851, file: !2852, line: 232, baseType: !773, size: 16, offset: 8096)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2851, file: !2852, line: 234, baseType: !1571, size: 64, offset: 8128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2851, file: !2852, line: 237, baseType: !635, size: 256, offset: 8192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2851, file: !2852, line: 243, baseType: !1237, size: 320, offset: 8448)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2389, file: !2034, line: 1111, baseType: !2988, size: 64, offset: 15424)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2852, line: 20, size: 16640, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2989, file: !2852, line: 21, baseType: !224, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2989, file: !2852, line: 22, baseType: !1164, size: 32, offset: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2989, file: !2852, line: 23, baseType: !1174, size: 192, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2989, file: !2852, line: 24, baseType: !2995, size: 16384, offset: 256)
!2995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2996, size: 16384, elements: !299)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1378, line: 51, size: 256, elements: !2997)
!2997 = !{!2998}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2996, file: !1378, line: 52, baseType: !2999, size: 256)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1378, line: 37, size: 256, elements: !3000)
!3000 = !{!3001, !3008, !3009, !3013}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2999, file: !1378, line: 39, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3003, line: 83, baseType: !3004)
!3003 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3003, line: 82, baseType: !3006)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !115}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2999, file: !1378, line: 40, baseType: !344, size: 64, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2999, file: !1378, line: 46, baseType: !3010, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3003, line: 86, baseType: !3011)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3003, line: 85, baseType: !1000)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2999, file: !1378, line: 48, baseType: !2866, size: 64, offset: 192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2389, file: !2034, line: 1112, baseType: !2866, size: 64, offset: 15488)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2389, file: !2034, line: 1113, baseType: !2866, size: 64, offset: 15552)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2389, file: !2034, line: 1115, baseType: !2866, size: 64, offset: 15616)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2389, file: !2034, line: 1116, baseType: !2862, size: 192, offset: 15680)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2389, file: !2034, line: 1117, baseType: !344, size: 64, offset: 15872)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2389, file: !2034, line: 1118, baseType: !341, size: 64, offset: 15936)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2389, file: !2034, line: 1119, baseType: !13, size: 32, offset: 16000)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2389, file: !2034, line: 1121, baseType: !854, size: 64, offset: 16064)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2389, file: !2034, line: 1125, baseType: !3023, size: 64, offset: 16128)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2034, line: 43, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2389, file: !2034, line: 1127, baseType: !380, size: 32, offset: 16192)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2389, file: !2034, line: 1128, baseType: !13, size: 32, offset: 16224)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2389, file: !2034, line: 1130, baseType: !3028, size: 128, offset: 16256)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3029, line: 37, size: 128, elements: !3030)
!3029 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3030 = !{!3031, !3032, !3033}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3028, file: !3029, line: 38, baseType: !115, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3028, file: !3029, line: 39, baseType: !244, size: 32, offset: 32)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3028, file: !3029, line: 40, baseType: !3034, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3029, line: 24, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2389, file: !2034, line: 1131, baseType: !3037, size: 256, offset: 16384)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3038, line: 12, size: 256, elements: !3039)
!3038 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3039 = !{!3040, !3041, !3042, !3043}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3037, file: !3038, line: 13, baseType: !294, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3037, file: !3038, line: 14, baseType: !344, size: 64, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3037, file: !3038, line: 15, baseType: !344, size: 64, offset: 128)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3037, file: !3038, line: 16, baseType: !715, size: 8, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2389, file: !2034, line: 1134, baseType: !447, size: 64, offset: 16640)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2389, file: !2034, line: 1135, baseType: !447, size: 64, offset: 16704)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2389, file: !2034, line: 1138, baseType: !224, size: 32, offset: 16768)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2389, file: !2034, line: 1141, baseType: !593, size: 32, offset: 16800)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2389, file: !2034, line: 1143, baseType: !3049, size: 64, offset: 16832)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2034, line: 735, size: 64, elements: !3050)
!3050 = !{!3051}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3049, file: !2034, line: 736, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2389, file: !2034, line: 1147, baseType: !2558, size: 128, offset: 16896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2389, file: !2034, line: 1149, baseType: !2388, size: 64, offset: 17024)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2389, file: !2034, line: 1151, baseType: !3056, size: 64, offset: 17088)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2034, line: 1151, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2389, file: !2034, line: 1188, baseType: !191, size: 64, offset: 17152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2389, file: !2034, line: 1191, baseType: !3060, size: 64, offset: 17216)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2034, line: 44, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2389, file: !2034, line: 1194, baseType: !3063, size: 64, offset: 17280)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2034, line: 45, flags: DIFlagFwdDecl)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2389, file: !2034, line: 1197, baseType: !3066, size: 64, offset: 17344)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2034, line: 61, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2389, file: !2034, line: 1199, baseType: !3069, size: 64, offset: 17408)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3071, line: 99, size: 128, elements: !3072)
!3071 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3070, file: !3071, line: 100, baseType: !639, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3070, file: !3071, line: 101, baseType: !244, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3070, file: !3071, line: 103, baseType: !264, size: 16, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2389, file: !2034, line: 1202, baseType: !3077, size: 64, offset: 17472)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2034, line: 48, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2389, file: !2034, line: 1205, baseType: !344, size: 64, offset: 17536)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2389, file: !2034, line: 1206, baseType: !3081, size: 64, offset: 17600)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1378, line: 14, baseType: !3083)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1378, line: 12, size: 384, elements: !3084)
!3084 = !{!3085}
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !1378, line: 13, baseType: !3086, size: 384)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !1378, line: 13, size: 384, elements: !3087)
!3087 = !{!3088, !3089, !3090, !3091}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3086, file: !1378, line: 13, baseType: !115, size: 32)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3086, file: !1378, line: 13, baseType: !115, size: 32, offset: 32)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3086, file: !1378, line: 13, baseType: !115, size: 32, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3086, file: !1378, line: 13, baseType: !3092, size: 256, offset: 128)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3093, line: 37, size: 256, elements: !3094)
!3093 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3094 = !{!3095, !3100, !3113, !3119, !3128, !3155, !3160}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3092, file: !3093, line: 42, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 39, size: 64, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3096, file: !3093, line: 40, baseType: !2761, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3096, file: !3093, line: 41, baseType: !386, size: 32, offset: 32)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3092, file: !3093, line: 50, baseType: !3101, size: 192)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 45, size: 192, elements: !3102)
!3102 = !{!3103, !3105, !3106, !3112}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3101, file: !3093, line: 46, baseType: !3104, size: 32)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !328, line: 95, baseType: !115)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3101, file: !3093, line: 47, baseType: !115, size: 32, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3101, file: !3093, line: 48, baseType: !3107, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3093, line: 11, baseType: !3108)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3093, line: 8, size: 64, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3108, file: !3093, line: 9, baseType: !115, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3108, file: !3093, line: 10, baseType: !191, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3101, file: !3093, line: 49, baseType: !115, size: 32, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3092, file: !3093, line: 57, baseType: !3114, size: 128)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 53, size: 128, elements: !3115)
!3115 = !{!3116, !3117, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3114, file: !3093, line: 54, baseType: !2761, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3114, file: !3093, line: 55, baseType: !386, size: 32, offset: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3114, file: !3093, line: 56, baseType: !3107, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3092, file: !3093, line: 66, baseType: !3120, size: 256)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 60, size: 256, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3127}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3120, file: !3093, line: 61, baseType: !2761, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3120, file: !3093, line: 62, baseType: !386, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3120, file: !3093, line: 63, baseType: !115, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3120, file: !3093, line: 64, baseType: !3126, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !328, line: 94, baseType: !329)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3120, file: !3093, line: 65, baseType: !3126, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3092, file: !3093, line: 105, baseType: !3129, size: 256)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 69, size: 256, elements: !3130)
!3130 = !{!3131, !3132}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3129, file: !3093, line: 70, baseType: !191, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !3093, line: 79, baseType: !3133, size: 192, offset: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !3093, line: 79, size: 192, elements: !3134)
!3134 = !{!3135, !3136, !3137, !3144, !3149}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3133, file: !3093, line: 81, baseType: !115, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3133, file: !3093, line: 86, baseType: !773, size: 16)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3133, file: !3093, line: 92, baseType: !3138, size: 192)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !3093, line: 88, size: 192, elements: !3139)
!3139 = !{!3140, !3142, !3143}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3138, file: !3093, line: 89, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2542)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3138, file: !3093, line: 90, baseType: !191, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3138, file: !3093, line: 91, baseType: !191, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3133, file: !3093, line: 97, baseType: !3145, size: 96)
!3145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !3093, line: 94, size: 96, elements: !3146)
!3146 = !{!3147, !3148}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3145, file: !3093, line: 95, baseType: !3141, size: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3145, file: !3093, line: 96, baseType: !444, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3133, file: !3093, line: 103, baseType: !3150, size: 128)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !3093, line: 99, size: 128, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3150, file: !3093, line: 100, baseType: !344, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3150, file: !3093, line: 101, baseType: !444, size: 32, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3150, file: !3093, line: 102, baseType: !444, size: 32, offset: 96)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3092, file: !3093, line: 111, baseType: !3156, size: 128)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 108, size: 128, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3156, file: !3093, line: 109, baseType: !330, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3156, file: !3093, line: 110, baseType: !115, size: 32, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3092, file: !3093, line: 118, baseType: !3161, size: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3092, file: !3093, line: 114, size: 128, elements: !3162)
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3161, file: !3093, line: 115, baseType: !191, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3161, file: !3093, line: 116, baseType: !115, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3161, file: !3093, line: 117, baseType: !13, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2389, file: !2034, line: 1208, baseType: !2946, size: 448, offset: 17664)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2389, file: !2034, line: 1215, baseType: !447, size: 64, offset: 18112)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2389, file: !2034, line: 1217, baseType: !447, size: 64, offset: 18176)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2389, file: !2034, line: 1219, baseType: !447, size: 64, offset: 18240)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2389, file: !2034, line: 1223, baseType: !3171, size: 64, offset: 18304)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3172, line: 99, baseType: !3173)
!3172 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3172, line: 99, size: 64, elements: !3174)
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3173, file: !3172, line: 99, baseType: !2626, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2389, file: !2034, line: 1225, baseType: !415, size: 32, offset: 18368)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2389, file: !2034, line: 1226, baseType: !115, size: 32, offset: 18400)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2389, file: !2034, line: 1227, baseType: !115, size: 32, offset: 18432)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2389, file: !2034, line: 1231, baseType: !3180, size: 64, offset: 18496)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2034, line: 1231, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2389, file: !2034, line: 1233, baseType: !210, size: 128, offset: 18560)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2389, file: !2034, line: 1240, baseType: !3184, size: 64, offset: 18688)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2034, line: 62, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2389, file: !2034, line: 1242, baseType: !3187, size: 64, offset: 18752)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2034, line: 1242, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2389, file: !2034, line: 1244, baseType: !210, size: 128, offset: 18816)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2389, file: !2034, line: 1245, baseType: !3191, size: 64, offset: 18944)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2034, line: 51, flags: DIFlagFwdDecl)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2389, file: !2034, line: 1246, baseType: !635, size: 256, offset: 19008)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2389, file: !2034, line: 1247, baseType: !13, size: 32, offset: 19264)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2389, file: !2034, line: 1250, baseType: !3196, size: 64, offset: 19328)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2034, line: 57, flags: DIFlagFwdDecl)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2389, file: !2034, line: 1251, baseType: !635, size: 256, offset: 19392)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2389, file: !2034, line: 1252, baseType: !210, size: 128, offset: 19648)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2389, file: !2034, line: 1259, baseType: !1980, size: 64, offset: 19776)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2389, file: !2034, line: 1260, baseType: !773, size: 16, offset: 19840)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2389, file: !2034, line: 1261, baseType: !773, size: 16, offset: 19856)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2389, file: !2034, line: 1314, baseType: !3204, size: 64, offset: 19904)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3206, line: 62, size: 256, align: 256, elements: !3207)
!3206 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3207 = !{!3208, !3209, !3210, !3211, !3212, !3213, !3214}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3205, file: !3206, line: 75, baseType: !444, size: 32)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3205, file: !3206, line: 90, baseType: !444, size: 32, offset: 32)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3205, file: !3206, line: 112, baseType: !448, size: 64, offset: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3205, file: !3206, line: 132, baseType: !444, size: 32, offset: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3205, file: !3206, line: 140, baseType: !444, size: 32, offset: 160)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3205, file: !3206, line: 149, baseType: !444, size: 32, offset: 192)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3205, file: !3206, line: 154, baseType: !3215, offset: 224)
!3215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1189)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2389, file: !2034, line: 1315, baseType: !443, size: 32, offset: 19968)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2389, file: !2034, line: 1316, baseType: !443, size: 32, offset: 20000)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2389, file: !2034, line: 1321, baseType: !344, size: 64, offset: 20032)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2389, file: !2034, line: 1325, baseType: !115, size: 32, offset: 20096)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2389, file: !2034, line: 1326, baseType: !115, size: 32, offset: 20128)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2389, file: !2034, line: 1327, baseType: !115, size: 32, offset: 20160)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2389, file: !2034, line: 1328, baseType: !115, size: 32, offset: 20192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2389, file: !2034, line: 1329, baseType: !855, size: 128, align: 64, offset: 20224)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2389, file: !2034, line: 1332, baseType: !3225, size: 128, offset: 20352)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3226, line: 51, size: 128, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3227 = !{!3228, !3233, !3234}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3225, file: !3226, line: 60, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3230, line: 7, size: 64, elements: !3231)
!3230 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3231 = !{!3232}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3229, file: !3230, line: 12, baseType: !2623, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3225, file: !3226, line: 63, baseType: !715, size: 8, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3225, file: !3226, line: 70, baseType: !715, size: 8, offset: 72)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2389, file: !2034, line: 1335, baseType: !2032, size: 64, offset: 20480)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2389, file: !2034, line: 1337, baseType: !3237, size: 128, offset: 20544)
!3237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3226, line: 39, size: 128, elements: !3238)
!3238 = !{!3239, !3240, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3237, file: !3226, line: 40, baseType: !1819, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3237, file: !3226, line: 42, baseType: !444, size: 32, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3237, file: !3226, line: 43, baseType: !444, size: 32, offset: 96)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2389, file: !2034, line: 1340, baseType: !3243, size: 64, offset: 20672)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2034, line: 69, flags: DIFlagFwdDecl)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2389, file: !2034, line: 1351, baseType: !115, size: 32, offset: 20736)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2389, file: !2034, line: 1352, baseType: !115, size: 32, offset: 20768)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2389, file: !2034, line: 1354, baseType: !344, size: 64, offset: 20800)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2389, file: !2034, line: 1364, baseType: !447, size: 64, offset: 20864)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2389, file: !2034, line: 1365, baseType: !447, size: 64, offset: 20928)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2389, file: !2034, line: 1412, baseType: !344, size: 64, offset: 20992)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2389, file: !2034, line: 1453, baseType: !3252, size: 64, offset: 21056)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2034, line: 1453, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2389, file: !2034, line: 1457, baseType: !3255, size: 64, offset: 21120)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3257)
!3257 = !{!3258, !3259, !3278, !3281, !3282, !3315, !3325}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3256, file: !74, line: 62, baseType: !73, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !74, line: 64, baseType: !3260, size: 192, offset: 64)
!3260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3256, file: !74, line: 64, size: 192, elements: !3261)
!3261 = !{!3262, !3273}
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !74, line: 65, baseType: !3263, size: 192)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !74, line: 65, size: 192, elements: !3264)
!3264 = !{!3265, !3272}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3263, file: !74, line: 66, baseType: !3266, size: 128)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3267, line: 50, size: 128, elements: !3268)
!3267 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3266, file: !3267, line: 52, baseType: !344, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3266, file: !3267, line: 54, baseType: !13, size: 32, offset: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3266, file: !3267, line: 55, baseType: !13, size: 32, offset: 96)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3263, file: !74, line: 67, baseType: !344, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3260, file: !74, line: 70, baseType: !3274, size: 192)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3260, file: !74, line: 70, size: 192, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3274, file: !74, line: 71, baseType: !855, size: 128, align: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3274, file: !74, line: 72, baseType: !344, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3256, file: !74, line: 76, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3256, file: !74, line: 77, baseType: !344, size: 64, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3256, file: !74, line: 79, baseType: !3283, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3267, line: 25, size: 256, elements: !3285)
!3285 = !{!3286, !3292, !3296}
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !3267, line: 26, baseType: !3287, size: 128)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3284, file: !3267, line: 26, size: 128, elements: !3288)
!3288 = !{!3289, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3287, file: !3267, line: 27, baseType: !3290, size: 128)
!3290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, elements: !2819)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3287, file: !3267, line: 28, baseType: !3290, size: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3284, file: !3267, line: 31, baseType: !3293, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3267, line: 23, flags: DIFlagFwdDecl)
!3296 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !3267, line: 33, baseType: !3297, size: 64, offset: 192)
!3297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3284, file: !3267, line: 33, size: 64, elements: !3298)
!3298 = !{!3299, !3305, !3310}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3297, file: !3267, line: 38, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3267, line: 34, size: 64, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3300, file: !3267, line: 35, baseType: !631, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3300, file: !3267, line: 36, baseType: !252, size: 8, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3300, file: !3267, line: 37, baseType: !252, size: 8, offset: 40)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3297, file: !3267, line: 42, baseType: !3306, size: 16)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3267, line: 39, size: 16, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3306, file: !3267, line: 40, baseType: !252, size: 8)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3306, file: !3267, line: 41, baseType: !252, size: 8, offset: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3297, file: !3267, line: 46, baseType: !3311, size: 16)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3267, line: 43, size: 16, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3311, file: !3267, line: 44, baseType: !252, size: 8)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3311, file: !3267, line: 45, baseType: !252, size: 8, offset: 8)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3256, file: !74, line: 81, baseType: !3316, size: 64, offset: 448)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3317, file: !74, line: 86, baseType: !3279, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3317, file: !74, line: 87, baseType: !344, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3317, file: !74, line: 88, baseType: !344, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3317, file: !74, line: 89, baseType: !344, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3317, file: !74, line: 90, baseType: !715, size: 8, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3317, file: !74, line: 92, baseType: !3316, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3256, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2389, file: !2034, line: 1463, baseType: !3327, offset: 21184)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2034, line: 739, elements: !924)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2389, file: !2034, line: 1470, baseType: !855, size: 128, align: 64, offset: 21184)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2389, file: !2034, line: 1471, baseType: !1164, size: 32, offset: 21312)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2389, file: !2034, line: 1472, baseType: !115, size: 32, offset: 21344)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2389, file: !2034, line: 1474, baseType: !2388, size: 64, offset: 21376)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2389, file: !2034, line: 1475, baseType: !877, size: 320, offset: 21440)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2389, file: !2034, line: 1478, baseType: !3334, size: 64, offset: 21760)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3336, line: 49, size: 512, elements: !3337)
!3336 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3344, !3345, !3346, !3348}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3335, file: !3336, line: 50, baseType: !3334, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3335, file: !3336, line: 51, baseType: !191, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3335, file: !3336, line: 52, baseType: !344, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3335, file: !3336, line: 53, baseType: !344, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3335, file: !3336, line: 54, baseType: !3343, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3335, file: !3336, line: 56, baseType: !13, size: 32, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3335, file: !3336, line: 58, baseType: !13, size: 32, offset: 352)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3335, file: !3336, line: 59, baseType: !3347, size: 64, offset: 384)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !211, line: 159, baseType: !447)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3335, file: !3336, line: 60, baseType: !1686, size: 64, offset: 448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2389, file: !2034, line: 1482, baseType: !1164, size: 32, offset: 21824)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2389, file: !2034, line: 1489, baseType: !191, size: 64, offset: 21888)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2389, file: !2034, line: 1504, baseType: !191, size: 64, offset: 21952)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2389, file: !2034, line: 1505, baseType: !448, size: 64, offset: 22016)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2389, file: !2034, line: 1506, baseType: !447, size: 64, offset: 22080)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2389, file: !2034, line: 1507, baseType: !448, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2389, file: !2034, line: 1508, baseType: !448, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2389, file: !2034, line: 1509, baseType: !448, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2389, file: !2034, line: 1510, baseType: !855, size: 128, align: 64, offset: 22208)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2389, file: !2034, line: 1511, baseType: !115, size: 32, offset: 22336)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2389, file: !2034, line: 1515, baseType: !3360, size: 64, offset: 22400)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1122, line: 56, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3360, file: !1122, line: 57, baseType: !1125, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2389, file: !2034, line: 1518, baseType: !3360, size: 64, offset: 22464)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2389, file: !2034, line: 1528, baseType: !855, size: 128, align: 64, offset: 22528)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2389, file: !2034, line: 1552, baseType: !3366, size: 35328, offset: 23040)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3367, line: 430, size: 35328, elements: !3368)
!3367 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3368 = !{!3369, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3398, !3399, !3400, !3401, !3402, !3403, !3406, !3407, !3408, !3409}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3366, file: !3367, line: 432, baseType: !3370, size: 192)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3371, size: 192, elements: !295)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3372, line: 16, size: 64, elements: !3373)
!3372 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3371, file: !3372, line: 17, baseType: !262, size: 16)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3371, file: !3372, line: 18, baseType: !262, size: 16, offset: 16)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3371, file: !3372, line: 19, baseType: !262, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3371, file: !3372, line: 19, baseType: !262, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3371, file: !3372, line: 19, baseType: !262, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3371, file: !3372, line: 19, baseType: !262, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3371, file: !3372, line: 19, baseType: !262, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3371, file: !3372, line: 20, baseType: !262, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3371, file: !3372, line: 20, baseType: !262, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3371, file: !3372, line: 20, baseType: !262, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3371, file: !3372, line: 20, baseType: !262, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3371, file: !3372, line: 20, baseType: !262, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3371, file: !3372, line: 20, baseType: !262, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3366, file: !3367, line: 436, baseType: !344, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3366, file: !3367, line: 440, baseType: !264, size: 16, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3366, file: !3367, line: 441, baseType: !264, size: 16, offset: 272)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3366, file: !3367, line: 442, baseType: !264, size: 16, offset: 288)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3366, file: !3367, line: 443, baseType: !264, size: 16, offset: 304)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3366, file: !3367, line: 447, baseType: !344, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3366, file: !3367, line: 448, baseType: !344, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3366, file: !3367, line: 459, baseType: !3395, size: 256, offset: 448)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3396, size: 256, elements: !865)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3367, line: 428, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3366, file: !3367, line: 461, baseType: !344, size: 64, offset: 704)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3366, file: !3367, line: 463, baseType: !344, size: 64, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3366, file: !3367, line: 465, baseType: !344, size: 64, offset: 832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3366, file: !3367, line: 466, baseType: !344, size: 64, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3366, file: !3367, line: 467, baseType: !344, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3366, file: !3367, line: 473, baseType: !3404, size: 64, offset: 1024)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3367, line: 10, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3366, file: !3367, line: 480, baseType: !344, size: 64, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3366, file: !3367, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3366, file: !3367, line: 491, baseType: !443, size: 32, offset: 1184)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3366, file: !3367, line: 501, baseType: !3410, size: 33792, offset: 1536)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3411, line: 448, size: 33792, elements: !3412)
!3411 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3412 = !{!3413, !3414, !3415, !3577, !3578, !3584, !3585}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3410, file: !3411, line: 461, baseType: !13, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3410, file: !3411, line: 468, baseType: !344, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3410, file: !3411, line: 476, baseType: !3416, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3411, line: 356, size: 33280, align: 512, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3417, file: !3411, line: 358, baseType: !13, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3417, file: !3411, line: 361, baseType: !13, size: 32, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3417, file: !3411, line: 364, baseType: !447, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3417, file: !3411, line: 367, baseType: !447, size: 64, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3417, file: !3411, line: 370, baseType: !447, size: 64, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3417, file: !3411, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3417, file: !3411, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3417, file: !3411, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3417, file: !3411, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3417, file: !3411, line: 397, baseType: !3429, size: 32768, offset: 512)
!3429 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3411, line: 348, size: 32768, elements: !3430)
!3430 = !{!3431, !3446, !3483, !3560, !3573}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3429, file: !3411, line: 349, baseType: !3432, size: 896)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3411, line: 12, size: 896, elements: !3433)
!3433 = !{!3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3445}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3432, file: !3411, line: 13, baseType: !443, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3432, file: !3411, line: 14, baseType: !443, size: 32, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3432, file: !3411, line: 15, baseType: !443, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3432, file: !3411, line: 16, baseType: !443, size: 32, offset: 96)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3432, file: !3411, line: 17, baseType: !443, size: 32, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3432, file: !3411, line: 18, baseType: !443, size: 32, offset: 160)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3432, file: !3411, line: 19, baseType: !443, size: 32, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3432, file: !3411, line: 22, baseType: !3442, size: 640, offset: 224)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 640, elements: !3443)
!3443 = !{!3444}
!3444 = !DISubrange(count: 20)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3432, file: !3411, line: 25, baseType: !443, size: 32, offset: 864)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3429, file: !3411, line: 350, baseType: !3447, size: 4096, align: 128)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3411, line: 34, size: 4096, align: 128, elements: !3448)
!3448 = !{!3449, !3450, !3451, !3452, !3453, !3468, !3469, !3470, !3472, !3474, !3478}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3447, file: !3411, line: 35, baseType: !262, size: 16)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3447, file: !3411, line: 36, baseType: !262, size: 16, offset: 16)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3447, file: !3411, line: 37, baseType: !262, size: 16, offset: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3447, file: !3411, line: 38, baseType: !262, size: 16, offset: 48)
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3411, line: 39, baseType: !3454, size: 128, offset: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3447, file: !3411, line: 39, size: 128, elements: !3455)
!3455 = !{!3456, !3461}
!3456 = !DIDerivedType(tag: DW_TAG_member, scope: !3454, file: !3411, line: 40, baseType: !3457, size: 128)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3411, line: 40, size: 128, elements: !3458)
!3458 = !{!3459, !3460}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3457, file: !3411, line: 41, baseType: !447, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3457, file: !3411, line: 42, baseType: !447, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, scope: !3454, file: !3411, line: 44, baseType: !3462, size: 128)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3411, line: 44, size: 128, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3462, file: !3411, line: 45, baseType: !443, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3462, file: !3411, line: 46, baseType: !443, size: 32, offset: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3462, file: !3411, line: 47, baseType: !443, size: 32, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3462, file: !3411, line: 48, baseType: !443, size: 32, offset: 96)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3447, file: !3411, line: 51, baseType: !443, size: 32, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3447, file: !3411, line: 52, baseType: !443, size: 32, offset: 224)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3447, file: !3411, line: 55, baseType: !3471, size: 1024, offset: 256)
!3471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 1024, elements: !456)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3447, file: !3411, line: 58, baseType: !3473, size: 2048, offset: 1280)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 2048, elements: !299)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3447, file: !3411, line: 60, baseType: !3475, size: 384, offset: 3328)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !3476)
!3476 = !{!3477}
!3477 = !DISubrange(count: 12)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3411, line: 62, baseType: !3479, size: 384, offset: 3712)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3447, file: !3411, line: 62, size: 384, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3479, file: !3411, line: 63, baseType: !3475, size: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3479, file: !3411, line: 64, baseType: !3475, size: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3429, file: !3411, line: 351, baseType: !3484, size: 1088)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3411, line: 79, size: 1088, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3559}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3484, file: !3411, line: 80, baseType: !443, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3484, file: !3411, line: 81, baseType: !443, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3484, file: !3411, line: 82, baseType: !443, size: 32, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3484, file: !3411, line: 83, baseType: !443, size: 32, offset: 96)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3484, file: !3411, line: 84, baseType: !443, size: 32, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3484, file: !3411, line: 85, baseType: !443, size: 32, offset: 160)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3484, file: !3411, line: 86, baseType: !443, size: 32, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3484, file: !3411, line: 88, baseType: !3442, size: 640, offset: 224)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3484, file: !3411, line: 89, baseType: !252, size: 8, offset: 864)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3484, file: !3411, line: 90, baseType: !252, size: 8, offset: 872)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3484, file: !3411, line: 91, baseType: !252, size: 8, offset: 880)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3484, file: !3411, line: 92, baseType: !252, size: 8, offset: 888)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3484, file: !3411, line: 93, baseType: !252, size: 8, offset: 896)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3484, file: !3411, line: 94, baseType: !252, size: 8, offset: 904)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3484, file: !3411, line: 95, baseType: !3501, size: 64, offset: 960)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3503, line: 11, size: 128, elements: !3504)
!3503 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3504 = !{!3505, !3506}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3502, file: !3503, line: 12, baseType: !330, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3502, file: !3503, line: 13, baseType: !3507, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3509, line: 103, size: 1344, elements: !3510)
!3509 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3510 = !{!3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3539, !3540, !3541}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3508, file: !3509, line: 109, baseType: !344, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3508, file: !3509, line: 110, baseType: !344, size: 64, offset: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3508, file: !3509, line: 111, baseType: !344, size: 64, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3508, file: !3509, line: 112, baseType: !344, size: 64, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3508, file: !3509, line: 113, baseType: !344, size: 64, offset: 256)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3508, file: !3509, line: 114, baseType: !344, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3508, file: !3509, line: 117, baseType: !344, size: 64, offset: 384)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3508, file: !3509, line: 118, baseType: !344, size: 64, offset: 448)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3508, file: !3509, line: 119, baseType: !344, size: 64, offset: 512)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3508, file: !3509, line: 120, baseType: !344, size: 64, offset: 576)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3508, file: !3509, line: 121, baseType: !344, size: 64, offset: 640)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3508, file: !3509, line: 122, baseType: !344, size: 64, offset: 704)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3508, file: !3509, line: 123, baseType: !344, size: 64, offset: 768)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3508, file: !3509, line: 124, baseType: !344, size: 64, offset: 832)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3508, file: !3509, line: 125, baseType: !344, size: 64, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3508, file: !3509, line: 139, baseType: !344, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3508, file: !3509, line: 142, baseType: !344, size: 64, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !3509, line: 144, baseType: !3529, size: 64, offset: 1088)
!3529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3508, file: !3509, line: 144, size: 64, elements: !3530)
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3529, file: !3509, line: 146, baseType: !262, size: 16)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3529, file: !3509, line: 148, baseType: !447, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3529, file: !3509, line: 150, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3509, line: 59, size: 64, elements: !3535)
!3535 = !{!3536, !3537, !3538}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3534, file: !3509, line: 61, baseType: !447, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3534, file: !3509, line: 63, baseType: !447, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3534, file: !3509, line: 65, baseType: !447, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3508, file: !3509, line: 153, baseType: !344, size: 64, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3508, file: !3509, line: 154, baseType: !344, size: 64, offset: 1216)
!3541 = !DIDerivedType(tag: DW_TAG_member, scope: !3508, file: !3509, line: 156, baseType: !3542, size: 64, offset: 1280)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3508, file: !3509, line: 156, size: 64, elements: !3543)
!3543 = !{!3544, !3545, !3546}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3542, file: !3509, line: 158, baseType: !262, size: 16)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3542, file: !3509, line: 160, baseType: !447, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3542, file: !3509, line: 162, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3509, line: 69, size: 64, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3547, file: !3509, line: 71, baseType: !447, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3547, file: !3509, line: 73, baseType: !447, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3547, file: !3509, line: 75, baseType: !447, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3547, file: !3509, line: 77, baseType: !447, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3547, file: !3509, line: 80, baseType: !447, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3547, file: !3509, line: 83, baseType: !447, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3547, file: !3509, line: 86, baseType: !447, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3547, file: !3509, line: 88, baseType: !447, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3547, file: !3509, line: 93, baseType: !447, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3547, file: !3509, line: 100, baseType: !447, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3484, file: !3411, line: 96, baseType: !443, size: 32, offset: 1024)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3429, file: !3411, line: 352, baseType: !3561, size: 4608, align: 512)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3411, line: 333, size: 4608, align: 512, elements: !3562)
!3562 = !{!3563, !3564, !3571}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3561, file: !3411, line: 334, baseType: !3447, size: 4096, align: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3561, file: !3411, line: 335, baseType: !3565, size: 512, offset: 4096)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3411, line: 312, size: 512, elements: !3566)
!3566 = !{!3567, !3568, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3565, file: !3411, line: 313, baseType: !447, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3565, file: !3411, line: 314, baseType: !447, size: 64, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3565, file: !3411, line: 315, baseType: !3570, size: 384, offset: 128)
!3570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 384, elements: !5)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3561, file: !3411, line: 336, baseType: !3572, offset: 4608)
!3572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, elements: !1189)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3429, file: !3411, line: 353, baseType: !3574, size: 32768)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 32768, elements: !3575)
!3575 = !{!3576}
!3576 = !DISubrange(count: 4096)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3410, file: !3411, line: 484, baseType: !3416, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3410, file: !3411, line: 491, baseType: !3579, size: 128, offset: 256)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3411, line: 404, size: 128, elements: !3580)
!3580 = !{!3581, !3582, !3583}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3579, file: !3411, line: 424, baseType: !447, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3579, file: !3411, line: 432, baseType: !13, size: 32, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3579, file: !3411, line: 440, baseType: !13, size: 32, offset: 96)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3410, file: !3411, line: 498, baseType: !3579, size: 128, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3410, file: !3411, line: 508, baseType: !3417, size: 33280, align: 512, offset: 512)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2371, file: !2372, line: 16, baseType: !1174, size: 192, offset: 512)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2371, file: !2372, line: 17, baseType: !244, size: 32, offset: 704)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !526, file: !20, line: 1240, baseType: !191, size: 64, offset: 6912)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !526, file: !20, line: 1243, baseType: !443, size: 32, offset: 6976)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !526, file: !20, line: 1245, baseType: !1253, size: 64, offset: 7040)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !526, file: !20, line: 1246, baseType: !1253, size: 64, offset: 7104)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !526, file: !20, line: 1248, baseType: !444, size: 32, offset: 7168)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !526, file: !20, line: 1249, baseType: !3594, size: 64, offset: 7232)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !526, file: !20, line: 1252, baseType: !3597, size: 256, offset: 7296)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !456)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !526, file: !20, line: 1253, baseType: !3599, size: 128, offset: 7552)
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3600, line: 21, baseType: !3601)
!3600 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3600, line: 19, size: 128, elements: !3602)
!3602 = !{!3603}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3601, file: !3600, line: 20, baseType: !3604, size: 128)
!3604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !2819)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !526, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !526, file: !20, line: 1261, baseType: !635, size: 256, offset: 7744)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !526, file: !20, line: 1267, baseType: !207, size: 64, offset: 8000)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !526, file: !20, line: 1269, baseType: !472, size: 64, offset: 8064)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !526, file: !20, line: 1271, baseType: !3610, size: 448, offset: 8128)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2151, line: 63, size: 448, elements: !3611)
!3611 = !{!3612, !3617, !3618, !3619, !3620, !3621, !3622}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3610, file: !2151, line: 64, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!344, !3616, !2149}
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3610, file: !2151, line: 66, baseType: !3613, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3610, file: !2151, line: 69, baseType: !330, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3610, file: !2151, line: 70, baseType: !115, size: 32, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3610, file: !2151, line: 71, baseType: !13, size: 32, offset: 224)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3610, file: !2151, line: 74, baseType: !210, size: 128, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3610, file: !2151, line: 85, baseType: !3623, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !526, file: !20, line: 1274, baseType: !639, size: 64, offset: 8576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !526, file: !20, line: 1280, baseType: !639, size: 64, offset: 8640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !526, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !526, file: !20, line: 1286, baseType: !2083, size: 32, offset: 8736)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !526, file: !20, line: 1289, baseType: !957, size: 64, offset: 8768)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !526, file: !20, line: 1290, baseType: !1005, size: 64, offset: 8832)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !526, file: !20, line: 1297, baseType: !1373, size: 64, offset: 8896)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !526, file: !20, line: 1304, baseType: !3632, size: 64, offset: 8960)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3633, line: 49, size: 64, elements: !3634)
!3633 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3634 = !{!3635}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3632, file: !3633, line: 50, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3633, line: 41, size: 512, align: 512, elements: !3638)
!3638 = !{!3639, !3640, !3645}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3637, file: !3633, line: 43, baseType: !224, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3637, file: !3633, line: 45, baseType: !3641, size: 192, offset: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3633, line: 29, size: 192, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3641, file: !3633, line: 30, baseType: !210, size: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3641, file: !3633, line: 32, baseType: !330, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3637, file: !3633, line: 46, baseType: !330, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !526, file: !20, line: 1305, baseType: !3632, size: 64, offset: 9024)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !526, file: !20, line: 1306, baseType: !855, size: 128, align: 64, offset: 9088)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !526, file: !20, line: 1307, baseType: !895, size: 256, offset: 9216)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !526, file: !20, line: 1309, baseType: !635, size: 256, offset: 9472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !526, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !526, file: !20, line: 1317, baseType: !224, size: 32, align: 512, offset: 10240)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !526, file: !20, line: 1318, baseType: !210, size: 128, offset: 10304)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !526, file: !20, line: 1320, baseType: !224, size: 32, offset: 10432)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !526, file: !20, line: 1321, baseType: !210, size: 128, offset: 10496)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !520, file: !521, line: 73, baseType: !115, size: 32, offset: 128)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !520, file: !521, line: 74, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1213, line: 42, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !474, file: !411, line: 141, baseType: !3661, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!115, !2211, !715}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !474, file: !411, line: 142, baseType: !3665, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!409, !409, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !410, file: !411, line: 96, baseType: !525, size: 64, offset: 832)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !410, file: !411, line: 97, baseType: !344, size: 64, offset: 896)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !410, file: !411, line: 98, baseType: !191, size: 64, offset: 960)
!3673 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 100, baseType: !3674, size: 128, offset: 1024)
!3674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 100, size: 128, elements: !3675)
!3675 = !{!3676, !3677}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3674, file: !411, line: 101, baseType: !210, size: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3674, file: !411, line: 102, baseType: !1547, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !410, file: !411, line: 104, baseType: !210, size: 128, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !410, file: !411, line: 105, baseType: !210, size: 128, offset: 1280)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !410, file: !411, line: 113, baseType: !3681, size: 128, offset: 1408)
!3681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 109, size: 128, elements: !3682)
!3682 = !{!3683, !3684, !3685}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3681, file: !411, line: 110, baseType: !881, size: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3681, file: !411, line: 111, baseType: !425, size: 128)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3681, file: !411, line: 112, baseType: !855, size: 128, align: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !403, file: !20, line: 1968, baseType: !3687, size: 64, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!207, !409, !374, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3692, line: 10, size: 128, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3693 = !{!3694, !3695}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3691, file: !3692, line: 11, baseType: !678, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3691, file: !3692, line: 12, baseType: !191, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !403, file: !20, line: 1969, baseType: !3697, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!115, !3657, !374, !115}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !403, file: !20, line: 1970, baseType: !3701, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!397, !374, !115, !715}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !403, file: !20, line: 1972, baseType: !3705, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!115, !409, !294, !115}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !403, file: !20, line: 1974, baseType: !3709, size: 64, offset: 320)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!115, !3657, !374, !409, !336, !715}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !403, file: !20, line: 1976, baseType: !3713, size: 64, offset: 384)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!115, !409, !374, !409}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !403, file: !20, line: 1977, baseType: !3717, size: 64, offset: 448)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!115, !374, !409}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !403, file: !20, line: 1978, baseType: !3721, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!115, !3657, !374, !409, !207}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !403, file: !20, line: 1980, baseType: !3725, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!115, !3657, !374, !409, !336}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !403, file: !20, line: 1982, baseType: !3717, size: 64, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !403, file: !20, line: 1983, baseType: !3730, size: 64, offset: 704)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!115, !3657, !374, !409, !336, !530}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !403, file: !20, line: 1985, baseType: !3734, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!115, !3657, !374, !409, !374, !409, !13}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !403, file: !20, line: 1987, baseType: !3738, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!115, !3657, !409, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3743)
!3743 = !{!3744, !3745, !3746, !3756, !3765, !3766, !3771, !3772, !3773}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3742, file: !20, line: 227, baseType: !13, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3742, file: !20, line: 228, baseType: !336, size: 16, offset: 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !20, line: 241, baseType: !3747, size: 32, offset: 64)
!3747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !20, line: 241, size: 32, elements: !3748)
!3748 = !{!3749, !3750}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3747, file: !20, line: 242, baseType: !380, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3747, file: !20, line: 243, baseType: !3751, size: 32)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3752, line: 16, baseType: !3753)
!3752 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3752, line: 14, size: 32, elements: !3754)
!3754 = !{!3755}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3753, file: !3752, line: 15, baseType: !385, size: 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !3742, file: !20, line: 245, baseType: !3757, size: 32, offset: 96)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3742, file: !20, line: 245, size: 32, elements: !3758)
!3758 = !{!3759, !3760}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3757, file: !20, line: 246, baseType: !389, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3757, file: !20, line: 247, baseType: !3761, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3752, line: 20, baseType: !3762)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3752, line: 18, size: 32, elements: !3763)
!3763 = !{!3764}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3762, file: !3752, line: 19, baseType: !393, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3742, file: !20, line: 249, baseType: !535, size: 64, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3742, file: !20, line: 250, baseType: !3767, size: 128, offset: 192)
!3767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1254, line: 13, size: 128, elements: !3768)
!3768 = !{!3769, !3770}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3767, file: !1254, line: 14, baseType: !1253, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3767, file: !1254, line: 15, baseType: !330, size: 64, offset: 64)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3742, file: !20, line: 251, baseType: !3767, size: 128, offset: 320)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3742, file: !20, line: 252, baseType: !3767, size: 128, offset: 448)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3742, file: !20, line: 259, baseType: !1418, size: 64, offset: 576)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !403, file: !20, line: 1988, baseType: !3775, size: 64, offset: 896)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!115, !3657, !2211, !3778, !443, !13}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3780, line: 22, size: 1280, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3781 = !{!3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3779, file: !3780, line: 23, baseType: !443, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3779, file: !3780, line: 24, baseType: !336, size: 16, offset: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3779, file: !3780, line: 25, baseType: !13, size: 32, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3779, file: !3780, line: 26, baseType: !1261, size: 32, offset: 96)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3779, file: !3780, line: 27, baseType: !447, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3779, file: !3780, line: 28, baseType: !447, size: 64, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3779, file: !3780, line: 41, baseType: !447, size: 64, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3779, file: !3780, line: 42, baseType: !530, size: 32, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3779, file: !3780, line: 43, baseType: !530, size: 32, offset: 352)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3779, file: !3780, line: 44, baseType: !380, size: 32, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3779, file: !3780, line: 45, baseType: !389, size: 32, offset: 416)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3779, file: !3780, line: 46, baseType: !535, size: 64, offset: 448)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3779, file: !3780, line: 47, baseType: !3767, size: 128, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3779, file: !3780, line: 48, baseType: !3767, size: 128, offset: 640)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3779, file: !3780, line: 49, baseType: !3767, size: 128, offset: 768)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3779, file: !3780, line: 50, baseType: !3767, size: 128, offset: 896)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3779, file: !3780, line: 51, baseType: !447, size: 64, offset: 1024)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3779, file: !3780, line: 52, baseType: !447, size: 64, offset: 1088)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3779, file: !3780, line: 53, baseType: !443, size: 32, offset: 1152)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3779, file: !3780, line: 54, baseType: !443, size: 32, offset: 1184)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3779, file: !3780, line: 55, baseType: !447, size: 64, offset: 1216)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !403, file: !20, line: 1990, baseType: !3804, size: 64, offset: 960)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!326, !409, !294, !341}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !403, file: !20, line: 1991, baseType: !3808, size: 64, offset: 1024)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!115, !374, !3811, !447, !447}
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !403, file: !20, line: 1993, baseType: !3814, size: 64, offset: 1088)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!115, !374, !115}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !403, file: !20, line: 1994, baseType: !3818, size: 64, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!115, !374, !409, !1418, !13, !336}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !403, file: !20, line: 1997, baseType: !3822, size: 64, offset: 1216)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!115, !3657, !374, !1418, !336}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !403, file: !20, line: 1999, baseType: !3826, size: 64, offset: 1280)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!397, !3657, !409, !115}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !403, file: !20, line: 2001, baseType: !3830, size: 64, offset: 1344)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!115, !3657, !409, !397, !115}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !403, file: !20, line: 2003, baseType: !3834, size: 64, offset: 1408)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!115, !3657, !409, !3837}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !403, file: !20, line: 2005, baseType: !3840, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!115, !409, !3837}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !403, file: !20, line: 2006, baseType: !3844, size: 64, offset: 1536)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3847, !374}
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3849)
!3849 = !{!3850, !3851}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3848, file: !20, line: 3193, baseType: !1498, size: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3848, file: !20, line: 3194, baseType: !443, size: 32, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !375, file: !20, line: 655, baseType: !525, size: 64, offset: 448)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !375, file: !20, line: 656, baseType: !370, size: 64, offset: 512)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !375, file: !20, line: 659, baseType: !191, size: 64, offset: 576)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !375, file: !20, line: 663, baseType: !344, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !20, line: 671, baseType: !3857, size: 32, offset: 704)
!3857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !20, line: 671, size: 32, elements: !3858)
!3858 = !{!3859, !3861}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3857, file: !20, line: 672, baseType: !3860, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3857, file: !20, line: 673, baseType: !13, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !375, file: !20, line: 675, baseType: !530, size: 32, offset: 736)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !375, file: !20, line: 676, baseType: !535, size: 64, offset: 768)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !375, file: !20, line: 677, baseType: !3767, size: 128, offset: 832)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !375, file: !20, line: 678, baseType: !3767, size: 128, offset: 960)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !375, file: !20, line: 679, baseType: !3767, size: 128, offset: 1088)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !375, file: !20, line: 680, baseType: !224, size: 32, offset: 1216)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !375, file: !20, line: 681, baseType: !264, size: 16, offset: 1248)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !375, file: !20, line: 682, baseType: !252, size: 8, offset: 1264)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !375, file: !20, line: 683, baseType: !252, size: 8, offset: 1272)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !375, file: !20, line: 684, baseType: !2284, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !375, file: !20, line: 691, baseType: !344, size: 64, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !375, file: !20, line: 692, baseType: !1237, size: 320, offset: 1408)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !375, file: !20, line: 694, baseType: !344, size: 64, offset: 1728)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !375, file: !20, line: 695, baseType: !344, size: 64, offset: 1792)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !375, file: !20, line: 697, baseType: !881, size: 128, offset: 1856)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !375, file: !20, line: 698, baseType: !210, size: 128, offset: 1984)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !375, file: !20, line: 707, baseType: !210, size: 128, offset: 2112)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !375, file: !20, line: 708, baseType: !210, size: 128, offset: 2240)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !20, line: 709, baseType: !3881, size: 128, offset: 2368)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !20, line: 709, size: 128, elements: !3882)
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3881, file: !20, line: 710, baseType: !1005, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3881, file: !20, line: 711, baseType: !855, size: 128, align: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !375, file: !20, line: 713, baseType: !641, size: 64, offset: 2496)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !375, file: !20, line: 714, baseType: !641, size: 64, offset: 2560)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !375, file: !20, line: 715, baseType: !244, size: 32, offset: 2624)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !375, file: !20, line: 716, baseType: !244, size: 32, offset: 2656)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !375, file: !20, line: 717, baseType: !244, size: 32, offset: 2688)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !375, file: !20, line: 719, baseType: !244, size: 32, offset: 2720)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !20, line: 721, baseType: !3892, size: 64, offset: 2752)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !20, line: 721, size: 64, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3892, file: !20, line: 722, baseType: !1409, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3892, file: !20, line: 723, baseType: !1028, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !375, file: !20, line: 725, baseType: !3897, size: 64, offset: 2816)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !375, file: !20, line: 726, baseType: !371, size: 1536, align: 64, offset: 2880)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !375, file: !20, line: 727, baseType: !210, size: 128, offset: 4416)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !20, line: 728, baseType: !3902, size: 64, offset: 4544)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !20, line: 728, size: 64, elements: !3903)
!3903 = !{!3904, !3905, !3908, !3909}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3902, file: !20, line: 729, baseType: !2032, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3902, file: !20, line: 730, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3902, file: !20, line: 731, baseType: !294, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3902, file: !20, line: 732, baseType: !13, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !375, file: !20, line: 735, baseType: !444, size: 32, offset: 4608)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !375, file: !20, line: 738, baseType: !444, size: 32, offset: 4640)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !375, file: !20, line: 739, baseType: !3594, size: 64, offset: 4672)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !375, file: !20, line: 750, baseType: !191, size: 64, offset: 4736)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !371, file: !20, line: 474, baseType: !1498, size: 128, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !371, file: !20, line: 475, baseType: !1237, size: 320, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !371, file: !20, line: 476, baseType: !1503, size: 32, offset: 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !371, file: !20, line: 477, baseType: !244, size: 32, offset: 544)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !371, file: !20, line: 482, baseType: !2558, size: 128, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !371, file: !20, line: 483, baseType: !344, size: 64, offset: 704)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !371, file: !20, line: 484, baseType: !344, size: 64, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !371, file: !20, line: 485, baseType: !3922, size: 64, offset: 832)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3924)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3925)
!3925 = !{!3926, !3930, !4000, !4004, !4008, !4014, !4018, !4022, !4027, !4031, !4035, !4039, !4040, !4044, !4048, !4052, !4057, !4061, !4068, !4069}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3924, file: !20, line: 405, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!115, !1819, !1040}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3924, file: !20, line: 406, baseType: !3931, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!115, !1418, !3934}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !33, line: 293, size: 1536, elements: !3936)
!3936 = !{!3937, !3967, !3981}
!3937 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !33, line: 295, baseType: !3938, size: 512)
!3938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !33, line: 295, size: 512, elements: !3939)
!3939 = !{!3940, !3966}
!3940 = !DIDerivedType(tag: DW_TAG_member, scope: !3938, file: !33, line: 296, baseType: !3941, size: 448)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3938, file: !33, line: 296, size: 448, elements: !3942)
!3942 = !{!3943, !3944, !3953, !3954, !3955, !3964, !3965}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3941, file: !33, line: 298, baseType: !344, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !33, line: 299, baseType: !3945, size: 128, offset: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3941, file: !33, line: 299, size: 128, elements: !3946)
!3946 = !{!3947, !3948}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3945, file: !33, line: 300, baseType: !210, size: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3945, file: !33, line: 302, baseType: !3949, size: 128)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3945, file: !33, line: 302, size: 128, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3949, file: !33, line: 303, baseType: !191, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3949, file: !33, line: 305, baseType: !13, size: 32, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3941, file: !33, line: 310, baseType: !370, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3941, file: !33, line: 311, baseType: !344, size: 64, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !3941, file: !33, line: 312, baseType: !3956, size: 64, offset: 320)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3941, file: !33, line: 312, size: 64, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3956, file: !33, line: 313, baseType: !191, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3956, file: !33, line: 314, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !33, line: 257, baseType: !3961)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 255, size: 64, elements: !3962)
!3962 = !{!3963}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3961, file: !33, line: 256, baseType: !344, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3941, file: !33, line: 316, baseType: !244, size: 32, offset: 384)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3941, file: !33, line: 317, baseType: !244, size: 32, offset: 416)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3938, file: !33, line: 323, baseType: !1820, size: 512, align: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !33, line: 325, baseType: !3968, size: 512, offset: 512)
!3968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !33, line: 325, size: 512, elements: !3969)
!3969 = !{!3970, !3980}
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3968, file: !33, line: 326, baseType: !3971, size: 320)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3968, file: !33, line: 326, size: 320, elements: !3972)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3979}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3971, file: !33, line: 327, baseType: !344, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3971, file: !33, line: 328, baseType: !344, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3971, file: !33, line: 329, baseType: !344, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3971, file: !33, line: 331, baseType: !244, size: 32, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3971, file: !33, line: 332, baseType: !244, size: 32, offset: 224)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3971, file: !33, line: 333, baseType: !244, size: 32, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3971, file: !33, line: 335, baseType: !13, size: 32, offset: 288)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3968, file: !33, line: 339, baseType: !1820, size: 512, align: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !33, line: 341, baseType: !3982, size: 512, offset: 1024)
!3982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !33, line: 341, size: 512, elements: !3983)
!3983 = !{!3984, !3993, !3999}
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !33, line: 342, baseType: !3985, size: 384)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !33, line: 342, size: 384, elements: !3986)
!3986 = !{!3987, !3988, !3989, !3990, !3991, !3992}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3985, file: !33, line: 343, baseType: !344, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3985, file: !33, line: 344, baseType: !344, size: 64, offset: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3985, file: !33, line: 346, baseType: !191, size: 64, offset: 128)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3985, file: !33, line: 347, baseType: !191, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3985, file: !33, line: 348, baseType: !191, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3985, file: !33, line: 349, baseType: !191, size: 64, offset: 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3982, file: !33, line: 352, baseType: !3994, size: 256)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3982, file: !33, line: 352, size: 256, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3994, file: !33, line: 353, baseType: !344, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3994, file: !33, line: 354, baseType: !344, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3994, file: !33, line: 356, baseType: !210, size: 128, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3982, file: !33, line: 359, baseType: !1820, size: 512, align: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3924, file: !20, line: 409, baseType: !4001, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!115, !370, !1040}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3924, file: !20, line: 412, baseType: !4005, size: 64, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!715, !370, !3934}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3924, file: !20, line: 414, baseType: !4009, size: 64, offset: 256)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{null, !4012}
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3924, file: !20, line: 416, baseType: !4015, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!115, !1418, !370, !535, !13, !3343, !2048}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3924, file: !20, line: 419, baseType: !4019, size: 64, offset: 384)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!115, !1418, !370, !535, !13, !13, !1819, !191}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3924, file: !20, line: 424, baseType: !4023, size: 64, offset: 448)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!4026, !370, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !211, line: 131, baseType: !447)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3924, file: !20, line: 425, baseType: !4028, size: 64, offset: 512)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3934, !341, !341}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3924, file: !20, line: 426, baseType: !4032, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!715, !3934, !1503}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3924, file: !20, line: 427, baseType: !4036, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{null, !3934}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3924, file: !20, line: 428, baseType: !1428, size: 64, offset: 704)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3924, file: !20, line: 433, baseType: !4041, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!115, !370, !3934, !3934, !80}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3924, file: !20, line: 435, baseType: !4045, size: 64, offset: 832)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!115, !3934}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3924, file: !20, line: 436, baseType: !4049, size: 64, offset: 896)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!715, !3934, !341, !341}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3924, file: !20, line: 438, baseType: !4053, size: 64, offset: 960)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !3934, !4056, !4056}
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3924, file: !20, line: 439, baseType: !4058, size: 64, offset: 1024)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!115, !370, !1819}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3924, file: !20, line: 442, baseType: !4062, size: 64, offset: 1088)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!115, !4065, !1418, !4067}
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3924, file: !20, line: 444, baseType: !2040, size: 64, offset: 1152)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3924, file: !20, line: 445, baseType: !4070, size: 64, offset: 1216)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!115, !1431, !1453}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !20, line: 486, baseType: !344, size: 64, offset: 896)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !371, file: !20, line: 487, baseType: !1237, size: 320, offset: 960)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !371, file: !20, line: 488, baseType: !2083, size: 32, offset: 1280)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !371, file: !20, line: 489, baseType: !224, size: 32, offset: 1312)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !371, file: !20, line: 490, baseType: !210, size: 128, offset: 1344)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !371, file: !20, line: 491, baseType: !191, size: 64, offset: 1472)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !361, file: !320, line: 180, baseType: !4080, size: 64, offset: 320)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!326, !1418, !217, !360, !294, !535, !341}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !361, file: !320, line: 182, baseType: !4080, size: 64, offset: 384)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !361, file: !320, line: 184, baseType: !4085, size: 64, offset: 448)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!115, !1418, !217, !360, !1558}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !349, file: !320, line: 90, baseType: !4089, size: 64, offset: 192)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !349, file: !320, line: 91, baseType: !4091, size: 64, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !310, file: !204, line: 120, baseType: !4093, size: 64, offset: 192)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!4096, !277}
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4099)
!4099 = !{!4100, !4101, !4105, !4109, !4115, !4119}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4098, file: !88, line: 40, baseType: !87, size: 32)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4098, file: !88, line: 41, baseType: !4102, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!715}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4098, file: !88, line: 42, baseType: !4106, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!191}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4098, file: !88, line: 43, baseType: !4110, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DISubroutineType(types: !4112)
!4112 = !{!1686, !4113}
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4098, file: !88, line: 44, baseType: !4116, size: 64, offset: 256)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!1686}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4098, file: !88, line: 45, baseType: !678, size: 64, offset: 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !310, file: !204, line: 121, baseType: !4121, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!1686, !277}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !310, file: !204, line: 122, baseType: !4125, size: 64, offset: 320)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{null, !277, !4128, !4129}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !203, file: !204, line: 70, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !550, line: 190, size: 1152, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4213, !4214, !4215, !4216, !4217, !4220}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4132, file: !550, line: 191, baseType: !244, size: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4132, file: !550, line: 192, baseType: !244, size: 32, offset: 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4132, file: !550, line: 202, baseType: !4131, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4132, file: !550, line: 203, baseType: !207, size: 64, offset: 128)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4132, file: !550, line: 205, baseType: !747, size: 192, align: 64, offset: 192)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4132, file: !550, line: 207, baseType: !1686, size: 64, offset: 384)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4132, file: !550, line: 208, baseType: !13, size: 32, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_member, scope: !4132, file: !550, line: 209, baseType: !4142, size: 256, offset: 512)
!4142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4132, file: !550, line: 209, size: 256, elements: !4143)
!4143 = !{!4144, !4153, !4157}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4142, file: !550, line: 210, baseType: !4145, size: 256)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !550, line: 153, size: 256, elements: !4146)
!4146 = !{!4147, !4148, !4149, !4152}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4145, file: !550, line: 154, baseType: !344, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4145, file: !550, line: 156, baseType: !2561, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4145, file: !550, line: 162, baseType: !4150, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !550, line: 162, flags: DIFlagFwdDecl)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4145, file: !550, line: 167, baseType: !344, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4142, file: !550, line: 211, baseType: !4154, size: 64)
!4154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !550, line: 170, size: 64, elements: !4155)
!4155 = !{!4156}
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4154, file: !550, line: 171, baseType: !4131, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4142, file: !550, line: 212, baseType: !4158, size: 256)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !550, line: 174, size: 256, elements: !4159)
!4159 = !{!4160, !4208, !4211, !4212}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4158, file: !550, line: 175, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4163)
!4163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !550, line: 271, size: 768, elements: !4164)
!4164 = !{!4165, !4185, !4189, !4190, !4191, !4192, !4193, !4197, !4198, !4199, !4200, !4204}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4163, file: !550, line: 276, baseType: !4166, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!115, !4169}
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !550, line: 251, size: 1216, elements: !4171)
!4171 = !{!4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4170, file: !550, line: 253, baseType: !4131, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4170, file: !550, line: 254, baseType: !1418, size: 64, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4170, file: !550, line: 255, baseType: !1077, size: 64, offset: 128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4170, file: !550, line: 256, baseType: !191, size: 64, offset: 192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4170, file: !550, line: 259, baseType: !635, size: 256, offset: 256)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4170, file: !550, line: 260, baseType: !635, size: 256, offset: 512)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4170, file: !550, line: 261, baseType: !115, size: 32, offset: 768)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4170, file: !550, line: 262, baseType: !210, size: 128, offset: 832)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4170, file: !550, line: 263, baseType: !294, size: 64, offset: 960)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4170, file: !550, line: 265, baseType: !341, size: 64, offset: 1024)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4170, file: !550, line: 266, baseType: !715, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4170, file: !550, line: 267, baseType: !715, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4170, file: !550, line: 268, baseType: !1755, size: 64, offset: 1152)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4163, file: !550, line: 277, baseType: !4186, size: 64, offset: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{null, !4169}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4163, file: !550, line: 290, baseType: !1108, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4163, file: !550, line: 292, baseType: !1095, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4163, file: !550, line: 293, baseType: !1104, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4163, file: !550, line: 294, baseType: !1100, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4163, file: !550, line: 296, baseType: !4194, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!326, !4169, !294, !341, !535}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4163, file: !550, line: 306, baseType: !341, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4163, file: !550, line: 313, baseType: !715, size: 8, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4163, file: !550, line: 314, baseType: !4194, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4163, file: !550, line: 317, baseType: !4201, size: 64, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!1536, !4169, !1538}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4163, file: !550, line: 320, baseType: !4205, size: 64, offset: 704)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!115, !4169, !1558}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4158, file: !550, line: 176, baseType: !4209, size: 64, offset: 64)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !550, line: 35, flags: DIFlagFwdDecl)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4158, file: !550, line: 177, baseType: !535, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4158, file: !550, line: 178, baseType: !4131, size: 64, offset: 192)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4132, file: !550, line: 215, baseType: !191, size: 64, offset: 768)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4132, file: !550, line: 221, baseType: !447, size: 64, offset: 832)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4132, file: !550, line: 223, baseType: !264, size: 16, offset: 896)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4132, file: !550, line: 224, baseType: !336, size: 16, offset: 912)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4132, file: !550, line: 225, baseType: !4218, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !550, line: 36, flags: DIFlagFwdDecl)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4132, file: !550, line: 227, baseType: !855, size: 128, align: 64, offset: 1024)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !203, file: !204, line: 71, baseType: !4222, size: 32, offset: 448)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4223, line: 19, size: 32, elements: !4224)
!4223 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4224 = !{!4225}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4222, file: !4223, line: 20, baseType: !1164, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !203, file: !204, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !203, file: !204, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !203, file: !204, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !203, file: !204, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !203, file: !204, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !100, line: 707, baseType: !4232, size: 64, offset: 512)
!4232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !200, file: !100, line: 709, baseType: !4234, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !200, file: !100, line: 711, baseType: !207, size: 64, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !100, line: 712, baseType: !4238, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4250, !4255, !4259}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4240, file: !100, line: 90, baseType: !207, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4240, file: !100, line: 91, baseType: !346, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4240, file: !100, line: 92, baseType: !4245, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!115, !4248, !289}
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4240, file: !100, line: 93, baseType: !4251, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!294, !4248, !4254, !4128, !4129}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4240, file: !100, line: 95, baseType: !4256, size: 64, offset: 256)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !4232}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4240, file: !100, line: 97, baseType: !4260, size: 64, offset: 320)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4262)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4263)
!4263 = !{!4264, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4262, file: !107, line: 287, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{!115, !4232}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4262, file: !107, line: 288, baseType: !4256, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4262, file: !107, line: 289, baseType: !4265, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4262, file: !107, line: 290, baseType: !4265, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4262, file: !107, line: 291, baseType: !4265, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4262, file: !107, line: 292, baseType: !4265, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4262, file: !107, line: 293, baseType: !4265, size: 64, offset: 384)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4262, file: !107, line: 294, baseType: !4265, size: 64, offset: 448)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4262, file: !107, line: 295, baseType: !4265, size: 64, offset: 512)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4262, file: !107, line: 296, baseType: !4265, size: 64, offset: 576)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4262, file: !107, line: 297, baseType: !4265, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4262, file: !107, line: 298, baseType: !4265, size: 64, offset: 704)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4262, file: !107, line: 299, baseType: !4265, size: 64, offset: 768)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4262, file: !107, line: 300, baseType: !4265, size: 64, offset: 832)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4262, file: !107, line: 301, baseType: !4265, size: 64, offset: 896)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4262, file: !107, line: 302, baseType: !4265, size: 64, offset: 960)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4262, file: !107, line: 303, baseType: !4265, size: 64, offset: 1024)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4262, file: !107, line: 304, baseType: !4265, size: 64, offset: 1088)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4262, file: !107, line: 305, baseType: !4265, size: 64, offset: 1152)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4262, file: !107, line: 306, baseType: !4265, size: 64, offset: 1216)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4262, file: !107, line: 307, baseType: !4265, size: 64, offset: 1280)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4262, file: !107, line: 308, baseType: !4265, size: 64, offset: 1344)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4262, file: !107, line: 309, baseType: !4265, size: 64, offset: 1408)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !200, file: !100, line: 714, baseType: !4291, size: 64, offset: 768)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4293)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4294, line: 80, size: 1344, elements: !4295)
!4294 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4295 = !{!4296, !4297, !4298, !4299, !4300, !4301, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4374}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4293, file: !4294, line: 81, baseType: !207, size: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4293, file: !4294, line: 82, baseType: !207, size: 64, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4293, file: !4294, line: 83, baseType: !346, size: 64, offset: 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4293, file: !4294, line: 84, baseType: !346, size: 64, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4293, file: !4294, line: 85, baseType: !346, size: 64, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4293, file: !4294, line: 87, baseType: !4302, size: 64, offset: 320)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{!115, !4232, !4305}
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4307)
!4307 = !{!4308, !4309, !4310, !4311, !4312, !4313, !4314, !4327, !4337, !4338, !4339, !4340, !4341, !4349, !4350, !4351, !4352, !4353, !4354}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !94, line: 97, baseType: !207, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4306, file: !94, line: 98, baseType: !4291, size: 64, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4306, file: !94, line: 100, baseType: !564, size: 64, offset: 128)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4306, file: !94, line: 101, baseType: !207, size: 64, offset: 192)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4306, file: !94, line: 103, baseType: !715, size: 8, offset: 256)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4306, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4306, file: !94, line: 106, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4317)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4318, line: 282, size: 1600, elements: !4319)
!4318 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4319 = !{!4320, !4321, !4322, !4326}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4317, file: !4318, line: 283, baseType: !3597, size: 256)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4317, file: !4318, line: 284, baseType: !3597, size: 256, offset: 256)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4317, file: !4318, line: 285, baseType: !4323, size: 1024, offset: 512)
!4323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4324)
!4324 = !{!4325}
!4325 = !DISubrange(count: 128)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4317, file: !4318, line: 286, baseType: !1686, size: 64, offset: 1536)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4306, file: !94, line: 107, baseType: !4328, size: 64, offset: 384)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4318, line: 217, size: 256, elements: !4331)
!4331 = !{!4332, !4333, !4335, !4336}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4330, file: !4318, line: 218, baseType: !3604, size: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4330, file: !4318, line: 219, baseType: !4334, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4318, line: 15, baseType: !344)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4330, file: !4318, line: 220, baseType: !444, size: 32, offset: 192)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4330, file: !4318, line: 221, baseType: !444, size: 32, offset: 224)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4306, file: !94, line: 109, baseType: !4265, size: 64, offset: 448)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4306, file: !94, line: 110, baseType: !4256, size: 64, offset: 512)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4306, file: !94, line: 111, baseType: !4265, size: 64, offset: 576)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4306, file: !94, line: 112, baseType: !4256, size: 64, offset: 640)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4306, file: !94, line: 113, baseType: !4342, size: 64, offset: 704)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!115, !4232, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4346)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4347)
!4347 = !{!4348}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4346, file: !107, line: 59, baseType: !115, size: 32)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4306, file: !94, line: 114, baseType: !4265, size: 64, offset: 768)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4306, file: !94, line: 115, baseType: !346, size: 64, offset: 832)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4306, file: !94, line: 116, baseType: !346, size: 64, offset: 896)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4306, file: !94, line: 118, baseType: !4260, size: 64, offset: 960)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4306, file: !94, line: 119, baseType: !4256, size: 64, offset: 1024)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4306, file: !94, line: 121, baseType: !4355, size: 64, offset: 1088)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4293, file: !4294, line: 88, baseType: !4245, size: 64, offset: 384)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4293, file: !4294, line: 89, baseType: !4265, size: 64, offset: 448)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4293, file: !4294, line: 90, baseType: !4256, size: 64, offset: 512)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4293, file: !4294, line: 91, baseType: !4256, size: 64, offset: 576)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4293, file: !4294, line: 92, baseType: !4256, size: 64, offset: 640)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4293, file: !4294, line: 94, baseType: !4265, size: 64, offset: 704)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4293, file: !4294, line: 95, baseType: !4265, size: 64, offset: 768)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4293, file: !4294, line: 97, baseType: !4342, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4293, file: !4294, line: 98, baseType: !4265, size: 64, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4293, file: !4294, line: 100, baseType: !4265, size: 64, offset: 960)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4293, file: !4294, line: 102, baseType: !4265, size: 64, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4293, file: !4294, line: 103, baseType: !4256, size: 64, offset: 1088)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4293, file: !4294, line: 105, baseType: !4260, size: 64, offset: 1152)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4293, file: !4294, line: 107, baseType: !4371, size: 64, offset: 1216)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4373)
!4373 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4294, line: 107, flags: DIFlagFwdDecl)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4293, file: !4294, line: 109, baseType: !715, size: 8, offset: 1280)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !200, file: !100, line: 715, baseType: !4305, size: 64, offset: 832)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !200, file: !100, line: 717, baseType: !191, size: 64, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !200, file: !100, line: 719, baseType: !191, size: 64, offset: 960)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !200, file: !100, line: 721, baseType: !635, size: 256, offset: 1024)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !200, file: !100, line: 725, baseType: !4380, size: 448, offset: 1280)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4380, file: !100, line: 518, baseType: !210, size: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4380, file: !100, line: 519, baseType: !210, size: 128, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4380, file: !100, line: 520, baseType: !210, size: 128, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4380, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !200, file: !100, line: 726, baseType: !4387, size: 2496, offset: 1728)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4388)
!4388 = !{!4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4471, !4475}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4387, file: !107, line: 664, baseType: !4345, size: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4387, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4387, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4387, file: !107, line: 667, baseType: !715, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4387, file: !107, line: 668, baseType: !715, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4387, file: !107, line: 669, baseType: !715, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4387, file: !107, line: 670, baseType: !715, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4387, file: !107, line: 671, baseType: !715, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4387, file: !107, line: 672, baseType: !715, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4387, file: !107, line: 673, baseType: !715, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4387, file: !107, line: 674, baseType: !715, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4387, file: !107, line: 675, baseType: !443, size: 32, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4387, file: !107, line: 676, baseType: !224, size: 32, offset: 96)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4387, file: !107, line: 678, baseType: !210, size: 128, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4387, file: !107, line: 679, baseType: !584, size: 256, offset: 256)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4387, file: !107, line: 680, baseType: !4405, size: 64, offset: 512)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4407, line: 43, size: 1536, elements: !4408)
!4407 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4408 = !{!4409, !4410, !4411, !4412, !4413, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4406, file: !4407, line: 44, baseType: !207, size: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4406, file: !4407, line: 45, baseType: !115, size: 32, offset: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4406, file: !4407, line: 46, baseType: !210, size: 128, offset: 128)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4406, file: !4407, line: 47, baseType: !224, size: 32, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4406, file: !4407, line: 48, baseType: !4414, size: 64, offset: 320)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4406, file: !4407, line: 49, baseType: !877, size: 320, offset: 384)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4406, file: !4407, line: 50, baseType: !344, size: 64, offset: 704)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4406, file: !4407, line: 51, baseType: !2507, size: 64, offset: 768)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4406, file: !4407, line: 52, baseType: !2507, size: 64, offset: 832)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4406, file: !4407, line: 53, baseType: !2507, size: 64, offset: 896)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4406, file: !4407, line: 54, baseType: !2507, size: 64, offset: 960)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4406, file: !4407, line: 55, baseType: !2507, size: 64, offset: 1024)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4406, file: !4407, line: 56, baseType: !344, size: 64, offset: 1088)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4406, file: !4407, line: 57, baseType: !344, size: 64, offset: 1152)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4406, file: !4407, line: 58, baseType: !344, size: 64, offset: 1216)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4406, file: !4407, line: 59, baseType: !344, size: 64, offset: 1280)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4406, file: !4407, line: 60, baseType: !344, size: 64, offset: 1344)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4406, file: !4407, line: 61, baseType: !4232, size: 64, offset: 1408)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4406, file: !4407, line: 62, baseType: !715, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4406, file: !4407, line: 63, baseType: !715, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4387, file: !107, line: 681, baseType: !715, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4387, file: !107, line: 682, baseType: !715, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4387, file: !107, line: 683, baseType: !715, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4387, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4387, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4387, file: !107, line: 690, baseType: !2499, size: 512, offset: 640)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4387, file: !107, line: 691, baseType: !447, size: 64, offset: 1152)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4387, file: !107, line: 692, baseType: !895, size: 256, offset: 1216)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4387, file: !107, line: 693, baseType: !1174, size: 192, offset: 1472)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4387, file: !107, line: 694, baseType: !4414, size: 64, offset: 1664)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4387, file: !107, line: 695, baseType: !244, size: 32, offset: 1728)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4387, file: !107, line: 696, baseType: !244, size: 32, offset: 1760)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4387, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4387, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4387, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4387, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4387, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4387, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4387, file: !107, line: 703, baseType: !715, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4387, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4387, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4387, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4387, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4387, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4387, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4387, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4387, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4387, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4387, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4387, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4387, file: !107, line: 715, baseType: !447, size: 64, offset: 2048)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4387, file: !107, line: 716, baseType: !447, size: 64, offset: 2112)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4387, file: !107, line: 717, baseType: !447, size: 64, offset: 2176)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4387, file: !107, line: 718, baseType: !447, size: 64, offset: 2240)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4387, file: !107, line: 720, baseType: !4466, size: 64, offset: 2304)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4468)
!4468 = !{!4469, !4470}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4467, file: !107, line: 633, baseType: !224, size: 32)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4467, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4387, file: !107, line: 721, baseType: !4472, size: 64, offset: 2368)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{null, !4232, !631}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4387, file: !107, line: 722, baseType: !4476, size: 64, offset: 2432)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !123, line: 117, size: 2432, elements: !4478)
!4478 = !{!4479, !4507, !4508, !4515, !4520, !4542, !4543}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !4477, file: !123, line: 118, baseType: !4480, size: 320)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !123, line: 52, size: 320, elements: !4481)
!4481 = !{!4482, !4486, !4487, !4488, !4489, !4490}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4480, file: !123, line: 53, baseType: !4483, size: 128)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !2668, line: 82, size: 128, elements: !4484)
!4484 = !{!4485}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4483, file: !2668, line: 83, baseType: !210, size: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !4480, file: !123, line: 54, baseType: !631, size: 32, offset: 128)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !4480, file: !123, line: 55, baseType: !631, size: 32, offset: 160)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !4480, file: !123, line: 56, baseType: !631, size: 32, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4480, file: !123, line: 57, baseType: !122, size: 32, offset: 224)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !4480, file: !123, line: 58, baseType: !4491, size: 64, offset: 256)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !4493, line: 65, size: 384, elements: !4494)
!4493 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!4494 = !{!4495, !4496}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !4492, file: !4493, line: 66, baseType: !1237, size: 320)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4492, file: !4493, line: 67, baseType: !4497, size: 64, offset: 320)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !4493, line: 54, size: 192, elements: !4499)
!4499 = !{!4500, !4505, !4506}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !4498, file: !4493, line: 55, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !4493, line: 51, baseType: !4502)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!115, !4497, !344, !191}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4498, file: !4493, line: 56, baseType: !4497, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4498, file: !4493, line: 57, baseType: !115, size: 32, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !4477, file: !123, line: 119, baseType: !4480, size: 320, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4477, file: !123, line: 120, baseType: !4509, size: 1408, offset: 640)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !123, line: 85, size: 1408, elements: !4510)
!4510 = !{!4511, !4512, !4513, !4514}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !4509, file: !123, line: 86, baseType: !4480, size: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !4509, file: !123, line: 87, baseType: !4492, size: 384, offset: 320)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !4509, file: !123, line: 88, baseType: !4480, size: 320, offset: 704)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !4509, file: !123, line: 89, baseType: !4492, size: 384, offset: 1024)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4477, file: !123, line: 121, baseType: !4516, size: 192, offset: 2048)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !123, line: 71, size: 192, elements: !4517)
!4517 = !{!4518, !4519}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4516, file: !123, line: 72, baseType: !210, size: 128)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !4516, file: !123, line: 73, baseType: !631, size: 32, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !4477, file: !123, line: 122, baseType: !4521, size: 64, offset: 2240)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !123, line: 107, size: 576, elements: !4523)
!4523 = !{!4524, !4525, !4541}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4522, file: !123, line: 108, baseType: !128, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4522, file: !123, line: 113, baseType: !4526, size: 448, offset: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4522, file: !123, line: 109, size: 448, elements: !4527)
!4527 = !{!4528, !4529, !4534}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4526, file: !123, line: 110, baseType: !2667, size: 320)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !4526, file: !123, line: 111, baseType: !4530, size: 192)
!4530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !123, line: 66, size: 192, elements: !4531)
!4531 = !{!4532, !4533}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4530, file: !123, line: 67, baseType: !210, size: 128)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4530, file: !123, line: 68, baseType: !631, size: 32, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !4526, file: !123, line: 112, baseType: !4535, size: 448)
!4535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !123, line: 92, size: 448, elements: !4536)
!4536 = !{!4537, !4538, !4539}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4535, file: !123, line: 93, baseType: !135, size: 32)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !4535, file: !123, line: 94, baseType: !2667, size: 320, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4535, file: !123, line: 95, baseType: !4540, size: 64, offset: 384)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4522, file: !123, line: 114, baseType: !4232, size: 64, offset: 512)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !4477, file: !123, line: 123, baseType: !4521, size: 64, offset: 2304)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !4477, file: !123, line: 124, baseType: !4521, size: 64, offset: 2368)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !200, file: !100, line: 727, baseType: !4545, size: 64, offset: 4224)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4547)
!4547 = !{!4548, !4549, !4550, !4554, !4555, !4556}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4546, file: !107, line: 743, baseType: !4262, size: 1472)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4546, file: !107, line: 744, baseType: !4265, size: 64, offset: 1472)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4546, file: !107, line: 745, baseType: !4551, size: 64, offset: 1536)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{null, !4232, !715}
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4546, file: !107, line: 746, baseType: !4265, size: 64, offset: 1600)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4546, file: !107, line: 747, baseType: !4256, size: 64, offset: 1664)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4546, file: !107, line: 748, baseType: !4256, size: 64, offset: 1728)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !200, file: !100, line: 736, baseType: !4558, size: 128, offset: 4288)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4559)
!4559 = !{!4560, !4564}
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4558, file: !100, line: 531, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4563, line: 13, flags: DIFlagFwdDecl)
!4563 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4558, file: !100, line: 532, baseType: !4565, size: 64, offset: 64)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !200, file: !100, line: 738, baseType: !4568, size: 64, offset: 4416)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4570)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !200, file: !100, line: 740, baseType: !4572, size: 64, offset: 4480)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !200, file: !100, line: 741, baseType: !447, size: 64, offset: 4544)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !200, file: !100, line: 746, baseType: !447, size: 64, offset: 4608)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !200, file: !100, line: 747, baseType: !4576, size: 64, offset: 4672)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4578)
!4578 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !200, file: !100, line: 749, baseType: !4580, size: 64, offset: 4736)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4582)
!4582 = !{!4583, !4584, !4585}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4581, file: !100, line: 433, baseType: !13, size: 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4581, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4581, file: !100, line: 435, baseType: !344, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !200, file: !100, line: 751, baseType: !210, size: 128, offset: 4800)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !200, file: !100, line: 762, baseType: !4588, size: 64, offset: 4928)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !200, file: !100, line: 770, baseType: !4591, offset: 4992)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4592, line: 5, elements: !924)
!4592 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !200, file: !100, line: 772, baseType: !4594, size: 64, offset: 4992)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4596, line: 18, flags: DIFlagFwdDecl)
!4596 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !200, file: !100, line: 773, baseType: !4598, size: 64, offset: 5056)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4600, line: 41, size: 512, elements: !4601)
!4600 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4601 = !{!4602, !4603, !4697, !4698, !4699, !4700}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4599, file: !4600, line: 42, baseType: !4598, size: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4599, file: !4600, line: 43, baseType: !4604, size: 64, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4606)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4600, line: 125, size: 1408, elements: !4607)
!4607 = !{!4608, !4612, !4616, !4622, !4626, !4627, !4632, !4636, !4640, !4644, !4648, !4649, !4653, !4657, !4661, !4672, !4673, !4674, !4675, !4685, !4689, !4693}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4606, file: !4600, line: 126, baseType: !4609, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!4598, !4598}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4606, file: !4600, line: 127, baseType: !4613, size: 64, offset: 64)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !4598}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4606, file: !4600, line: 128, baseType: !4617, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!715, !4620}
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4599)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4606, file: !4600, line: 129, baseType: !4623, size: 64, offset: 192)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!1686, !4620, !4248}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4606, file: !4600, line: 131, baseType: !4617, size: 64, offset: 256)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4606, file: !4600, line: 133, baseType: !4628, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!4631, !4620}
!4631 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4600, line: 132, flags: DIFlagFwdDecl)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4606, file: !4600, line: 134, baseType: !4633, size: 64, offset: 384)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!715, !4620, !207}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4606, file: !4600, line: 136, baseType: !4637, size: 64, offset: 448)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!115, !4620, !207, !13, !191, !341}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4606, file: !4600, line: 141, baseType: !4641, size: 64, offset: 512)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!115, !4620, !207, !972, !341}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4606, file: !4600, line: 144, baseType: !4645, size: 64, offset: 576)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!207, !4620}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4606, file: !4600, line: 145, baseType: !4645, size: 64, offset: 640)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4606, file: !4600, line: 146, baseType: !4650, size: 64, offset: 704)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{!4598, !4620}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4606, file: !4600, line: 148, baseType: !4654, size: 64, offset: 768)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!4598, !4620, !4598}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4606, file: !4600, line: 151, baseType: !4658, size: 64, offset: 832)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DISubroutineType(types: !4660)
!4660 = !{!4598, !4620, !207}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4606, file: !4600, line: 153, baseType: !4662, size: 64, offset: 896)
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = !DISubroutineType(types: !4664)
!4664 = !{!115, !4620, !207, !207, !13, !13, !4665}
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4600, line: 94, size: 640, elements: !4667)
!4667 = !{!4668, !4669, !4670}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4666, file: !4600, line: 95, baseType: !4598, size: 64)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4666, file: !4600, line: 96, baseType: !13, size: 32, offset: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4666, file: !4600, line: 97, baseType: !4671, size: 512, offset: 128)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 512, elements: !2542)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4606, file: !4600, line: 158, baseType: !4654, size: 64, offset: 960)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4606, file: !4600, line: 161, baseType: !4650, size: 64, offset: 1024)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4606, file: !4600, line: 163, baseType: !4609, size: 64, offset: 1088)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4606, file: !4600, line: 164, baseType: !4676, size: 64, offset: 1152)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!115, !4620, !4679}
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4600, line: 73, size: 128, elements: !4681)
!4681 = !{!4682, !4683, !4684}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4680, file: !4600, line: 74, baseType: !13, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4680, file: !4600, line: 75, baseType: !13, size: 32, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4680, file: !4600, line: 76, baseType: !4620, size: 64, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4606, file: !4600, line: 166, baseType: !4686, size: 64, offset: 1216)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!191, !4598, !115}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4606, file: !4600, line: 167, baseType: !4690, size: 64, offset: 1280)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!115, !4620, !13}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4606, file: !4600, line: 168, baseType: !4694, size: 64, offset: 1344)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!115, !4598}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4599, file: !4600, line: 44, baseType: !4232, size: 64, offset: 128)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4599, file: !4600, line: 45, baseType: !210, size: 128, offset: 192)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4599, file: !4600, line: 46, baseType: !210, size: 128, offset: 320)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4599, file: !4600, line: 47, baseType: !252, size: 8, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !200, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !200, file: !100, line: 778, baseType: !530, size: 32, offset: 5152)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !200, file: !100, line: 779, baseType: !443, size: 32, offset: 5184)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !200, file: !100, line: 781, baseType: !224, size: 32, offset: 5216)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !200, file: !100, line: 782, baseType: !210, size: 128, offset: 5248)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !200, file: !100, line: 784, baseType: !4707, size: 64, offset: 5376)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4709)
!4709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4710, line: 52, size: 768, elements: !4711)
!4710 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4711 = !{!4712, !4713, !4714, !4715, !4716, !4720, !4724, !4725, !4726, !4727, !4731, !4735}
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4709, file: !4710, line: 53, baseType: !207, size: 64)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4709, file: !4710, line: 55, baseType: !346, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4709, file: !4710, line: 56, baseType: !346, size: 64, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4709, file: !4710, line: 58, baseType: !4245, size: 64, offset: 192)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4709, file: !4710, line: 59, baseType: !4717, size: 64, offset: 256)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!294, !4248, !4254}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4709, file: !4710, line: 61, baseType: !4721, size: 64, offset: 320)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4707}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4709, file: !4710, line: 62, baseType: !4256, size: 64, offset: 384)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4709, file: !4710, line: 64, baseType: !4265, size: 64, offset: 448)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4709, file: !4710, line: 66, baseType: !4096, size: 64, offset: 512)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4709, file: !4710, line: 67, baseType: !4728, size: 64, offset: 576)
!4728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!1686, !4248}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4709, file: !4710, line: 69, baseType: !4732, size: 64, offset: 640)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{null, !4248, !4128, !4129}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4709, file: !4710, line: 71, baseType: !4260, size: 64, offset: 704)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !200, file: !100, line: 785, baseType: !346, size: 64, offset: 5440)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !200, file: !100, line: 787, baseType: !4256, size: 64, offset: 5504)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !200, file: !100, line: 788, baseType: !4739, size: 64, offset: 5568)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !200, file: !100, line: 789, baseType: !4742, size: 64, offset: 5632)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !200, file: !100, line: 791, baseType: !4745, size: 64, offset: 5696)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4747)
!4747 = !{!4748, !4749, !4750, !4751, !4752}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4746, file: !100, line: 598, baseType: !139, size: 32)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4746, file: !100, line: 599, baseType: !148, size: 32, offset: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4746, file: !100, line: 600, baseType: !153, size: 32, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4746, file: !100, line: 601, baseType: !715, size: 8, offset: 96)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4746, file: !100, line: 602, baseType: !715, size: 8, offset: 104)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !200, file: !100, line: 793, baseType: !158, size: 32, offset: 5760)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !200, file: !100, line: 795, baseType: !715, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !200, file: !100, line: 796, baseType: !715, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !200, file: !100, line: 797, baseType: !715, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !200, file: !100, line: 798, baseType: !715, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !200, file: !100, line: 799, baseType: !715, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !197, file: !172, line: 54, baseType: !115, size: 32, offset: 5824)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !197, file: !172, line: 55, baseType: !4761, size: 64, offset: 5888)
!4761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4762, size: 64)
!4762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus", file: !172, line: 290, size: 10560, elements: !4763)
!4763 = !{!4764, !4765, !4783, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4805, !4807, !4808, !4809, !4810, !4811, !4812, !4826, !4827, !4829, !4830, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4920, !4921, !4922, !4923, !4924, !4925, !4926}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4762, file: !172, line: 291, baseType: !4232, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4762, file: !172, line: 292, baseType: !4766, size: 64, offset: 64)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4768)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_bus_ops", file: !172, line: 242, size: 192, elements: !4769)
!4769 = !{!4770, !4774, !4778}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "command", scope: !4768, file: !172, line: 244, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!115, !4761, !13}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "get_response", scope: !4768, file: !172, line: 246, baseType: !4775, size: 64, offset: 64)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!115, !4761, !13, !707}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "link_power", scope: !4768, file: !172, line: 249, baseType: !4779, size: 64, offset: 128)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{null, !4782, !715}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "ext_ops", scope: !4762, file: !172, line: 293, baseType: !4784, size: 64, offset: 128)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_ext_bus_ops", file: !172, line: 255, size: 128, elements: !4787)
!4787 = !{!4788, !4792}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_attach", scope: !4786, file: !172, line: 256, baseType: !4789, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!4790 = !DISubroutineType(types: !4791)
!4791 = !{!115, !4782}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "hdev_detach", scope: !4786, file: !172, line: 257, baseType: !4789, size: 64, offset: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4762, file: !172, line: 296, baseType: !344, size: 64, offset: 192)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "remap_addr", scope: !4762, file: !172, line: 297, baseType: !191, size: 64, offset: 256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4762, file: !172, line: 298, baseType: !115, size: 32, offset: 320)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "ppcap", scope: !4762, file: !172, line: 300, baseType: !191, size: 64, offset: 384)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "spbcap", scope: !4762, file: !172, line: 301, baseType: !191, size: 64, offset: 448)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mlcap", scope: !4762, file: !172, line: 302, baseType: !191, size: 64, offset: 512)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "gtscap", scope: !4762, file: !172, line: 303, baseType: !191, size: 64, offset: 576)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "drsmcap", scope: !4762, file: !172, line: 304, baseType: !191, size: 64, offset: 640)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "codec_list", scope: !4762, file: !172, line: 307, baseType: !210, size: 128, offset: 704)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "num_codecs", scope: !4762, file: !172, line: 308, baseType: !13, size: 32, offset: 832)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "caddr_tbl", scope: !4762, file: !172, line: 311, baseType: !4804, size: 1024, offset: 896)
!4804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4782, size: 1024, elements: !2819)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_queue", scope: !4762, file: !172, line: 314, baseType: !4806, size: 4096, offset: 1920)
!4806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 4096, elements: !4324)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_rp", scope: !4762, file: !172, line: 315, baseType: !13, size: 32, offset: 6016)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_wp", scope: !4762, file: !172, line: 315, baseType: !13, size: 32, offset: 6048)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_work", scope: !4762, file: !172, line: 316, baseType: !895, size: 256, offset: 6080)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "codec_mask", scope: !4762, file: !172, line: 319, baseType: !344, size: 64, offset: 6336)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "codec_powered", scope: !4762, file: !172, line: 322, baseType: !344, size: 64, offset: 6400)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "corb", scope: !4762, file: !172, line: 325, baseType: !4813, size: 704, offset: 6464)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_rb", file: !172, line: 268, size: 704, elements: !4814)
!4814 = !{!4815, !4818, !4820, !4821, !4822, !4824}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4813, file: !172, line: 269, baseType: !4816, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1537, line: 38, baseType: !444)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4813, file: !172, line: 270, baseType: !4819, size: 64, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !211, line: 149, baseType: !447)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !4813, file: !172, line: 271, baseType: !264, size: 16, offset: 128)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !4813, file: !172, line: 271, baseType: !264, size: 16, offset: 144)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "cmds", scope: !4813, file: !172, line: 272, baseType: !4823, size: 256, offset: 160)
!4823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !2542)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4813, file: !172, line: 273, baseType: !4825, size: 256, offset: 416)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 256, elements: !2542)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "rirb", scope: !4762, file: !172, line: 326, baseType: !4813, size: 704, offset: 7168)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !4762, file: !172, line: 327, baseType: !4828, size: 256, offset: 7872)
!4828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !2542)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "rirb_wq", scope: !4762, file: !172, line: 328, baseType: !1174, size: 192, offset: 8128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4762, file: !172, line: 331, baseType: !4831, size: 448, offset: 8320)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_buffer", file: !4832, line: 60, size: 448, elements: !4833)
!4832 = !DIFile(filename: "./include/sound/memalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5a311c7e83a04625a087234f49540c88")
!4833 = !{!4834, !4841, !4843, !4844, !4845}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4831, file: !4832, line: 61, baseType: !4835, size: 192)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_dma_device", file: !4832, line: 22, size: 192, elements: !4836)
!4836 = !{!4837, !4838, !4839, !4840}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4835, file: !4832, line: 23, baseType: !115, size: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4835, file: !4832, line: 24, baseType: !164, size: 32, offset: 32)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "need_sync", scope: !4835, file: !4832, line: 25, baseType: !715, size: 8, offset: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4835, file: !4832, line: 26, baseType: !4232, size: 64, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !4831, file: !4832, line: 62, baseType: !4842, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4831, file: !4832, line: 63, baseType: !4819, size: 64, offset: 256)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4831, file: !4832, line: 64, baseType: !341, size: 64, offset: 320)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4831, file: !4832, line: 65, baseType: !191, size: 64, offset: 384)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "posbuf", scope: !4762, file: !172, line: 332, baseType: !4831, size: 448, offset: 8768)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_type", scope: !4762, file: !172, line: 333, baseType: !115, size: 32, offset: 9216)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "stream_list", scope: !4762, file: !172, line: 336, baseType: !210, size: 128, offset: 9280)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "chip_init", scope: !4762, file: !172, line: 339, baseType: !715, size: 1, offset: 9408, flags: DIFlagBitField, extraData: i64 9408)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "aligned_mmio", scope: !4762, file: !172, line: 342, baseType: !715, size: 1, offset: 9409, flags: DIFlagBitField, extraData: i64 9408)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "sync_write", scope: !4762, file: !172, line: 343, baseType: !715, size: 1, offset: 9410, flags: DIFlagBitField, extraData: i64 9408)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "use_posbuf", scope: !4762, file: !172, line: 344, baseType: !715, size: 1, offset: 9411, flags: DIFlagBitField, extraData: i64 9408)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "snoop", scope: !4762, file: !172, line: 345, baseType: !715, size: 1, offset: 9412, flags: DIFlagBitField, extraData: i64 9408)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "align_bdle_4k", scope: !4762, file: !172, line: 346, baseType: !715, size: 1, offset: 9413, flags: DIFlagBitField, extraData: i64 9408)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "reverse_assign", scope: !4762, file: !172, line: 347, baseType: !715, size: 1, offset: 9414, flags: DIFlagBitField, extraData: i64 9408)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "corbrp_self_clear", scope: !4762, file: !172, line: 348, baseType: !715, size: 1, offset: 9415, flags: DIFlagBitField, extraData: i64 9408)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "polling_mode", scope: !4762, file: !172, line: 349, baseType: !715, size: 1, offset: 9416, flags: DIFlagBitField, extraData: i64 9408)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "needs_damn_long_delay", scope: !4762, file: !172, line: 350, baseType: !715, size: 1, offset: 9417, flags: DIFlagBitField, extraData: i64 9408)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "not_use_interrupts", scope: !4762, file: !172, line: 351, baseType: !715, size: 1, offset: 9418, flags: DIFlagBitField, extraData: i64 9408)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "access_sdnctl_in_dword", scope: !4762, file: !172, line: 352, baseType: !715, size: 1, offset: 9419, flags: DIFlagBitField, extraData: i64 9408)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "poll_count", scope: !4762, file: !172, line: 354, baseType: !115, size: 32, offset: 9440)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "bdl_pos_adj", scope: !4762, file: !172, line: 356, baseType: !115, size: 32, offset: 9472)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_stop_delay", scope: !4762, file: !172, line: 359, baseType: !13, size: 32, offset: 9504)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "reg_lock", scope: !4762, file: !172, line: 362, baseType: !224, size: 32, offset: 9536)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_mutex", scope: !4762, file: !172, line: 363, baseType: !635, size: 256, offset: 9600)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4762, file: !172, line: 364, baseType: !635, size: 256, offset: 9856)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "audio_component", scope: !4762, file: !172, line: 367, baseType: !4868, size: 64, offset: 10112)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4869, size: 64)
!4869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component", file: !4870, line: 110, size: 448, elements: !4871)
!4870 = !DIFile(filename: "./include/drm/drm_audio_component.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5876290eae632618019af7818f71dd5e")
!4871 = !{!4872, !4873, !4897, !4919}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4869, file: !4870, line: 114, baseType: !4232, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4869, file: !4870, line: 118, baseType: !4874, size: 64, offset: 64)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4876)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_ops", file: !4870, line: 16, size: 448, elements: !4877)
!4877 = !{!4878, !4879, !4883, !4887, !4888, !4889, !4893}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4876, file: !4870, line: 20, baseType: !564, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "get_power", scope: !4876, file: !4870, line: 29, baseType: !4880, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!344, !4232}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "put_power", scope: !4876, file: !4870, line: 35, baseType: !4884, size: 64, offset: 128)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{null, !4232, !344}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "codec_wake_override", scope: !4876, file: !4870, line: 39, baseType: !4551, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "get_cdclk_freq", scope: !4876, file: !4870, line: 43, baseType: !4265, size: 64, offset: 256)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "sync_audio_rate", scope: !4876, file: !4870, line: 50, baseType: !4890, size: 64, offset: 320)
!4890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4891, size: 64)
!4891 = !DISubroutineType(types: !4892)
!4892 = !{!115, !4232, !115, !115, !115}
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "get_eld", scope: !4876, file: !4870, line: 63, baseType: !4894, size: 64, offset: 384)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DISubroutineType(types: !4896)
!4896 = !{!115, !4232, !115, !115, !4056, !4842, !115}
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ops", scope: !4869, file: !4870, line: 122, baseType: !4898, size: 64, offset: 128)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4900)
!4900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_audio_component_audio_ops", file: !4870, line: 70, size: 320, elements: !4901)
!4901 = !{!4902, !4903, !4907, !4911, !4915}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "audio_ptr", scope: !4900, file: !4870, line: 74, baseType: !191, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "pin_eld_notify", scope: !4900, file: !4870, line: 83, baseType: !4904, size: 64, offset: 64)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{null, !191, !115, !115}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pin2port", scope: !4900, file: !4870, line: 90, baseType: !4908, size: 64, offset: 128)
!4908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4909, size: 64)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{!115, !191, !115}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind", scope: !4900, file: !4870, line: 97, baseType: !4912, size: 64, offset: 192)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!115, !4232, !4868}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "master_unbind", scope: !4900, file: !4870, line: 104, baseType: !4916, size: 64, offset: 256)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{null, !4232, !4868}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "master_bind_complete", scope: !4869, file: !4870, line: 126, baseType: !584, size: 256, offset: 192)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_status", scope: !4762, file: !172, line: 368, baseType: !330, size: 64, offset: 10176)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_active", scope: !4762, file: !172, line: 369, baseType: !344, size: 64, offset: 10240)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "num_streams", scope: !4762, file: !172, line: 372, baseType: !115, size: 32, offset: 10304)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4762, file: !172, line: 373, baseType: !115, size: 32, offset: 10336)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "hlink_list", scope: !4762, file: !172, line: 376, baseType: !210, size: 128, offset: 10368)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_dma_state", scope: !4762, file: !172, line: 377, baseType: !715, size: 8, offset: 10496)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "sdo_limit", scope: !4762, file: !172, line: 380, baseType: !13, size: 32, offset: 10528)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !197, file: !172, line: 56, baseType: !13, size: 32, offset: 5952)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !197, file: !172, line: 57, baseType: !210, size: 128, offset: 6016)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "afg", scope: !197, file: !172, line: 59, baseType: !4930, size: 16, offset: 6144)
!4930 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_nid_t", file: !172, line: 24, baseType: !262)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "mfg", scope: !197, file: !172, line: 60, baseType: !4930, size: 16, offset: 6160)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !197, file: !172, line: 63, baseType: !13, size: 32, offset: 6176)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_id", scope: !197, file: !172, line: 64, baseType: !13, size: 32, offset: 6208)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !197, file: !172, line: 65, baseType: !13, size: 32, offset: 6240)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "afg_function_id", scope: !197, file: !172, line: 66, baseType: !13, size: 32, offset: 6272)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_function_id", scope: !197, file: !172, line: 67, baseType: !13, size: 32, offset: 6304)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "afg_unsol", scope: !197, file: !172, line: 68, baseType: !13, size: 1, offset: 6336, flags: DIFlagBitField, extraData: i64 6336)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "mfg_unsol", scope: !197, file: !172, line: 69, baseType: !13, size: 1, offset: 6337, flags: DIFlagBitField, extraData: i64 6336)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "power_caps", scope: !197, file: !172, line: 71, baseType: !13, size: 32, offset: 6368)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_name", scope: !197, file: !172, line: 73, baseType: !207, size: 64, offset: 6400)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "chip_name", scope: !197, file: !172, line: 74, baseType: !207, size: 64, offset: 6464)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "exec_verb", scope: !197, file: !172, line: 77, baseType: !4943, size: 64, offset: 6528)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!115, !4782, !13, !13, !707}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !197, file: !172, line: 81, baseType: !13, size: 32, offset: 6592)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "start_nid", scope: !197, file: !172, line: 82, baseType: !4930, size: 16, offset: 6624)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "end_nid", scope: !197, file: !172, line: 82, baseType: !4930, size: 16, offset: 6640)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "in_pm", scope: !197, file: !172, line: 85, baseType: !244, size: 32, offset: 6656)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "widget_lock", scope: !197, file: !172, line: 88, baseType: !635, size: 256, offset: 6720)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "widgets", scope: !197, file: !172, line: 89, baseType: !4952, size: 64, offset: 6976)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_widget_tree", file: !172, line: 30, flags: DIFlagFwdDecl)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "regmap", scope: !197, file: !172, line: 92, baseType: !4955, size: 64, offset: 7040)
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = !DICompositeType(tag: DW_TAG_structure_type, name: "regmap", file: !172, line: 92, flags: DIFlagFwdDecl)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "regmap_lock", scope: !197, file: !172, line: 93, baseType: !635, size: 256, offset: 7104)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_verbs", scope: !197, file: !172, line: 94, baseType: !4959, size: 192, offset: 7360)
!4959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_array", file: !172, line: 41, size: 192, elements: !4960)
!4960 = !{!4961, !4962, !4963, !4964, !4965}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !4959, file: !172, line: 42, baseType: !13, size: 32)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !4959, file: !172, line: 43, baseType: !13, size: 32, offset: 32)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !4959, file: !172, line: 44, baseType: !13, size: 32, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_align", scope: !4959, file: !172, line: 45, baseType: !13, size: 32, offset: 96)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4959, file: !172, line: 46, baseType: !191, size: 64, offset: 128)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "lazy_cache", scope: !197, file: !172, line: 95, baseType: !715, size: 1, offset: 7552, flags: DIFlagBitField, extraData: i64 7552)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "caps_overwriting", scope: !197, file: !172, line: 96, baseType: !715, size: 1, offset: 7553, flags: DIFlagBitField, extraData: i64 7552)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "cache_coef", scope: !197, file: !172, line: 97, baseType: !715, size: 1, offset: 7554, flags: DIFlagBitField, extraData: i64 7552)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !197, file: !172, line: 98, baseType: !13, size: 1, offset: 7555, flags: DIFlagBitField, extraData: i64 7552)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !193, file: !194, line: 176, baseType: !4971, size: 64, offset: 7616)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_bus", file: !194, line: 37, size: 11200, elements: !4973)
!4973 = !{!4974, !4975, !5113, !5414, !5415, !5416, !5417, !5418, !5419, !5420, !5421, !5422, !5423, !5424, !5425, !5426}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !4972, file: !194, line: 38, baseType: !4762, size: 10560)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4972, file: !194, line: 40, baseType: !4976, size: 64, offset: 10560)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_card", file: !4978, line: 80, size: 12288, elements: !4979)
!4978 = !DIFile(filename: "./include/sound/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a50d220b71ed843af7ad75eb7639e6e")
!4979 = !{!4980, !4981, !4982, !4983, !4984, !4988, !4989, !4990, !4991, !4992, !4993, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5090, !5091, !5092, !5095, !5096, !5097, !5098, !5099, !5100, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112}
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4977, file: !4978, line: 81, baseType: !115, size: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4977, file: !4978, line: 84, baseType: !2818, size: 128, offset: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4977, file: !4978, line: 85, baseType: !2818, size: 128, offset: 160)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "shortname", scope: !4977, file: !4978, line: 86, baseType: !3597, size: 256, offset: 288)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "longname", scope: !4977, file: !4978, line: 87, baseType: !4985, size: 640, offset: 544)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !4986)
!4986 = !{!4987}
!4987 = !DISubrange(count: 80)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !4977, file: !4978, line: 88, baseType: !3597, size: 256, offset: 1184)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "mixername", scope: !4977, file: !4978, line: 89, baseType: !4985, size: 640, offset: 1440)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "components", scope: !4977, file: !4978, line: 90, baseType: !4323, size: 1024, offset: 2080)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4977, file: !4978, line: 92, baseType: !564, size: 64, offset: 3136)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !4977, file: !4978, line: 94, baseType: !191, size: 64, offset: 3200)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !4977, file: !4978, line: 95, baseType: !4994, size: 64, offset: 3264)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{null, !4976}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4977, file: !4978, line: 97, baseType: !210, size: 128, offset: 3328)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev", scope: !4977, file: !4978, line: 99, baseType: !4232, size: 64, offset: 3456)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "last_numid", scope: !4977, file: !4978, line: 100, baseType: !13, size: 32, offset: 3520)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "controls_rwsem", scope: !4977, file: !4978, line: 101, baseType: !1237, size: 320, offset: 3584)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files_rwlock", scope: !4977, file: !4978, line: 102, baseType: !1139, size: 64, offset: 3904)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "controls_count", scope: !4977, file: !4978, line: 103, baseType: !115, size: 32, offset: 3968)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "user_ctl_alloc_size", scope: !4977, file: !4978, line: 104, baseType: !341, size: 64, offset: 4032)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "controls", scope: !4977, file: !4978, line: 105, baseType: !210, size: 128, offset: 4096)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_files", scope: !4977, file: !4978, line: 106, baseType: !210, size: 128, offset: 4224)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_numids", scope: !4977, file: !4978, line: 108, baseType: !1498, size: 128, offset: 4352)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash", scope: !4977, file: !4978, line: 109, baseType: !1498, size: 128, offset: 4480)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_hash_collision", scope: !4977, file: !4978, line: 110, baseType: !715, size: 8, offset: 4608)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root", scope: !4977, file: !4978, line: 113, baseType: !5010, size: 64, offset: 4672)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry", file: !5012, line: 60, size: 1216, elements: !5013)
!5012 = !DIFile(filename: "./include/sound/info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060f8a4a29808d9f7cc7b628d26ba172")
!5013 = !{!5014, !5015, !5016, !5017, !5018, !5077, !5078, !5079, !5080, !5084, !5087, !5088, !5089}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5011, file: !5012, line: 61, baseType: !207, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5011, file: !5012, line: 62, baseType: !336, size: 16, offset: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5011, file: !5012, line: 63, baseType: !330, size: 64, offset: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !5011, file: !5012, line: 64, baseType: !264, size: 16, offset: 192)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !5011, file: !5012, line: 68, baseType: !5019, size: 128, offset: 256)
!5019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5011, file: !5012, line: 65, size: 128, elements: !5020)
!5020 = !{!5021, !5038}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !5019, file: !5012, line: 66, baseType: !5022, size: 128)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_text", file: !5012, line: 29, size: 128, elements: !5023)
!5023 = !{!5024, !5037}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5022, file: !5012, line: 30, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5026, size: 64)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !5010, !5028}
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_buffer", file: !5012, line: 15, size: 256, elements: !5030)
!5030 = !{!5031, !5032, !5033, !5034, !5035, !5036}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5029, file: !5012, line: 16, baseType: !294, size: 64)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "curr", scope: !5029, file: !5012, line: 17, baseType: !13, size: 32, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5029, file: !5012, line: 18, baseType: !13, size: 32, offset: 96)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5029, file: !5012, line: 19, baseType: !13, size: 32, offset: 128)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !5029, file: !5012, line: 20, baseType: !115, size: 32, offset: 160)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5029, file: !5012, line: 21, baseType: !115, size: 32, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5022, file: !5012, line: 32, baseType: !5025, size: 64, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5019, file: !5012, line: 67, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5041)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_info_entry_ops", file: !5012, line: 36, size: 512, elements: !5042)
!5042 = !{!5043, !5047, !5051, !5055, !5059, !5063, !5069, !5073}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5041, file: !5012, line: 37, baseType: !5044, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!115, !5010, !264, !2048}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5041, file: !5012, line: 39, baseType: !5048, size: 64, offset: 64)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!115, !5010, !264, !191}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5041, file: !5012, line: 41, baseType: !5052, size: 64, offset: 128)
!5052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5053, size: 64)
!5053 = !DISubroutineType(types: !5054)
!5054 = !{!326, !5010, !191, !1418, !294, !341, !535}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5041, file: !5012, line: 44, baseType: !5056, size: 64, offset: 192)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DISubroutineType(types: !5058)
!5058 = !{!326, !5010, !191, !1418, !207, !341, !535}
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5041, file: !5012, line: 47, baseType: !5060, size: 64, offset: 256)
!5060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5061, size: 64)
!5061 = !DISubroutineType(types: !5062)
!5062 = !{!535, !5010, !191, !1418, !535, !115}
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5041, file: !5012, line: 50, baseType: !5064, size: 64, offset: 320)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!1536, !5010, !191, !1418, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1540, line: 40, baseType: !1539)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5041, file: !5012, line: 53, baseType: !5070, size: 64, offset: 384)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!115, !5010, !191, !1418, !13, !344}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5041, file: !5012, line: 55, baseType: !5074, size: 64, offset: 448)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!115, !5010, !191, !374, !1418, !1558}
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5011, file: !5012, line: 69, baseType: !5010, size: 64, offset: 384)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !5011, file: !5012, line: 70, baseType: !564, size: 64, offset: 448)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5011, file: !5012, line: 71, baseType: !191, size: 64, offset: 512)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !5011, file: !5012, line: 72, baseType: !5081, size: 64, offset: 576)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !5010}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5011, file: !5012, line: 73, baseType: !5085, size: 64, offset: 640)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4978, line: 114, flags: DIFlagFwdDecl)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !5011, file: !5012, line: 74, baseType: !635, size: 256, offset: 704)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5011, file: !5012, line: 75, baseType: !210, size: 128, offset: 960)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5011, file: !5012, line: 76, baseType: !210, size: 128, offset: 1088)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "proc_root_link", scope: !4977, file: !4978, line: 114, baseType: !5085, size: 64, offset: 4736)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "files_list", scope: !4977, file: !4978, line: 116, baseType: !210, size: 128, offset: 4800)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "s_f_ops", scope: !4977, file: !4978, line: 117, baseType: !5093, size: 64, offset: 4928)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DICompositeType(tag: DW_TAG_structure_type, name: "snd_shutdown_f_ops", file: !4978, line: 117, flags: DIFlagFwdDecl)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !4977, file: !4978, line: 119, baseType: !224, size: 32, offset: 4992)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4977, file: !4978, line: 120, baseType: !115, size: 32, offset: 5024)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "release_completion", scope: !4977, file: !4978, line: 121, baseType: !583, size: 64, offset: 5056)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4977, file: !4978, line: 122, baseType: !4232, size: 64, offset: 5120)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "card_dev", scope: !4977, file: !4978, line: 123, baseType: !200, size: 5824, offset: 5184)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4977, file: !4978, line: 124, baseType: !5101, size: 256, offset: 11008)
!5101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 256, elements: !865)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !4977, file: !4978, line: 125, baseType: !715, size: 8, offset: 11264)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !4977, file: !4978, line: 126, baseType: !715, size: 8, offset: 11272)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "releasing", scope: !4977, file: !4978, line: 127, baseType: !715, size: 8, offset: 11280)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "sync_irq", scope: !4977, file: !4978, line: 128, baseType: !115, size: 32, offset: 11296)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !4977, file: !4978, line: 129, baseType: !1174, size: 192, offset: 11328)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "total_pcm_alloc_bytes", scope: !4977, file: !4978, line: 131, baseType: !341, size: 64, offset: 11520)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "memory_mutex", scope: !4977, file: !4978, line: 132, baseType: !635, size: 256, offset: 11584)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4977, file: !4978, line: 138, baseType: !13, size: 32, offset: 11840)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref", scope: !4977, file: !4978, line: 139, baseType: !244, size: 32, offset: 11872)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "power_sleep", scope: !4977, file: !4978, line: 140, baseType: !1174, size: 192, offset: 11904)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "power_ref_sleep", scope: !4977, file: !4978, line: 141, baseType: !1174, size: 192, offset: 12096)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "pci", scope: !4972, file: !194, line: 42, baseType: !5114, size: 64, offset: 10624)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !5116, line: 322, size: 16640, elements: !5117)
!5116 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!5117 = !{!5118, !5119, !5189, !5190, !5191, !5192, !5203, !5204, !5205, !5206, !5207, !5208, !5209, !5210, !5211, !5214, !5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5224, !5298, !5299, !5300, !5302, !5303, !5304, !5305, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5315, !5316, !5317, !5318, !5319, !5320, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5335, !5336, !5337, !5338, !5339, !5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5377, !5378, !5379, !5381, !5382, !5384, !5385, !5386, !5387, !5393, !5400, !5401, !5402, !5403, !5404, !5405, !5406, !5407, !5408, !5409, !5410, !5411, !5412}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !5115, file: !5116, line: 323, baseType: !210, size: 128)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5115, file: !5116, line: 324, baseType: !5120, size: 64, offset: 128)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !5116, line: 647, size: 8256, elements: !5122)
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5129, !5144, !5145, !5146, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5180, !5181, !5183, !5184, !5185, !5186, !5187, !5188}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5121, file: !5116, line: 648, baseType: !210, size: 128)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5121, file: !5116, line: 649, baseType: !5120, size: 64, offset: 128)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5121, file: !5116, line: 650, baseType: !210, size: 128, offset: 192)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !5121, file: !5116, line: 651, baseType: !210, size: 128, offset: 320)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !5121, file: !5116, line: 652, baseType: !5114, size: 64, offset: 448)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !5121, file: !5116, line: 653, baseType: !210, size: 128, offset: 512)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5121, file: !5116, line: 655, baseType: !5130, size: 256, offset: 640)
!5130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5131, size: 256, elements: !865)
!5131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5132, size: 64)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5133, line: 21, size: 512, elements: !5134)
!5133 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!5134 = !{!5135, !5137, !5138, !5139, !5140, !5141, !5142, !5143}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5132, file: !5133, line: 22, baseType: !5136, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !211, line: 164, baseType: !3347)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5132, file: !5133, line: 23, baseType: !5136, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5132, file: !5133, line: 24, baseType: !207, size: 64, offset: 128)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5132, file: !5133, line: 25, baseType: !344, size: 64, offset: 192)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5132, file: !5133, line: 26, baseType: !344, size: 64, offset: 256)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5132, file: !5133, line: 27, baseType: !5131, size: 64, offset: 320)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5132, file: !5133, line: 27, baseType: !5131, size: 64, offset: 384)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5132, file: !5133, line: 27, baseType: !5131, size: 64, offset: 448)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5121, file: !5116, line: 656, baseType: !210, size: 128, offset: 896)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !5121, file: !5116, line: 657, baseType: !5132, size: 512, offset: 1024)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5121, file: !5116, line: 659, baseType: !5147, size: 64, offset: 1536)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !5116, line: 773, size: 320, elements: !5149)
!5149 = !{!5150, !5154, !5158, !5162, !5166}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !5148, file: !5116, line: 774, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!115, !5120}
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !5148, file: !5116, line: 775, baseType: !5155, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5156 = !DISubroutineType(types: !5157)
!5157 = !{null, !5120}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !5148, file: !5116, line: 776, baseType: !5159, size: 64, offset: 128)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!191, !5120, !13, !115}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5148, file: !5116, line: 777, baseType: !5163, size: 64, offset: 192)
!5163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5164, size: 64)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!115, !5120, !13, !115, !115, !2713}
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5148, file: !5116, line: 778, baseType: !5167, size: 64, offset: 256)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!115, !5120, !13, !115, !115, !443}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5121, file: !5116, line: 660, baseType: !191, size: 64, offset: 1600)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !5121, file: !5116, line: 661, baseType: !5085, size: 64, offset: 1664)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5121, file: !5116, line: 663, baseType: !256, size: 8, offset: 1728)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !5121, file: !5116, line: 664, baseType: !256, size: 8, offset: 1736)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !5121, file: !5116, line: 665, baseType: !256, size: 8, offset: 1744)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !5121, file: !5116, line: 666, baseType: !256, size: 8, offset: 1752)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5121, file: !5116, line: 671, baseType: !5177, size: 384, offset: 1760)
!5177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !5178)
!5178 = !{!5179}
!5179 = !DISubrange(count: 48)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !5121, file: !5116, line: 673, baseType: !264, size: 16, offset: 2144)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5121, file: !5116, line: 674, baseType: !5182, size: 16, offset: 2160)
!5182 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !5116, line: 255, baseType: !264)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !5121, file: !5116, line: 675, baseType: !4232, size: 64, offset: 2176)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5121, file: !5116, line: 676, baseType: !200, size: 5824, offset: 2240)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !5121, file: !5116, line: 677, baseType: !360, size: 64, offset: 8064)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !5121, file: !5116, line: 678, baseType: !360, size: 64, offset: 8128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !5121, file: !5116, line: 679, baseType: !13, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !5121, file: !5116, line: 680, baseType: !13, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !5115, file: !5116, line: 325, baseType: !5120, size: 64, offset: 192)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5115, file: !5116, line: 327, baseType: !191, size: 64, offset: 256)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !5115, file: !5116, line: 328, baseType: !5085, size: 64, offset: 320)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !5115, file: !5116, line: 329, baseType: !5193, size: 64, offset: 384)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !5116, line: 76, size: 832, elements: !5195)
!5195 = !{!5196, !5197, !5198, !5201, !5202}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5194, file: !5116, line: 77, baseType: !5120, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5194, file: !5116, line: 78, baseType: !210, size: 128, offset: 64)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5194, file: !5116, line: 79, baseType: !5199, size: 64, offset: 192)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !5116, line: 79, flags: DIFlagFwdDecl)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5194, file: !5116, line: 80, baseType: !256, size: 8, offset: 256)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5194, file: !5116, line: 81, baseType: !203, size: 512, offset: 320)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !5115, file: !5116, line: 331, baseType: !13, size: 32, offset: 448)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5115, file: !5116, line: 332, baseType: !264, size: 16, offset: 480)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5115, file: !5116, line: 333, baseType: !264, size: 16, offset: 496)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !5115, file: !5116, line: 334, baseType: !264, size: 16, offset: 512)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !5115, file: !5116, line: 335, baseType: !264, size: 16, offset: 528)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5115, file: !5116, line: 336, baseType: !13, size: 32, offset: 544)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !5115, file: !5116, line: 337, baseType: !252, size: 8, offset: 576)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !5115, file: !5116, line: 338, baseType: !252, size: 8, offset: 584)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !5115, file: !5116, line: 344, baseType: !5212, size: 64, offset: 640)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !5116, line: 319, flags: DIFlagFwdDecl)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !5115, file: !5116, line: 345, baseType: !5114, size: 64, offset: 704)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !5115, file: !5116, line: 347, baseType: !443, size: 32, offset: 768)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !5115, file: !5116, line: 348, baseType: !252, size: 8, offset: 800)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !5115, file: !5116, line: 349, baseType: !252, size: 8, offset: 808)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !5115, file: !5116, line: 350, baseType: !252, size: 8, offset: 816)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !5115, file: !5116, line: 351, baseType: !252, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !5115, file: !5116, line: 352, baseType: !252, size: 8, offset: 832)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5115, file: !5116, line: 353, baseType: !252, size: 8, offset: 840)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !5115, file: !5116, line: 354, baseType: !262, size: 16, offset: 848)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !5115, file: !5116, line: 355, baseType: !986, size: 64, offset: 896)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5115, file: !5116, line: 357, baseType: !5225, size: 64, offset: 960)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !5116, line: 918, size: 2368, elements: !5227)
!5227 = !{!5228, !5229, !5230, !5243, !5247, !5251, !5255, !5259, !5260, !5264, !5265, !5269, !5289, !5290, !5291, !5292, !5297}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5226, file: !5116, line: 919, baseType: !210, size: 128)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5226, file: !5116, line: 920, baseType: !207, size: 64, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5226, file: !5116, line: 921, baseType: !5231, size: 64, offset: 192)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5233)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4318, line: 44, size: 320, elements: !5234)
!5234 = !{!5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5233, file: !4318, line: 45, baseType: !444, size: 32)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5233, file: !4318, line: 45, baseType: !444, size: 32, offset: 32)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5233, file: !4318, line: 46, baseType: !444, size: 32, offset: 64)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5233, file: !4318, line: 46, baseType: !444, size: 32, offset: 96)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5233, file: !4318, line: 47, baseType: !444, size: 32, offset: 128)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5233, file: !4318, line: 47, baseType: !444, size: 32, offset: 160)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5233, file: !4318, line: 48, baseType: !4334, size: 64, offset: 192)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !5233, file: !4318, line: 49, baseType: !444, size: 32, offset: 256)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5226, file: !5116, line: 922, baseType: !5244, size: 64, offset: 256)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!115, !5114, !5231}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5226, file: !5116, line: 923, baseType: !5248, size: 64, offset: 320)
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5249, size: 64)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{null, !5114}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5226, file: !5116, line: 924, baseType: !5252, size: 64, offset: 384)
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5253, size: 64)
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!115, !5114, !4345}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5226, file: !5116, line: 925, baseType: !5256, size: 64, offset: 448)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!115, !5114}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5226, file: !5116, line: 926, baseType: !5248, size: 64, offset: 512)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5226, file: !5116, line: 927, baseType: !5261, size: 64, offset: 576)
!5261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5262, size: 64)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!115, !5114, !115}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !5226, file: !5116, line: 928, baseType: !5261, size: 64, offset: 640)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !5226, file: !5116, line: 929, baseType: !5266, size: 64, offset: 704)
!5266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{!443, !5114}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5226, file: !5116, line: 930, baseType: !5270, size: 64, offset: 768)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5272)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !5116, line: 837, size: 448, elements: !5273)
!5273 = !{!5274, !5280, !5284, !5285, !5286, !5287, !5288}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5272, file: !5116, line: 839, baseType: !5275, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!5278, !5114, !5279}
!5278 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !5116, line: 814, baseType: !13)
!5279 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !5116, line: 196, baseType: !13)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5272, file: !5116, line: 843, baseType: !5281, size: 64, offset: 64)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5282, size: 64)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!5278, !5114}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5272, file: !5116, line: 846, baseType: !5281, size: 64, offset: 128)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5272, file: !5116, line: 849, baseType: !5248, size: 64, offset: 192)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5272, file: !5116, line: 850, baseType: !5248, size: 64, offset: 256)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5272, file: !5116, line: 853, baseType: !5248, size: 64, offset: 320)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5272, file: !5116, line: 856, baseType: !5248, size: 64, offset: 384)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5226, file: !5116, line: 931, baseType: !346, size: 64, offset: 832)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5226, file: !5116, line: 932, baseType: !346, size: 64, offset: 896)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5226, file: !5116, line: 933, baseType: !4306, size: 1152, offset: 960)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5226, file: !5116, line: 934, baseType: !5293, size: 192, offset: 2112)
!5293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !5116, line: 801, size: 192, elements: !5294)
!5294 = !{!5295, !5296}
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5293, file: !5116, line: 802, baseType: !224, size: 32)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5293, file: !5116, line: 803, baseType: !210, size: 128, offset: 64)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !5226, file: !5116, line: 935, baseType: !715, size: 8, offset: 2304)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !5115, file: !5116, line: 358, baseType: !447, size: 64, offset: 1024)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !5115, file: !5116, line: 364, baseType: !4581, size: 128, offset: 1088)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !5115, file: !5116, line: 366, baseType: !5301, size: 32, offset: 1216)
!5301 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !5116, line: 171, baseType: !115)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !5115, file: !5116, line: 369, baseType: !252, size: 8, offset: 1248)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !5115, file: !5116, line: 370, baseType: !13, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !5115, file: !5116, line: 371, baseType: !13, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !5115, file: !5116, line: 373, baseType: !13, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !5115, file: !5116, line: 374, baseType: !13, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !5115, file: !5116, line: 375, baseType: !13, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !5115, file: !5116, line: 376, baseType: !13, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !5115, file: !5116, line: 377, baseType: !13, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !5115, file: !5116, line: 378, baseType: !13, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !5115, file: !5116, line: 379, baseType: !13, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !5115, file: !5116, line: 380, baseType: !13, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !5115, file: !5116, line: 382, baseType: !13, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !5115, file: !5116, line: 383, baseType: !13, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !5115, file: !5116, line: 384, baseType: !13, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !5115, file: !5116, line: 385, baseType: !13, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !5115, file: !5116, line: 388, baseType: !13, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !5115, file: !5116, line: 390, baseType: !13, size: 32, offset: 1280)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !5115, file: !5116, line: 391, baseType: !13, size: 32, offset: 1312)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !5115, file: !5116, line: 394, baseType: !5321, size: 64, offset: 1344)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5322, size: 64)
!5322 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !5116, line: 316, flags: DIFlagFwdDecl)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !5115, file: !5116, line: 395, baseType: !262, size: 16, offset: 1408)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !5115, file: !5116, line: 396, baseType: !13, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !5115, file: !5116, line: 399, baseType: !13, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !5115, file: !5116, line: 400, baseType: !13, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !5115, file: !5116, line: 402, baseType: !5279, size: 32, offset: 1440)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5115, file: !5116, line: 403, baseType: !200, size: 5824, offset: 1472)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !5115, file: !5116, line: 405, baseType: !115, size: 32, offset: 7296)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5115, file: !5116, line: 411, baseType: !13, size: 32, offset: 7328)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !5115, file: !5116, line: 412, baseType: !5332, size: 5632, offset: 7360)
!5332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5132, size: 5632, elements: !5333)
!5333 = !{!5334}
!5334 = !DISubrange(count: 11)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !5115, file: !5116, line: 413, baseType: !5132, size: 512, offset: 12992)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !5115, file: !5116, line: 415, baseType: !715, size: 8, offset: 13504)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !5115, file: !5116, line: 417, baseType: !13, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !5115, file: !5116, line: 418, baseType: !13, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !5115, file: !5116, line: 419, baseType: !13, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !5115, file: !5116, line: 420, baseType: !13, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !5115, file: !5116, line: 421, baseType: !13, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !5115, file: !5116, line: 423, baseType: !13, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !5115, file: !5116, line: 424, baseType: !13, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !5115, file: !5116, line: 425, baseType: !13, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !5115, file: !5116, line: 426, baseType: !13, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !5115, file: !5116, line: 427, baseType: !13, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !5115, file: !5116, line: 428, baseType: !13, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !5115, file: !5116, line: 429, baseType: !13, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !5115, file: !5116, line: 430, baseType: !13, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !5115, file: !5116, line: 431, baseType: !13, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !5115, file: !5116, line: 432, baseType: !13, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !5115, file: !5116, line: 433, baseType: !13, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !5115, file: !5116, line: 434, baseType: !13, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !5115, file: !5116, line: 435, baseType: !13, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !5115, file: !5116, line: 436, baseType: !13, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !5115, file: !5116, line: 437, baseType: !13, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !5115, file: !5116, line: 438, baseType: !13, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !5115, file: !5116, line: 439, baseType: !13, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !5115, file: !5116, line: 440, baseType: !13, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !5115, file: !5116, line: 441, baseType: !13, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !5115, file: !5116, line: 442, baseType: !13, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !5115, file: !5116, line: 443, baseType: !13, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !5115, file: !5116, line: 451, baseType: !13, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !5115, file: !5116, line: 457, baseType: !13, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !5115, file: !5116, line: 458, baseType: !13, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !5115, file: !5116, line: 459, baseType: !13, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !5115, file: !5116, line: 460, baseType: !13, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !5115, file: !5116, line: 461, baseType: !13, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !5115, file: !5116, line: 462, baseType: !13, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !5115, file: !5116, line: 463, baseType: !13, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !5115, file: !5116, line: 464, baseType: !13, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !5115, file: !5116, line: 465, baseType: !13, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !5115, file: !5116, line: 466, baseType: !13, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !5115, file: !5116, line: 467, baseType: !13, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !5115, file: !5116, line: 468, baseType: !5376, size: 16, offset: 13552)
!5376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !5116, line: 222, baseType: !264)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !5115, file: !5116, line: 469, baseType: !244, size: 32, offset: 13568)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !5115, file: !5116, line: 471, baseType: !224, size: 32, offset: 13600)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !5115, file: !5116, line: 472, baseType: !5380, size: 512, offset: 13632)
!5380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 512, elements: !2819)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !5115, file: !5116, line: 473, baseType: !1005, size: 64, offset: 14144)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !5115, file: !5116, line: 474, baseType: !5383, size: 704, offset: 14208)
!5383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 704, elements: !5333)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !5115, file: !5116, line: 475, baseType: !5383, size: 704, offset: 14912)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !5115, file: !5116, line: 487, baseType: !191, size: 64, offset: 15616)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !5115, file: !5116, line: 488, baseType: !593, size: 32, offset: 15680)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !5115, file: !5116, line: 490, baseType: !5388, size: 320, offset: 15744)
!5388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !5116, line: 309, size: 320, elements: !5389)
!5389 = !{!5390, !5391, !5392}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5388, file: !5116, line: 310, baseType: !635, size: 256)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5388, file: !5116, line: 311, baseType: !13, size: 32, offset: 256)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5388, file: !5116, line: 312, baseType: !252, size: 8, offset: 288)
!5393 = !DIDerivedType(tag: DW_TAG_member, scope: !5115, file: !5116, line: 497, baseType: !5394, size: 64, offset: 16064)
!5394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5115, file: !5116, line: 497, size: 64, elements: !5395)
!5395 = !{!5396, !5399}
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5394, file: !5116, line: 498, baseType: !5397, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5398, size: 64)
!5398 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !5116, line: 317, flags: DIFlagFwdDecl)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5394, file: !5116, line: 499, baseType: !5114, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !5115, file: !5116, line: 501, baseType: !262, size: 16, offset: 16128)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !5115, file: !5116, line: 502, baseType: !252, size: 8, offset: 16144)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !5115, file: !5116, line: 505, baseType: !262, size: 16, offset: 16160)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !5115, file: !5116, line: 506, baseType: !443, size: 32, offset: 16192)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !5115, file: !5116, line: 507, baseType: !13, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !5115, file: !5116, line: 510, baseType: !262, size: 16, offset: 16240)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !5115, file: !5116, line: 511, baseType: !262, size: 16, offset: 16256)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !5115, file: !5116, line: 519, baseType: !262, size: 16, offset: 16272)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !5115, file: !5116, line: 520, baseType: !3347, size: 64, offset: 16320)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !5115, file: !5116, line: 521, baseType: !341, size: 64, offset: 16384)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !5115, file: !5116, line: 526, baseType: !207, size: 64, offset: 16448)
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !5115, file: !5116, line: 528, baseType: !344, size: 64, offset: 16512)
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !5115, file: !5116, line: 531, baseType: !5413, size: 56, offset: 16576)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 56, elements: !756)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "modelname", scope: !4972, file: !194, line: 43, baseType: !207, size: 64, offset: 10688)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_mutex", scope: !4972, file: !194, line: 45, baseType: !635, size: 256, offset: 10752)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_dev_bits", scope: !4972, file: !194, line: 48, baseType: !2626, size: 64, offset: 11008)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "allow_bus_reset", scope: !4972, file: !194, line: 51, baseType: !13, size: 1, offset: 11072, flags: DIFlagBitField, extraData: i64 11072)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4972, file: !194, line: 53, baseType: !13, size: 1, offset: 11073, flags: DIFlagBitField, extraData: i64 11072)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "response_reset", scope: !4972, file: !194, line: 54, baseType: !13, size: 1, offset: 11074, flags: DIFlagBitField, extraData: i64 11072)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "in_reset", scope: !4972, file: !194, line: 55, baseType: !13, size: 1, offset: 11075, flags: DIFlagBitField, extraData: i64 11072)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "no_response_fallback", scope: !4972, file: !194, line: 56, baseType: !13, size: 1, offset: 11076, flags: DIFlagBitField, extraData: i64 11072)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "bus_probing", scope: !4972, file: !194, line: 57, baseType: !13, size: 1, offset: 11077, flags: DIFlagBitField, extraData: i64 11072)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "keep_power", scope: !4972, file: !194, line: 58, baseType: !13, size: 1, offset: 11078, flags: DIFlagBitField, extraData: i64 11072)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "jackpoll_in_suspend", scope: !4972, file: !194, line: 59, baseType: !13, size: 1, offset: 11079, flags: DIFlagBitField, extraData: i64 11072)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "primary_dig_out_type", scope: !4972, file: !194, line: 63, baseType: !115, size: 32, offset: 11104)
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "mixer_assigned", scope: !4972, file: !194, line: 64, baseType: !13, size: 32, offset: 11136)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !193, file: !194, line: 177, baseType: !4976, size: 64, offset: 7680)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !193, file: !194, line: 178, baseType: !13, size: 32, offset: 7744)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "probe_id", scope: !193, file: !194, line: 179, baseType: !443, size: 32, offset: 7776)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "preset", scope: !193, file: !194, line: 182, baseType: !5431, size: 64, offset: 7808)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5433)
!5433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_device_id", file: !4318, line: 263, size: 256, elements: !5434)
!5434 = !{!5435, !5436, !5437, !5438, !5439}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_id", scope: !5433, file: !4318, line: 264, baseType: !444, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "rev_id", scope: !5433, file: !4318, line: 265, baseType: !444, size: 32, offset: 32)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !5433, file: !4318, line: 266, baseType: !254, size: 8, offset: 64)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5433, file: !4318, line: 267, baseType: !207, size: 64, offset: 128)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5433, file: !4318, line: 268, baseType: !344, size: 64, offset: 192)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "modelname", scope: !193, file: !194, line: 183, baseType: !207, size: 64, offset: 7872)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "patch_ops", scope: !193, file: !194, line: 186, baseType: !5442, size: 640, offset: 7936)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_codec_ops", file: !194, line: 104, size: 640, elements: !5443)
!5443 = !{!5444, !5448, !5449, !5450, !5454, !5458, !5462, !5463, !5464, !5468}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "build_controls", scope: !5442, file: !194, line: 105, baseType: !5445, size: 64)
!5445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5446, size: 64)
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!115, !192}
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "build_pcms", scope: !5442, file: !194, line: 106, baseType: !5445, size: 64, offset: 64)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5442, file: !194, line: 107, baseType: !5445, size: 64, offset: 128)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5442, file: !194, line: 108, baseType: !5451, size: 64, offset: 192)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DISubroutineType(types: !5453)
!5453 = !{null, !192}
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_event", scope: !5442, file: !194, line: 109, baseType: !5455, size: 64, offset: 256)
!5455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5456, size: 64)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{null, !192, !13}
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "set_power_state", scope: !5442, file: !194, line: 110, baseType: !5459, size: 64, offset: 320)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{null, !192, !4930, !13}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5442, file: !194, line: 113, baseType: !5445, size: 64, offset: 384)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5442, file: !194, line: 114, baseType: !5445, size: 64, offset: 448)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "check_power_status", scope: !5442, file: !194, line: 115, baseType: !5465, size: 64, offset: 512)
!5465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5466, size: 64)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!115, !192, !4930}
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "stream_pm", scope: !5442, file: !194, line: 117, baseType: !5469, size: 64, offset: 576)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{null, !192, !4930, !715}
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_list_head", scope: !193, file: !194, line: 189, baseType: !210, size: 128, offset: 8576)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_ref", scope: !193, file: !194, line: 190, baseType: !1164, size: 32, offset: 8704)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "remove_sleep", scope: !193, file: !194, line: 191, baseType: !1174, size: 192, offset: 8768)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !193, file: !194, line: 194, baseType: !191, size: 64, offset: 8960)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "beep", scope: !193, file: !194, line: 197, baseType: !5477, size: 64, offset: 9024)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DICompositeType(tag: DW_TAG_structure_type, name: "hda_beep", file: !194, line: 26, flags: DIFlagFwdDecl)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "beep_mode", scope: !193, file: !194, line: 198, baseType: !13, size: 32, offset: 9088)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "wcaps", scope: !193, file: !194, line: 201, baseType: !2713, size: 64, offset: 9152)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "mixers", scope: !193, file: !194, line: 203, baseType: !4959, size: 192, offset: 9216)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "nids", scope: !193, file: !194, line: 204, baseType: !4959, size: 192, offset: 9408)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "conn_list", scope: !193, file: !194, line: 206, baseType: !210, size: 128, offset: 9600)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "spdif_mutex", scope: !193, file: !194, line: 208, baseType: !635, size: 256, offset: 9728)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "control_mutex", scope: !193, file: !194, line: 209, baseType: !635, size: 256, offset: 9984)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "spdif_out", scope: !193, file: !194, line: 210, baseType: !4959, size: 192, offset: 10240)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "spdif_in_enable", scope: !193, file: !194, line: 211, baseType: !13, size: 32, offset: 10432)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "follower_dig_outs", scope: !193, file: !194, line: 212, baseType: !5489, size: 64, offset: 10496)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4930)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "init_pins", scope: !193, file: !194, line: 213, baseType: !4959, size: 192, offset: 10560)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "driver_pins", scope: !193, file: !194, line: 214, baseType: !4959, size: 192, offset: 10752)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "cvt_setups", scope: !193, file: !194, line: 215, baseType: !4959, size: 192, offset: 10944)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "user_mutex", scope: !193, file: !194, line: 217, baseType: !635, size: 256, offset: 11136)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "hwdep", scope: !193, file: !194, line: 225, baseType: !5496, size: 64, offset: 11392)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep", file: !5498, line: 39, size: 2624, elements: !5499)
!5498 = !DIFile(filename: "./include/sound/hwdep.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5d0b643f2784f70b2018e2d3b18caeb6")
!5499 = !{!5500, !5501, !5502, !5503, !5504, !5505, !5506, !5567, !5568, !5569, !5573, !5574, !5575, !5576, !5577}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !5497, file: !5498, line: 40, baseType: !4976, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5497, file: !5498, line: 41, baseType: !210, size: 128, offset: 64)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5497, file: !5498, line: 42, baseType: !115, size: 32, offset: 192)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5497, file: !5498, line: 43, baseType: !3597, size: 256, offset: 224)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5497, file: !5498, line: 44, baseType: !4985, size: 640, offset: 480)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "iface", scope: !5497, file: !5498, line: 45, baseType: !115, size: 32, offset: 1120)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5497, file: !5498, line: 52, baseType: !5507, size: 704, offset: 1152)
!5507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_ops", file: !5498, line: 16, size: 704, elements: !5508)
!5508 = !{!5509, !5513, !5517, !5521, !5525, !5526, !5530, !5534, !5535, !5539, !5554}
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !5507, file: !5498, line: 17, baseType: !5510, size: 64)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!537, !5496, !1418, !537, !115}
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5507, file: !5498, line: 19, baseType: !5514, size: 64, offset: 64)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!330, !5496, !294, !330, !1098}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5507, file: !5498, line: 21, baseType: !5518, size: 64, offset: 128)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!330, !5496, !207, !330, !1098}
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5507, file: !5498, line: 23, baseType: !5522, size: 64, offset: 192)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DISubroutineType(types: !5524)
!5524 = !{!115, !5496, !1418}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5507, file: !5498, line: 24, baseType: !5522, size: 64, offset: 256)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5507, file: !5498, line: 25, baseType: !5527, size: 64, offset: 320)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!1536, !5496, !1418, !5067}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5507, file: !5498, line: 27, baseType: !5531, size: 64, offset: 384)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DISubroutineType(types: !5533)
!5533 = !{!115, !5496, !1418, !13, !344}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl_compat", scope: !5507, file: !5498, line: 29, baseType: !5531, size: 64, offset: 448)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5507, file: !5498, line: 31, baseType: !5536, size: 64, offset: 512)
!5536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5537, size: 64)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{!115, !5496, !1418, !1558}
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_status", scope: !5507, file: !5498, line: 33, baseType: !5540, size: 64, offset: 576)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!115, !5496, !5543}
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_dsp_status", file: !5545, line: 117, size: 512, elements: !5546)
!5545 = !DIFile(filename: "./include/uapi/sound/asound.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c7c1b6718812fde08ec0a715510ddd")
!5546 = !{!5547, !5548, !5549, !5550, !5551, !5552}
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !5544, file: !5545, line: 118, baseType: !13, size: 32)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5544, file: !5545, line: 119, baseType: !455, size: 256, offset: 32)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "num_dsps", scope: !5544, file: !5545, line: 120, baseType: !13, size: 32, offset: 288)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_loaded", scope: !5544, file: !5545, line: 121, baseType: !13, size: 32, offset: 320)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "chip_ready", scope: !5544, file: !5545, line: 122, baseType: !13, size: 32, offset: 352)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5544, file: !5545, line: 123, baseType: !5553, size: 128, offset: 384)
!5553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !2819)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_load", scope: !5507, file: !5498, line: 35, baseType: !5555, size: 64, offset: 640)
!5555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5556, size: 64)
!5556 = !DISubroutineType(types: !5557)
!5557 = !{!115, !5496, !5558}
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snd_hwdep_dsp_image", file: !5545, line: 126, size: 768, elements: !5560)
!5560 = !{!5561, !5562, !5564, !5565, !5566}
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5559, file: !5545, line: 127, baseType: !13, size: 32)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5559, file: !5545, line: 128, baseType: !5563, size: 512, offset: 32)
!5563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 512, elements: !299)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !5559, file: !5545, line: 129, baseType: !4842, size: 64, offset: 576)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5559, file: !5545, line: 130, baseType: !341, size: 64, offset: 640)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5559, file: !5545, line: 131, baseType: !344, size: 64, offset: 704)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !5497, file: !5498, line: 53, baseType: !1174, size: 192, offset: 1856)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5497, file: !5498, line: 54, baseType: !191, size: 64, offset: 2048)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "private_free", scope: !5497, file: !5498, line: 55, baseType: !5570, size: 64, offset: 2112)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{null, !5496}
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5497, file: !5498, line: 56, baseType: !4232, size: 64, offset: 2176)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !5497, file: !5498, line: 58, baseType: !635, size: 256, offset: 2240)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !5497, file: !5498, line: 59, baseType: !115, size: 32, offset: 2496)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "dsp_loaded", scope: !5497, file: !5498, line: 60, baseType: !13, size: 32, offset: 2528)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !5497, file: !5498, line: 61, baseType: !13, size: 1, offset: 2560, flags: DIFlagBitField, extraData: i64 2560)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "configured", scope: !193, file: !194, line: 229, baseType: !13, size: 1, offset: 11456, flags: DIFlagBitField, extraData: i64 11456)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "in_freeing", scope: !193, file: !194, line: 230, baseType: !13, size: 1, offset: 11457, flags: DIFlagBitField, extraData: i64 11456)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "display_power_control", scope: !193, file: !194, line: 231, baseType: !13, size: 1, offset: 11458, flags: DIFlagBitField, extraData: i64 11456)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "spdif_status_reset", scope: !193, file: !194, line: 232, baseType: !13, size: 1, offset: 11459, flags: DIFlagBitField, extraData: i64 11456)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "pin_amp_workaround", scope: !193, file: !194, line: 236, baseType: !13, size: 1, offset: 11460, flags: DIFlagBitField, extraData: i64 11456)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "single_adc_amp", scope: !193, file: !194, line: 239, baseType: !13, size: 1, offset: 11461, flags: DIFlagBitField, extraData: i64 11456)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "no_sticky_stream", scope: !193, file: !194, line: 242, baseType: !13, size: 1, offset: 11462, flags: DIFlagBitField, extraData: i64 11456)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "pins_shutup", scope: !193, file: !194, line: 243, baseType: !13, size: 1, offset: 11463, flags: DIFlagBitField, extraData: i64 11456)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "no_trigger_sense", scope: !193, file: !194, line: 244, baseType: !13, size: 1, offset: 11464, flags: DIFlagBitField, extraData: i64 11456)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "no_jack_detect", scope: !193, file: !194, line: 245, baseType: !13, size: 1, offset: 11465, flags: DIFlagBitField, extraData: i64 11456)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "inv_eapd", scope: !193, file: !194, line: 246, baseType: !13, size: 1, offset: 11466, flags: DIFlagBitField, extraData: i64 11456)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "inv_jack_detect", scope: !193, file: !194, line: 247, baseType: !13, size: 1, offset: 11467, flags: DIFlagBitField, extraData: i64 11456)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "pcm_format_first", scope: !193, file: !194, line: 248, baseType: !13, size: 1, offset: 11468, flags: DIFlagBitField, extraData: i64 11456)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "cached_write", scope: !193, file: !194, line: 249, baseType: !13, size: 1, offset: 11469, flags: DIFlagBitField, extraData: i64 11456)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "dp_mst", scope: !193, file: !194, line: 250, baseType: !13, size: 1, offset: 11470, flags: DIFlagBitField, extraData: i64 11456)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "dump_coef", scope: !193, file: !194, line: 251, baseType: !13, size: 1, offset: 11471, flags: DIFlagBitField, extraData: i64 11456)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "power_save_node", scope: !193, file: !194, line: 252, baseType: !13, size: 1, offset: 11472, flags: DIFlagBitField, extraData: i64 11456)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "auto_runtime_pm", scope: !193, file: !194, line: 253, baseType: !13, size: 1, offset: 11473, flags: DIFlagBitField, extraData: i64 11456)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "force_pin_prefix", scope: !193, file: !194, line: 254, baseType: !13, size: 1, offset: 11474, flags: DIFlagBitField, extraData: i64 11456)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "link_down_at_suspend", scope: !193, file: !194, line: 255, baseType: !13, size: 1, offset: 11475, flags: DIFlagBitField, extraData: i64 11456)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "relaxed_resume", scope: !193, file: !194, line: 256, baseType: !13, size: 1, offset: 11476, flags: DIFlagBitField, extraData: i64 11456)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "forced_resume", scope: !193, file: !194, line: 257, baseType: !13, size: 1, offset: 11477, flags: DIFlagBitField, extraData: i64 11456)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "no_stream_clean_at_suspend", scope: !193, file: !194, line: 258, baseType: !13, size: 1, offset: 11478, flags: DIFlagBitField, extraData: i64 11456)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_dev_id", scope: !193, file: !194, line: 259, baseType: !13, size: 1, offset: 11479, flags: DIFlagBitField, extraData: i64 11456)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "power_on_acct", scope: !193, file: !194, line: 262, baseType: !344, size: 64, offset: 11520)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "power_off_acct", scope: !193, file: !194, line: 263, baseType: !344, size: 64, offset: 11584)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "power_jiffies", scope: !193, file: !194, line: 264, baseType: !344, size: 64, offset: 11648)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "power_filter", scope: !193, file: !194, line: 268, baseType: !5606, size: 64, offset: 11712)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{!13, !192, !4930, !13}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "proc_widget_hook", scope: !193, file: !194, line: 272, baseType: !5610, size: 64, offset: 11776)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{null, !5028, !192, !4930}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "jacktbl", scope: !193, file: !194, line: 276, baseType: !4959, size: 192, offset: 11840)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "jackpoll_interval", scope: !193, file: !194, line: 277, baseType: !344, size: 64, offset: 12032)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "jackpoll_work", scope: !193, file: !194, line: 278, baseType: !952, size: 704, offset: 12096)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "depop_delay", scope: !193, file: !194, line: 280, baseType: !115, size: 32, offset: 12800)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_id", scope: !193, file: !194, line: 283, baseType: !115, size: 32, offset: 12832)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_list", scope: !193, file: !194, line: 284, baseType: !5619, size: 64, offset: 12864)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5621)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_fixup", file: !5622, line: 281, size: 192, elements: !5623)
!5622 = !DIFile(filename: "sound/pci/hda/hda_local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4b653f27cf4ce48133dcc0960a77c796")
!5623 = !{!5624, !5625, !5626, !5627, !5628}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5621, file: !5622, line: 282, baseType: !115, size: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !5621, file: !5622, line: 283, baseType: !715, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "chained_before", scope: !5621, file: !5622, line: 284, baseType: !715, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "chain_id", scope: !5621, file: !5622, line: 285, baseType: !115, size: 32, offset: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !5621, file: !5622, line: 292, baseType: !5629, size: 64, offset: 128)
!5629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5621, file: !5622, line: 286, size: 64, elements: !5630)
!5630 = !{!5631, !5638, !5646}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "pins", scope: !5629, file: !5622, line: 287, baseType: !5632, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5634)
!5634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_pintbl", file: !5622, line: 271, size: 64, elements: !5635)
!5635 = !{!5636, !5637}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5634, file: !5622, line: 272, baseType: !4930, size: 16)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5634, file: !5622, line: 273, baseType: !443, size: 32, offset: 32)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "verbs", scope: !5629, file: !5622, line: 288, baseType: !5639, size: 64)
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5640, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5641)
!5641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_verb", file: !194, line: 368, size: 96, elements: !5642)
!5642 = !{!5643, !5644, !5645}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5641, file: !194, line: 369, baseType: !4930, size: 16)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "verb", scope: !5641, file: !194, line: 370, baseType: !443, size: 32, offset: 32)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !5641, file: !194, line: 371, baseType: !443, size: 32, offset: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5629, file: !5622, line: 289, baseType: !5647, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5648, size: 64)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{null, !192, !5619, !115}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_name", scope: !193, file: !194, line: 285, baseType: !207, size: 64, offset: 12928)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "verbs", scope: !193, file: !194, line: 288, baseType: !4959, size: 192, offset: 12992)
!5652 = !DIDerivedType(tag: DW_TAG_typedef, name: "hda_codec_patch_t", file: !194, line: 76, baseType: !5445)
!5653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5654, size: 64)
!5654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5655)
!5655 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hda_codec_driver", file: !194, line: 89, size: 1664, elements: !5658)
!5658 = !{!5659, !5680}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !5657, file: !194, line: 90, baseType: !5660, size: 1600)
!5660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdac_driver", file: !172, line: 221, size: 1600, elements: !5661)
!5661 = !{!5662, !5663, !5664, !5665, !5670, !5674, !5675, !5676}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5660, file: !172, line: 222, baseType: !4306, size: 1152)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5660, file: !172, line: 223, baseType: !115, size: 32, offset: 1152)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5660, file: !172, line: 224, baseType: !5431, size: 64, offset: 1216)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5660, file: !172, line: 225, baseType: !5666, size: 64, offset: 1280)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{!115, !4782, !5669}
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "unsol_event", scope: !5660, file: !172, line: 226, baseType: !5671, size: 64, offset: 1344)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{null, !4782, !13}
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5660, file: !172, line: 229, baseType: !4789, size: 64, offset: 1408)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5660, file: !172, line: 230, baseType: !4789, size: 64, offset: 1472)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5660, file: !172, line: 231, baseType: !5677, size: 64, offset: 1536)
!5677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5678, size: 64)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !4782}
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5657, file: !194, line: 91, baseType: !5431, size: 64, offset: 1600)
!5681 = !{!0, !7, !5682, !5684, !5686, !5688, !5693}
!5682 = !DIGlobalVariableExpression(var: !5683, expr: !DIExpression())
!5683 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___hda_codec_driver_register300", scope: !9, file: !2, line: 194, type: !191, isLocal: true, isDefinition: true)
!5684 = !DIGlobalVariableExpression(var: !5685, expr: !DIExpression())
!5685 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hda_codec_driver_unregister301", scope: !9, file: !2, line: 200, type: !191, isLocal: true, isDefinition: true)
!5686 = !DIGlobalVariableExpression(var: !5687, expr: !DIExpression())
!5687 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_snd_hda_codec_configure302", scope: !9, file: !2, line: 343, type: !191, isLocal: true, isDefinition: true)
!5688 = !DIGlobalVariableExpression(var: !5689, expr: !DIExpression())
!5689 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !5690, isLocal: true, isDefinition: true)
!5690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5691)
!5691 = !{!5692}
!5692 = !DISubrange(count: 25)
!5693 = !DIGlobalVariableExpression(var: !5694, expr: !DIExpression())
!5694 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !5695, file: !5696, line: 112, type: !191, isLocal: true, isDefinition: true)
!5695 = distinct !DISubprogram(name: "might_resched", scope: !5696, file: !5696, line: 110, type: !1000, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5696 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5697 = !{i32 7, !"Dwarf Version", i32 5}
!5698 = !{i32 2, !"Debug Info Version", i32 3}
!5699 = !{i32 1, !"wchar_size", i32 2}
!5700 = !{i32 8, !"cf-protection-branch", i32 1}
!5701 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5702 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5703 = !{i32 1, !"Code Model", i32 2}
!5704 = !{i32 1, !"override-stack-alignment", i32 8}
!5705 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5706 = distinct !DISubprogram(name: "snd_hda_codec_set_name", scope: !2, file: !2, line: 63, type: !5707, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5709)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{!115, !192, !207}
!5709 = !{!5710, !5711, !5712}
!5710 = !DILocalVariable(name: "codec", arg: 1, scope: !5706, file: !2, line: 63, type: !192)
!5711 = !DILocalVariable(name: "name", arg: 2, scope: !5706, file: !2, line: 63, type: !207)
!5712 = !DILocalVariable(name: "err", scope: !5706, file: !2, line: 65, type: !115)
!5713 = !DILocation(line: 63, column: 46, scope: !5706)
!5714 = !DILocation(line: 63, column: 65, scope: !5706)
!5715 = !DILocation(line: 65, column: 2, scope: !5706)
!5716 = !DILocation(line: 65, column: 6, scope: !5706)
!5717 = !DILocation(line: 67, column: 7, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5706, file: !2, line: 67, column: 6)
!5719 = !DILocation(line: 67, column: 6, scope: !5706)
!5720 = !DILocation(line: 68, column: 3, scope: !5718)
!5721 = !DILocation(line: 69, column: 39, scope: !5706)
!5722 = !DILocation(line: 69, column: 46, scope: !5706)
!5723 = !DILocation(line: 69, column: 52, scope: !5706)
!5724 = !DILocation(line: 69, column: 8, scope: !5706)
!5725 = !DILocation(line: 69, column: 6, scope: !5706)
!5726 = !DILocation(line: 70, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5706, file: !2, line: 70, column: 6)
!5728 = !DILocation(line: 70, column: 10, scope: !5727)
!5729 = !DILocation(line: 70, column: 6, scope: !5706)
!5730 = !DILocation(line: 71, column: 10, scope: !5727)
!5731 = !DILocation(line: 71, column: 3, scope: !5727)
!5732 = !DILocation(line: 74, column: 8, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5706, file: !2, line: 74, column: 6)
!5734 = !DILocation(line: 74, column: 15, scope: !5733)
!5735 = !DILocation(line: 74, column: 21, scope: !5733)
!5736 = !DILocation(line: 74, column: 7, scope: !5733)
!5737 = !DILocation(line: 74, column: 31, scope: !5733)
!5738 = !DILocation(line: 75, column: 6, scope: !5733)
!5739 = !DILocation(line: 75, column: 13, scope: !5733)
!5740 = !DILocation(line: 75, column: 18, scope: !5733)
!5741 = !DILocation(line: 75, column: 36, scope: !5733)
!5742 = !DILocation(line: 75, column: 43, scope: !5733)
!5743 = !DILocation(line: 75, column: 48, scope: !5733)
!5744 = !DILocation(line: 75, column: 33, scope: !5733)
!5745 = !DILocation(line: 74, column: 6, scope: !5706)
!5746 = !DILocation(line: 76, column: 12, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5733, file: !2, line: 75, column: 54)
!5748 = !DILocation(line: 76, column: 19, scope: !5747)
!5749 = !DILocation(line: 76, column: 25, scope: !5747)
!5750 = !DILocation(line: 78, column: 5, scope: !5747)
!5751 = !DILocation(line: 78, column: 12, scope: !5747)
!5752 = !DILocation(line: 78, column: 17, scope: !5747)
!5753 = !DILocation(line: 78, column: 30, scope: !5747)
!5754 = !DILocation(line: 78, column: 37, scope: !5747)
!5755 = !DILocation(line: 78, column: 42, scope: !5747)
!5756 = !DILocation(line: 76, column: 3, scope: !5747)
!5757 = !DILocation(line: 79, column: 32, scope: !5747)
!5758 = !DILocation(line: 79, column: 39, scope: !5747)
!5759 = !DILocation(line: 79, column: 44, scope: !5747)
!5760 = !DILocation(line: 79, column: 3, scope: !5747)
!5761 = !DILocation(line: 79, column: 10, scope: !5747)
!5762 = !DILocation(line: 79, column: 15, scope: !5747)
!5763 = !DILocation(line: 79, column: 30, scope: !5747)
!5764 = !DILocation(line: 80, column: 2, scope: !5747)
!5765 = !DILocation(line: 82, column: 2, scope: !5706)
!5766 = !DILocation(line: 83, column: 1, scope: !5706)
!5767 = !DISubprogram(name: "snd_hdac_device_set_chip_name", scope: !172, file: !172, line: 126, type: !5768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5768 = !DISubroutineType(types: !5769)
!5769 = !{!115, !4782, !207}
!5770 = !DISubprogram(name: "snprintf", scope: !5771, file: !5771, line: 12, type: !5772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5771 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!115, !294, !341, !207, null}
!5774 = distinct !DISubprogram(name: "__hda_codec_driver_register", scope: !2, file: !2, line: 179, type: !5775, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5777)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!115, !5656, !207, !564}
!5777 = !{!5778, !5779, !5780}
!5778 = !DILocalVariable(name: "drv", arg: 1, scope: !5774, file: !2, line: 179, type: !5656)
!5779 = !DILocalVariable(name: "name", arg: 2, scope: !5774, file: !2, line: 179, type: !207)
!5780 = !DILocalVariable(name: "owner", arg: 3, scope: !5774, file: !2, line: 180, type: !564)
!5781 = !DILocation(line: 179, column: 58, scope: !5774)
!5782 = !DILocation(line: 179, column: 75, scope: !5774)
!5783 = !DILocation(line: 180, column: 26, scope: !5774)
!5784 = !DILocation(line: 182, column: 26, scope: !5774)
!5785 = !DILocation(line: 182, column: 2, scope: !5774)
!5786 = !DILocation(line: 182, column: 7, scope: !5774)
!5787 = !DILocation(line: 182, column: 12, scope: !5774)
!5788 = !DILocation(line: 182, column: 19, scope: !5774)
!5789 = !DILocation(line: 182, column: 24, scope: !5774)
!5790 = !DILocation(line: 183, column: 27, scope: !5774)
!5791 = !DILocation(line: 183, column: 2, scope: !5774)
!5792 = !DILocation(line: 183, column: 7, scope: !5774)
!5793 = !DILocation(line: 183, column: 12, scope: !5774)
!5794 = !DILocation(line: 183, column: 19, scope: !5774)
!5795 = !DILocation(line: 183, column: 25, scope: !5774)
!5796 = !DILocation(line: 184, column: 2, scope: !5774)
!5797 = !DILocation(line: 184, column: 7, scope: !5774)
!5798 = !DILocation(line: 184, column: 12, scope: !5774)
!5799 = !DILocation(line: 184, column: 19, scope: !5774)
!5800 = !DILocation(line: 184, column: 23, scope: !5774)
!5801 = !DILocation(line: 185, column: 2, scope: !5774)
!5802 = !DILocation(line: 185, column: 7, scope: !5774)
!5803 = !DILocation(line: 185, column: 12, scope: !5774)
!5804 = !DILocation(line: 185, column: 19, scope: !5774)
!5805 = !DILocation(line: 185, column: 25, scope: !5774)
!5806 = !DILocation(line: 186, column: 2, scope: !5774)
!5807 = !DILocation(line: 186, column: 7, scope: !5774)
!5808 = !DILocation(line: 186, column: 12, scope: !5774)
!5809 = !DILocation(line: 186, column: 19, scope: !5774)
!5810 = !DILocation(line: 186, column: 26, scope: !5774)
!5811 = !DILocation(line: 187, column: 2, scope: !5774)
!5812 = !DILocation(line: 187, column: 7, scope: !5774)
!5813 = !DILocation(line: 187, column: 12, scope: !5774)
!5814 = !DILocation(line: 187, column: 19, scope: !5774)
!5815 = !DILocation(line: 187, column: 28, scope: !5774)
!5816 = !DILocation(line: 188, column: 2, scope: !5774)
!5817 = !DILocation(line: 188, column: 7, scope: !5774)
!5818 = !DILocation(line: 188, column: 12, scope: !5774)
!5819 = !DILocation(line: 188, column: 19, scope: !5774)
!5820 = !DILocation(line: 188, column: 22, scope: !5774)
!5821 = !DILocation(line: 189, column: 2, scope: !5774)
!5822 = !DILocation(line: 189, column: 7, scope: !5774)
!5823 = !DILocation(line: 189, column: 12, scope: !5774)
!5824 = !DILocation(line: 189, column: 17, scope: !5774)
!5825 = !DILocation(line: 190, column: 2, scope: !5774)
!5826 = !DILocation(line: 190, column: 7, scope: !5774)
!5827 = !DILocation(line: 190, column: 12, scope: !5774)
!5828 = !DILocation(line: 190, column: 18, scope: !5774)
!5829 = !DILocation(line: 191, column: 2, scope: !5774)
!5830 = !DILocation(line: 191, column: 7, scope: !5774)
!5831 = !DILocation(line: 191, column: 12, scope: !5774)
!5832 = !DILocation(line: 191, column: 24, scope: !5774)
!5833 = !DILocation(line: 192, column: 26, scope: !5774)
!5834 = !DILocation(line: 192, column: 31, scope: !5774)
!5835 = !DILocation(line: 192, column: 36, scope: !5774)
!5836 = !DILocation(line: 192, column: 9, scope: !5774)
!5837 = !DILocation(line: 192, column: 2, scope: !5774)
!5838 = distinct !DISubprogram(name: "hda_codec_driver_probe", scope: !2, file: !2, line: 86, type: !4266, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5839)
!5839 = !{!5840, !5841, !5842, !5844, !5845, !5846, !5847, !5852, !5855, !5858, !5861, !5862, !5863}
!5840 = !DILocalVariable(name: "dev", arg: 1, scope: !5838, file: !2, line: 86, type: !4232)
!5841 = !DILocalVariable(name: "codec", scope: !5838, file: !2, line: 88, type: !192)
!5842 = !DILocalVariable(name: "__mptr", scope: !5843, file: !2, line: 88, type: !191)
!5843 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 88, column: 28)
!5844 = !DILocalVariable(name: "owner", scope: !5838, file: !2, line: 89, type: !564)
!5845 = !DILocalVariable(name: "patch", scope: !5838, file: !2, line: 90, type: !5652)
!5846 = !DILocalVariable(name: "err", scope: !5838, file: !2, line: 91, type: !115)
!5847 = !DILocalVariable(name: "__ret_warn_on", scope: !5848, file: !2, line: 94, type: !115)
!5848 = distinct !DILexicalBlock(scope: !5849, file: !2, line: 94, column: 7)
!5849 = distinct !DILexicalBlock(scope: !5850, file: !2, line: 94, column: 7)
!5850 = distinct !DILexicalBlock(scope: !5851, file: !2, line: 93, column: 32)
!5851 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 93, column: 6)
!5852 = !DILocalVariable(name: "__flags", scope: !5853, file: !2, line: 94, type: !115)
!5853 = distinct !DILexicalBlock(scope: !5854, file: !2, line: 94, column: 7)
!5854 = distinct !DILexicalBlock(scope: !5848, file: !2, line: 94, column: 7)
!5855 = !DILocalVariable(name: "__ret_warn_on", scope: !5856, file: !2, line: 99, type: !115)
!5856 = distinct !DILexicalBlock(scope: !5857, file: !2, line: 99, column: 6)
!5857 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 99, column: 6)
!5858 = !DILocalVariable(name: "__flags", scope: !5859, file: !2, line: 99, type: !115)
!5859 = distinct !DILexicalBlock(scope: !5860, file: !2, line: 99, column: 6)
!5860 = distinct !DILexicalBlock(scope: !5856, file: !2, line: 99, column: 6)
!5861 = !DILabel(scope: !5838, name: "error_module", file: !2, line: 138)
!5862 = !DILabel(scope: !5838, name: "error_module_put", file: !2, line: 141)
!5863 = !DILabel(scope: !5838, name: "error", file: !2, line: 144)
!5864 = !DILocation(line: 86, column: 50, scope: !5838)
!5865 = !DILocation(line: 88, column: 2, scope: !5838)
!5866 = !DILocation(line: 88, column: 20, scope: !5838)
!5867 = !DILocation(line: 88, column: 28, scope: !5843)
!5868 = !DILocation(line: 88, column: 28, scope: !5838)
!5869 = !DILocation(line: 89, column: 2, scope: !5838)
!5870 = !DILocation(line: 89, column: 17, scope: !5838)
!5871 = !DILocation(line: 89, column: 25, scope: !5838)
!5872 = !DILocation(line: 89, column: 30, scope: !5838)
!5873 = !DILocation(line: 89, column: 38, scope: !5838)
!5874 = !DILocation(line: 90, column: 2, scope: !5838)
!5875 = !DILocation(line: 90, column: 20, scope: !5838)
!5876 = !DILocation(line: 91, column: 2, scope: !5838)
!5877 = !DILocation(line: 91, column: 6, scope: !5838)
!5878 = !DILocation(line: 93, column: 6, scope: !5851)
!5879 = !DILocation(line: 93, column: 13, scope: !5851)
!5880 = !DILocation(line: 93, column: 18, scope: !5851)
!5881 = !DILocation(line: 93, column: 23, scope: !5851)
!5882 = !DILocation(line: 93, column: 6, scope: !5838)
!5883 = !DILocation(line: 94, column: 7, scope: !5848)
!5884 = !DILocation(line: 94, column: 7, scope: !5854)
!5885 = !DILocation(line: 94, column: 7, scope: !5853)
!5886 = !DILocation(line: 94, column: 7, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5853, file: !2, line: 94, column: 7)
!5888 = !DILocation(line: 94, column: 7, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5853, file: !2, line: 94, column: 7)
!5890 = !{i64 2155522560, i64 2155522589, i64 2155522635, i64 2155522693, i64 2155522747, i64 2155522801, i64 2155522856, i64 2155522887, i64 2155523195, i64 2155523201, i64 2155523248, i64 2155523271, i64 2155523297}
!5891 = !DILocation(line: 94, column: 7, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5853, file: !2, line: 94, column: 7)
!5893 = !DILocation(line: 94, column: 7, scope: !5849)
!5894 = !DILocation(line: 94, column: 7, scope: !5850)
!5895 = !DILocation(line: 95, column: 4, scope: !5849)
!5896 = !DILocation(line: 96, column: 10, scope: !5850)
!5897 = !DILocation(line: 96, column: 17, scope: !5850)
!5898 = !DILocation(line: 96, column: 22, scope: !5850)
!5899 = !DILocation(line: 96, column: 27, scope: !5850)
!5900 = !DILocation(line: 96, column: 36, scope: !5850)
!5901 = !DILocation(line: 96, column: 49, scope: !5850)
!5902 = !DILocation(line: 96, column: 56, scope: !5850)
!5903 = !DILocation(line: 96, column: 3, scope: !5850)
!5904 = !DILocation(line: 99, column: 6, scope: !5856)
!5905 = !DILocation(line: 99, column: 6, scope: !5860)
!5906 = !DILocation(line: 99, column: 6, scope: !5859)
!5907 = !DILocation(line: 99, column: 6, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5859, file: !2, line: 99, column: 6)
!5909 = !DILocation(line: 99, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5859, file: !2, line: 99, column: 6)
!5911 = !{i64 2155524064, i64 2155524093, i64 2155524139, i64 2155524197, i64 2155524251, i64 2155524305, i64 2155524360, i64 2155524391, i64 2155524699, i64 2155524705, i64 2155524752, i64 2155524775, i64 2155524801}
!5912 = !DILocation(line: 99, column: 6, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5859, file: !2, line: 99, column: 6)
!5914 = !DILocation(line: 99, column: 6, scope: !5857)
!5915 = !DILocation(line: 99, column: 6, scope: !5838)
!5916 = !DILocation(line: 100, column: 3, scope: !5857)
!5917 = !DILocation(line: 102, column: 31, scope: !5838)
!5918 = !DILocation(line: 102, column: 38, scope: !5838)
!5919 = !DILocation(line: 102, column: 45, scope: !5838)
!5920 = !DILocation(line: 102, column: 53, scope: !5838)
!5921 = !DILocation(line: 102, column: 8, scope: !5838)
!5922 = !DILocation(line: 102, column: 6, scope: !5838)
!5923 = !DILocation(line: 103, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 103, column: 6)
!5925 = !DILocation(line: 103, column: 10, scope: !5924)
!5926 = !DILocation(line: 103, column: 6, scope: !5838)
!5927 = !DILocation(line: 104, column: 3, scope: !5924)
!5928 = !DILocation(line: 105, column: 30, scope: !5838)
!5929 = !DILocation(line: 105, column: 37, scope: !5838)
!5930 = !DILocation(line: 105, column: 8, scope: !5838)
!5931 = !DILocation(line: 105, column: 6, scope: !5838)
!5932 = !DILocation(line: 106, column: 6, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 106, column: 6)
!5934 = !DILocation(line: 106, column: 10, scope: !5933)
!5935 = !DILocation(line: 106, column: 6, scope: !5838)
!5936 = !DILocation(line: 107, column: 3, scope: !5933)
!5937 = !DILocation(line: 109, column: 22, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 109, column: 6)
!5939 = !DILocation(line: 109, column: 7, scope: !5938)
!5940 = !DILocation(line: 109, column: 6, scope: !5838)
!5941 = !DILocation(line: 110, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5938, file: !2, line: 109, column: 30)
!5943 = !DILocation(line: 111, column: 3, scope: !5942)
!5944 = !DILocation(line: 114, column: 29, scope: !5838)
!5945 = !DILocation(line: 114, column: 36, scope: !5838)
!5946 = !DILocation(line: 114, column: 44, scope: !5838)
!5947 = !DILocation(line: 114, column: 10, scope: !5838)
!5948 = !DILocation(line: 114, column: 8, scope: !5838)
!5949 = !DILocation(line: 115, column: 6, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 115, column: 6)
!5951 = !DILocation(line: 115, column: 6, scope: !5838)
!5952 = !DILocation(line: 116, column: 9, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5950, file: !2, line: 115, column: 13)
!5954 = !DILocation(line: 116, column: 15, scope: !5953)
!5955 = !DILocation(line: 116, column: 7, scope: !5953)
!5956 = !DILocation(line: 117, column: 7, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 117, column: 7)
!5958 = !DILocation(line: 117, column: 11, scope: !5957)
!5959 = !DILocation(line: 117, column: 7, scope: !5953)
!5960 = !DILocation(line: 118, column: 4, scope: !5957)
!5961 = !DILocation(line: 119, column: 2, scope: !5953)
!5962 = !DILocation(line: 121, column: 33, scope: !5838)
!5963 = !DILocation(line: 121, column: 8, scope: !5838)
!5964 = !DILocation(line: 121, column: 6, scope: !5838)
!5965 = !DILocation(line: 122, column: 6, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 122, column: 6)
!5967 = !DILocation(line: 122, column: 10, scope: !5966)
!5968 = !DILocation(line: 122, column: 6, scope: !5838)
!5969 = !DILocation(line: 123, column: 3, scope: !5966)
!5970 = !DILocation(line: 124, column: 37, scope: !5838)
!5971 = !DILocation(line: 124, column: 8, scope: !5838)
!5972 = !DILocation(line: 124, column: 6, scope: !5838)
!5973 = !DILocation(line: 125, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 125, column: 6)
!5975 = !DILocation(line: 125, column: 10, scope: !5974)
!5976 = !DILocation(line: 125, column: 6, scope: !5838)
!5977 = !DILocation(line: 126, column: 3, scope: !5974)
!5978 = !DILocation(line: 128, column: 7, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 128, column: 6)
!5980 = !DILocation(line: 128, column: 14, scope: !5979)
!5981 = !DILocation(line: 128, column: 19, scope: !5979)
!5982 = !DILocation(line: 128, column: 31, scope: !5979)
!5983 = !DILocation(line: 128, column: 34, scope: !5979)
!5984 = !DILocation(line: 128, column: 41, scope: !5979)
!5985 = !DILocation(line: 128, column: 47, scope: !5979)
!5986 = !{i8 0, i8 2}
!5987 = !DILocation(line: 128, column: 6, scope: !5838)
!5988 = !DILocation(line: 129, column: 27, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5979, file: !2, line: 128, column: 59)
!5990 = !DILocation(line: 129, column: 34, scope: !5989)
!5991 = !DILocation(line: 129, column: 9, scope: !5989)
!5992 = !DILocation(line: 129, column: 7, scope: !5989)
!5993 = !DILocation(line: 130, column: 7, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 130, column: 7)
!5995 = !DILocation(line: 130, column: 11, scope: !5994)
!5996 = !DILocation(line: 130, column: 7, scope: !5989)
!5997 = !DILocation(line: 131, column: 4, scope: !5994)
!5998 = !DILocation(line: 132, column: 26, scope: !5989)
!5999 = !DILocation(line: 132, column: 3, scope: !5989)
!6000 = !DILocation(line: 133, column: 2, scope: !5989)
!6001 = !DILocation(line: 135, column: 2, scope: !5838)
!6002 = !DILocation(line: 135, column: 9, scope: !5838)
!6003 = !DILocation(line: 135, column: 14, scope: !5838)
!6004 = !DILocation(line: 135, column: 25, scope: !5838)
!6005 = !DILocation(line: 136, column: 2, scope: !5838)
!6006 = !DILocation(line: 138, column: 2, scope: !5838)
!6007 = !DILocation(line: 139, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5838, file: !2, line: 139, column: 6)
!6009 = !DILocation(line: 139, column: 13, scope: !6008)
!6010 = !DILocation(line: 139, column: 23, scope: !6008)
!6011 = !DILocation(line: 139, column: 6, scope: !5838)
!6012 = !DILocation(line: 140, column: 3, scope: !6008)
!6013 = !DILocation(line: 140, column: 10, scope: !6008)
!6014 = !DILocation(line: 140, column: 20, scope: !6008)
!6015 = !DILocation(line: 140, column: 25, scope: !6008)
!6016 = !DILocation(line: 141, column: 2, scope: !5838)
!6017 = !DILocation(line: 142, column: 13, scope: !5838)
!6018 = !DILocation(line: 142, column: 2, scope: !5838)
!6019 = !DILocation(line: 144, column: 2, scope: !5838)
!6020 = !DILocation(line: 145, column: 35, scope: !5838)
!6021 = !DILocation(line: 145, column: 2, scope: !5838)
!6022 = !DILocation(line: 146, column: 2, scope: !5838)
!6023 = !DILocation(line: 146, column: 9, scope: !5838)
!6024 = !DILocation(line: 146, column: 16, scope: !5838)
!6025 = !DILocation(line: 147, column: 9, scope: !5838)
!6026 = !DILocation(line: 147, column: 2, scope: !5838)
!6027 = !DILocation(line: 148, column: 1, scope: !5838)
!6028 = distinct !DISubprogram(name: "hda_codec_driver_remove", scope: !2, file: !2, line: 150, type: !4266, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6029)
!6029 = !{!6030, !6031, !6032, !6034, !6039, !6042, !6057, !6058, !6062}
!6030 = !DILocalVariable(name: "dev", arg: 1, scope: !6028, file: !2, line: 150, type: !4232)
!6031 = !DILocalVariable(name: "codec", scope: !6028, file: !2, line: 152, type: !192)
!6032 = !DILocalVariable(name: "__mptr", scope: !6033, file: !2, line: 152, type: !191)
!6033 = distinct !DILexicalBlock(scope: !6028, file: !2, line: 152, column: 28)
!6034 = !DILocalVariable(name: "__ret_warn_on", scope: !6035, file: !2, line: 155, type: !115)
!6035 = distinct !DILexicalBlock(scope: !6036, file: !2, line: 155, column: 7)
!6036 = distinct !DILexicalBlock(scope: !6037, file: !2, line: 155, column: 7)
!6037 = distinct !DILexicalBlock(scope: !6038, file: !2, line: 154, column: 32)
!6038 = distinct !DILexicalBlock(scope: !6028, file: !2, line: 154, column: 6)
!6039 = !DILocalVariable(name: "__flags", scope: !6040, file: !2, line: 155, type: !115)
!6040 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 155, column: 7)
!6041 = distinct !DILexicalBlock(scope: !6035, file: !2, line: 155, column: 7)
!6042 = !DILocalVariable(name: "__wq_entry", scope: !6043, file: !2, line: 163, type: !6046)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !2, line: 163, column: 3)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !2, line: 163, column: 3)
!6045 = distinct !DILexicalBlock(scope: !6028, file: !2, line: 162, column: 6)
!6046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1175, line: 30, size: 320, elements: !6047)
!6047 = !{!6048, !6049, !6050, !6056}
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6046, file: !1175, line: 31, baseType: !13, size: 32)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !6046, file: !1175, line: 32, baseType: !191, size: 64, offset: 64)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6046, file: !1175, line: 33, baseType: !6051, size: 64, offset: 128)
!6051 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1175, line: 16, baseType: !6052)
!6052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6053, size: 64)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!115, !6055, !13, !115, !191}
!6055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6046, size: 64)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6046, file: !1175, line: 34, baseType: !210, size: 128, offset: 192)
!6057 = !DILocalVariable(name: "__ret", scope: !6043, file: !2, line: 163, type: !330)
!6058 = !DILocalVariable(name: "__int", scope: !6059, file: !2, line: 163, type: !330)
!6059 = distinct !DILexicalBlock(scope: !6060, file: !2, line: 163, column: 3)
!6060 = distinct !DILexicalBlock(scope: !6061, file: !2, line: 163, column: 3)
!6061 = distinct !DILexicalBlock(scope: !6043, file: !2, line: 163, column: 3)
!6062 = !DILabel(scope: !6043, name: "__out", file: !2, line: 163)
!6063 = !DILocation(line: 150, column: 51, scope: !6028)
!6064 = !DILocation(line: 152, column: 2, scope: !6028)
!6065 = !DILocation(line: 152, column: 20, scope: !6028)
!6066 = !DILocation(line: 152, column: 28, scope: !6033)
!6067 = !DILocation(line: 152, column: 28, scope: !6028)
!6068 = !DILocation(line: 154, column: 6, scope: !6038)
!6069 = !DILocation(line: 154, column: 13, scope: !6038)
!6070 = !DILocation(line: 154, column: 18, scope: !6038)
!6071 = !DILocation(line: 154, column: 23, scope: !6038)
!6072 = !DILocation(line: 154, column: 6, scope: !6028)
!6073 = !DILocation(line: 155, column: 7, scope: !6035)
!6074 = !DILocation(line: 155, column: 7, scope: !6041)
!6075 = !DILocation(line: 155, column: 7, scope: !6040)
!6076 = !DILocation(line: 155, column: 7, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 155, column: 7)
!6078 = !DILocation(line: 155, column: 7, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 155, column: 7)
!6080 = !{i64 2155526775, i64 2155526804, i64 2155526850, i64 2155526908, i64 2155526962, i64 2155527016, i64 2155527071, i64 2155527102, i64 2155527410, i64 2155527416, i64 2155527463, i64 2155527486, i64 2155527512}
!6081 = !DILocation(line: 155, column: 7, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6040, file: !2, line: 155, column: 7)
!6083 = !DILocation(line: 155, column: 7, scope: !6036)
!6084 = !DILocation(line: 155, column: 7, scope: !6037)
!6085 = !DILocation(line: 156, column: 4, scope: !6036)
!6086 = !DILocation(line: 157, column: 10, scope: !6037)
!6087 = !DILocation(line: 157, column: 17, scope: !6037)
!6088 = !DILocation(line: 157, column: 22, scope: !6037)
!6089 = !DILocation(line: 157, column: 27, scope: !6037)
!6090 = !DILocation(line: 157, column: 36, scope: !6037)
!6091 = !DILocation(line: 157, column: 49, scope: !6037)
!6092 = !DILocation(line: 157, column: 56, scope: !6037)
!6093 = !DILocation(line: 157, column: 3, scope: !6037)
!6094 = !DILocation(line: 160, column: 32, scope: !6028)
!6095 = !DILocation(line: 160, column: 2, scope: !6028)
!6096 = !DILocation(line: 161, column: 30, scope: !6028)
!6097 = !DILocation(line: 161, column: 2, scope: !6028)
!6098 = !DILocation(line: 162, column: 30, scope: !6045)
!6099 = !DILocation(line: 162, column: 37, scope: !6045)
!6100 = !DILocation(line: 162, column: 7, scope: !6045)
!6101 = !DILocation(line: 162, column: 6, scope: !6028)
!6102 = !DILocation(line: 163, column: 3, scope: !6045)
!6103 = !DILocation(line: 163, column: 3, scope: !6044)
!6104 = !DILocation(line: 163, column: 3, scope: !6105)
!6105 = distinct !DILexicalBlock(scope: !6044, file: !2, line: 163, column: 3)
!6106 = !DILocation(line: 163, column: 3, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6044, file: !2, line: 163, column: 3)
!6108 = !DILocation(line: 163, column: 3, scope: !6043)
!6109 = !DILocation(line: 163, column: 3, scope: !6059)
!6110 = !DILocation(line: 163, column: 3, scope: !6111)
!6111 = distinct !DILexicalBlock(scope: !6059, file: !2, line: 163, column: 3)
!6112 = !DILocation(line: 163, column: 3, scope: !6060)
!6113 = distinct !{!6113, !6114, !6114, !6115}
!6114 = !DILocation(line: 163, column: 3, scope: !6061)
!6115 = !{!"llvm.loop.unroll.disable"}
!6116 = !DILocation(line: 164, column: 21, scope: !6028)
!6117 = !DILocation(line: 164, column: 28, scope: !6028)
!6118 = !DILocation(line: 164, column: 33, scope: !6028)
!6119 = !DILocation(line: 164, column: 2, scope: !6028)
!6120 = !DILocation(line: 166, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6028, file: !2, line: 166, column: 6)
!6122 = !DILocation(line: 166, column: 13, scope: !6121)
!6123 = !DILocation(line: 166, column: 23, scope: !6121)
!6124 = !DILocation(line: 166, column: 6, scope: !6028)
!6125 = !DILocation(line: 167, column: 3, scope: !6121)
!6126 = !DILocation(line: 167, column: 10, scope: !6121)
!6127 = !DILocation(line: 167, column: 20, scope: !6121)
!6128 = !DILocation(line: 167, column: 25, scope: !6121)
!6129 = !DILocation(line: 168, column: 35, scope: !6028)
!6130 = !DILocation(line: 168, column: 2, scope: !6028)
!6131 = !DILocation(line: 169, column: 2, scope: !6028)
!6132 = !DILocation(line: 169, column: 9, scope: !6028)
!6133 = !DILocation(line: 169, column: 16, scope: !6028)
!6134 = !DILocation(line: 170, column: 13, scope: !6028)
!6135 = !DILocation(line: 170, column: 18, scope: !6028)
!6136 = !DILocation(line: 170, column: 26, scope: !6028)
!6137 = !DILocation(line: 170, column: 2, scope: !6028)
!6138 = !DILocation(line: 171, column: 2, scope: !6028)
!6139 = !DILocation(line: 172, column: 1, scope: !6028)
!6140 = distinct !DISubprogram(name: "hda_codec_driver_shutdown", scope: !2, file: !2, line: 174, type: !4257, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6141)
!6141 = !{!6142, !6143}
!6142 = !DILocalVariable(name: "dev", arg: 1, scope: !6140, file: !2, line: 174, type: !4232)
!6143 = !DILocalVariable(name: "__mptr", scope: !6144, file: !2, line: 176, type: !191)
!6144 = distinct !DILexicalBlock(scope: !6140, file: !2, line: 176, column: 25)
!6145 = !DILocation(line: 174, column: 54, scope: !6140)
!6146 = !DILocation(line: 176, column: 25, scope: !6144)
!6147 = !DILocation(line: 176, column: 25, scope: !6140)
!6148 = !DILocation(line: 176, column: 2, scope: !6140)
!6149 = !DILocation(line: 177, column: 1, scope: !6140)
!6150 = distinct !DISubprogram(name: "hda_codec_match", scope: !2, file: !2, line: 21, type: !5667, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6151)
!6151 = !{!6152, !6153, !6154, !6155, !6157, !6158, !6160, !6161, !6162}
!6152 = !DILocalVariable(name: "dev", arg: 1, scope: !6150, file: !2, line: 21, type: !4782)
!6153 = !DILocalVariable(name: "drv", arg: 2, scope: !6150, file: !2, line: 21, type: !5669)
!6154 = !DILocalVariable(name: "codec", scope: !6150, file: !2, line: 23, type: !192)
!6155 = !DILocalVariable(name: "__mptr", scope: !6156, file: !2, line: 23, type: !191)
!6156 = distinct !DILexicalBlock(scope: !6150, file: !2, line: 23, column: 28)
!6157 = !DILocalVariable(name: "driver", scope: !6150, file: !2, line: 24, type: !5656)
!6158 = !DILocalVariable(name: "__mptr", scope: !6159, file: !2, line: 25, type: !191)
!6159 = distinct !DILexicalBlock(scope: !6150, file: !2, line: 25, column: 3)
!6160 = !DILocalVariable(name: "list", scope: !6150, file: !2, line: 26, type: !5431)
!6161 = !DILocalVariable(name: "id", scope: !6150, file: !2, line: 28, type: !443)
!6162 = !DILocalVariable(name: "rev_id", scope: !6150, file: !2, line: 29, type: !443)
!6163 = !DILocation(line: 21, column: 48, scope: !6150)
!6164 = !DILocation(line: 21, column: 73, scope: !6150)
!6165 = !DILocation(line: 23, column: 2, scope: !6150)
!6166 = !DILocation(line: 23, column: 20, scope: !6150)
!6167 = !DILocation(line: 23, column: 28, scope: !6156)
!6168 = !DILocation(line: 23, column: 28, scope: !6150)
!6169 = !DILocation(line: 24, column: 2, scope: !6150)
!6170 = !DILocation(line: 24, column: 27, scope: !6150)
!6171 = !DILocation(line: 25, column: 3, scope: !6159)
!6172 = !DILocation(line: 25, column: 3, scope: !6150)
!6173 = !DILocation(line: 26, column: 2, scope: !6150)
!6174 = !DILocation(line: 26, column: 30, scope: !6150)
!6175 = !DILocation(line: 28, column: 2, scope: !6150)
!6176 = !DILocation(line: 28, column: 6, scope: !6150)
!6177 = !DILocation(line: 28, column: 11, scope: !6150)
!6178 = !DILocation(line: 28, column: 18, scope: !6150)
!6179 = !DILocation(line: 28, column: 29, scope: !6150)
!6180 = !DILocation(line: 28, column: 36, scope: !6150)
!6181 = !DILocation(line: 28, column: 47, scope: !6150)
!6182 = !DILocation(line: 28, column: 54, scope: !6150)
!6183 = !DILocation(line: 28, column: 59, scope: !6150)
!6184 = !DILocation(line: 29, column: 2, scope: !6150)
!6185 = !DILocation(line: 29, column: 6, scope: !6150)
!6186 = !DILocation(line: 29, column: 15, scope: !6150)
!6187 = !DILocation(line: 29, column: 22, scope: !6150)
!6188 = !DILocation(line: 29, column: 27, scope: !6150)
!6189 = !DILocation(line: 31, column: 14, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6150, file: !2, line: 31, column: 2)
!6191 = !DILocation(line: 31, column: 22, scope: !6190)
!6192 = !DILocation(line: 31, column: 12, scope: !6190)
!6193 = !DILocation(line: 31, column: 7, scope: !6190)
!6194 = !DILocation(line: 31, column: 26, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6190, file: !2, line: 31, column: 2)
!6196 = !DILocation(line: 31, column: 32, scope: !6195)
!6197 = !DILocation(line: 31, column: 2, scope: !6190)
!6198 = !DILocation(line: 32, column: 7, scope: !6199)
!6199 = distinct !DILexicalBlock(scope: !6200, file: !2, line: 32, column: 7)
!6200 = distinct !DILexicalBlock(scope: !6195, file: !2, line: 31, column: 51)
!6201 = !DILocation(line: 32, column: 13, scope: !6199)
!6202 = !DILocation(line: 32, column: 26, scope: !6199)
!6203 = !DILocation(line: 32, column: 23, scope: !6199)
!6204 = !DILocation(line: 32, column: 29, scope: !6199)
!6205 = !DILocation(line: 33, column: 9, scope: !6199)
!6206 = !DILocation(line: 33, column: 15, scope: !6199)
!6207 = !DILocation(line: 33, column: 22, scope: !6199)
!6208 = !DILocation(line: 33, column: 25, scope: !6199)
!6209 = !DILocation(line: 33, column: 31, scope: !6199)
!6210 = !DILocation(line: 33, column: 41, scope: !6199)
!6211 = !DILocation(line: 33, column: 38, scope: !6199)
!6212 = !DILocation(line: 32, column: 7, scope: !6200)
!6213 = !DILocation(line: 34, column: 20, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 33, column: 50)
!6215 = !DILocation(line: 34, column: 4, scope: !6214)
!6216 = !DILocation(line: 34, column: 11, scope: !6214)
!6217 = !DILocation(line: 34, column: 18, scope: !6214)
!6218 = !DILocation(line: 35, column: 4, scope: !6214)
!6219 = !DILocation(line: 37, column: 2, scope: !6200)
!6220 = !DILocation(line: 31, column: 47, scope: !6195)
!6221 = !DILocation(line: 31, column: 2, scope: !6195)
!6222 = distinct !{!6222, !6197, !6223, !6224, !6115}
!6223 = !DILocation(line: 37, column: 2, scope: !6190)
!6224 = !{!"llvm.loop.mustprogress"}
!6225 = !DILocation(line: 38, column: 2, scope: !6150)
!6226 = !DILocation(line: 39, column: 1, scope: !6150)
!6227 = distinct !DISubprogram(name: "hda_codec_unsol_event", scope: !2, file: !2, line: 42, type: !5672, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6228)
!6228 = !{!6229, !6230, !6231, !6232}
!6229 = !DILocalVariable(name: "dev", arg: 1, scope: !6227, file: !2, line: 42, type: !4782)
!6230 = !DILocalVariable(name: "ev", arg: 2, scope: !6227, file: !2, line: 42, type: !13)
!6231 = !DILocalVariable(name: "codec", scope: !6227, file: !2, line: 44, type: !192)
!6232 = !DILocalVariable(name: "__mptr", scope: !6233, file: !2, line: 44, type: !191)
!6233 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 44, column: 28)
!6234 = !DILocation(line: 42, column: 55, scope: !6227)
!6235 = !DILocation(line: 42, column: 73, scope: !6227)
!6236 = !DILocation(line: 44, column: 2, scope: !6227)
!6237 = !DILocation(line: 44, column: 20, scope: !6227)
!6238 = !DILocation(line: 44, column: 28, scope: !6233)
!6239 = !DILocation(line: 44, column: 28, scope: !6227)
!6240 = !DILocation(line: 47, column: 6, scope: !6241)
!6241 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 47, column: 6)
!6242 = !DILocation(line: 47, column: 13, scope: !6241)
!6243 = !DILocation(line: 47, column: 18, scope: !6241)
!6244 = !DILocation(line: 47, column: 6, scope: !6227)
!6245 = !DILocation(line: 48, column: 3, scope: !6241)
!6246 = !DILocation(line: 51, column: 6, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 51, column: 6)
!6248 = !DILocation(line: 51, column: 13, scope: !6247)
!6249 = !DILocation(line: 51, column: 18, scope: !6247)
!6250 = !DILocation(line: 51, column: 22, scope: !6247)
!6251 = !DILocation(line: 51, column: 28, scope: !6247)
!6252 = !DILocation(line: 51, column: 40, scope: !6247)
!6253 = !DILocation(line: 51, column: 46, scope: !6247)
!6254 = !DILocation(line: 51, column: 6, scope: !6227)
!6255 = !DILocation(line: 52, column: 3, scope: !6247)
!6256 = !DILocation(line: 54, column: 6, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6227, file: !2, line: 54, column: 6)
!6258 = !DILocation(line: 54, column: 13, scope: !6257)
!6259 = !DILocation(line: 54, column: 23, scope: !6257)
!6260 = !DILocation(line: 54, column: 6, scope: !6227)
!6261 = !DILocation(line: 55, column: 3, scope: !6257)
!6262 = !DILocation(line: 55, column: 10, scope: !6257)
!6263 = !DILocation(line: 55, column: 20, scope: !6257)
!6264 = !DILocation(line: 55, column: 32, scope: !6257)
!6265 = !DILocation(line: 55, column: 39, scope: !6257)
!6266 = !DILocation(line: 56, column: 1, scope: !6227)
!6267 = !DISubprogram(name: "driver_register", scope: !94, file: !94, line: 125, type: !6268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6268 = !DISubroutineType(types: !6269)
!6269 = !{!115, !4305}
!6270 = distinct !DISubprogram(name: "hda_codec_driver_unregister", scope: !2, file: !2, line: 196, type: !6271, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6273)
!6271 = !DISubroutineType(types: !6272)
!6272 = !{null, !5656}
!6273 = !{!6274}
!6274 = !DILocalVariable(name: "drv", arg: 1, scope: !6270, file: !2, line: 196, type: !5656)
!6275 = !DILocation(line: 196, column: 59, scope: !6270)
!6276 = !DILocation(line: 198, column: 21, scope: !6270)
!6277 = !DILocation(line: 198, column: 26, scope: !6270)
!6278 = !DILocation(line: 198, column: 31, scope: !6270)
!6279 = !DILocation(line: 198, column: 2, scope: !6270)
!6280 = !DILocation(line: 199, column: 1, scope: !6270)
!6281 = !DISubprogram(name: "driver_unregister", scope: !94, file: !94, line: 126, type: !6282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6282 = !DISubroutineType(types: !6283)
!6283 = !{null, !4305}
!6284 = distinct !DISubprogram(name: "snd_hda_codec_configure", scope: !2, file: !2, line: 312, type: !5446, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6285)
!6285 = !{!6286, !6287}
!6286 = !DILocalVariable(name: "codec", arg: 1, scope: !6284, file: !2, line: 312, type: !192)
!6287 = !DILocalVariable(name: "err", scope: !6284, file: !2, line: 314, type: !115)
!6288 = !DILocation(line: 312, column: 47, scope: !6284)
!6289 = !DILocation(line: 314, column: 2, scope: !6284)
!6290 = !DILocation(line: 314, column: 6, scope: !6284)
!6291 = !DILocation(line: 316, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 316, column: 6)
!6293 = !DILocation(line: 316, column: 13, scope: !6292)
!6294 = !DILocation(line: 316, column: 6, scope: !6284)
!6295 = !DILocation(line: 317, column: 3, scope: !6292)
!6296 = !DILocation(line: 322, column: 3, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 319, column: 6)
!6298 = !DILocation(line: 322, column: 10, scope: !6297)
!6299 = !DILocation(line: 322, column: 19, scope: !6297)
!6300 = !DILocation(line: 324, column: 29, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 324, column: 6)
!6302 = !DILocation(line: 324, column: 36, scope: !6301)
!6303 = !DILocation(line: 324, column: 41, scope: !6301)
!6304 = !DILocation(line: 324, column: 7, scope: !6301)
!6305 = !DILocation(line: 324, column: 6, scope: !6284)
!6306 = !DILocation(line: 325, column: 35, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6301, file: !2, line: 324, column: 47)
!6308 = !DILocation(line: 325, column: 42, scope: !6307)
!6309 = !DILocation(line: 325, column: 9, scope: !6307)
!6310 = !DILocation(line: 325, column: 7, scope: !6307)
!6311 = !DILocation(line: 326, column: 7, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6307, file: !2, line: 326, column: 7)
!6313 = !DILocation(line: 326, column: 11, scope: !6312)
!6314 = !DILocation(line: 326, column: 7, scope: !6307)
!6315 = !DILocation(line: 327, column: 11, scope: !6312)
!6316 = !DILocation(line: 327, column: 4, scope: !6312)
!6317 = !DILocation(line: 328, column: 2, scope: !6307)
!6318 = !DILocation(line: 330, column: 7, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 330, column: 6)
!6320 = !DILocation(line: 330, column: 14, scope: !6319)
!6321 = !DILocation(line: 330, column: 6, scope: !6284)
!6322 = !DILocation(line: 331, column: 21, scope: !6319)
!6323 = !DILocation(line: 331, column: 3, scope: !6319)
!6324 = !DILocation(line: 332, column: 7, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6284, file: !2, line: 332, column: 6)
!6326 = !DILocation(line: 332, column: 14, scope: !6325)
!6327 = !DILocation(line: 332, column: 6, scope: !6284)
!6328 = !DILocation(line: 333, column: 28, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6325, file: !2, line: 332, column: 22)
!6330 = !DILocation(line: 333, column: 9, scope: !6329)
!6331 = !DILocation(line: 333, column: 7, scope: !6329)
!6332 = !DILocation(line: 334, column: 7, scope: !6333)
!6333 = distinct !DILexicalBlock(scope: !6329, file: !2, line: 334, column: 7)
!6334 = !DILocation(line: 334, column: 11, scope: !6333)
!6335 = !DILocation(line: 334, column: 7, scope: !6329)
!6336 = !DILocation(line: 336, column: 11, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6333, file: !2, line: 334, column: 16)
!6338 = !DILocation(line: 336, column: 4, scope: !6337)
!6339 = !DILocation(line: 338, column: 2, scope: !6329)
!6340 = !DILocation(line: 340, column: 2, scope: !6284)
!6341 = !DILocation(line: 340, column: 9, scope: !6284)
!6342 = !DILocation(line: 340, column: 20, scope: !6284)
!6343 = !DILocation(line: 341, column: 2, scope: !6284)
!6344 = !DILocation(line: 342, column: 1, scope: !6284)
!6345 = distinct !DISubprogram(name: "device_is_registered", scope: !100, file: !100, line: 941, type: !4266, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6346)
!6346 = !{!6347}
!6347 = !DILocalVariable(name: "dev", arg: 1, scope: !6345, file: !100, line: 941, type: !4232)
!6348 = !DILocation(line: 941, column: 55, scope: !6345)
!6349 = !DILocation(line: 943, column: 9, scope: !6345)
!6350 = !DILocation(line: 943, column: 14, scope: !6345)
!6351 = !DILocation(line: 943, column: 19, scope: !6345)
!6352 = !DILocation(line: 943, column: 2, scope: !6345)
!6353 = !DISubprogram(name: "snd_hdac_device_register", scope: !172, file: !172, line: 124, type: !4790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6354 = distinct !DISubprogram(name: "codec_bind_module", scope: !2, file: !2, line: 237, type: !5452, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6355)
!6355 = !{!6356}
!6356 = !DILocalVariable(name: "codec", arg: 1, scope: !6354, file: !2, line: 237, type: !192)
!6357 = !DILocation(line: 237, column: 49, scope: !6354)
!6358 = !DILocation(line: 244, column: 1, scope: !6354)
!6359 = distinct !DISubprogram(name: "codec_bind_generic", scope: !2, file: !2, line: 277, type: !5446, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6360)
!6360 = !{!6361}
!6361 = !DILocalVariable(name: "codec", arg: 1, scope: !6359, file: !2, line: 277, type: !192)
!6362 = !DILocation(line: 277, column: 49, scope: !6359)
!6363 = !DILocation(line: 279, column: 6, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6359, file: !2, line: 279, column: 6)
!6365 = !DILocation(line: 279, column: 13, scope: !6364)
!6366 = !DILocation(line: 279, column: 6, scope: !6359)
!6367 = !DILocation(line: 280, column: 3, scope: !6364)
!6368 = !DILocation(line: 289, column: 2, scope: !6359)
!6369 = !DILocation(line: 289, column: 9, scope: !6359)
!6370 = !DILocation(line: 289, column: 18, scope: !6359)
!6371 = !DILocation(line: 290, column: 23, scope: !6359)
!6372 = !DILocation(line: 290, column: 2, scope: !6359)
!6373 = !DILocation(line: 291, column: 19, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6359, file: !2, line: 291, column: 6)
!6375 = !DILocation(line: 291, column: 6, scope: !6374)
!6376 = !DILocation(line: 291, column: 6, scope: !6359)
!6377 = !DILocation(line: 292, column: 3, scope: !6374)
!6378 = !DILocation(line: 293, column: 2, scope: !6359)
!6379 = !DILocation(line: 294, column: 1, scope: !6359)
!6380 = !DISubprogram(name: "snd_hdac_regmap_init", scope: !6381, file: !6381, line: 15, type: !4790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6381 = !DIFile(filename: "./include/sound/hda_regmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "34bfd1b5443aaec881e8efb680ecbdbf")
!6382 = !DISubprogram(name: "try_module_get", scope: !12, file: !12, line: 696, type: !6383, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6383 = !DISubroutineType(types: !6384)
!6384 = !{!715, !564}
!6385 = !DISubprogram(name: "snd_hda_codec_build_pcms", scope: !194, file: !194, line: 420, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6386 = !DISubprogram(name: "snd_hda_codec_build_controls", scope: !194, file: !194, line: 414, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6387 = !DISubprogram(name: "snd_card_register", scope: !4978, file: !4978, line: 295, type: !6388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6388 = !DISubroutineType(types: !6389)
!6389 = !{!115, !4976}
!6390 = !DISubprogram(name: "snd_hda_codec_register", scope: !194, file: !194, line: 317, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6391 = !DISubprogram(name: "module_put", scope: !12, file: !12, line: 706, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6392 = !DISubprogram(name: "snd_hda_codec_cleanup_for_unbind", scope: !194, file: !194, line: 426, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6393 = !DISubprogram(name: "snd_hda_codec_disconnect_pcms", scope: !5622, file: !5622, line: 138, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6394 = !DISubprogram(name: "snd_hda_jack_tbl_disconnect", scope: !6395, file: !6395, line: 72, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6395 = !DIFile(filename: "sound/pci/hda/hda_jack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78b34d97393c8cc3fa92b69bcc1956c2")
!6396 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !183, file: !183, line: 331, type: !6397, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6400)
!6397 = !DISubroutineType(types: !6398)
!6398 = !{!715, !6399}
!6399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!6400 = !{!6401}
!6401 = !DILocalVariable(name: "r", arg: 1, scope: !6396, file: !183, line: 331, type: !6399)
!6402 = !DILocation(line: 331, column: 67, scope: !6396)
!6403 = !DILocation(line: 333, column: 33, scope: !6396)
!6404 = !DILocation(line: 333, column: 9, scope: !6396)
!6405 = !DILocation(line: 333, column: 2, scope: !6396)
!6406 = !DILocation(line: 112, column: 2, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !5695, file: !5696, line: 112, column: 2)
!6408 = !DILocation(line: 112, column: 2, scope: !5695)
!6409 = !DILocation(line: 113, column: 1, scope: !5695)
!6410 = distinct !DISubprogram(name: "refcount_read", scope: !183, file: !183, line: 145, type: !6411, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6415)
!6411 = !DISubroutineType(types: !6412)
!6412 = !{!13, !6413}
!6413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6414, size: 64)
!6414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1164)
!6415 = !{!6416}
!6416 = !DILocalVariable(name: "r", arg: 1, scope: !6410, file: !183, line: 145, type: !6413)
!6417 = !DILocation(line: 145, column: 60, scope: !6410)
!6418 = !DILocation(line: 147, column: 22, scope: !6410)
!6419 = !DILocation(line: 147, column: 25, scope: !6410)
!6420 = !DILocation(line: 147, column: 9, scope: !6410)
!6421 = !DILocation(line: 147, column: 2, scope: !6410)
!6422 = !DISubprogram(name: "init_wait_entry", scope: !1175, file: !1175, line: 290, type: !6423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6423 = !DISubroutineType(types: !6424)
!6424 = !{null, !6055, !115}
!6425 = !DISubprogram(name: "prepare_to_wait_event", scope: !1175, file: !1175, line: 1199, type: !6426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6426 = !DISubroutineType(types: !6427)
!6427 = !{!330, !6428, !6055, !115}
!6428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!6429 = !DISubprogram(name: "schedule", scope: !2034, file: !2034, line: 303, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6430 = !DISubprogram(name: "finish_wait", scope: !1175, file: !1175, line: 1200, type: !6431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6431 = !DISubroutineType(types: !6432)
!6432 = !{null, !6428, !6055}
!6433 = distinct !DISubprogram(name: "snd_power_sync_ref", scope: !4978, file: !4978, line: 194, type: !4995, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6434)
!6434 = !{!6435, !6436, !6439, !6440, !6444}
!6435 = !DILocalVariable(name: "card", arg: 1, scope: !6433, file: !4978, line: 194, type: !4976)
!6436 = !DILocalVariable(name: "__wq_entry", scope: !6437, file: !4978, line: 196, type: !6046)
!6437 = distinct !DILexicalBlock(scope: !6438, file: !4978, line: 196, column: 2)
!6438 = distinct !DILexicalBlock(scope: !6433, file: !4978, line: 196, column: 2)
!6439 = !DILocalVariable(name: "__ret", scope: !6437, file: !4978, line: 196, type: !330)
!6440 = !DILocalVariable(name: "__int", scope: !6441, file: !4978, line: 196, type: !330)
!6441 = distinct !DILexicalBlock(scope: !6442, file: !4978, line: 196, column: 2)
!6442 = distinct !DILexicalBlock(scope: !6443, file: !4978, line: 196, column: 2)
!6443 = distinct !DILexicalBlock(scope: !6437, file: !4978, line: 196, column: 2)
!6444 = !DILabel(scope: !6437, name: "__out", file: !4978, line: 196)
!6445 = !DILocation(line: 194, column: 56, scope: !6433)
!6446 = !DILocation(line: 196, column: 2, scope: !6433)
!6447 = !DILocation(line: 196, column: 2, scope: !6438)
!6448 = !DILocation(line: 196, column: 2, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6438, file: !4978, line: 196, column: 2)
!6450 = !DILocation(line: 196, column: 2, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6438, file: !4978, line: 196, column: 2)
!6452 = !DILocation(line: 196, column: 2, scope: !6437)
!6453 = !DILocation(line: 196, column: 2, scope: !6441)
!6454 = !DILocation(line: 196, column: 2, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6441, file: !4978, line: 196, column: 2)
!6456 = !DILocation(line: 196, column: 2, scope: !6442)
!6457 = distinct !{!6457, !6458, !6458, !6115}
!6458 = !DILocation(line: 196, column: 2, scope: !6443)
!6459 = !DILocation(line: 197, column: 1, scope: !6433)
!6460 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !183, file: !183, line: 313, type: !6461, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6463)
!6461 = !DISubroutineType(types: !6462)
!6462 = !{!715, !6399, !764}
!6463 = !{!6464, !6465}
!6464 = !DILocalVariable(name: "r", arg: 1, scope: !6460, file: !183, line: 313, type: !6399)
!6465 = !DILocalVariable(name: "oldp", arg: 2, scope: !6460, file: !183, line: 313, type: !764)
!6466 = !DILocation(line: 313, column: 69, scope: !6460)
!6467 = !DILocation(line: 313, column: 77, scope: !6460)
!6468 = !DILocation(line: 315, column: 36, scope: !6460)
!6469 = !DILocation(line: 315, column: 39, scope: !6460)
!6470 = !DILocation(line: 315, column: 9, scope: !6460)
!6471 = !DILocation(line: 315, column: 2, scope: !6460)
!6472 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !183, file: !183, line: 270, type: !6473, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6475)
!6473 = !DISubroutineType(types: !6474)
!6474 = !{!715, !115, !6399, !764}
!6475 = !{!6476, !6477, !6478, !6479}
!6476 = !DILocalVariable(name: "i", arg: 1, scope: !6472, file: !183, line: 270, type: !115)
!6477 = !DILocalVariable(name: "r", arg: 2, scope: !6472, file: !183, line: 270, type: !6399)
!6478 = !DILocalVariable(name: "oldp", arg: 3, scope: !6472, file: !183, line: 270, type: !764)
!6479 = !DILocalVariable(name: "old", scope: !6472, file: !183, line: 272, type: !115)
!6480 = !DILocation(line: 270, column: 61, scope: !6472)
!6481 = !DILocation(line: 270, column: 76, scope: !6472)
!6482 = !DILocation(line: 270, column: 84, scope: !6472)
!6483 = !DILocation(line: 272, column: 2, scope: !6472)
!6484 = !DILocation(line: 272, column: 6, scope: !6472)
!6485 = !DILocation(line: 272, column: 37, scope: !6472)
!6486 = !DILocation(line: 272, column: 41, scope: !6472)
!6487 = !DILocation(line: 272, column: 44, scope: !6472)
!6488 = !DILocation(line: 272, column: 12, scope: !6472)
!6489 = !DILocation(line: 274, column: 6, scope: !6490)
!6490 = distinct !DILexicalBlock(scope: !6472, file: !183, line: 274, column: 6)
!6491 = !DILocation(line: 274, column: 6, scope: !6472)
!6492 = !DILocation(line: 275, column: 11, scope: !6490)
!6493 = !DILocation(line: 275, column: 4, scope: !6490)
!6494 = !DILocation(line: 275, column: 9, scope: !6490)
!6495 = !DILocation(line: 275, column: 3, scope: !6490)
!6496 = !DILocation(line: 277, column: 6, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6472, file: !183, line: 277, column: 6)
!6498 = !DILocation(line: 277, column: 13, scope: !6497)
!6499 = !DILocation(line: 277, column: 10, scope: !6497)
!6500 = !DILocation(line: 277, column: 6, scope: !6472)
!6501 = !DILocation(line: 278, column: 3, scope: !6502)
!6502 = distinct !DILexicalBlock(scope: !6497, file: !183, line: 277, column: 16)
!6503 = !DILocation(line: 278, column: 3, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6502, file: !183, line: 278, column: 3)
!6505 = !DILocation(line: 278, column: 3, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !6504, file: !183, line: 278, column: 3)
!6507 = !DILocation(line: 278, column: 3, scope: !6508)
!6508 = distinct !DILexicalBlock(scope: !6504, file: !183, line: 278, column: 3)
!6509 = !DILocation(line: 278, column: 3, scope: !6510)
!6510 = distinct !DILexicalBlock(scope: !6508, file: !183, line: 278, column: 3)
!6511 = !{i64 2150229429}
!6512 = !DILocation(line: 279, column: 3, scope: !6502)
!6513 = !DILocation(line: 282, column: 6, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6472, file: !183, line: 282, column: 6)
!6515 = !DILocation(line: 282, column: 6, scope: !6472)
!6516 = !DILocation(line: 283, column: 26, scope: !6514)
!6517 = !DILocation(line: 283, column: 3, scope: !6514)
!6518 = !DILocation(line: 285, column: 2, scope: !6472)
!6519 = !DILocation(line: 286, column: 1, scope: !6472)
!6520 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !6521, file: !6521, line: 397, type: !6522, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6525)
!6521 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6522 = !DISubroutineType(types: !6523)
!6523 = !{!115, !115, !6524}
!6524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!6525 = !{!6526, !6527}
!6526 = !DILocalVariable(name: "i", arg: 1, scope: !6520, file: !6521, line: 397, type: !115)
!6527 = !DILocalVariable(name: "v", arg: 2, scope: !6520, file: !6521, line: 397, type: !6524)
!6528 = !DILocation(line: 397, column: 30, scope: !6520)
!6529 = !DILocation(line: 397, column: 43, scope: !6520)
!6530 = !DILocation(line: 399, column: 2, scope: !6520)
!6531 = !DILocation(line: 399, column: 2, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6520, file: !6521, line: 399, column: 2)
!6533 = !DILocation(line: 400, column: 31, scope: !6520)
!6534 = !DILocation(line: 400, column: 2, scope: !6520)
!6535 = !DILocation(line: 401, column: 38, scope: !6520)
!6536 = !DILocation(line: 401, column: 41, scope: !6520)
!6537 = !DILocation(line: 401, column: 9, scope: !6520)
!6538 = !DILocation(line: 401, column: 2, scope: !6520)
!6539 = !DISubprogram(name: "refcount_warn_saturate", scope: !183, file: !183, line: 127, type: !6540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6540 = !DISubroutineType(types: !6541)
!6541 = !{null, !6399, !182}
!6542 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !6543, file: !6543, line: 94, type: !6544, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6549)
!6543 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6544 = !DISubroutineType(types: !6545)
!6545 = !{null, !6546, !341}
!6546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6547, size: 64)
!6547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6548)
!6548 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6549 = !{!6550, !6551}
!6550 = !DILocalVariable(name: "v", arg: 1, scope: !6542, file: !6543, line: 94, type: !6546)
!6551 = !DILocalVariable(name: "size", arg: 2, scope: !6542, file: !6543, line: 94, type: !341)
!6552 = !DILocation(line: 94, column: 79, scope: !6542)
!6553 = !DILocation(line: 94, column: 89, scope: !6542)
!6554 = !DILocation(line: 96, column: 20, scope: !6542)
!6555 = !DILocation(line: 96, column: 23, scope: !6542)
!6556 = !DILocation(line: 96, column: 2, scope: !6542)
!6557 = !DILocation(line: 97, column: 2, scope: !6542)
!6558 = !DILocation(line: 98, column: 1, scope: !6542)
!6559 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !6560, file: !6560, line: 928, type: !6522, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6561)
!6560 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6561 = !{!6562, !6563}
!6562 = !DILocalVariable(name: "i", arg: 1, scope: !6559, file: !6560, line: 928, type: !115)
!6563 = !DILocalVariable(name: "v", arg: 2, scope: !6559, file: !6560, line: 928, type: !6524)
!6564 = !DILocation(line: 928, column: 34, scope: !6559)
!6565 = !DILocation(line: 928, column: 47, scope: !6559)
!6566 = !DILocation(line: 936, column: 31, scope: !6559)
!6567 = !DILocation(line: 936, column: 34, scope: !6559)
!6568 = !DILocation(line: 936, column: 9, scope: !6559)
!6569 = !DILocation(line: 936, column: 2, scope: !6559)
!6570 = distinct !DISubprogram(name: "kasan_check_write", scope: !6571, file: !6571, line: 44, type: !6572, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6574)
!6571 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6572 = !DISubroutineType(types: !6573)
!6573 = !{!715, !6546, !13}
!6574 = !{!6575, !6576}
!6575 = !DILocalVariable(name: "p", arg: 1, scope: !6570, file: !6571, line: 44, type: !6546)
!6576 = !DILocalVariable(name: "size", arg: 2, scope: !6570, file: !6571, line: 44, type: !13)
!6577 = !DILocation(line: 44, column: 59, scope: !6570)
!6578 = !DILocation(line: 44, column: 75, scope: !6570)
!6579 = !DILocation(line: 46, column: 2, scope: !6570)
!6580 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6581, file: !6581, line: 229, type: !6582, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6584)
!6581 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6582 = !DISubroutineType(types: !6583)
!6583 = !{null, !6546, !341, !115}
!6584 = !{!6585, !6586, !6587}
!6585 = !DILocalVariable(name: "ptr", arg: 1, scope: !6580, file: !6581, line: 229, type: !6546)
!6586 = !DILocalVariable(name: "size", arg: 2, scope: !6580, file: !6581, line: 229, type: !341)
!6587 = !DILocalVariable(name: "type", arg: 3, scope: !6580, file: !6581, line: 230, type: !115)
!6588 = !DILocation(line: 229, column: 60, scope: !6580)
!6589 = !DILocation(line: 229, column: 72, scope: !6580)
!6590 = !DILocation(line: 230, column: 15, scope: !6580)
!6591 = !DILocation(line: 230, column: 23, scope: !6580)
!6592 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !6593, file: !6593, line: 101, type: !6522, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6594)
!6593 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6594 = !{!6595, !6596, !6597}
!6595 = !DILocalVariable(name: "i", arg: 1, scope: !6592, file: !6593, line: 101, type: !115)
!6596 = !DILocalVariable(name: "v", arg: 2, scope: !6592, file: !6593, line: 101, type: !6524)
!6597 = !DILocalVariable(name: "__ret", scope: !6598, file: !6593, line: 103, type: !115)
!6598 = distinct !DILexicalBlock(scope: !6592, file: !6593, line: 103, column: 9)
!6599 = !DILocation(line: 101, column: 54, scope: !6592)
!6600 = !DILocation(line: 101, column: 67, scope: !6592)
!6601 = !DILocation(line: 103, column: 9, scope: !6598)
!6602 = !{i64 2148938916, i64 2148938955, i64 2148938976, i64 2148939013, i64 2148939036, i64 2148939045}
!6603 = !DILocation(line: 103, column: 9, scope: !6592)
!6604 = !DILocation(line: 103, column: 2, scope: !6592)
!6605 = distinct !DISubprogram(name: "atomic_read", scope: !6521, file: !6521, line: 30, type: !6606, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6610)
!6606 = !DISubroutineType(types: !6607)
!6607 = !{!115, !6608}
!6608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6609, size: 64)
!6609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!6610 = !{!6611}
!6611 = !DILocalVariable(name: "v", arg: 1, scope: !6605, file: !6521, line: 30, type: !6608)
!6612 = !DILocation(line: 30, column: 29, scope: !6605)
!6613 = !DILocation(line: 32, column: 25, scope: !6605)
!6614 = !DILocation(line: 32, column: 2, scope: !6605)
!6615 = !DILocation(line: 33, column: 25, scope: !6605)
!6616 = !DILocation(line: 33, column: 9, scope: !6605)
!6617 = !DILocation(line: 33, column: 2, scope: !6605)
!6618 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6543, file: !6543, line: 66, type: !6544, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6619)
!6619 = !{!6620, !6621}
!6620 = !DILocalVariable(name: "v", arg: 1, scope: !6618, file: !6543, line: 66, type: !6546)
!6621 = !DILocalVariable(name: "size", arg: 2, scope: !6618, file: !6543, line: 66, type: !341)
!6622 = !DILocation(line: 66, column: 73, scope: !6618)
!6623 = !DILocation(line: 66, column: 83, scope: !6618)
!6624 = !DILocation(line: 68, column: 19, scope: !6618)
!6625 = !DILocation(line: 68, column: 22, scope: !6618)
!6626 = !DILocation(line: 68, column: 2, scope: !6618)
!6627 = !DILocation(line: 69, column: 2, scope: !6618)
!6628 = !DILocation(line: 70, column: 1, scope: !6618)
!6629 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6560, file: !6560, line: 442, type: !6606, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6630)
!6630 = !{!6631}
!6631 = !DILocalVariable(name: "v", arg: 1, scope: !6629, file: !6560, line: 442, type: !6608)
!6632 = !DILocation(line: 442, column: 33, scope: !6629)
!6633 = !DILocation(line: 444, column: 26, scope: !6629)
!6634 = !DILocation(line: 444, column: 9, scope: !6629)
!6635 = !DILocation(line: 444, column: 2, scope: !6629)
!6636 = distinct !DISubprogram(name: "kasan_check_read", scope: !6571, file: !6571, line: 40, type: !6572, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6637)
!6637 = !{!6638, !6639}
!6638 = !DILocalVariable(name: "p", arg: 1, scope: !6636, file: !6571, line: 40, type: !6546)
!6639 = !DILocalVariable(name: "size", arg: 2, scope: !6636, file: !6571, line: 40, type: !13)
!6640 = !DILocation(line: 40, column: 58, scope: !6636)
!6641 = !DILocation(line: 40, column: 74, scope: !6636)
!6642 = !DILocation(line: 42, column: 2, scope: !6636)
!6643 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6593, file: !6593, line: 17, type: !6606, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6644)
!6644 = !{!6645}
!6645 = !DILocalVariable(name: "v", arg: 1, scope: !6643, file: !6593, line: 17, type: !6608)
!6646 = !DILocation(line: 17, column: 61, scope: !6643)
!6647 = !DILocation(line: 23, column: 9, scope: !6643)
!6648 = !DILocation(line: 23, column: 2, scope: !6643)
!6649 = !DISubprogram(name: "snd_hda_codec_shutdown", scope: !5622, file: !5622, line: 653, type: !5452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6650 = distinct !DISubprogram(name: "request_codec_module", scope: !2, file: !2, line: 208, type: !5452, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6651)
!6651 = !{!6652}
!6652 = !DILocalVariable(name: "codec", arg: 1, scope: !6650, file: !2, line: 208, type: !192)
!6653 = !DILocation(line: 208, column: 52, scope: !6650)
!6654 = !DILocation(line: 234, column: 1, scope: !6650)
!6655 = distinct !DISubprogram(name: "codec_probed", scope: !2, file: !2, line: 202, type: !6656, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6658)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{!715, !192}
!6658 = !{!6659}
!6659 = !DILocalVariable(name: "codec", arg: 1, scope: !6655, file: !2, line: 202, type: !192)
!6660 = !DILocation(line: 202, column: 51, scope: !6655)
!6661 = !DILocation(line: 204, column: 23, scope: !6655)
!6662 = !DILocation(line: 204, column: 9, scope: !6655)
!6663 = !DILocation(line: 204, column: 45, scope: !6655)
!6664 = !DILocation(line: 204, column: 49, scope: !6655)
!6665 = !DILocation(line: 204, column: 52, scope: !6655)
!6666 = !DILocation(line: 204, column: 59, scope: !6655)
!6667 = !DILocation(line: 0, scope: !6655)
!6668 = !DILocation(line: 204, column: 2, scope: !6655)
!6669 = !DISubprogram(name: "device_attach", scope: !100, file: !100, line: 1170, type: !4266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
