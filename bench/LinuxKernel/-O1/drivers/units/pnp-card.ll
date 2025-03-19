; ModuleID = 'drivers/pnp/card.c'
source_filename = "drivers/pnp/card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_request_card_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_request_card_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_release_card_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_release_card_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_register_card_driver: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_register_card_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_unregister_card_driver: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_unregister_card_driver ; .previous"

%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pnp_card = type { %struct.device, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, [50 x i8], i8, i8, i32, i8, ptr }
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
%struct.pnp_protocol = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.device, %struct.list_head, %struct.list_head }
%struct.pnp_id = type { [8 x i8], ptr }
%struct.pnp_card_driver = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.pnp_driver }
%struct.pnp_driver = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnp_card_link = type { ptr, ptr, ptr, %struct.pm_message }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, ptr, ptr }
%struct.pnp_card_device_id = type { [8 x i8], i64, [8 x %struct.anon.13] }
%struct.anon.13 = type { [8 x i8] }

@pnp_cards = hidden global %struct.list_head { ptr @pnp_cards, ptr @pnp_cards }, align 8, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"%02x:%02x\00", align 1, !dbg !4716
@.str.1 = private unnamed_addr constant [29 x i8] c"could not register (err=%d)\0A\00", align 1, !dbg !4721
@pnp_lock = external dso_local global %struct.mutex, align 8
@pnp_card_drivers = internal global %struct.list_head { ptr @pnp_card_drivers, ptr @pnp_card_drivers }, align 8, !dbg !4770
@.str.2 = private unnamed_addr constant [15 x i8] c"%02x:%02x.%02x\00", align 1, !dbg !4726
@pnp_bus_type = external dso_local global %struct.bus_type, align 8
@__UNIQUE_ID___addressable_pnp_request_card_device291 = internal global ptr @pnp_request_card_device, section ".discard.addressable", align 8, !dbg !4731
@__UNIQUE_ID___addressable_pnp_release_card_device292 = internal global ptr @pnp_release_card_device, section ".discard.addressable", align 8, !dbg !4733
@__UNIQUE_ID___addressable_pnp_register_card_driver293 = internal global ptr @pnp_register_card_driver, section ".discard.addressable", align 8, !dbg !4735
@__UNIQUE_ID___addressable_pnp_unregister_card_driver294 = internal global ptr @pnp_unregister_card_driver, section ".discard.addressable", align 8, !dbg !4737
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4739
@_ctype = external dso_local constant [0 x i8], align 1
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @name_show, ptr null }, align 8, !dbg !4749
@dev_attr_card_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @card_id_show, ptr null }, align 8, !dbg !4768
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !4744
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4763
@.str.6 = private unnamed_addr constant [8 x i8] c"card_id\00", align 1, !dbg !4766
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_pnp_request_card_device291, ptr @__UNIQUE_ID___addressable_pnp_release_card_device292, ptr @__UNIQUE_ID___addressable_pnp_register_card_driver293, ptr @__UNIQUE_ID___addressable_pnp_unregister_card_driver294], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pnp_alloc_card(ptr noundef %protocol, i32 noundef %id, ptr noundef %pnpid) #0 align 16 !dbg !4781 {
entry:
  %retval = alloca ptr, align 8
  %protocol.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %pnpid.addr = alloca ptr, align 8
  %card = alloca ptr, align 8
  %dev_id = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %protocol, ptr %protocol.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %protocol.addr, metadata !4785, metadata !DIExpression()), !dbg !4790
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4786, metadata !DIExpression()), !dbg !4791
  store ptr %pnpid, ptr %pnpid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnpid.addr, metadata !4787, metadata !DIExpression()), !dbg !4792
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #15, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %card, metadata !4788, metadata !DIExpression()), !dbg !4794
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_id) #15, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %dev_id, metadata !4789, metadata !DIExpression()), !dbg !4796
  %call = call noalias ptr @kzalloc(i64 noundef 872, i32 noundef 3264) #16, !dbg !4797
  store ptr %call, ptr %card, align 8, !dbg !4798
  %0 = load ptr, ptr %card, align 8, !dbg !4799
  %tobool = icmp ne ptr %0, null, !dbg !4799
  br i1 %tobool, label %if.end, label %if.then, !dbg !4801

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4802

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %protocol.addr, align 8, !dbg !4803
  %2 = load ptr, ptr %card, align 8, !dbg !4804
  %protocol1 = getelementptr inbounds %struct.pnp_card, ptr %2, i32 0, i32 5, !dbg !4805
  store ptr %1, ptr %protocol1, align 8, !dbg !4806
  %3 = load i32, ptr %id.addr, align 4, !dbg !4807
  %conv = trunc i32 %3 to i8, !dbg !4807
  %4 = load ptr, ptr %card, align 8, !dbg !4808
  %number = getelementptr inbounds %struct.pnp_card, ptr %4, i32 0, i32 1, !dbg !4809
  store i8 %conv, ptr %number, align 8, !dbg !4810
  %5 = load ptr, ptr %card, align 8, !dbg !4811
  %protocol2 = getelementptr inbounds %struct.pnp_card, ptr %5, i32 0, i32 5, !dbg !4812
  %6 = load ptr, ptr %protocol2, align 8, !dbg !4812
  %dev = getelementptr inbounds %struct.pnp_protocol, ptr %6, i32 0, i32 9, !dbg !4813
  %7 = load ptr, ptr %card, align 8, !dbg !4814
  %dev3 = getelementptr inbounds %struct.pnp_card, ptr %7, i32 0, i32 0, !dbg !4815
  %parent = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 1, !dbg !4816
  store ptr %dev, ptr %parent, align 8, !dbg !4817
  %8 = load ptr, ptr %card, align 8, !dbg !4818
  %dev4 = getelementptr inbounds %struct.pnp_card, ptr %8, i32 0, i32 0, !dbg !4819
  %9 = load ptr, ptr %card, align 8, !dbg !4820
  %protocol5 = getelementptr inbounds %struct.pnp_card, ptr %9, i32 0, i32 5, !dbg !4821
  %10 = load ptr, ptr %protocol5, align 8, !dbg !4821
  %number6 = getelementptr inbounds %struct.pnp_protocol, ptr %10, i32 0, i32 8, !dbg !4822
  %11 = load i8, ptr %number6, align 8, !dbg !4822
  %conv7 = zext i8 %11 to i32, !dbg !4820
  %12 = load ptr, ptr %card, align 8, !dbg !4823
  %number8 = getelementptr inbounds %struct.pnp_card, ptr %12, i32 0, i32 1, !dbg !4824
  %13 = load i8, ptr %number8, align 8, !dbg !4824
  %conv9 = zext i8 %13 to i32, !dbg !4823
  %call10 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev4, ptr noundef @.str, i32 noundef %conv7, i32 noundef %conv9) #17, !dbg !4825
  %14 = load ptr, ptr %card, align 8, !dbg !4826
  %dev11 = getelementptr inbounds %struct.pnp_card, ptr %14, i32 0, i32 0, !dbg !4827
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev11, i32 0, i32 16, !dbg !4828
  store i64 16777215, ptr %coherent_dma_mask, align 8, !dbg !4829
  %15 = load ptr, ptr %card, align 8, !dbg !4830
  %dev12 = getelementptr inbounds %struct.pnp_card, ptr %15, i32 0, i32 0, !dbg !4831
  %coherent_dma_mask13 = getelementptr inbounds %struct.device, ptr %dev12, i32 0, i32 16, !dbg !4832
  %16 = load ptr, ptr %card, align 8, !dbg !4833
  %dev14 = getelementptr inbounds %struct.pnp_card, ptr %16, i32 0, i32 0, !dbg !4834
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev14, i32 0, i32 15, !dbg !4835
  store ptr %coherent_dma_mask13, ptr %dma_mask, align 8, !dbg !4836
  %17 = load ptr, ptr %card, align 8, !dbg !4837
  %18 = load ptr, ptr %pnpid.addr, align 8, !dbg !4838
  %call15 = call ptr @pnp_add_card_id(ptr noundef %17, ptr noundef %18) #17, !dbg !4839
  store ptr %call15, ptr %dev_id, align 8, !dbg !4840
  %19 = load ptr, ptr %dev_id, align 8, !dbg !4841
  %tobool16 = icmp ne ptr %19, null, !dbg !4841
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4843

if.then17:                                        ; preds = %if.end
  %20 = load ptr, ptr %card, align 8, !dbg !4844
  call void @kfree(ptr noundef %20) #17, !dbg !4846
  store ptr null, ptr %retval, align 8, !dbg !4847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4847

if.end18:                                         ; preds = %if.end
  %21 = load ptr, ptr %card, align 8, !dbg !4848
  store ptr %21, ptr %retval, align 8, !dbg !4849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4849

cleanup:                                          ; preds = %if.end18, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_id) #15, !dbg !4850
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #15, !dbg !4850
  %22 = load ptr, ptr %retval, align 8, !dbg !4850
  ret ptr %22, !dbg !4850
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4851 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4855, metadata !DIExpression()), !dbg !4857
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4856, metadata !DIExpression()), !dbg !4858
  %0 = load i64, ptr %size.addr, align 8, !dbg !4859
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4860
  %or = or i32 %1, 256, !dbg !4861
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !4862
  ret ptr %call, !dbg !4863
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4864 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pnp_add_card_id(ptr noundef %card, ptr noundef %id) #0 align 16 !dbg !4867 {
entry:
  %retval = alloca ptr, align 8
  %card.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %dev_id = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4871, metadata !DIExpression()), !dbg !4875
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4872, metadata !DIExpression()), !dbg !4876
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_id) #15, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %dev_id, metadata !4873, metadata !DIExpression()), !dbg !4878
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #15, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !4874, metadata !DIExpression()), !dbg !4879
  %call = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #16, !dbg !4880
  store ptr %call, ptr %dev_id, align 8, !dbg !4881
  %0 = load ptr, ptr %dev_id, align 8, !dbg !4882
  %tobool = icmp ne ptr %0, null, !dbg !4882
  br i1 %tobool, label %if.end, label %if.then, !dbg !4884

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4885
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4885

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !4886
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !4886
  %2 = load i8, ptr %arrayidx, align 1, !dbg !4886
  %3 = load ptr, ptr %dev_id, align 8, !dbg !4887
  %id1 = getelementptr inbounds %struct.pnp_id, ptr %3, i32 0, i32 0, !dbg !4888
  %arrayidx2 = getelementptr [8 x i8], ptr %id1, i64 0, i64 0, !dbg !4887
  store i8 %2, ptr %arrayidx2, align 8, !dbg !4889
  %4 = load ptr, ptr %id.addr, align 8, !dbg !4890
  %arrayidx3 = getelementptr i8, ptr %4, i64 1, !dbg !4890
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !4890
  %6 = load ptr, ptr %dev_id, align 8, !dbg !4891
  %id4 = getelementptr inbounds %struct.pnp_id, ptr %6, i32 0, i32 0, !dbg !4892
  %arrayidx5 = getelementptr [8 x i8], ptr %id4, i64 0, i64 1, !dbg !4891
  store i8 %5, ptr %arrayidx5, align 1, !dbg !4893
  %7 = load ptr, ptr %id.addr, align 8, !dbg !4894
  %arrayidx6 = getelementptr i8, ptr %7, i64 2, !dbg !4894
  %8 = load i8, ptr %arrayidx6, align 1, !dbg !4894
  %9 = load ptr, ptr %dev_id, align 8, !dbg !4895
  %id7 = getelementptr inbounds %struct.pnp_id, ptr %9, i32 0, i32 0, !dbg !4896
  %arrayidx8 = getelementptr [8 x i8], ptr %id7, i64 0, i64 2, !dbg !4895
  store i8 %8, ptr %arrayidx8, align 2, !dbg !4897
  %10 = load ptr, ptr %id.addr, align 8, !dbg !4898
  %arrayidx9 = getelementptr i8, ptr %10, i64 3, !dbg !4898
  %11 = load i8, ptr %arrayidx9, align 1, !dbg !4898
  %call10 = call zeroext i8 @__tolower(i8 noundef zeroext %11) #17, !dbg !4898
  %12 = load ptr, ptr %dev_id, align 8, !dbg !4899
  %id11 = getelementptr inbounds %struct.pnp_id, ptr %12, i32 0, i32 0, !dbg !4900
  %arrayidx12 = getelementptr [8 x i8], ptr %id11, i64 0, i64 3, !dbg !4899
  store i8 %call10, ptr %arrayidx12, align 1, !dbg !4901
  %13 = load ptr, ptr %id.addr, align 8, !dbg !4902
  %arrayidx13 = getelementptr i8, ptr %13, i64 4, !dbg !4902
  %14 = load i8, ptr %arrayidx13, align 1, !dbg !4902
  %call14 = call zeroext i8 @__tolower(i8 noundef zeroext %14) #17, !dbg !4902
  %15 = load ptr, ptr %dev_id, align 8, !dbg !4903
  %id15 = getelementptr inbounds %struct.pnp_id, ptr %15, i32 0, i32 0, !dbg !4904
  %arrayidx16 = getelementptr [8 x i8], ptr %id15, i64 0, i64 4, !dbg !4903
  store i8 %call14, ptr %arrayidx16, align 4, !dbg !4905
  %16 = load ptr, ptr %id.addr, align 8, !dbg !4906
  %arrayidx17 = getelementptr i8, ptr %16, i64 5, !dbg !4906
  %17 = load i8, ptr %arrayidx17, align 1, !dbg !4906
  %call18 = call zeroext i8 @__tolower(i8 noundef zeroext %17) #17, !dbg !4906
  %18 = load ptr, ptr %dev_id, align 8, !dbg !4907
  %id19 = getelementptr inbounds %struct.pnp_id, ptr %18, i32 0, i32 0, !dbg !4908
  %arrayidx20 = getelementptr [8 x i8], ptr %id19, i64 0, i64 5, !dbg !4907
  store i8 %call18, ptr %arrayidx20, align 1, !dbg !4909
  %19 = load ptr, ptr %id.addr, align 8, !dbg !4910
  %arrayidx21 = getelementptr i8, ptr %19, i64 6, !dbg !4910
  %20 = load i8, ptr %arrayidx21, align 1, !dbg !4910
  %call22 = call zeroext i8 @__tolower(i8 noundef zeroext %20) #17, !dbg !4910
  %21 = load ptr, ptr %dev_id, align 8, !dbg !4911
  %id23 = getelementptr inbounds %struct.pnp_id, ptr %21, i32 0, i32 0, !dbg !4912
  %arrayidx24 = getelementptr [8 x i8], ptr %id23, i64 0, i64 6, !dbg !4911
  store i8 %call22, ptr %arrayidx24, align 2, !dbg !4913
  %22 = load ptr, ptr %dev_id, align 8, !dbg !4914
  %id25 = getelementptr inbounds %struct.pnp_id, ptr %22, i32 0, i32 0, !dbg !4915
  %arrayidx26 = getelementptr [8 x i8], ptr %id25, i64 0, i64 7, !dbg !4914
  store i8 0, ptr %arrayidx26, align 1, !dbg !4916
  %23 = load ptr, ptr %dev_id, align 8, !dbg !4917
  %next = getelementptr inbounds %struct.pnp_id, ptr %23, i32 0, i32 1, !dbg !4918
  store ptr null, ptr %next, align 8, !dbg !4919
  %24 = load ptr, ptr %card.addr, align 8, !dbg !4920
  %id27 = getelementptr inbounds %struct.pnp_card, ptr %24, i32 0, i32 6, !dbg !4921
  %25 = load ptr, ptr %id27, align 8, !dbg !4921
  store ptr %25, ptr %ptr, align 8, !dbg !4922
  br label %while.cond, !dbg !4923

while.cond:                                       ; preds = %while.body, %if.end
  %26 = load ptr, ptr %ptr, align 8, !dbg !4924
  %tobool28 = icmp ne ptr %26, null, !dbg !4924
  br i1 %tobool28, label %land.rhs, label %land.end, !dbg !4925

land.rhs:                                         ; preds = %while.cond
  %27 = load ptr, ptr %ptr, align 8, !dbg !4926
  %next29 = getelementptr inbounds %struct.pnp_id, ptr %27, i32 0, i32 1, !dbg !4927
  %28 = load ptr, ptr %next29, align 8, !dbg !4927
  %tobool30 = icmp ne ptr %28, null, !dbg !4925
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ], !dbg !4928
  br i1 %29, label %while.body, label %while.end, !dbg !4923

while.body:                                       ; preds = %land.end
  %30 = load ptr, ptr %ptr, align 8, !dbg !4929
  %next31 = getelementptr inbounds %struct.pnp_id, ptr %30, i32 0, i32 1, !dbg !4930
  %31 = load ptr, ptr %next31, align 8, !dbg !4930
  store ptr %31, ptr %ptr, align 8, !dbg !4931
  br label %while.cond, !dbg !4923, !llvm.loop !4932

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %ptr, align 8, !dbg !4935
  %tobool32 = icmp ne ptr %32, null, !dbg !4935
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !4937

if.then33:                                        ; preds = %while.end
  %33 = load ptr, ptr %dev_id, align 8, !dbg !4938
  %34 = load ptr, ptr %ptr, align 8, !dbg !4939
  %next34 = getelementptr inbounds %struct.pnp_id, ptr %34, i32 0, i32 1, !dbg !4940
  store ptr %33, ptr %next34, align 8, !dbg !4941
  br label %if.end36, !dbg !4939

if.else:                                          ; preds = %while.end
  %35 = load ptr, ptr %dev_id, align 8, !dbg !4942
  %36 = load ptr, ptr %card.addr, align 8, !dbg !4943
  %id35 = getelementptr inbounds %struct.pnp_card, ptr %36, i32 0, i32 6, !dbg !4944
  store ptr %35, ptr %id35, align 8, !dbg !4945
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %37 = load ptr, ptr %dev_id, align 8, !dbg !4946
  store ptr %37, ptr %retval, align 8, !dbg !4947
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4947

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #15, !dbg !4948
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_id) #15, !dbg !4948
  %38 = load ptr, ptr %retval, align 8, !dbg !4948
  ret ptr %38, !dbg !4948
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4949 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_add_card(ptr noundef %card) #0 align 16 !dbg !4952 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %pos = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %dev9 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !4956, metadata !DIExpression()), !dbg !4972
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !4973
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4957, metadata !DIExpression()), !dbg !4974
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !4975
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4958, metadata !DIExpression()), !dbg !4976
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15, !dbg !4975
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !4959, metadata !DIExpression()), !dbg !4977
  %0 = load ptr, ptr %card.addr, align 8, !dbg !4978
  %dev = getelementptr inbounds %struct.pnp_card, ptr %0, i32 0, i32 0, !dbg !4979
  %bus = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5, !dbg !4980
  store ptr null, ptr %bus, align 8, !dbg !4981
  %1 = load ptr, ptr %card.addr, align 8, !dbg !4982
  %dev1 = getelementptr inbounds %struct.pnp_card, ptr %1, i32 0, i32 0, !dbg !4983
  %release = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 32, !dbg !4984
  store ptr @pnp_release_card, ptr %release, align 8, !dbg !4985
  %2 = load ptr, ptr %card.addr, align 8, !dbg !4986
  %dev2 = getelementptr inbounds %struct.pnp_card, ptr %2, i32 0, i32 0, !dbg !4987
  %call = call i32 @device_register(ptr noundef %dev2) #17, !dbg !4988
  store i32 %call, ptr %error, align 4, !dbg !4989
  %3 = load i32, ptr %error, align 4, !dbg !4990
  %tobool = icmp ne i32 %3, 0, !dbg !4990
  br i1 %tobool, label %if.then, label %if.end, !dbg !4992

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4993

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4996

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4996

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %card.addr, align 8, !dbg !4993
  %dev3 = getelementptr inbounds %struct.pnp_card, ptr %4, i32 0, i32 0, !dbg !4993
  %5 = load i32, ptr %error, align 4, !dbg !4993
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef @.str.1, i32 noundef %5) #18, !dbg !4993
  %6 = load ptr, ptr %card.addr, align 8, !dbg !4998
  %dev4 = getelementptr inbounds %struct.pnp_card, ptr %6, i32 0, i32 0, !dbg !4999
  call void @put_device(ptr noundef %dev4) #17, !dbg !5000
  %7 = load i32, ptr %error, align 4, !dbg !5001
  store i32 %7, ptr %retval, align 4, !dbg !5002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5002

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %card.addr, align 8, !dbg !5003
  %call5 = call i32 @pnp_interface_attach_card(ptr noundef %8) #17, !dbg !5004
  call void @mutex_lock(ptr noundef @pnp_lock) #17, !dbg !5005
  %9 = load ptr, ptr %card.addr, align 8, !dbg !5006
  %global_list = getelementptr inbounds %struct.pnp_card, ptr %9, i32 0, i32 2, !dbg !5007
  call void @list_add_tail(ptr noundef %global_list, ptr noundef @pnp_cards) #17, !dbg !5008
  %10 = load ptr, ptr %card.addr, align 8, !dbg !5009
  %protocol_list = getelementptr inbounds %struct.pnp_card, ptr %10, i32 0, i32 3, !dbg !5010
  %11 = load ptr, ptr %card.addr, align 8, !dbg !5011
  %protocol = getelementptr inbounds %struct.pnp_card, ptr %11, i32 0, i32 5, !dbg !5012
  %12 = load ptr, ptr %protocol, align 8, !dbg !5012
  %cards = getelementptr inbounds %struct.pnp_protocol, ptr %12, i32 0, i32 10, !dbg !5013
  call void @list_add_tail(ptr noundef %protocol_list, ptr noundef %cards) #17, !dbg !5014
  call void @mutex_unlock(ptr noundef @pnp_lock) #17, !dbg !5015
  %13 = load ptr, ptr %card.addr, align 8, !dbg !5016
  %devices = getelementptr inbounds %struct.pnp_card, ptr %13, i32 0, i32 4, !dbg !5016
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5016
  %14 = load ptr, ptr %next, align 8, !dbg !5016
  store ptr %14, ptr %pos, align 8, !dbg !5016
  br label %for.cond, !dbg !5016

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load ptr, ptr %pos, align 8, !dbg !5017
  %16 = load ptr, ptr %card.addr, align 8, !dbg !5017
  %devices6 = getelementptr inbounds %struct.pnp_card, ptr %16, i32 0, i32 4, !dbg !5017
  %call7 = call i32 @list_is_head(ptr noundef %15, ptr noundef %devices6) #17, !dbg !5017
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5017
  %lnot = xor i1 %tobool8, true, !dbg !5017
  br i1 %lnot, label %for.body, label %for.end, !dbg !5016

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev9) #15, !dbg !5018
  call void @llvm.dbg.declare(metadata ptr %dev9, metadata !4960, metadata !DIExpression()), !dbg !5019
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4964, metadata !DIExpression()), !dbg !5020
  %17 = load ptr, ptr %pos, align 8, !dbg !5020
  store ptr %17, ptr %__mptr, align 8, !dbg !5020
  %18 = load ptr, ptr %__mptr, align 8, !dbg !5020
  %add.ptr = getelementptr i8, ptr %18, i64 -776, !dbg !5020
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5021
  %19 = load ptr, ptr %tmp, align 8, !dbg !5020
  store ptr %19, ptr %dev9, align 8, !dbg !5019
  %20 = load ptr, ptr %dev9, align 8, !dbg !5022
  %call10 = call i32 @__pnp_add_device(ptr noundef %20) #17, !dbg !5023
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev9) #15, !dbg !5024
  br label %for.inc, !dbg !5025

for.inc:                                          ; preds = %for.body
  %21 = load ptr, ptr %pos, align 8, !dbg !5017
  %next11 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 0, !dbg !5017
  %22 = load ptr, ptr %next11, align 8, !dbg !5017
  store ptr %22, ptr %pos, align 8, !dbg !5017
  br label %for.cond, !dbg !5017, !llvm.loop !5026

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr @pnp_card_drivers, align 8, !dbg !5028
  store ptr %23, ptr %pos, align 8, !dbg !5028
  %24 = load ptr, ptr %pos, align 8, !dbg !5028
  %next12 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 0, !dbg !5028
  %25 = load ptr, ptr %next12, align 8, !dbg !5028
  store ptr %25, ptr %temp, align 8, !dbg !5028
  br label %for.cond13, !dbg !5028

for.cond13:                                       ; preds = %for.inc22, %for.end
  %26 = load ptr, ptr %pos, align 8, !dbg !5029
  %call14 = call i32 @list_is_head(ptr noundef %26, ptr noundef @pnp_card_drivers) #17, !dbg !5029
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5029
  %lnot16 = xor i1 %tobool15, true, !dbg !5029
  br i1 %lnot16, label %for.body17, label %for.end24, !dbg !5028

for.body17:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !4966, metadata !DIExpression()), !dbg !5031
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #15, !dbg !5032
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !4970, metadata !DIExpression()), !dbg !5032
  %27 = load ptr, ptr %pos, align 8, !dbg !5032
  store ptr %27, ptr %__mptr18, align 8, !dbg !5032
  %28 = load ptr, ptr %__mptr18, align 8, !dbg !5032
  %add.ptr20 = getelementptr i8, ptr %28, i64 0, !dbg !5032
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !5032
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #15, !dbg !5033
  %29 = load ptr, ptr %tmp19, align 8, !dbg !5032
  store ptr %29, ptr %drv, align 8, !dbg !5031
  %30 = load ptr, ptr %card.addr, align 8, !dbg !5034
  %31 = load ptr, ptr %drv, align 8, !dbg !5035
  %call21 = call i32 @card_probe(ptr noundef %30, ptr noundef %31) #17, !dbg !5036
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5037
  br label %for.inc22, !dbg !5038

for.inc22:                                        ; preds = %for.body17
  %32 = load ptr, ptr %temp, align 8, !dbg !5029
  store ptr %32, ptr %pos, align 8, !dbg !5029
  %33 = load ptr, ptr %pos, align 8, !dbg !5029
  %next23 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 0, !dbg !5029
  %34 = load ptr, ptr %next23, align 8, !dbg !5029
  store ptr %34, ptr %temp, align 8, !dbg !5029
  br label %for.cond13, !dbg !5029, !llvm.loop !5039

for.end24:                                        ; preds = %for.cond13
  store i32 0, ptr %retval, align 4, !dbg !5041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5041

cleanup:                                          ; preds = %for.end24, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15, !dbg !5042
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !5042
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !5042
  %35 = load i32, ptr %retval, align 4, !dbg !5042
  ret i32 %35, !dbg !5042
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_release_card(ptr noundef %dmdev) #0 align 16 !dbg !5043 {
entry:
  %dmdev.addr = alloca ptr, align 8
  %card = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !5045, metadata !DIExpression()), !dbg !5049
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #15, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5046, metadata !DIExpression()), !dbg !5051
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5052
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5047, metadata !DIExpression()), !dbg !5052
  %0 = load ptr, ptr %dmdev.addr, align 8, !dbg !5052
  store ptr %0, ptr %__mptr, align 8, !dbg !5052
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5052
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5052
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5052
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5053
  %2 = load ptr, ptr %tmp, align 8, !dbg !5052
  store ptr %2, ptr %card, align 8, !dbg !5051
  %3 = load ptr, ptr %card, align 8, !dbg !5054
  call void @pnp_free_card_ids(ptr noundef %3) #17, !dbg !5055
  %4 = load ptr, ptr %card, align 8, !dbg !5056
  call void @kfree(ptr noundef %4) #17, !dbg !5057
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #15, !dbg !5058
  ret void, !dbg !5058
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5059 dso_local i32 @device_register(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5060 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5064 dso_local void @put_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_interface_attach_card(ptr noundef %card) #0 align 16 !dbg !5065 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5067, metadata !DIExpression()), !dbg !5070
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !5071
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5068, metadata !DIExpression()), !dbg !5072
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5073
  %dev = getelementptr inbounds %struct.pnp_card, ptr %0, i32 0, i32 0, !dbg !5074
  %call = call i32 @device_create_file(ptr noundef %dev, ptr noundef @dev_attr_name) #17, !dbg !5075
  store i32 %call, ptr %rc, align 4, !dbg !5072
  %1 = load i32, ptr %rc, align 4, !dbg !5076
  %tobool = icmp ne i32 %1, 0, !dbg !5076
  br i1 %tobool, label %if.then, label %if.end, !dbg !5078

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4, !dbg !5079
  store i32 %2, ptr %retval, align 4, !dbg !5080
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5080

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5081
  %dev1 = getelementptr inbounds %struct.pnp_card, ptr %3, i32 0, i32 0, !dbg !5082
  %call2 = call i32 @device_create_file(ptr noundef %dev1, ptr noundef @dev_attr_card_id) #17, !dbg !5083
  store i32 %call2, ptr %rc, align 4, !dbg !5084
  %4 = load i32, ptr %rc, align 4, !dbg !5085
  %tobool3 = icmp ne i32 %4, 0, !dbg !5085
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5087

if.then4:                                         ; preds = %if.end
  br label %err_name, !dbg !5088

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5089
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5089

err_name:                                         ; preds = %if.then4
  call void @llvm.dbg.label(metadata !5069), !dbg !5090
  %5 = load ptr, ptr %card.addr, align 8, !dbg !5091
  %dev6 = getelementptr inbounds %struct.pnp_card, ptr %5, i32 0, i32 0, !dbg !5092
  call void @device_remove_file(ptr noundef %dev6, ptr noundef @dev_attr_name) #17, !dbg !5093
  %6 = load i32, ptr %rc, align 4, !dbg !5094
  store i32 %6, ptr %retval, align 4, !dbg !5095
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5095

cleanup:                                          ; preds = %err_name, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !5096
  %7 = load i32, ptr %retval, align 4, !dbg !5096
  ret i32 %7, !dbg !5096
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5097 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !5101 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5106, metadata !DIExpression()), !dbg !5108
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5107, metadata !DIExpression()), !dbg !5109
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5110
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5111
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5112
  %2 = load ptr, ptr %prev, align 8, !dbg !5112
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5113
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !5114
  ret void, !dbg !5115
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5116 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #6 align 16 !dbg !5117 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5123, metadata !DIExpression()), !dbg !5125
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5124, metadata !DIExpression()), !dbg !5126
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5127
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5128
  %cmp = icmp eq ptr %0, %1, !dbg !5129
  %conv = zext i1 %cmp to i32, !dbg !5129
  ret i32 %conv, !dbg !5130
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5131 dso_local i32 @__pnp_add_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @card_probe(ptr noundef %card, ptr noundef %drv) #0 align 16 !dbg !5133 {
entry:
  %retval = alloca i32, align 4
  %card.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %id = alloca ptr, align 8
  %clink = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pm_message, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5137, metadata !DIExpression()), !dbg !5148
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5138, metadata !DIExpression()), !dbg !5149
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #15, !dbg !5150
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5139, metadata !DIExpression()), !dbg !5151
  call void @llvm.lifetime.start.p0(i64 8, ptr %clink) #15, !dbg !5152
  call void @llvm.dbg.declare(metadata ptr %clink, metadata !5140, metadata !DIExpression()), !dbg !5153
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5154
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5141, metadata !DIExpression()), !dbg !5155
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5156
  %probe = getelementptr inbounds %struct.pnp_card_driver, ptr %0, i32 0, i32 4, !dbg !5158
  %1 = load ptr, ptr %probe, align 8, !dbg !5158
  %tobool = icmp ne ptr %1, null, !dbg !5156
  br i1 %tobool, label %if.end, label %if.then, !dbg !5159

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5160

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !5161
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5162
  %call = call ptr @match_card(ptr noundef %2, ptr noundef %3) #17, !dbg !5163
  store ptr %call, ptr %id, align 8, !dbg !5164
  %4 = load ptr, ptr %id, align 8, !dbg !5165
  %tobool1 = icmp ne ptr %4, null, !dbg !5165
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5167

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5168

if.end3:                                          ; preds = %if.end
  %call4 = call noalias ptr @kzalloc(i64 noundef 32, i32 noundef 3264) #16, !dbg !5169
  store ptr %call4, ptr %clink, align 8, !dbg !5170
  %5 = load ptr, ptr %clink, align 8, !dbg !5171
  %tobool5 = icmp ne ptr %5, null, !dbg !5171
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5173

if.then6:                                         ; preds = %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5174

if.end7:                                          ; preds = %if.end3
  %6 = load ptr, ptr %card.addr, align 8, !dbg !5175
  %7 = load ptr, ptr %clink, align 8, !dbg !5176
  %card8 = getelementptr inbounds %struct.pnp_card_link, ptr %7, i32 0, i32 0, !dbg !5177
  store ptr %6, ptr %card8, align 8, !dbg !5178
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !5179
  %9 = load ptr, ptr %clink, align 8, !dbg !5180
  %driver = getelementptr inbounds %struct.pnp_card_link, ptr %9, i32 0, i32 1, !dbg !5181
  store ptr %8, ptr %driver, align 8, !dbg !5182
  %10 = load ptr, ptr %clink, align 8, !dbg !5183
  %pm_state = getelementptr inbounds %struct.pnp_card_link, ptr %10, i32 0, i32 3, !dbg !5184
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !5185
  store i32 0, ptr %event, align 4, !dbg !5185
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pm_state, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5185
  %11 = load ptr, ptr %drv.addr, align 8, !dbg !5186
  %probe9 = getelementptr inbounds %struct.pnp_card_driver, ptr %11, i32 0, i32 4, !dbg !5188
  %12 = load ptr, ptr %probe9, align 8, !dbg !5188
  %13 = load ptr, ptr %clink, align 8, !dbg !5189
  %14 = load ptr, ptr %id, align 8, !dbg !5190
  %call10 = call i32 %12(ptr noundef %13, ptr noundef %14) #17, !dbg !5186
  %cmp = icmp sge i32 %call10, 0, !dbg !5191
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !5192

if.then11:                                        ; preds = %if.end7
  store i32 1, ptr %retval, align 4, !dbg !5193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5193

if.end12:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5194
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5142, metadata !DIExpression()), !dbg !5194
  %15 = load ptr, ptr %card.addr, align 8, !dbg !5194
  %devices = getelementptr inbounds %struct.pnp_card, ptr %15, i32 0, i32 4, !dbg !5194
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5194
  %16 = load ptr, ptr %next, align 8, !dbg !5194
  store ptr %16, ptr %__mptr, align 8, !dbg !5194
  %17 = load ptr, ptr %__mptr, align 8, !dbg !5194
  %add.ptr = getelementptr i8, ptr %17, i64 -776, !dbg !5194
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5195
  %18 = load ptr, ptr %tmp, align 8, !dbg !5194
  store ptr %18, ptr %dev, align 8, !dbg !5195
  br label %for.cond, !dbg !5195

for.cond:                                         ; preds = %for.inc, %if.end12
  %19 = load ptr, ptr %dev, align 8, !dbg !5196
  %card_list = getelementptr inbounds %struct.pnp_dev, ptr %19, i32 0, i32 6, !dbg !5196
  %20 = load ptr, ptr %card.addr, align 8, !dbg !5196
  %devices13 = getelementptr inbounds %struct.pnp_card, ptr %20, i32 0, i32 4, !dbg !5196
  %cmp14 = icmp eq ptr %card_list, %devices13, !dbg !5196
  %lnot = xor i1 %cmp14, true, !dbg !5196
  br i1 %lnot, label %for.body, label %for.end, !dbg !5195

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %dev, align 8, !dbg !5197
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %21, i32 0, i32 11, !dbg !5200
  %22 = load ptr, ptr %card_link, align 8, !dbg !5200
  %23 = load ptr, ptr %clink, align 8, !dbg !5201
  %cmp15 = icmp eq ptr %22, %23, !dbg !5202
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5203

if.then16:                                        ; preds = %for.body
  %24 = load ptr, ptr %dev, align 8, !dbg !5204
  call void @pnp_release_card_device(ptr noundef %24) #17, !dbg !5205
  br label %if.end17, !dbg !5205

if.end17:                                         ; preds = %if.then16, %for.body
  br label %for.inc, !dbg !5206

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #15, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !5145, metadata !DIExpression()), !dbg !5207
  %25 = load ptr, ptr %dev, align 8, !dbg !5207
  %card_list19 = getelementptr inbounds %struct.pnp_dev, ptr %25, i32 0, i32 6, !dbg !5207
  %next20 = getelementptr inbounds %struct.list_head, ptr %card_list19, i32 0, i32 0, !dbg !5207
  %26 = load ptr, ptr %next20, align 8, !dbg !5207
  store ptr %26, ptr %__mptr18, align 8, !dbg !5207
  %27 = load ptr, ptr %__mptr18, align 8, !dbg !5207
  %add.ptr22 = getelementptr i8, ptr %27, i64 -776, !dbg !5207
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #15, !dbg !5196
  %28 = load ptr, ptr %tmp21, align 8, !dbg !5207
  store ptr %28, ptr %dev, align 8, !dbg !5196
  br label %for.cond, !dbg !5196, !llvm.loop !5208

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %clink, align 8, !dbg !5210
  call void @kfree(ptr noundef %29) #17, !dbg !5211
  store i32 0, ptr %retval, align 4, !dbg !5212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5212

cleanup:                                          ; preds = %for.end, %if.then11, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5213
  call void @llvm.lifetime.end.p0(i64 8, ptr %clink) #15, !dbg !5213
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #15, !dbg !5213
  %30 = load i32, ptr %retval, align 4, !dbg !5213
  ret i32 %30, !dbg !5213
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_remove_card(ptr noundef %card) #0 align 16 !dbg !5214 {
entry:
  %card.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %dev3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5218, metadata !DIExpression()), !dbg !5227
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5219, metadata !DIExpression()), !dbg !5229
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !5220, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5231
  %dev = getelementptr inbounds %struct.pnp_card, ptr %0, i32 0, i32 0, !dbg !5232
  call void @device_unregister(ptr noundef %dev) #17, !dbg !5233
  call void @mutex_lock(ptr noundef @pnp_lock) #17, !dbg !5234
  %1 = load ptr, ptr %card.addr, align 8, !dbg !5235
  %global_list = getelementptr inbounds %struct.pnp_card, ptr %1, i32 0, i32 2, !dbg !5236
  call void @list_del(ptr noundef %global_list) #17, !dbg !5237
  %2 = load ptr, ptr %card.addr, align 8, !dbg !5238
  %protocol_list = getelementptr inbounds %struct.pnp_card, ptr %2, i32 0, i32 3, !dbg !5239
  call void @list_del(ptr noundef %protocol_list) #17, !dbg !5240
  call void @mutex_unlock(ptr noundef @pnp_lock) #17, !dbg !5241
  %3 = load ptr, ptr %card.addr, align 8, !dbg !5242
  %devices = getelementptr inbounds %struct.pnp_card, ptr %3, i32 0, i32 4, !dbg !5242
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5242
  %4 = load ptr, ptr %next, align 8, !dbg !5242
  store ptr %4, ptr %pos, align 8, !dbg !5242
  %5 = load ptr, ptr %pos, align 8, !dbg !5242
  %next1 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !5242
  %6 = load ptr, ptr %next1, align 8, !dbg !5242
  store ptr %6, ptr %temp, align 8, !dbg !5242
  br label %for.cond, !dbg !5242

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %pos, align 8, !dbg !5243
  %8 = load ptr, ptr %card.addr, align 8, !dbg !5243
  %devices2 = getelementptr inbounds %struct.pnp_card, ptr %8, i32 0, i32 4, !dbg !5243
  %call = call i32 @list_is_head(ptr noundef %7, ptr noundef %devices2) #17, !dbg !5243
  %tobool = icmp ne i32 %call, 0, !dbg !5243
  %lnot = xor i1 %tobool, true, !dbg !5243
  br i1 %lnot, label %for.body, label %for.end, !dbg !5242

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev3) #15, !dbg !5244
  call void @llvm.dbg.declare(metadata ptr %dev3, metadata !5221, metadata !DIExpression()), !dbg !5245
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5246
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5225, metadata !DIExpression()), !dbg !5246
  %9 = load ptr, ptr %pos, align 8, !dbg !5246
  store ptr %9, ptr %__mptr, align 8, !dbg !5246
  %10 = load ptr, ptr %__mptr, align 8, !dbg !5246
  %add.ptr = getelementptr i8, ptr %10, i64 -776, !dbg !5246
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5247
  %11 = load ptr, ptr %tmp, align 8, !dbg !5246
  store ptr %11, ptr %dev3, align 8, !dbg !5245
  %12 = load ptr, ptr %dev3, align 8, !dbg !5248
  call void @pnp_remove_card_device(ptr noundef %12) #17, !dbg !5249
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev3) #15, !dbg !5250
  br label %for.inc, !dbg !5251

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %temp, align 8, !dbg !5243
  store ptr %13, ptr %pos, align 8, !dbg !5243
  %14 = load ptr, ptr %pos, align 8, !dbg !5243
  %next4 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 0, !dbg !5243
  %15 = load ptr, ptr %next4, align 8, !dbg !5243
  store ptr %15, ptr %temp, align 8, !dbg !5243
  br label %for.cond, !dbg !5243, !llvm.loop !5252

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15, !dbg !5254
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !5254
  ret void, !dbg !5254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5255 dso_local void @device_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !5256 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5262
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5263
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5264
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5265
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5266
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5267
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5268
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5269
  ret void, !dbg !5270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_remove_card_device(ptr noundef %dev) #0 align 16 !dbg !5271 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  call void @mutex_lock(ptr noundef @pnp_lock) #17, !dbg !5275
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5276
  %card = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 9, !dbg !5277
  store ptr null, ptr %card, align 8, !dbg !5278
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5279
  %card_list = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 6, !dbg !5280
  call void @list_del(ptr noundef %card_list) #17, !dbg !5281
  call void @mutex_unlock(ptr noundef @pnp_lock) #17, !dbg !5282
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5283
  call void @__pnp_remove_device(ptr noundef %2) #17, !dbg !5284
  ret void, !dbg !5285
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_add_card_device(ptr noundef %card, ptr noundef %dev) #0 align 16 !dbg !5286 {
entry:
  %card.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5291, metadata !DIExpression()), !dbg !5293
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5294
  %dev1 = getelementptr inbounds %struct.pnp_card, ptr %0, i32 0, i32 0, !dbg !5295
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5296
  %dev2 = getelementptr inbounds %struct.pnp_dev, ptr %1, i32 0, i32 0, !dbg !5297
  %parent = getelementptr inbounds %struct.device, ptr %dev2, i32 0, i32 1, !dbg !5298
  store ptr %dev1, ptr %parent, align 8, !dbg !5299
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5300
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %2, i32 0, i32 11, !dbg !5301
  store ptr null, ptr %card_link, align 8, !dbg !5302
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5303
  %dev3 = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 0, !dbg !5304
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5305
  %protocol = getelementptr inbounds %struct.pnp_dev, ptr %4, i32 0, i32 8, !dbg !5306
  %5 = load ptr, ptr %protocol, align 8, !dbg !5306
  %number = getelementptr inbounds %struct.pnp_protocol, ptr %5, i32 0, i32 8, !dbg !5307
  %6 = load i8, ptr %number, align 8, !dbg !5307
  %conv = zext i8 %6 to i32, !dbg !5305
  %7 = load ptr, ptr %card.addr, align 8, !dbg !5308
  %number4 = getelementptr inbounds %struct.pnp_card, ptr %7, i32 0, i32 1, !dbg !5309
  %8 = load i8, ptr %number4, align 8, !dbg !5309
  %conv5 = zext i8 %8 to i32, !dbg !5308
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5310
  %number6 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 2, !dbg !5311
  %10 = load i32, ptr %number6, align 8, !dbg !5311
  %call = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev3, ptr noundef @.str.2, i32 noundef %conv, i32 noundef %conv5, i32 noundef %10) #17, !dbg !5312
  call void @mutex_lock(ptr noundef @pnp_lock) #17, !dbg !5313
  %11 = load ptr, ptr %card.addr, align 8, !dbg !5314
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5315
  %card7 = getelementptr inbounds %struct.pnp_dev, ptr %12, i32 0, i32 9, !dbg !5316
  store ptr %11, ptr %card7, align 8, !dbg !5317
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5318
  %card_list = getelementptr inbounds %struct.pnp_dev, ptr %13, i32 0, i32 6, !dbg !5319
  %14 = load ptr, ptr %card.addr, align 8, !dbg !5320
  %devices = getelementptr inbounds %struct.pnp_card, ptr %14, i32 0, i32 4, !dbg !5321
  call void @list_add_tail(ptr noundef %card_list, ptr noundef %devices) #17, !dbg !5322
  call void @mutex_unlock(ptr noundef @pnp_lock) #17, !dbg !5323
  ret i32 0, !dbg !5324
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5325 dso_local void @__pnp_remove_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pnp_request_card_device(ptr noundef %clink, ptr noundef %id, ptr noundef %from) #0 align 16 !dbg !5326 {
entry:
  %retval = alloca ptr, align 8
  %clink.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %pos = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %card = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %clink, ptr %clink.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clink.addr, metadata !5330, metadata !DIExpression()), !dbg !5342
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5331, metadata !DIExpression()), !dbg !5343
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5332, metadata !DIExpression()), !dbg !5344
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !5345
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5333, metadata !DIExpression()), !dbg !5346
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5347
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5334, metadata !DIExpression()), !dbg !5348
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5335, metadata !DIExpression()), !dbg !5350
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #15, !dbg !5351
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5336, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %clink.addr, align 8, !dbg !5353
  %tobool = icmp ne ptr %0, null, !dbg !5353
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5355

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !5356
  %tobool1 = icmp ne ptr %1, null, !dbg !5356
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5357

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !5358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5358

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %clink.addr, align 8, !dbg !5359
  %card2 = getelementptr inbounds %struct.pnp_card_link, ptr %2, i32 0, i32 0, !dbg !5360
  %3 = load ptr, ptr %card2, align 8, !dbg !5360
  store ptr %3, ptr %card, align 8, !dbg !5361
  %4 = load ptr, ptr %clink.addr, align 8, !dbg !5362
  %driver = getelementptr inbounds %struct.pnp_card_link, ptr %4, i32 0, i32 1, !dbg !5363
  %5 = load ptr, ptr %driver, align 8, !dbg !5363
  store ptr %5, ptr %drv, align 8, !dbg !5364
  %6 = load ptr, ptr %from.addr, align 8, !dbg !5365
  %tobool3 = icmp ne ptr %6, null, !dbg !5365
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !5367

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %card, align 8, !dbg !5368
  %devices = getelementptr inbounds %struct.pnp_card, ptr %7, i32 0, i32 4, !dbg !5370
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5371
  %8 = load ptr, ptr %next, align 8, !dbg !5371
  store ptr %8, ptr %pos, align 8, !dbg !5372
  br label %if.end9, !dbg !5373

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %from.addr, align 8, !dbg !5374
  %card5 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 9, !dbg !5377
  %10 = load ptr, ptr %card5, align 8, !dbg !5377
  %11 = load ptr, ptr %card, align 8, !dbg !5378
  %cmp = icmp ne ptr %10, %11, !dbg !5379
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5380

if.then6:                                         ; preds = %if.else
  store ptr null, ptr %retval, align 8, !dbg !5381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

if.end7:                                          ; preds = %if.else
  %12 = load ptr, ptr %from.addr, align 8, !dbg !5382
  %card_list = getelementptr inbounds %struct.pnp_dev, ptr %12, i32 0, i32 6, !dbg !5383
  %next8 = getelementptr inbounds %struct.list_head, ptr %card_list, i32 0, i32 0, !dbg !5384
  %13 = load ptr, ptr %next8, align 8, !dbg !5384
  store ptr %13, ptr %pos, align 8, !dbg !5385
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %if.then4
  br label %while.cond, !dbg !5386

while.cond:                                       ; preds = %if.end16, %if.end9
  %14 = load ptr, ptr %pos, align 8, !dbg !5387
  %15 = load ptr, ptr %card, align 8, !dbg !5388
  %devices10 = getelementptr inbounds %struct.pnp_card, ptr %15, i32 0, i32 4, !dbg !5389
  %cmp11 = icmp ne ptr %14, %devices10, !dbg !5390
  br i1 %cmp11, label %while.body, label %while.end, !dbg !5386

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5391
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5337, metadata !DIExpression()), !dbg !5391
  %16 = load ptr, ptr %pos, align 8, !dbg !5391
  store ptr %16, ptr %__mptr, align 8, !dbg !5391
  %17 = load ptr, ptr %__mptr, align 8, !dbg !5391
  %add.ptr = getelementptr i8, ptr %17, i64 -776, !dbg !5391
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5392
  %18 = load ptr, ptr %tmp, align 8, !dbg !5391
  store ptr %18, ptr %dev, align 8, !dbg !5393
  %19 = load ptr, ptr %dev, align 8, !dbg !5394
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %19, i32 0, i32 11, !dbg !5396
  %20 = load ptr, ptr %card_link, align 8, !dbg !5396
  %tobool12 = icmp ne ptr %20, null, !dbg !5394
  br i1 %tobool12, label %if.end16, label %land.lhs.true, !dbg !5397

land.lhs.true:                                    ; preds = %while.body
  %21 = load ptr, ptr %dev, align 8, !dbg !5398
  %id13 = getelementptr inbounds %struct.pnp_dev, ptr %21, i32 0, i32 12, !dbg !5399
  %22 = load ptr, ptr %id13, align 8, !dbg !5399
  %23 = load ptr, ptr %id.addr, align 8, !dbg !5400
  %call = call i32 @compare_pnp_id(ptr noundef %22, ptr noundef %23) #17, !dbg !5401
  %tobool14 = icmp ne i32 %call, 0, !dbg !5401
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5402

if.then15:                                        ; preds = %land.lhs.true
  br label %found, !dbg !5403

if.end16:                                         ; preds = %land.lhs.true, %while.body
  %24 = load ptr, ptr %pos, align 8, !dbg !5404
  %next17 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 0, !dbg !5405
  %25 = load ptr, ptr %next17, align 8, !dbg !5405
  store ptr %25, ptr %pos, align 8, !dbg !5406
  br label %while.cond, !dbg !5386, !llvm.loop !5407

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !5409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5409

found:                                            ; preds = %if.then15
  call void @llvm.dbg.label(metadata !5340), !dbg !5410
  %26 = load ptr, ptr %clink.addr, align 8, !dbg !5411
  %27 = load ptr, ptr %dev, align 8, !dbg !5412
  %card_link18 = getelementptr inbounds %struct.pnp_dev, ptr %27, i32 0, i32 11, !dbg !5413
  store ptr %26, ptr %card_link18, align 8, !dbg !5414
  %28 = load ptr, ptr %drv, align 8, !dbg !5415
  %link = getelementptr inbounds %struct.pnp_card_driver, ptr %28, i32 0, i32 8, !dbg !5416
  %driver19 = getelementptr inbounds %struct.pnp_driver, ptr %link, i32 0, i32 8, !dbg !5417
  %29 = load ptr, ptr %dev, align 8, !dbg !5418
  %dev20 = getelementptr inbounds %struct.pnp_dev, ptr %29, i32 0, i32 0, !dbg !5419
  %driver21 = getelementptr inbounds %struct.device, ptr %dev20, i32 0, i32 6, !dbg !5420
  store ptr %driver19, ptr %driver21, align 8, !dbg !5421
  %30 = load ptr, ptr getelementptr inbounds (%struct.bus_type, ptr @pnp_bus_type, i32 0, i32 7), align 8, !dbg !5422
  %31 = load ptr, ptr %dev, align 8, !dbg !5424
  %dev22 = getelementptr inbounds %struct.pnp_dev, ptr %31, i32 0, i32 0, !dbg !5425
  %call23 = call i32 %30(ptr noundef %dev22) #17, !dbg !5426
  %tobool24 = icmp ne i32 %call23, 0, !dbg !5426
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5427

if.then25:                                        ; preds = %found
  br label %err_out, !dbg !5428

if.end26:                                         ; preds = %found
  %32 = load ptr, ptr %dev, align 8, !dbg !5429
  %dev27 = getelementptr inbounds %struct.pnp_dev, ptr %32, i32 0, i32 0, !dbg !5431
  %call28 = call i32 @device_bind_driver(ptr noundef %dev27) #17, !dbg !5432
  %tobool29 = icmp ne i32 %call28, 0, !dbg !5432
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5433

if.then30:                                        ; preds = %if.end26
  br label %err_out, !dbg !5434

if.end31:                                         ; preds = %if.end26
  %33 = load ptr, ptr %dev, align 8, !dbg !5435
  store ptr %33, ptr %retval, align 8, !dbg !5436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5436

err_out:                                          ; preds = %if.then30, %if.then25
  call void @llvm.dbg.label(metadata !5341), !dbg !5437
  %34 = load ptr, ptr %dev, align 8, !dbg !5438
  %dev32 = getelementptr inbounds %struct.pnp_dev, ptr %34, i32 0, i32 0, !dbg !5439
  %driver33 = getelementptr inbounds %struct.device, ptr %dev32, i32 0, i32 6, !dbg !5440
  store ptr null, ptr %driver33, align 8, !dbg !5441
  %35 = load ptr, ptr %dev, align 8, !dbg !5442
  %card_link34 = getelementptr inbounds %struct.pnp_dev, ptr %35, i32 0, i32 11, !dbg !5443
  store ptr null, ptr %card_link34, align 8, !dbg !5444
  store ptr null, ptr %retval, align 8, !dbg !5445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5445

cleanup:                                          ; preds = %err_out, %if.end31, %while.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #15, !dbg !5446
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5446
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5446
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !5446
  %36 = load ptr, ptr %retval, align 8, !dbg !5446
  ret ptr %36, !dbg !5446
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5447 dso_local i32 @compare_pnp_id(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5450 dso_local i32 @device_bind_driver(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_release_card_device(ptr noundef %dev) #0 align 16 !dbg !5451 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5453, metadata !DIExpression()), !dbg !5455
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5454, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5458
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 11, !dbg !5459
  %1 = load ptr, ptr %card_link, align 8, !dbg !5459
  %driver = getelementptr inbounds %struct.pnp_card_link, ptr %1, i32 0, i32 1, !dbg !5460
  %2 = load ptr, ptr %driver, align 8, !dbg !5460
  store ptr %2, ptr %drv, align 8, !dbg !5457
  %3 = load ptr, ptr %drv, align 8, !dbg !5461
  %link = getelementptr inbounds %struct.pnp_card_driver, ptr %3, i32 0, i32 8, !dbg !5462
  %remove = getelementptr inbounds %struct.pnp_driver, ptr %link, i32 0, i32 4, !dbg !5463
  store ptr @card_remove, ptr %remove, align 8, !dbg !5464
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5465
  %dev1 = getelementptr inbounds %struct.pnp_dev, ptr %4, i32 0, i32 0, !dbg !5466
  call void @device_release_driver(ptr noundef %dev1) #17, !dbg !5467
  %5 = load ptr, ptr %drv, align 8, !dbg !5468
  %link2 = getelementptr inbounds %struct.pnp_card_driver, ptr %5, i32 0, i32 8, !dbg !5469
  %remove3 = getelementptr inbounds %struct.pnp_driver, ptr %link2, i32 0, i32 4, !dbg !5470
  store ptr @card_remove_first, ptr %remove3, align 8, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5472
  ret void, !dbg !5472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @card_remove(ptr noundef %dev) #0 align 16 !dbg !5473 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5477
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 11, !dbg !5478
  store ptr null, ptr %card_link, align 8, !dbg !5479
  ret void, !dbg !5480
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5481 dso_local void @device_release_driver(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @card_remove_first(ptr noundef %dev) #0 align 16 !dbg !5482 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5484, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #15, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5485, metadata !DIExpression()), !dbg !5490
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5486, metadata !DIExpression()), !dbg !5491
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5491
  %driver = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 10, !dbg !5491
  %1 = load ptr, ptr %driver, align 8, !dbg !5491
  store ptr %1, ptr %__mptr, align 8, !dbg !5491
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5491
  %add.ptr = getelementptr i8, ptr %2, i64 -72, !dbg !5491
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5491
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5492
  %3 = load ptr, ptr %tmp, align 8, !dbg !5491
  store ptr %3, ptr %drv, align 8, !dbg !5490
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5493
  %card = getelementptr inbounds %struct.pnp_dev, ptr %4, i32 0, i32 9, !dbg !5495
  %5 = load ptr, ptr %card, align 8, !dbg !5495
  %tobool = icmp ne ptr %5, null, !dbg !5493
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5496

lor.lhs.false:                                    ; preds = %entry
  %6 = load ptr, ptr %drv, align 8, !dbg !5497
  %tobool1 = icmp ne ptr %6, null, !dbg !5497
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5498

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5499

if.end:                                           ; preds = %lor.lhs.false
  %7 = load ptr, ptr %drv, align 8, !dbg !5500
  %remove = getelementptr inbounds %struct.pnp_card_driver, ptr %7, i32 0, i32 5, !dbg !5502
  %8 = load ptr, ptr %remove, align 8, !dbg !5502
  %tobool2 = icmp ne ptr %8, null, !dbg !5500
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !5503

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %drv, align 8, !dbg !5504
  %remove4 = getelementptr inbounds %struct.pnp_card_driver, ptr %9, i32 0, i32 5, !dbg !5505
  %10 = load ptr, ptr %remove4, align 8, !dbg !5505
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5506
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %11, i32 0, i32 11, !dbg !5507
  %12 = load ptr, ptr %card_link, align 8, !dbg !5507
  call void %10(ptr noundef %12) #17, !dbg !5504
  br label %if.end5, !dbg !5504

if.end5:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %drv, align 8, !dbg !5508
  %link = getelementptr inbounds %struct.pnp_card_driver, ptr %13, i32 0, i32 8, !dbg !5509
  %remove6 = getelementptr inbounds %struct.pnp_driver, ptr %link, i32 0, i32 4, !dbg !5510
  store ptr @card_remove, ptr %remove6, align 8, !dbg !5511
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5512
  %card_link7 = getelementptr inbounds %struct.pnp_dev, ptr %14, i32 0, i32 11, !dbg !5513
  %15 = load ptr, ptr %card_link7, align 8, !dbg !5513
  call void @kfree(ptr noundef %15) #17, !dbg !5514
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5515
  call void @card_remove(ptr noundef %16) #17, !dbg !5516
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5517
  br label %cleanup, !dbg !5517

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #15, !dbg !5517
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5517

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_register_card_driver(ptr noundef %drv) #0 align 16 !dbg !5518 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %pos = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %card = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5522, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #15, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5523, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5524, metadata !DIExpression()), !dbg !5536
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !5525, metadata !DIExpression()), !dbg !5537
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5538
  %name = getelementptr inbounds %struct.pnp_card_driver, ptr %0, i32 0, i32 1, !dbg !5539
  %1 = load ptr, ptr %name, align 8, !dbg !5539
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !5540
  %link = getelementptr inbounds %struct.pnp_card_driver, ptr %2, i32 0, i32 8, !dbg !5541
  %name1 = getelementptr inbounds %struct.pnp_driver, ptr %link, i32 0, i32 0, !dbg !5542
  store ptr %1, ptr %name1, align 8, !dbg !5543
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !5544
  %link2 = getelementptr inbounds %struct.pnp_card_driver, ptr %3, i32 0, i32 8, !dbg !5545
  %id_table = getelementptr inbounds %struct.pnp_driver, ptr %link2, i32 0, i32 1, !dbg !5546
  store ptr null, ptr %id_table, align 8, !dbg !5547
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !5548
  %flags = getelementptr inbounds %struct.pnp_card_driver, ptr %4, i32 0, i32 3, !dbg !5549
  %5 = load i32, ptr %flags, align 8, !dbg !5549
  %6 = load ptr, ptr %drv.addr, align 8, !dbg !5550
  %link3 = getelementptr inbounds %struct.pnp_card_driver, ptr %6, i32 0, i32 8, !dbg !5551
  %flags4 = getelementptr inbounds %struct.pnp_driver, ptr %link3, i32 0, i32 2, !dbg !5552
  store i32 %5, ptr %flags4, align 8, !dbg !5553
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !5554
  %link5 = getelementptr inbounds %struct.pnp_card_driver, ptr %7, i32 0, i32 8, !dbg !5555
  %probe = getelementptr inbounds %struct.pnp_driver, ptr %link5, i32 0, i32 3, !dbg !5556
  store ptr null, ptr %probe, align 8, !dbg !5557
  %8 = load ptr, ptr %drv.addr, align 8, !dbg !5558
  %link6 = getelementptr inbounds %struct.pnp_card_driver, ptr %8, i32 0, i32 8, !dbg !5559
  %remove = getelementptr inbounds %struct.pnp_driver, ptr %link6, i32 0, i32 4, !dbg !5560
  store ptr @card_remove_first, ptr %remove, align 8, !dbg !5561
  %9 = load ptr, ptr %drv.addr, align 8, !dbg !5562
  %suspend = getelementptr inbounds %struct.pnp_card_driver, ptr %9, i32 0, i32 6, !dbg !5563
  %10 = load ptr, ptr %suspend, align 8, !dbg !5563
  %tobool = icmp ne ptr %10, null, !dbg !5562
  %11 = zext i1 %tobool to i64, !dbg !5562
  %cond = select i1 %tobool, ptr @card_suspend, ptr null, !dbg !5562
  %12 = load ptr, ptr %drv.addr, align 8, !dbg !5564
  %link7 = getelementptr inbounds %struct.pnp_card_driver, ptr %12, i32 0, i32 8, !dbg !5565
  %suspend8 = getelementptr inbounds %struct.pnp_driver, ptr %link7, i32 0, i32 6, !dbg !5566
  store ptr %cond, ptr %suspend8, align 8, !dbg !5567
  %13 = load ptr, ptr %drv.addr, align 8, !dbg !5568
  %resume = getelementptr inbounds %struct.pnp_card_driver, ptr %13, i32 0, i32 7, !dbg !5569
  %14 = load ptr, ptr %resume, align 8, !dbg !5569
  %tobool9 = icmp ne ptr %14, null, !dbg !5568
  %15 = zext i1 %tobool9 to i64, !dbg !5568
  %cond10 = select i1 %tobool9, ptr @card_resume, ptr null, !dbg !5568
  %16 = load ptr, ptr %drv.addr, align 8, !dbg !5570
  %link11 = getelementptr inbounds %struct.pnp_card_driver, ptr %16, i32 0, i32 8, !dbg !5571
  %resume12 = getelementptr inbounds %struct.pnp_driver, ptr %link11, i32 0, i32 7, !dbg !5572
  store ptr %cond10, ptr %resume12, align 8, !dbg !5573
  %17 = load ptr, ptr %drv.addr, align 8, !dbg !5574
  %link13 = getelementptr inbounds %struct.pnp_card_driver, ptr %17, i32 0, i32 8, !dbg !5575
  %call = call i32 @pnp_register_driver(ptr noundef %link13) #17, !dbg !5576
  store i32 %call, ptr %error, align 4, !dbg !5577
  %18 = load i32, ptr %error, align 4, !dbg !5578
  %cmp = icmp slt i32 %18, 0, !dbg !5580
  br i1 %cmp, label %if.then, label %if.end, !dbg !5581

if.then:                                          ; preds = %entry
  %19 = load i32, ptr %error, align 4, !dbg !5582
  store i32 %19, ptr %retval, align 4, !dbg !5583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5583

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @pnp_lock) #17, !dbg !5584
  %20 = load ptr, ptr %drv.addr, align 8, !dbg !5585
  %global_list = getelementptr inbounds %struct.pnp_card_driver, ptr %20, i32 0, i32 0, !dbg !5586
  call void @list_add_tail(ptr noundef %global_list, ptr noundef @pnp_card_drivers) #17, !dbg !5587
  call void @mutex_unlock(ptr noundef @pnp_lock) #17, !dbg !5588
  %21 = load ptr, ptr @pnp_cards, align 8, !dbg !5589
  store ptr %21, ptr %pos, align 8, !dbg !5589
  %22 = load ptr, ptr %pos, align 8, !dbg !5589
  %next = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 0, !dbg !5589
  %23 = load ptr, ptr %next, align 8, !dbg !5589
  store ptr %23, ptr %temp, align 8, !dbg !5589
  br label %for.cond, !dbg !5589

for.cond:                                         ; preds = %for.inc, %if.end
  %24 = load ptr, ptr %pos, align 8, !dbg !5590
  %call14 = call i32 @list_is_head(ptr noundef %24, ptr noundef @pnp_cards) #17, !dbg !5590
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5590
  %lnot = xor i1 %tobool15, true, !dbg !5590
  br i1 %lnot, label %for.body, label %for.end, !dbg !5589

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #15, !dbg !5591
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5526, metadata !DIExpression()), !dbg !5592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5593
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5530, metadata !DIExpression()), !dbg !5593
  %25 = load ptr, ptr %pos, align 8, !dbg !5593
  store ptr %25, ptr %__mptr, align 8, !dbg !5593
  %26 = load ptr, ptr %__mptr, align 8, !dbg !5593
  %add.ptr = getelementptr i8, ptr %26, i64 -736, !dbg !5593
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5594
  %27 = load ptr, ptr %tmp, align 8, !dbg !5593
  store ptr %27, ptr %card, align 8, !dbg !5592
  %28 = load ptr, ptr %card, align 8, !dbg !5595
  %29 = load ptr, ptr %drv.addr, align 8, !dbg !5596
  %call16 = call i32 @card_probe(ptr noundef %28, ptr noundef %29) #17, !dbg !5597
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #15, !dbg !5598
  br label %for.inc, !dbg !5599

for.inc:                                          ; preds = %for.body
  %30 = load ptr, ptr %temp, align 8, !dbg !5590
  store ptr %30, ptr %pos, align 8, !dbg !5590
  %31 = load ptr, ptr %pos, align 8, !dbg !5590
  %next17 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 0, !dbg !5590
  %32 = load ptr, ptr %next17, align 8, !dbg !5590
  store ptr %32, ptr %temp, align 8, !dbg !5590
  br label %for.cond, !dbg !5590, !llvm.loop !5600

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5602

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #15, !dbg !5603
  %33 = load i32, ptr %retval, align 4, !dbg !5603
  ret i32 %33, !dbg !5603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @card_suspend(ptr noundef %dev, i32 %state.coerce) #0 align 16 !dbg !5604 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0
  store i32 %state.coerce, ptr %coerce.dive, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5606, metadata !DIExpression()), !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5607, metadata !DIExpression()), !dbg !5610
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !5611
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5608, metadata !DIExpression()), !dbg !5612
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5613
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 11, !dbg !5614
  %1 = load ptr, ptr %card_link, align 8, !dbg !5614
  store ptr %1, ptr %link, align 8, !dbg !5612
  %2 = load ptr, ptr %link, align 8, !dbg !5615
  %pm_state = getelementptr inbounds %struct.pnp_card_link, ptr %2, i32 0, i32 3, !dbg !5617
  %event = getelementptr inbounds %struct.pm_message, ptr %pm_state, i32 0, i32 0, !dbg !5618
  %3 = load i32, ptr %event, align 8, !dbg !5618
  %event1 = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0, !dbg !5619
  %4 = load i32, ptr %event1, align 4, !dbg !5619
  %cmp = icmp eq i32 %3, %4, !dbg !5620
  br i1 %cmp, label %if.then, label %if.end, !dbg !5621

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5622

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %link, align 8, !dbg !5623
  %pm_state2 = getelementptr inbounds %struct.pnp_card_link, ptr %5, i32 0, i32 3, !dbg !5624
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pm_state2, ptr align 4 %state, i64 4, i1 false), !dbg !5625
  %6 = load ptr, ptr %link, align 8, !dbg !5626
  %driver = getelementptr inbounds %struct.pnp_card_link, ptr %6, i32 0, i32 1, !dbg !5627
  %7 = load ptr, ptr %driver, align 8, !dbg !5627
  %suspend = getelementptr inbounds %struct.pnp_card_driver, ptr %7, i32 0, i32 6, !dbg !5628
  %8 = load ptr, ptr %suspend, align 8, !dbg !5628
  %9 = load ptr, ptr %link, align 8, !dbg !5629
  %coerce.dive3 = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0, !dbg !5626
  %10 = load i32, ptr %coerce.dive3, align 4, !dbg !5626
  %call = call i32 %8(ptr noundef %9, i32 %10) #17, !dbg !5626
  store i32 %call, ptr %retval, align 4, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !5631
  %11 = load i32, ptr %retval, align 4, !dbg !5631
  ret i32 %11, !dbg !5631
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @card_resume(ptr noundef %dev) #0 align 16 !dbg !5632 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %link = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5634, metadata !DIExpression()), !dbg !5636
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !5637
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5635, metadata !DIExpression()), !dbg !5638
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5639
  %card_link = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 11, !dbg !5640
  %1 = load ptr, ptr %card_link, align 8, !dbg !5640
  store ptr %1, ptr %link, align 8, !dbg !5638
  %2 = load ptr, ptr %link, align 8, !dbg !5641
  %pm_state = getelementptr inbounds %struct.pnp_card_link, ptr %2, i32 0, i32 3, !dbg !5643
  %event = getelementptr inbounds %struct.pm_message, ptr %pm_state, i32 0, i32 0, !dbg !5644
  %3 = load i32, ptr %event, align 8, !dbg !5644
  %cmp = icmp eq i32 %3, 0, !dbg !5645
  br i1 %cmp, label %if.then, label %if.end, !dbg !5646

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5647
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5647

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %link, align 8, !dbg !5648
  %pm_state1 = getelementptr inbounds %struct.pnp_card_link, ptr %4, i32 0, i32 3, !dbg !5649
  %event2 = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !5650
  store i32 0, ptr %event2, align 4, !dbg !5650
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pm_state1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5650
  %5 = load ptr, ptr %link, align 8, !dbg !5651
  %driver = getelementptr inbounds %struct.pnp_card_link, ptr %5, i32 0, i32 1, !dbg !5652
  %6 = load ptr, ptr %driver, align 8, !dbg !5652
  %resume = getelementptr inbounds %struct.pnp_card_driver, ptr %6, i32 0, i32 7, !dbg !5653
  %7 = load ptr, ptr %resume, align 8, !dbg !5653
  %8 = load ptr, ptr %link, align 8, !dbg !5654
  %call = call i32 %7(ptr noundef %8) #17, !dbg !5651
  store i32 0, ptr %retval, align 4, !dbg !5655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5655

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !5656
  %9 = load i32, ptr %retval, align 4, !dbg !5656
  ret i32 %9, !dbg !5656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5657 dso_local i32 @pnp_register_driver(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_unregister_card_driver(ptr noundef %drv) #0 align 16 !dbg !5660 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  call void @mutex_lock(ptr noundef @pnp_lock) #17, !dbg !5666
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !5667
  %global_list = getelementptr inbounds %struct.pnp_card_driver, ptr %0, i32 0, i32 0, !dbg !5668
  call void @list_del(ptr noundef %global_list) #17, !dbg !5669
  call void @mutex_unlock(ptr noundef @pnp_lock) #17, !dbg !5670
  %1 = load ptr, ptr %drv.addr, align 8, !dbg !5671
  %link = getelementptr inbounds %struct.pnp_card_driver, ptr %1, i32 0, i32 8, !dbg !5672
  call void @pnp_unregister_driver(ptr noundef %link) #17, !dbg !5673
  ret void, !dbg !5674
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5675 dso_local void @pnp_unregister_driver(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5678 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5680, metadata !DIExpression()), !dbg !5685
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5681, metadata !DIExpression()), !dbg !5686
  %0 = load i64, ptr %size.addr, align 8, !dbg !5687
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5688
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5689

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5690
  %tobool = icmp ne i64 %2, 0, !dbg !5690
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5691

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5692
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5682, metadata !DIExpression()), !dbg !5693
  %3 = load i64, ptr %size.addr, align 8, !dbg !5694
  %cmp = icmp ugt i64 %3, 8192, !dbg !5696
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5697

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5698
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5699
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !5700
  store ptr %call, ptr %retval, align 8, !dbg !5701
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5701

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5702
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5702
  store i32 %call2, ptr %index, align 4, !dbg !5703
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5704
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5705
  %9 = ptrtoint ptr %8 to i64, !dbg !5705
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5706
  %idxprom = zext i32 %call3 to i64, !dbg !5707
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5707
  %10 = load i32, ptr %index, align 4, !dbg !5708
  %idxprom4 = zext i32 %10 to i64, !dbg !5707
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5707
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5707
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5709
  %13 = load i64, ptr %size.addr, align 8, !dbg !5710
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5711
  store ptr %call6, ptr %retval, align 8, !dbg !5712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5712

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5713
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5714
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5715
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !5716
  store ptr %call8, ptr %retval, align 8, !dbg !5717
  br label %return, !dbg !5717

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5718
  ret ptr %16, !dbg !5718
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5719 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !5720 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5724, metadata !DIExpression()), !dbg !5726
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5725, metadata !DIExpression()), !dbg !5727
  %0 = load i64, ptr %size.addr, align 8, !dbg !5728
  %tobool = icmp ne i64 %0, 0, !dbg !5728
  br i1 %tobool, label %if.end, label %if.then, !dbg !5730

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5731
  br label %return, !dbg !5731

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5732
  %cmp = icmp ule i64 %1, 8, !dbg !5734
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5735

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5736
  br label %return, !dbg !5736

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5737
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5739
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5740

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5741
  %cmp4 = icmp ule i64 %3, 96, !dbg !5742
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5743

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5744
  br label %return, !dbg !5744

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5745
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5747
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5748

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5749
  %cmp9 = icmp ule i64 %5, 192, !dbg !5750
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5751

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5752
  br label %return, !dbg !5752

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5753
  %cmp12 = icmp ule i64 %6, 8, !dbg !5755
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5756

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5757
  br label %return, !dbg !5757

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5758
  %cmp15 = icmp ule i64 %7, 16, !dbg !5760
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5761

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5762
  br label %return, !dbg !5762

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5763
  %cmp18 = icmp ule i64 %8, 32, !dbg !5765
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5766

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5767
  br label %return, !dbg !5767

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5768
  %cmp21 = icmp ule i64 %9, 64, !dbg !5770
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5771

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5772
  br label %return, !dbg !5772

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5773
  %cmp24 = icmp ule i64 %10, 128, !dbg !5775
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5776

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5777
  br label %return, !dbg !5777

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5778
  %cmp27 = icmp ule i64 %11, 256, !dbg !5780
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5781

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5782
  br label %return, !dbg !5782

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5783
  %cmp30 = icmp ule i64 %12, 512, !dbg !5785
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5786

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5787
  br label %return, !dbg !5787

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5788
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5790
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5791

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5792
  br label %return, !dbg !5792

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5793
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5795
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5796

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5797
  br label %return, !dbg !5797

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5798
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5800
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5801

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5802
  br label %return, !dbg !5802

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5803
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5805
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5806

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5808
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5810
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5811

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5812
  br label %return, !dbg !5812

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5813
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5815
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5816

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5817
  br label %return, !dbg !5817

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5818
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5820
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5821

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5822
  br label %return, !dbg !5822

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5823
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5825
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5826

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5827
  br label %return, !dbg !5827

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5828
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5830
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5831

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5833
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5835
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5836

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5838
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5840
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5841

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5842
  br label %return, !dbg !5842

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5843
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5845
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5846

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5847
  br label %return, !dbg !5847

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5848, !range !5850, !noundef !889
  %tobool69 = trunc i8 %25 to i1, !dbg !5848
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5851

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5852

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #20, !dbg !5853, !srcloc !5856
  unreachable, !dbg !5853

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5857

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5858

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5859

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5861

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5859

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !5863, !srcloc !5865
  br label %do.end75, !dbg !5863

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5859

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5867
  ret i32 %26, !dbg !5867
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5868 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !5874 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5878, metadata !DIExpression()), !dbg !5880
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5879, metadata !DIExpression()), !dbg !5881
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5882
  %and = and i32 %0, 17, !dbg !5882
  %cmp = icmp eq i32 %and, 0, !dbg !5882
  %lnot = xor i1 %cmp, true, !dbg !5882
  %lnot1 = xor i1 %lnot, true, !dbg !5882
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5882
  %conv = sext i32 %lnot.ext to i64, !dbg !5882
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5882
  %tobool = icmp ne i64 %expval, 0, !dbg !5882
  br i1 %tobool, label %if.then, label %if.end, !dbg !5884

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5885
  br label %return, !dbg !5885

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5886
  %and2 = and i32 %1, 1, !dbg !5888
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5888
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5889

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5890
  br label %return, !dbg !5890

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5891
  br label %return, !dbg !5891

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5893
  ret i32 %2, !dbg !5893
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5894 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5895 dso_local void @__compiletime_assert_196() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #6 align 16 !dbg !5896 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !5901, metadata !DIExpression()), !dbg !5902
  %0 = load i8, ptr %c.addr, align 1, !dbg !5903
  %conv = zext i8 %0 to i32, !dbg !5903
  %idxprom = sext i32 %conv to i64, !dbg !5903
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !5903
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5903
  %conv1 = zext i8 %1 to i32, !dbg !5903
  %and = and i32 %conv1, 1, !dbg !5903
  %cmp = icmp ne i32 %and, 0, !dbg !5903
  br i1 %cmp, label %if.then, label %if.end, !dbg !5905

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !5906
  %conv3 = zext i8 %2 to i32, !dbg !5906
  %sub = sub i32 %conv3, -32, !dbg !5906
  %conv4 = trunc i32 %sub to i8, !dbg !5906
  store i8 %conv4, ptr %c.addr, align 1, !dbg !5906
  br label %if.end, !dbg !5907

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !5908
  ret i8 %3, !dbg !5909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_free_card_ids(ptr noundef %card) #0 align 16 !dbg !5910 {
entry:
  %card.addr = alloca ptr, align 8
  %id = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !5912, metadata !DIExpression()), !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #15, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5913, metadata !DIExpression()), !dbg !5917
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !5918
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5914, metadata !DIExpression()), !dbg !5919
  %0 = load ptr, ptr %card.addr, align 8, !dbg !5920
  %id1 = getelementptr inbounds %struct.pnp_card, ptr %0, i32 0, i32 6, !dbg !5921
  %1 = load ptr, ptr %id1, align 8, !dbg !5921
  store ptr %1, ptr %id, align 8, !dbg !5922
  br label %while.cond, !dbg !5923

while.cond:                                       ; preds = %while.body, %entry
  %2 = load ptr, ptr %id, align 8, !dbg !5924
  %tobool = icmp ne ptr %2, null, !dbg !5923
  br i1 %tobool, label %while.body, label %while.end, !dbg !5923

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %id, align 8, !dbg !5925
  %next2 = getelementptr inbounds %struct.pnp_id, ptr %3, i32 0, i32 1, !dbg !5927
  %4 = load ptr, ptr %next2, align 8, !dbg !5927
  store ptr %4, ptr %next, align 8, !dbg !5928
  %5 = load ptr, ptr %id, align 8, !dbg !5929
  call void @kfree(ptr noundef %5) #17, !dbg !5930
  %6 = load ptr, ptr %next, align 8, !dbg !5931
  store ptr %6, ptr %id, align 8, !dbg !5932
  br label %while.cond, !dbg !5923, !llvm.loop !5933

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !5935
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #15, !dbg !5935
  ret void, !dbg !5935
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5936 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5941 dso_local void @device_remove_file(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @name_show(ptr noundef %dmdev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5944 {
entry:
  %dmdev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %card = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !5946, metadata !DIExpression()), !dbg !5953
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5947, metadata !DIExpression()), !dbg !5954
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5948, metadata !DIExpression()), !dbg !5955
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #15, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5949, metadata !DIExpression()), !dbg !5957
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5958
  store ptr %0, ptr %str, align 8, !dbg !5957
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #15, !dbg !5959
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5950, metadata !DIExpression()), !dbg !5960
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5961
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5951, metadata !DIExpression()), !dbg !5961
  %1 = load ptr, ptr %dmdev.addr, align 8, !dbg !5961
  store ptr %1, ptr %__mptr, align 8, !dbg !5961
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5961
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5961
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5961
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5962
  %3 = load ptr, ptr %tmp, align 8, !dbg !5961
  store ptr %3, ptr %card, align 8, !dbg !5960
  %4 = load ptr, ptr %str, align 8, !dbg !5963
  %5 = load ptr, ptr %card, align 8, !dbg !5964
  %name = getelementptr inbounds %struct.pnp_card, ptr %5, i32 0, i32 7, !dbg !5965
  %arraydecay = getelementptr inbounds [50 x i8], ptr %name, i64 0, i64 0, !dbg !5964
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.5, ptr noundef %arraydecay) #17, !dbg !5966
  %6 = load ptr, ptr %str, align 8, !dbg !5967
  %idx.ext = sext i32 %call to i64, !dbg !5967
  %add.ptr1 = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !5967
  store ptr %add.ptr1, ptr %str, align 8, !dbg !5967
  %7 = load ptr, ptr %str, align 8, !dbg !5968
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5969
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !5970
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !5970
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5970
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #15, !dbg !5971
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #15, !dbg !5971
  ret i64 %sub.ptr.sub, !dbg !5972
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5973 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @card_id_show(ptr noundef %dmdev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5977 {
entry:
  %dmdev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %str = alloca ptr, align 8
  %card = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pos = alloca ptr, align 8
  store ptr %dmdev, ptr %dmdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dmdev.addr, metadata !5979, metadata !DIExpression()), !dbg !5987
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5980, metadata !DIExpression()), !dbg !5988
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5981, metadata !DIExpression()), !dbg !5989
  call void @llvm.lifetime.start.p0(i64 8, ptr %str) #15, !dbg !5990
  call void @llvm.dbg.declare(metadata ptr %str, metadata !5982, metadata !DIExpression()), !dbg !5991
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5992
  store ptr %0, ptr %str, align 8, !dbg !5991
  call void @llvm.lifetime.start.p0(i64 8, ptr %card) #15, !dbg !5993
  call void @llvm.dbg.declare(metadata ptr %card, metadata !5983, metadata !DIExpression()), !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5995
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5984, metadata !DIExpression()), !dbg !5995
  %1 = load ptr, ptr %dmdev.addr, align 8, !dbg !5995
  store ptr %1, ptr %__mptr, align 8, !dbg !5995
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5995
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5995
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5995
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5996
  %3 = load ptr, ptr %tmp, align 8, !dbg !5995
  store ptr %3, ptr %card, align 8, !dbg !5994
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !5986, metadata !DIExpression()), !dbg !5998
  %4 = load ptr, ptr %card, align 8, !dbg !5999
  %id = getelementptr inbounds %struct.pnp_card, ptr %4, i32 0, i32 6, !dbg !6000
  %5 = load ptr, ptr %id, align 8, !dbg !6000
  store ptr %5, ptr %pos, align 8, !dbg !5998
  br label %while.cond, !dbg !6001

while.cond:                                       ; preds = %while.body, %entry
  %6 = load ptr, ptr %pos, align 8, !dbg !6002
  %tobool = icmp ne ptr %6, null, !dbg !6001
  br i1 %tobool, label %while.body, label %while.end, !dbg !6001

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %str, align 8, !dbg !6003
  %8 = load ptr, ptr %pos, align 8, !dbg !6005
  %id1 = getelementptr inbounds %struct.pnp_id, ptr %8, i32 0, i32 0, !dbg !6006
  %arraydecay = getelementptr inbounds [8 x i8], ptr %id1, i64 0, i64 0, !dbg !6005
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef @.str.5, ptr noundef %arraydecay) #17, !dbg !6007
  %9 = load ptr, ptr %str, align 8, !dbg !6008
  %idx.ext = sext i32 %call to i64, !dbg !6008
  %add.ptr2 = getelementptr i8, ptr %9, i64 %idx.ext, !dbg !6008
  store ptr %add.ptr2, ptr %str, align 8, !dbg !6008
  %10 = load ptr, ptr %pos, align 8, !dbg !6009
  %next = getelementptr inbounds %struct.pnp_id, ptr %10, i32 0, i32 1, !dbg !6010
  %11 = load ptr, ptr %next, align 8, !dbg !6010
  store ptr %11, ptr %pos, align 8, !dbg !6011
  br label %while.cond, !dbg !6001, !llvm.loop !6012

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %str, align 8, !dbg !6014
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6015
  %sub.ptr.lhs.cast = ptrtoint ptr %12 to i64, !dbg !6016
  %sub.ptr.rhs.cast = ptrtoint ptr %13 to i64, !dbg !6016
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6016
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !6017
  call void @llvm.lifetime.end.p0(i64 8, ptr %card) #15, !dbg !6017
  call void @llvm.lifetime.end.p0(i64 8, ptr %str) #15, !dbg !6017
  ret i64 %sub.ptr.sub, !dbg !6018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6019 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6023, metadata !DIExpression()), !dbg !6026
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6024, metadata !DIExpression()), !dbg !6027
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6025, metadata !DIExpression()), !dbg !6028
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6029
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6031
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6032
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6033
  br i1 %call, label %if.end, label %if.then, !dbg !6034

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6035

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6036
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6037
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6038
  store ptr %3, ptr %prev1, align 8, !dbg !6039
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6040
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6041
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6042
  store ptr %5, ptr %next2, align 8, !dbg !6043
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6044
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6045
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6046
  store ptr %7, ptr %prev3, align 8, !dbg !6047
  br label %do.body, !dbg !6048

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6049

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6051

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6049

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6053
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6053
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6053
  store volatile ptr %9, ptr %next6, align 8, !dbg !6053
  br label %do.end7, !dbg !6053

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6049

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6055
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6056 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6060, metadata !DIExpression()), !dbg !6063
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6061, metadata !DIExpression()), !dbg !6064
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6062, metadata !DIExpression()), !dbg !6065
  ret i1 true, !dbg !6066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @match_card(ptr noundef %drv, ptr noundef %card) #0 align 16 !dbg !6067 {
entry:
  %retval = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %card.addr = alloca ptr, align 8
  %drv_id = alloca ptr, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !6071, metadata !DIExpression()), !dbg !6089
  store ptr %card, ptr %card.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %card.addr, metadata !6072, metadata !DIExpression()), !dbg !6090
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_id) #15, !dbg !6091
  call void @llvm.dbg.declare(metadata ptr %drv_id, metadata !6073, metadata !DIExpression()), !dbg !6092
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !6093
  %id_table = getelementptr inbounds %struct.pnp_card_driver, ptr %0, i32 0, i32 2, !dbg !6094
  %1 = load ptr, ptr %id_table, align 8, !dbg !6094
  store ptr %1, ptr %drv_id, align 8, !dbg !6092
  br label %while.cond, !dbg !6095

while.cond:                                       ; preds = %if.end35, %entry
  %2 = load ptr, ptr %drv_id, align 8, !dbg !6096
  %id = getelementptr inbounds %struct.pnp_card_device_id, ptr %2, i32 0, i32 0, !dbg !6097
  %arraydecay = getelementptr inbounds [8 x i8], ptr %id, i64 0, i64 0, !dbg !6098
  %3 = load i8, ptr %arraydecay, align 8, !dbg !6098
  %tobool = icmp ne i8 %3, 0, !dbg !6095
  br i1 %tobool, label %while.body, label %while.end, !dbg !6095

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %card.addr, align 8, !dbg !6099
  %id1 = getelementptr inbounds %struct.pnp_card, ptr %4, i32 0, i32 6, !dbg !6100
  %5 = load ptr, ptr %id1, align 8, !dbg !6100
  %6 = load ptr, ptr %drv_id, align 8, !dbg !6101
  %id2 = getelementptr inbounds %struct.pnp_card_device_id, ptr %6, i32 0, i32 0, !dbg !6102
  %arraydecay3 = getelementptr inbounds [8 x i8], ptr %id2, i64 0, i64 0, !dbg !6101
  %call = call i32 @compare_pnp_id(ptr noundef %5, ptr noundef %arraydecay3) #17, !dbg !6103
  %tobool4 = icmp ne i32 %call, 0, !dbg !6103
  br i1 %tobool4, label %if.then, label %if.end35, !dbg !6104

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6105
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6074, metadata !DIExpression()), !dbg !6106
  store i32 0, ptr %i, align 4, !dbg !6106
  br label %for.cond, !dbg !6107

for.cond:                                         ; preds = %cleanup.cont, %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #15, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %found, metadata !6078, metadata !DIExpression()), !dbg !6109
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6082, metadata !DIExpression()), !dbg !6111
  %7 = load i32, ptr %i, align 4, !dbg !6112
  %cmp = icmp eq i32 %7, 8, !dbg !6114
  br i1 %cmp, label %if.then8, label %lor.lhs.false, !dbg !6115

lor.lhs.false:                                    ; preds = %for.cond
  %8 = load ptr, ptr %drv_id, align 8, !dbg !6116
  %devs = getelementptr inbounds %struct.pnp_card_device_id, ptr %8, i32 0, i32 2, !dbg !6117
  %9 = load i32, ptr %i, align 4, !dbg !6118
  %idxprom = sext i32 %9 to i64, !dbg !6116
  %arrayidx = getelementptr [8 x %struct.anon.13], ptr %devs, i64 0, i64 %idxprom, !dbg !6116
  %id5 = getelementptr inbounds %struct.anon.13, ptr %arrayidx, i32 0, i32 0, !dbg !6119
  %arraydecay6 = getelementptr inbounds [8 x i8], ptr %id5, i64 0, i64 0, !dbg !6120
  %10 = load i8, ptr %arraydecay6, align 8, !dbg !6120
  %tobool7 = icmp ne i8 %10, 0, !dbg !6120
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !6121

if.then8:                                         ; preds = %lor.lhs.false, %for.cond
  %11 = load ptr, ptr %drv_id, align 8, !dbg !6122
  store ptr %11, ptr %retval, align 8, !dbg !6123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6123

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %found, align 4, !dbg !6124
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6125
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6083, metadata !DIExpression()), !dbg !6125
  %12 = load ptr, ptr %card.addr, align 8, !dbg !6125
  %devices = getelementptr inbounds %struct.pnp_card, ptr %12, i32 0, i32 4, !dbg !6125
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !6125
  %13 = load ptr, ptr %next, align 8, !dbg !6125
  store ptr %13, ptr %__mptr, align 8, !dbg !6125
  %14 = load ptr, ptr %__mptr, align 8, !dbg !6125
  %add.ptr = getelementptr i8, ptr %14, i64 -776, !dbg !6125
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6125
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6126
  %15 = load ptr, ptr %tmp, align 8, !dbg !6125
  store ptr %15, ptr %dev, align 8, !dbg !6126
  br label %for.cond9, !dbg !6126

for.cond9:                                        ; preds = %for.inc, %if.end
  %16 = load ptr, ptr %dev, align 8, !dbg !6127
  %card_list = getelementptr inbounds %struct.pnp_dev, ptr %16, i32 0, i32 6, !dbg !6127
  %17 = load ptr, ptr %card.addr, align 8, !dbg !6127
  %devices10 = getelementptr inbounds %struct.pnp_card, ptr %17, i32 0, i32 4, !dbg !6127
  %cmp11 = icmp eq ptr %card_list, %devices10, !dbg !6127
  %lnot = xor i1 %cmp11, true, !dbg !6127
  br i1 %lnot, label %for.body, label %for.end, !dbg !6126

for.body:                                         ; preds = %for.cond9
  %18 = load ptr, ptr %dev, align 8, !dbg !6128
  %id12 = getelementptr inbounds %struct.pnp_dev, ptr %18, i32 0, i32 12, !dbg !6131
  %19 = load ptr, ptr %id12, align 8, !dbg !6131
  %20 = load ptr, ptr %drv_id, align 8, !dbg !6132
  %devs13 = getelementptr inbounds %struct.pnp_card_device_id, ptr %20, i32 0, i32 2, !dbg !6133
  %21 = load i32, ptr %i, align 4, !dbg !6134
  %idxprom14 = sext i32 %21 to i64, !dbg !6132
  %arrayidx15 = getelementptr [8 x %struct.anon.13], ptr %devs13, i64 0, i64 %idxprom14, !dbg !6132
  %id16 = getelementptr inbounds %struct.anon.13, ptr %arrayidx15, i32 0, i32 0, !dbg !6135
  %arraydecay17 = getelementptr inbounds [8 x i8], ptr %id16, i64 0, i64 0, !dbg !6132
  %call18 = call i32 @compare_pnp_id(ptr noundef %19, ptr noundef %arraydecay17) #17, !dbg !6136
  %tobool19 = icmp ne i32 %call18, 0, !dbg !6136
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !6137

if.then20:                                        ; preds = %for.body
  store i32 1, ptr %found, align 4, !dbg !6138
  br label %for.end, !dbg !6140

if.end21:                                         ; preds = %for.body
  br label %for.inc, !dbg !6141

for.inc:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #15, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !6086, metadata !DIExpression()), !dbg !6142
  %22 = load ptr, ptr %dev, align 8, !dbg !6142
  %card_list23 = getelementptr inbounds %struct.pnp_dev, ptr %22, i32 0, i32 6, !dbg !6142
  %next24 = getelementptr inbounds %struct.list_head, ptr %card_list23, i32 0, i32 0, !dbg !6142
  %23 = load ptr, ptr %next24, align 8, !dbg !6142
  store ptr %23, ptr %__mptr22, align 8, !dbg !6142
  %24 = load ptr, ptr %__mptr22, align 8, !dbg !6142
  %add.ptr26 = getelementptr i8, ptr %24, i64 -776, !dbg !6142
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !6142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #15, !dbg !6127
  %25 = load ptr, ptr %tmp25, align 8, !dbg !6142
  store ptr %25, ptr %dev, align 8, !dbg !6127
  br label %for.cond9, !dbg !6127, !llvm.loop !6143

for.end:                                          ; preds = %if.then20, %for.cond9
  %26 = load i32, ptr %found, align 4, !dbg !6145
  %tobool27 = icmp ne i32 %26, 0, !dbg !6145
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !6147

if.then28:                                        ; preds = %for.end
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6148

if.end29:                                         ; preds = %for.end
  %27 = load i32, ptr %i, align 4, !dbg !6149
  %inc = add i32 %27, 1, !dbg !6149
  store i32 %inc, ptr %i, align 4, !dbg !6149
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6150
  br label %cleanup, !dbg !6150

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #15, !dbg !6150
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup32 [
    i32 0, label %cleanup.cont
    i32 4, label %for.end31
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !6151, !llvm.loop !6152

for.end31:                                        ; preds = %cleanup
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6155
  br label %cleanup32, !dbg !6155

cleanup32:                                        ; preds = %for.end31, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6155
  %cleanup.dest33 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest33, label %cleanup36 [
    i32 0, label %cleanup.cont34
  ]

cleanup.cont34:                                   ; preds = %cleanup32
  br label %if.end35, !dbg !6156

if.end35:                                         ; preds = %cleanup.cont34, %while.body
  %28 = load ptr, ptr %drv_id, align 8, !dbg !6157
  %incdec.ptr = getelementptr %struct.pnp_card_device_id, ptr %28, i32 1, !dbg !6157
  store ptr %incdec.ptr, ptr %drv_id, align 8, !dbg !6157
  br label %while.cond, !dbg !6095, !llvm.loop !6158

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !6160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup36, !dbg !6160

cleanup36:                                        ; preds = %while.end, %cleanup32
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_id) #15, !dbg !6161
  %29 = load ptr, ptr %retval, align 8, !dbg !6161
  ret ptr %29, !dbg !6161
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6162 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6164, metadata !DIExpression()), !dbg !6165
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6166
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6168
  br i1 %call, label %if.end, label %if.then, !dbg !6169

if.then:                                          ; preds = %entry
  br label %return, !dbg !6170

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6171
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6172
  %2 = load ptr, ptr %prev, align 8, !dbg !6172
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6173
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6174
  %4 = load ptr, ptr %next, align 8, !dbg !6174
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6175
  br label %return, !dbg !6176

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6177 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6181, metadata !DIExpression()), !dbg !6182
  ret i1 true, !dbg !6183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6184 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6186, metadata !DIExpression()), !dbg !6188
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6187, metadata !DIExpression()), !dbg !6189
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6190
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6191
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6192
  store ptr %0, ptr %prev1, align 8, !dbg !6193
  br label %do.body, !dbg !6194

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6195

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6197

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6195

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6199
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6199
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6199
  store volatile ptr %2, ptr %next4, align 8, !dbg !6199
  br label %do.end5, !dbg !6199

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6195

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6201
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779}
!llvm.ident = !{!4780}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pnp_cards", scope: !2, file: !3, line: 16, type: !176, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.card.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22card\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/card.ll drivers/pnp/card.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4715, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pnp/card.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa2af6fb96aa236cd11186660690f19b")
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
!156 = !{!157, !159, !160, !4666, !4608, !309, !109, !221, !4713}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !7)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !162, line: 243, size: 7744, elements: !163)
!162 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!163 = !{!164, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4607, !4634, !4660, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !161, file: !162, line: 244, baseType: !165, size: 5824)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !166)
!166 = !{!167, !4113, !4115, !4118, !4119, !4172, !4257, !4258, !4259, !4260, !4261, !4268, !4360, !4373, !4383, !4387, !4389, !4390, !4391, !4395, !4402, !4403, !4406, !4409, !4413, !4517, !4518, !4519, !4520, !4521, !4522, !4552, !4553, !4554, !4557, !4560, !4569, !4570, !4571, !4572, !4573, !4574}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !94, line: 706, baseType: !168, size: 512)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !169, line: 64, size: 512, elements: !170)
!169 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!170 = !{!171, !175, !181, !183, !272, !4000, !4103, !4108, !4109, !4110, !4111, !4112}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !168, file: !169, line: 65, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !168, file: !169, line: 66, baseType: !176, size: 128, offset: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !177)
!177 = !{!178, !180}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !176, file: !158, line: 191, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !176, file: !158, line: 191, baseType: !179, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !168, file: !169, line: 67, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !168, file: !169, line: 68, baseType: !184, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !169, line: 168, size: 768, elements: !186)
!186 = !{!187, !188, !231, !232}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !169, line: 169, baseType: !176, size: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !185, file: !169, line: 170, baseType: !189, size: 32, offset: 128)
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
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !210, file: !158, line: 173, baseType: !109, size: 32)
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
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !185, file: !169, line: 171, baseType: !168, size: 512, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !185, file: !169, line: 172, baseType: !233, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !169, line: 133, size: 192, elements: !236)
!236 = !{!237, !244, !249}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !235, file: !169, line: 134, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!109, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !169, line: 135, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!172, !242}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !235, file: !169, line: 136, baseType: !250, size: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!109, !242, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !169, line: 125, size: 20736, elements: !256)
!256 = !{!257, !262, !266, !267, !271}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !255, file: !169, line: 126, baseType: !258, size: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 192, elements: !260)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!260 = !{!261}
!261 = !DISubrange(count: 3)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !255, file: !169, line: 127, baseType: !263, size: 4096, offset: 192)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 4096, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !255, file: !169, line: 128, baseType: !109, size: 32, offset: 4288)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !169, line: 129, baseType: !268, size: 16384, offset: 4320)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 16384, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 2048)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !255, file: !169, line: 130, baseType: !109, size: 32, offset: 20704)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !168, file: !169, line: 69, baseType: !273, size: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !169, line: 116, size: 384, elements: !276)
!276 = !{!277, !281, !310, !3962, !3990, !3994}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !275, file: !169, line: 117, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{null, !182}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !275, file: !169, line: 118, baseType: !282, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !285, line: 254, size: 128, elements: !286)
!285 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!286 = !{!287, !302}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !284, file: !285, line: 255, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !182, !296, !259}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !293, line: 73, baseType: !294)
!293 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !293, line: 15, baseType: !295)
!295 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !285, line: 30, size: 128, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !285, line: 31, baseType: !172, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !297, file: !285, line: 32, baseType: !301, size: 16, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !229)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !284, file: !285, line: 256, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!291, !182, !296, !172, !306}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !293, line: 72, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !293, line: 16, baseType: !309)
!309 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !275, file: !169, line: 119, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !285, line: 84, size: 320, elements: !315)
!315 = !{!316, !317, !321, !3958, !3960}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !285, line: 85, baseType: !172, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !314, file: !285, line: 86, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!301, !182, !296, !109}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !314, file: !285, line: 88, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!301, !182, !325, !109}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !285, line: 175, size: 512, elements: !327)
!327 = !{!328, !329, !330, !331, !3949, !3953, !3954}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !326, file: !285, line: 176, baseType: !297, size: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !326, file: !285, line: 177, baseType: !306, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !326, file: !285, line: 178, baseType: !159, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !326, file: !285, line: 179, baseType: !332, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !337)
!337 = !{!338, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3943, !3944, !3945, !3946, !3947, !3948}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !336, file: !14, line: 473, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !341)
!341 = !{!342, !343, !344, !352, !353, !360, !361, !364, !365, !3722, !3723, !3724, !3725, !3726, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3766, !3769, !3770, !3771, !3780, !3781, !3782, !3783}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !340, file: !14, line: 642, baseType: !301, size: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !340, file: !14, line: 643, baseType: !229, size: 16, offset: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !340, file: !14, line: 644, baseType: !345, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !346, line: 23, baseType: !347)
!346 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 21, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !347, file: !346, line: 22, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !293, line: 49, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !340, file: !14, line: 645, baseType: !176, size: 128, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !340, file: !14, line: 646, baseType: !354, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !346, line: 28, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 26, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !355, file: !346, line: 27, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !359)
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
!369 = !{!370, !3550, !3560, !3564, !3568, !3572, !3576, !3580, !3584, !3588, !3592, !3593, !3597, !3601, !3638, !3667, !3671, !3677, !3681, !3685, !3689, !3693, !3697, !3703, !3707}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !368, file: !14, line: 1967, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !339, !374, !7}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !376, line: 82, size: 1536, elements: !377)
!376 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!377 = !{!378, !379, !389, !397, !398, !418, !419, !423, !436, !3533, !3534, !3535, !3536, !3542, !3543, !3544}
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
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !432, file: !425, line: 32, baseType: !109, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !375, file: !376, line: 95, baseType: !437, size: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !376, line: 128, size: 1024, align: 512, elements: !440)
!440 = !{!441, !445, !446, !453, !459, !463, !467, !471, !472, !476, !480, !3523, !3527}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !439, file: !376, line: 129, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!109, !374, !7}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !439, file: !376, line: 130, baseType: !442, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !439, file: !376, line: 131, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!109, !450, !452}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !439, file: !376, line: 132, baseType: !454, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!109, !450, !7, !172, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !439, file: !376, line: 134, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!109, !450}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !439, file: !376, line: 135, baseType: !464, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!109, !374}
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
!479 = !{!259, !374, !259, !109}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !439, file: !376, line: 140, baseType: !481, size: 64, offset: 640)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !3522}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !486, line: 70, size: 256, elements: !487)
!486 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!487 = !{!488, !489, !3518, !3519}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !485, file: !486, line: 71, baseType: !374, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !485, file: !486, line: 72, baseType: !490, size: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !492)
!492 = !{!493, !494, !497, !498, !499, !503, !983, !1122, !1162, !1252, !1256, !1257, !1258, !1259, !1260, !1269, !1270, !1271, !1272, !1277, !1281, !1282, !1285, !1288, !1291, !1294, !1295, !1296, !1337, !3451, !3452, !3453, !3454, !3455, !3456, !3459, !3461, !3468, !3469, !3470, !3471, !3472, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !491, file: !14, line: 1191, baseType: !176, size: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !491, file: !14, line: 1192, baseType: !495, size: 32, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !491, file: !14, line: 1193, baseType: !221, size: 8, offset: 160)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !491, file: !14, line: 1194, baseType: !309, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !491, file: !14, line: 1195, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !293, line: 88, baseType: !502)
!502 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !491, file: !14, line: 1196, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !506)
!506 = !{!507, !508, !509, !516, !520, !524, !528, !968, !969, !973, !975, !976, !977, !979, !980, !981, !982}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !505, file: !14, line: 2367, baseType: !172, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !505, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !505, file: !14, line: 2376, baseType: !510, size: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!109, !513}
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
!523 = !{!374, !504, !109, !172, !159}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !505, file: !14, line: 2380, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !490}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !14, line: 2381, baseType: !529, size: 64, offset: 384)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !531)
!531 = !{!532, !533, !534, !538, !560, !586, !587, !588, !589, !593, !598, !599, !619, !675, !676, !677, !678, !679, !682, !683, !684, !692, !696, !723, !744, !745, !746, !747, !756, !779, !780, !783, !786, !787, !788, !789, !790, !791, !792, !797, !798, !926, !934, !935, !936, !938, !942, !943, !947, !948, !949, !950, !952, !953, !954, !961, !962, !963, !967}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !530, file: !6, line: 403, baseType: !5, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !530, file: !6, line: 406, baseType: !176, size: 128, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !6, line: 409, baseType: !535, size: 448, offset: 192)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 448, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 56)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !530, file: !6, line: 417, baseType: !539, size: 768, offset: 640)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !540)
!540 = !{!541, !542, !543, !544, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !539, file: !6, line: 46, baseType: !168, size: 512)
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
!559 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !554, file: !555, line: 45, baseType: !176, size: 128, offset: 64)
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
!573 = !{!291, !561, !569, !172, !306}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !562, file: !6, line: 59, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !529, !172}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !562, file: !6, line: 60, baseType: !579, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!109, !529}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !562, file: !6, line: 61, baseType: !583, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !529}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !530, file: !6, line: 419, baseType: !172, size: 64, offset: 1472)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !530, file: !6, line: 420, baseType: !172, size: 64, offset: 1536)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !530, file: !6, line: 421, baseType: !182, size: 64, offset: 1600)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !530, file: !6, line: 424, baseType: !590, size: 64, offset: 1664)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !530, file: !6, line: 425, baseType: !594, size: 64, offset: 1728)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !218, line: 20, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !220, line: 26, baseType: !109)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !530, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !530, file: !6, line: 435, baseType: !600, size: 256, offset: 1856)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !601, line: 66, size: 256, elements: !602)
!601 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!602 = !{!603, !612, !613, !618}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !600, file: !601, line: 67, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !605, line: 13, baseType: !606)
!605 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !608)
!608 = !{!609}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !607, file: !158, line: 180, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !218, line: 22, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !220, line: 30, baseType: !502)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !600, file: !601, line: 68, baseType: !558, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !600, file: !601, line: 70, baseType: !614, size: 32, offset: 96)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !615, line: 15, size: 32, elements: !616)
!615 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!616 = !{!617}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !614, file: !615, line: 20, baseType: !209, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !600, file: !601, line: 72, baseType: !176, size: 128, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !530, file: !6, line: 437, baseType: !620, size: 64, offset: 2112)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !622, line: 69, size: 320, elements: !623)
!622 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!623 = !{!624, !625, !626, !646, !648, !652, !653}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !621, file: !622, line: 70, baseType: !172, size: 64)
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
!635 = !{!109, !172, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !629, file: !622, line: 53, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!109, !259, !636}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !629, file: !622, line: 55, baseType: !643, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !159}
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
!656 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !654, file: !622, line: 77, baseType: !159, size: 64)
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
!674 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !667, file: !622, line: 98, baseType: !159, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !530, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !530, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !530, file: !6, line: 442, baseType: !590, size: 64, offset: 2240)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !530, file: !6, line: 443, baseType: !594, size: 64, offset: 2304)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !530, file: !6, line: 444, baseType: !680, size: 8, offset: 2368)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !681)
!681 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !530, file: !6, line: 451, baseType: !680, size: 8, offset: 2376)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !530, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !530, file: !6, line: 455, baseType: !685, size: 64, offset: 2432)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !687, line: 23, size: 96, elements: !688)
!687 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!688 = !{!689, !690, !691}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !686, file: !687, line: 24, baseType: !109, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !686, file: !687, line: 24, baseType: !109, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !686, file: !687, line: 24, baseType: !109, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !530, file: !6, line: 458, baseType: !693, size: 64, offset: 2496)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!109}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !530, file: !6, line: 460, baseType: !697, size: 4032, align: 512, offset: 2560)
!697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 4032, elements: !721)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !699)
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !698, file: !6, line: 363, baseType: !159, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !698, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !698, file: !6, line: 367, baseType: !703, size: 448, offset: 128)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !703, file: !6, line: 320, baseType: !529, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !703, file: !6, line: 321, baseType: !707, size: 384, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !708, line: 40, size: 384, elements: !709)
!708 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !707, file: !708, line: 41, baseType: !711, size: 384, align: 64)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !712, size: 384, align: 64, elements: !719)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !713, line: 5, size: 192, align: 64, elements: !714)
!713 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!714 = !{!715, !716, !718}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !712, file: !713, line: 6, baseType: !309, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !712, file: !713, line: 7, baseType: !717, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !712, file: !713, line: 8, baseType: !717, size: 64, offset: 128)
!719 = !{!720}
!720 = !DISubrange(count: 2)
!721 = !{!722}
!722 = !DISubrange(count: 7)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !530, file: !6, line: 463, baseType: !724, size: 192, offset: 6592)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !725, line: 8, size: 192, elements: !726)
!725 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!726 = !{!727, !728, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !724, file: !725, line: 10, baseType: !7, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !724, file: !725, line: 11, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !724, file: !725, line: 12, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !733, line: 59, size: 48, elements: !734)
!733 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!734 = !{!735, !739, !740, !741, !742, !743}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !732, file: !733, line: 60, baseType: !736, size: 16)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !218, line: 18, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !220, line: 23, baseType: !738)
!738 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !732, file: !733, line: 61, baseType: !736, size: 16, offset: 16)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !732, file: !733, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !732, file: !733, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !732, file: !733, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !732, file: !733, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !530, file: !6, line: 465, baseType: !309, size: 64, offset: 6784)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !530, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !530, file: !6, line: 470, baseType: !176, size: 128, offset: 6912)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !530, file: !6, line: 471, baseType: !748, size: 64, offset: 7040)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !750, line: 33, size: 96, elements: !751)
!750 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!751 = !{!752, !753, !754, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !749, file: !750, line: 37, baseType: !109, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !749, file: !750, line: 43, baseType: !109, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !749, file: !750, line: 45, baseType: !229, size: 16, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !750, line: 47, baseType: !229, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !530, file: !6, line: 476, baseType: !757, size: 64, offset: 7104)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !759)
!759 = !{!760, !776, !777, !778}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !758, file: !6, line: 379, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !763, line: 204, baseType: !764)
!763 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !763, line: 197, size: 192, elements: !765)
!765 = !{!766, !768, !769, !770, !772, !774}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !764, file: !763, line: 198, baseType: !767, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !763, line: 21, baseType: !409)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !764, file: !763, line: 199, baseType: !221, size: 8, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !764, file: !763, line: 200, baseType: !221, size: 8, offset: 40)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !764, file: !763, line: 201, baseType: !771, size: 16, offset: 48)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !763, line: 17, baseType: !228)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !764, file: !763, line: 202, baseType: !773, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !763, line: 16, baseType: !413)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !764, file: !763, line: 203, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !763, line: 22, baseType: !413)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !758, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !758, file: !6, line: 381, baseType: !259, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !758, file: !6, line: 382, baseType: !259, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !530, file: !6, line: 477, baseType: !758, size: 256, offset: 7168)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !530, file: !6, line: 480, baseType: !781, size: 64, offset: 7424)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !530, file: !6, line: 483, baseType: !784, size: 64, offset: 7488)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !530, file: !6, line: 488, baseType: !259, size: 64, offset: 7552)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !530, file: !6, line: 492, baseType: !159, size: 64, offset: 7616)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !530, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !530, file: !6, line: 495, baseType: !159, size: 64, offset: 7744)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !530, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !530, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !530, file: !6, line: 500, baseType: !793, size: 64, offset: 7872)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !795, line: 45, baseType: !796)
!795 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !530, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !530, file: !6, line: 504, baseType: !799, size: 64, offset: 8000)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !802, line: 96, size: 192, elements: !803)
!802 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!803 = !{!804, !805, !886, !890}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !801, file: !802, line: 97, baseType: !7, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !801, file: !802, line: 98, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !802, line: 24, size: 3072, elements: !808)
!808 = !{!809, !811, !812, !813, !814, !838, !839, !840, !841, !859, !871, !872, !883, !884, !885}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !807, file: !802, line: 26, baseType: !810, size: 128)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !719)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !807, file: !802, line: 27, baseType: !810, size: 128, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !807, file: !802, line: 28, baseType: !109, size: 32, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !807, file: !802, line: 31, baseType: !189, size: 32, align: 512, offset: 512)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !807, file: !802, line: 32, baseType: !815, size: 960, offset: 576)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !816, line: 206, size: 960, elements: !817)
!816 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!817 = !{!818, !827, !832, !834, !835, !837}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !815, file: !816, line: 207, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !158, line: 233, baseType: !819, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !820, file: !158, line: 234, baseType: !824, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !819}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !815, file: !816, line: 208, baseType: !828, size: 256, offset: 64)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 256, elements: !830)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!830 = !{!831}
!831 = !DISubrange(count: 4)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !815, file: !816, line: 209, baseType: !833, size: 256, offset: 320)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !830)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !815, file: !816, line: 213, baseType: !295, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !815, file: !816, line: 215, baseType: !836, size: 256, offset: 640)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 256, elements: !830)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !816, line: 216, baseType: !217, size: 8, offset: 896)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !807, file: !802, line: 33, baseType: !309, size: 64, offset: 1536)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !807, file: !802, line: 34, baseType: !309, size: 64, offset: 1600)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !807, file: !802, line: 35, baseType: !680, size: 8, offset: 1664)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !807, file: !802, line: 36, baseType: !842, size: 320, offset: 1728)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !843, line: 11, size: 320, elements: !844)
!843 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!844 = !{!845, !852, !853, !858}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !842, file: !843, line: 16, baseType: !846, size: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !847)
!847 = !{!848, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !846, file: !158, line: 199, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !846, file: !158, line: 199, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !842, file: !843, line: 17, baseType: !309, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !842, file: !843, line: 18, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !843, line: 19, baseType: !408, size: 32, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !807, file: !802, line: 37, baseType: !860, size: 256, offset: 2048)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !861, line: 98, size: 256, elements: !862)
!861 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!862 = !{!863, !864, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !860, file: !861, line: 99, baseType: !604, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !860, file: !861, line: 100, baseType: !176, size: 128, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !860, file: !861, line: 101, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !861, line: 21, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !807, file: !802, line: 38, baseType: !820, size: 128, align: 64, offset: 2304)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !807, file: !802, line: 39, baseType: !873, size: 64, offset: 2432)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !802, line: 49, size: 768, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !874, file: !802, line: 50, baseType: !189, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !874, file: !802, line: 51, baseType: !833, size: 256, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !874, file: !802, line: 53, baseType: !833, size: 256, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !874, file: !802, line: 54, baseType: !309, size: 64, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !874, file: !802, line: 55, baseType: !873, size: 64, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !874, file: !802, line: 56, baseType: !109, size: 32, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !874, file: !802, line: 57, baseType: !109, size: 32, offset: 736)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !807, file: !802, line: 40, baseType: !309, size: 64, offset: 2496)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !807, file: !802, line: 42, baseType: !109, size: 32, offset: 2560)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !807, file: !802, line: 43, baseType: !800, size: 64, offset: 2624)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !801, file: !802, line: 99, baseType: !887, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !888, line: 211, elements: !889)
!888 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!889 = !{}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !801, file: !802, line: 100, baseType: !891, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !802, line: 63, size: 3008, elements: !893)
!893 = !{!894, !895, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !925}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !892, file: !802, line: 64, baseType: !873, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !892, file: !802, line: 65, baseType: !896, size: 192, offset: 64)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 192, elements: !260)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !892, file: !802, line: 67, baseType: !109, size: 32, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !892, file: !802, line: 68, baseType: !600, size: 256, offset: 320)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !892, file: !802, line: 69, baseType: !189, size: 32, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !892, file: !802, line: 70, baseType: !600, size: 256, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !892, file: !802, line: 71, baseType: !309, size: 64, offset: 896)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !892, file: !802, line: 72, baseType: !309, size: 64, offset: 960)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !892, file: !802, line: 73, baseType: !309, size: 64, offset: 1024)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !892, file: !802, line: 74, baseType: !309, size: 64, offset: 1088)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !892, file: !802, line: 75, baseType: !309, size: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !892, file: !802, line: 76, baseType: !309, size: 64, offset: 1216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !892, file: !802, line: 77, baseType: !309, size: 64, offset: 1280)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !892, file: !802, line: 78, baseType: !309, size: 64, offset: 1344)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !892, file: !802, line: 79, baseType: !680, size: 8, offset: 1408)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !892, file: !802, line: 80, baseType: !309, size: 64, offset: 1472)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !892, file: !802, line: 81, baseType: !600, size: 256, offset: 1536)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !892, file: !802, line: 82, baseType: !549, size: 256, offset: 1792)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !892, file: !802, line: 84, baseType: !209, size: 32, offset: 2048)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !892, file: !802, line: 87, baseType: !309, size: 64, offset: 2112)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !892, file: !802, line: 88, baseType: !309, size: 64, offset: 2176)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !892, file: !802, line: 89, baseType: !917, size: 704, offset: 2240)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !861, line: 111, size: 704, elements: !918)
!918 = !{!919, !920, !921, !924}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !917, file: !861, line: 112, baseType: !860, size: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !917, file: !861, line: 113, baseType: !842, size: 320, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !917, file: !861, line: 116, baseType: !922, size: 64, offset: 576)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !861, line: 18, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !917, file: !861, line: 117, baseType: !109, size: 32, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !892, file: !802, line: 90, baseType: !800, size: 64, offset: 2944)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !530, file: !6, line: 515, baseType: !927, size: 64, offset: 8064)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !929, line: 117, size: 128, elements: !930)
!929 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !928, file: !929, line: 118, baseType: !596, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !928, file: !929, line: 119, baseType: !596, size: 32, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !928, file: !929, line: 120, baseType: !295, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !530, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !530, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !530, file: !6, line: 520, baseType: !937, size: 64, offset: 8192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !530, file: !6, line: 523, baseType: !939, size: 64, offset: 8256)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !530, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !530, file: !6, line: 525, baseType: !944, size: 64, offset: 8384)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !530, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !530, file: !6, line: 533, baseType: !159, size: 64, offset: 8512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !530, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !530, file: !6, line: 535, baseType: !951, size: 64, offset: 8640)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !530, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !530, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !530, file: !6, line: 540, baseType: !955, size: 64, offset: 8768)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !957, line: 32, size: 64, elements: !958)
!957 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !956, file: !957, line: 33, baseType: !596, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !956, file: !957, line: 34, baseType: !596, size: 32, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !530, file: !6, line: 563, baseType: !176, size: 128, offset: 8832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !530, file: !6, line: 565, baseType: !176, size: 128, offset: 8960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !530, file: !6, line: 568, baseType: !964, size: 64, offset: 9088)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{null}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !530, file: !6, line: 570, baseType: !209, size: 32, offset: 9152)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !14, line: 2382, baseType: !504, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !505, file: !14, line: 2383, baseType: !970, size: 64, offset: 512)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !970, file: !158, line: 195, baseType: !849, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !505, file: !14, line: 2385, baseType: !974, offset: 576)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !888, line: 206, elements: !889)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !505, file: !14, line: 2386, baseType: !974, offset: 576)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !505, file: !14, line: 2387, baseType: !974, offset: 576)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !505, file: !14, line: 2388, baseType: !978, offset: 576)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, elements: !260)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !505, file: !14, line: 2390, baseType: !974, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !505, file: !14, line: 2391, baseType: !974, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !505, file: !14, line: 2392, baseType: !974, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !505, file: !14, line: 2393, baseType: !974, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !491, file: !14, line: 1197, baseType: !984, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !987)
!987 = !{!988, !992, !996, !997, !1001, !1007, !1011, !1012, !1013, !1017, !1021, !1025, !1026, !1027, !1033, !1037, !1038, !1045, !1046, !1047, !1048, !1052, !1056, !1105, !1120, !1121}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !986, file: !14, line: 2058, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{!339, !490}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !986, file: !14, line: 2059, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !339}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !986, file: !14, line: 2060, baseType: !993, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !986, file: !14, line: 2062, baseType: !998, size: 64, offset: 192)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !339, !109}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !986, file: !14, line: 2063, baseType: !1002, size: 64, offset: 256)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!109, !339, !1005}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !986, file: !14, line: 2064, baseType: !1008, size: 64, offset: 320)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!109, !339}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !986, file: !14, line: 2065, baseType: !993, size: 64, offset: 384)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !986, file: !14, line: 2066, baseType: !525, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !986, file: !14, line: 2067, baseType: !1014, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!109, !490, !109}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !986, file: !14, line: 2068, baseType: !1018, size: 64, offset: 576)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!109, !490, !13}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !986, file: !14, line: 2069, baseType: !1022, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!109, !490}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !986, file: !14, line: 2070, baseType: !1018, size: 64, offset: 704)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !986, file: !14, line: 2071, baseType: !1022, size: 64, offset: 768)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !986, file: !14, line: 2072, baseType: !1028, size: 64, offset: 832)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!109, !374, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !986, file: !14, line: 2073, baseType: !1034, size: 64, offset: 896)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!109, !490, !729, !259}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !986, file: !14, line: 2074, baseType: !525, size: 64, offset: 960)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !986, file: !14, line: 2076, baseType: !1039, size: 64, offset: 1024)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!109, !1042, !374}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1044, line: 66, flags: DIFlagFwdDecl)
!1044 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !986, file: !14, line: 2077, baseType: !1039, size: 64, offset: 1088)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !986, file: !14, line: 2078, baseType: !1039, size: 64, offset: 1152)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !986, file: !14, line: 2079, baseType: !1039, size: 64, offset: 1216)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !986, file: !14, line: 2081, baseType: !1049, size: 64, offset: 1280)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!291, !490, !109, !259, !306, !500}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !986, file: !14, line: 2082, baseType: !1053, size: 64, offset: 1344)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!291, !490, !109, !172, !306, !500}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !986, file: !14, line: 2083, baseType: !1057, size: 64, offset: 1408)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!1060, !339}
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1088, !1089, !1090}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1062, file: !19, line: 297, baseType: !846, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1062, file: !19, line: 298, baseType: !176, size: 128, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1062, file: !19, line: 299, baseType: !176, size: 128, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1062, file: !19, line: 300, baseType: !176, size: 128, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1062, file: !19, line: 301, baseType: !600, size: 256, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1062, file: !19, line: 302, baseType: !189, size: 32, offset: 768)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1062, file: !19, line: 303, baseType: !209, size: 32, offset: 800)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1062, file: !19, line: 304, baseType: !490, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1062, file: !19, line: 305, baseType: !1073, size: 64, offset: 896)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1074)
!1074 = !{!1075, !1087}
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !19, line: 69, baseType: !1076, size: 32)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !19, line: 69, size: 32, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1076, file: !19, line: 70, baseType: !345, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1076, file: !19, line: 71, baseType: !354, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1076, file: !19, line: 72, baseType: !1081, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1082, line: 24, baseType: !1083)
!1082 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1082, line: 22, size: 32, elements: !1084)
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1083, file: !1082, line: 23, baseType: !1086, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1082, line: 20, baseType: !351)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1073, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1062, file: !19, line: 306, baseType: !500, size: 64, offset: 960)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1062, file: !19, line: 307, baseType: !309, size: 64, offset: 1024)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1062, file: !19, line: 308, baseType: !1091, size: 576, offset: 1088)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1092)
!1092 = !{!1093, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1104}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1091, file: !19, line: 206, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !502)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1091, file: !19, line: 207, baseType: !1094, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1091, file: !19, line: 208, baseType: !1094, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1091, file: !19, line: 209, baseType: !1094, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1091, file: !19, line: 210, baseType: !1094, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1091, file: !19, line: 211, baseType: !1094, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1091, file: !19, line: 212, baseType: !1094, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1091, file: !19, line: 213, baseType: !1102, size: 64, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1103, line: 8, baseType: !611)
!1103 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1091, file: !19, line: 214, baseType: !1102, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !986, file: !14, line: 2085, baseType: !1106, size: 64, offset: 1472)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!295, !490, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1111, line: 15, size: 256, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1112 = !{!1113, !1114, !1115, !1116, !1117}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1110, file: !1111, line: 16, baseType: !157, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1110, file: !1111, line: 19, baseType: !109, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1110, file: !1111, line: 26, baseType: !309, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1110, file: !1111, line: 33, baseType: !309, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1110, file: !1111, line: 36, baseType: !1118, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !986, file: !14, line: 2087, baseType: !1106, size: 64, offset: 1536)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !986, file: !14, line: 2089, baseType: !525, size: 64, offset: 1600)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !491, file: !14, line: 1198, baseType: !1123, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1126)
!1126 = !{!1127, !1131, !1135, !1139, !1140, !1141, !1142, !1143, !1148, !1153, !1157}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1125, file: !19, line: 325, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!109, !1061}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1125, file: !19, line: 326, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!1061, !490, !109}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1125, file: !19, line: 327, baseType: !1136, size: 64, offset: 128)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !1061}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1125, file: !19, line: 328, baseType: !1128, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1125, file: !19, line: 329, baseType: !1128, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1125, file: !19, line: 330, baseType: !1128, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1125, file: !19, line: 331, baseType: !1014, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1125, file: !19, line: 334, baseType: !1144, size: 64, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1147, !339}
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1125, file: !19, line: 335, baseType: !1149, size: 64, offset: 512)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!109, !339, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1125, file: !19, line: 337, baseType: !1154, size: 64, offset: 576)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!109, !339, !1147}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1125, file: !19, line: 339, baseType: !1158, size: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!109, !490, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !491, file: !14, line: 1199, baseType: !1163, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1166)
!1166 = !{!1167, !1178, !1179, !1183, !1184, !1185, !1200, !1223, !1227, !1228, !1251}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1165, file: !19, line: 431, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!109, !490, !109, !109, !1171}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1174, line: 8, size: 128, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1173, file: !1174, line: 9, baseType: !484, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1173, file: !1174, line: 10, baseType: !374, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1165, file: !19, line: 432, baseType: !1014, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1165, file: !19, line: 433, baseType: !1180, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!109, !490, !7}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1165, file: !19, line: 434, baseType: !1180, size: 64, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1165, file: !19, line: 435, baseType: !1014, size: 64, offset: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1165, file: !19, line: 436, baseType: !1186, size: 64, offset: 320)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!109, !490, !109, !1189}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1190, file: !19, line: 418, baseType: !109, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1190, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1190, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1190, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1190, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1190, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1190, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1190, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1165, file: !19, line: 437, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!109, !490, !1073, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1205, file: !19, line: 346, baseType: !109, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1205, file: !19, line: 347, baseType: !412, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1205, file: !19, line: 348, baseType: !412, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1205, file: !19, line: 349, baseType: !412, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1205, file: !19, line: 350, baseType: !412, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1205, file: !19, line: 351, baseType: !412, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1205, file: !19, line: 352, baseType: !412, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1205, file: !19, line: 353, baseType: !610, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1205, file: !19, line: 355, baseType: !610, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1205, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1205, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1205, file: !19, line: 358, baseType: !412, size: 64, offset: 640)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1205, file: !19, line: 359, baseType: !412, size: 64, offset: 704)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1205, file: !19, line: 360, baseType: !412, size: 64, offset: 768)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1205, file: !19, line: 361, baseType: !610, size: 64, offset: 832)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1205, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1165, file: !19, line: 438, baseType: !1224, size: 64, offset: 448)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!109, !490, !1161, !1204}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1165, file: !19, line: 440, baseType: !1201, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1165, file: !19, line: 441, baseType: !1229, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!109, !490, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1233, file: !19, line: 412, baseType: !7, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1233, file: !19, line: 413, baseType: !1237, size: 1344, offset: 64)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1238, size: 1344, elements: !260)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1239)
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1250}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1238, file: !19, line: 398, baseType: !7, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1238, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1238, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1238, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1238, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1238, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1238, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1238, file: !19, line: 406, baseType: !414, size: 64, offset: 256)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1238, file: !19, line: 407, baseType: !1249, size: 64, offset: 320)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !412)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1238, file: !19, line: 408, baseType: !1249, size: 64, offset: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1165, file: !19, line: 442, baseType: !1180, size: 64, offset: 640)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !491, file: !14, line: 1200, baseType: !1253, size: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !491, file: !14, line: 1201, baseType: !309, size: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !491, file: !14, line: 1202, baseType: !309, size: 64, offset: 704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !491, file: !14, line: 1203, baseType: !309, size: 64, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !491, file: !14, line: 1204, baseType: !374, size: 64, offset: 832)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !491, file: !14, line: 1205, baseType: !1261, size: 320, offset: 896)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1262, line: 48, size: 320, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1263 = !{!1264, !1265, !1266, !1267, !1268}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1261, file: !1262, line: 49, baseType: !604, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1261, file: !1262, line: 55, baseType: !604, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1261, file: !1262, line: 57, baseType: !614, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1261, file: !1262, line: 59, baseType: !558, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1261, file: !1262, line: 60, baseType: !176, size: 128, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !491, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !491, file: !14, line: 1207, baseType: !209, size: 32, offset: 1248)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !491, file: !14, line: 1209, baseType: !159, size: 64, offset: 1280)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !491, file: !14, line: 1211, baseType: !1273, size: 64, offset: 1344)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !491, file: !14, line: 1223, baseType: !1278, size: 64, offset: 1408)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !391, line: 34, size: 64, elements: !1279)
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1278, file: !391, line: 35, baseType: !394, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !491, file: !14, line: 1224, baseType: !176, size: 128, offset: 1472)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !491, file: !14, line: 1225, baseType: !1283, size: 64, offset: 1600)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !491, file: !14, line: 1226, baseType: !1286, size: 64, offset: 1664)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !491, file: !14, line: 1227, baseType: !1289, size: 64, offset: 1728)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !491, file: !14, line: 1228, baseType: !1292, size: 64, offset: 1792)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !491, file: !14, line: 1229, baseType: !846, size: 128, offset: 1856)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !491, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !491, file: !14, line: 1231, baseType: !1297, size: 2496, offset: 2048)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1303, !1335}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1297, file: !19, line: 522, baseType: !7, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1297, file: !19, line: 523, baseType: !1261, size: 320, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1297, file: !19, line: 524, baseType: !1302, size: 192, offset: 384)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !260)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1297, file: !19, line: 525, baseType: !1304, size: 1728, offset: 576)
!1304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1305, size: 1728, elements: !260)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1306)
!1306 = !{!1307, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1305, file: !19, line: 223, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1310)
!1310 = !{!1311, !1312, !1325, !1326}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1309, file: !19, line: 446, baseType: !109, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1309, file: !19, line: 447, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1315, file: !19, line: 313, baseType: !1014, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1315, file: !19, line: 314, baseType: !1014, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1315, file: !19, line: 315, baseType: !1014, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1315, file: !19, line: 316, baseType: !1014, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1315, file: !19, line: 317, baseType: !1128, size: 64, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1315, file: !19, line: 318, baseType: !1128, size: 64, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1315, file: !19, line: 319, baseType: !1128, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1315, file: !19, line: 320, baseType: !1158, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1309, file: !19, line: 448, baseType: !529, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1309, file: !19, line: 449, baseType: !1308, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1305, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1305, file: !19, line: 226, baseType: !176, size: 128, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1305, file: !19, line: 227, baseType: !309, size: 64, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1305, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1305, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1305, file: !19, line: 230, baseType: !1094, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1305, file: !19, line: 231, baseType: !1094, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1305, file: !19, line: 232, baseType: !159, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1297, file: !19, line: 526, baseType: !1336, size: 192, offset: 2304)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 192, elements: !260)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !491, file: !14, line: 1233, baseType: !1338, size: 2368, offset: 4544)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1339)
!1339 = !{!1340, !1341, !1342}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1338, file: !14, line: 1185, baseType: !229, size: 16)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1338, file: !14, line: 1186, baseType: !229, size: 16, offset: 16)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1338, file: !14, line: 1187, baseType: !1343, size: 2304, offset: 64)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 2304, elements: !260)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1345, line: 12, size: 768, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1346 = !{!1347, !1361, !1362, !3449, !3450}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1344, file: !1345, line: 13, baseType: !1348, size: 384)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1349, line: 17, size: 384, elements: !1350)
!1349 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1350 = !{!1351, !1352, !1353, !1360}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1348, file: !1349, line: 18, baseType: !109, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1348, file: !1349, line: 19, baseType: !109, size: 32, offset: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1348, file: !1349, line: 20, baseType: !1354, size: 192, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1355, line: 41, baseType: !1356)
!1355 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1355, line: 37, size: 192, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1356, file: !1355, line: 38, baseType: !189, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1356, file: !1355, line: 39, baseType: !176, size: 128, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1348, file: !1349, line: 22, baseType: !820, size: 128, align: 64, offset: 256)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1344, file: !1345, line: 14, baseType: !672, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1344, file: !1345, line: 15, baseType: !1363, size: 64, offset: 448)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1364, line: 16, size: 64, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1365 = !{!1366}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1363, file: !1364, line: 17, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1044, line: 746, size: 58368, elements: !1369)
!1369 = !{!1370, !1378, !1379, !1380, !1386, !1387, !1388, !1389, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1460, !1471, !1566, !1570, !1573, !1604, !1605, !1606, !1607, !1618, !1620, !1621, !1622, !1623, !1624, !1625, !1636, !1637, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1654, !1655, !1662, !1663, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2621, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2669, !2675, !2676, !2677, !2678, !2679, !2683, !2686, !2693, !2698, !2701, !2704, !2707, !2711, !2850, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2888, !2889, !2890, !2899, !2907, !2908, !2909, !2910, !2911, !2916, !2917, !2918, !2921, !2922, !2925, !2928, !2931, !2939, !2942, !2943, !3029, !3030, !3031, !3032, !3033, !3039, !3040, !3041, !3042, !3045, !3046, !3049, !3052, !3053, !3056, !3057, !3058, !3061, !3062, !3063, !3064, !3065, !3066, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3098, !3099, !3105, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3117, !3189, !3191, !3192, !3193, !3194, !3195, !3196, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3226, !3227, !3228}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1368, file: !1044, line: 752, baseType: !1371, size: 192)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1372, line: 56, size: 192, elements: !1373)
!1372 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1373 = !{!1374, !1375, !1376, !1377}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1372, line: 57, baseType: !309, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1371, file: !1372, line: 58, baseType: !309, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1371, file: !1372, line: 59, baseType: !408, size: 32, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1371, file: !1372, line: 61, baseType: !408, size: 32, offset: 160)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1368, file: !1044, line: 754, baseType: !7, size: 32, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1368, file: !1044, line: 767, baseType: !159, size: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1368, file: !1044, line: 768, baseType: !1381, size: 32, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1382, line: 113, baseType: !1383)
!1382 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1382, line: 111, size: 32, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1383, file: !1382, line: 112, baseType: !209, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1368, file: !1044, line: 770, baseType: !7, size: 32, offset: 352)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1368, file: !1044, line: 771, baseType: !7, size: 32, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1368, file: !1044, line: 774, baseType: !109, size: 32, offset: 416)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1368, file: !1044, line: 775, baseType: !1390, size: 128, offset: 448)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1391, line: 58, size: 128, elements: !1392)
!1391 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1392 = !{!1393, !1399, !1404, !1405}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1390, file: !1391, line: 59, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1395, line: 60, size: 64, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1394, file: !1395, line: 61, baseType: !1398, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1390, file: !1391, line: 60, baseType: !1400, size: 32, offset: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1390, file: !1391, line: 60, size: 32, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1400, file: !1391, line: 61, baseType: !7, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1400, file: !1391, line: 62, baseType: !209, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1390, file: !1391, line: 65, baseType: !227, size: 16, offset: 96)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1390, file: !1391, line: 65, baseType: !227, size: 16, offset: 112)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1368, file: !1044, line: 776, baseType: !7, size: 32, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1368, file: !1044, line: 777, baseType: !309, size: 64, offset: 640)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1368, file: !1044, line: 778, baseType: !1367, size: 64, offset: 704)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1368, file: !1044, line: 787, baseType: !109, size: 32, offset: 768)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1368, file: !1044, line: 788, baseType: !109, size: 32, offset: 800)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1368, file: !1044, line: 790, baseType: !109, size: 32, offset: 832)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1368, file: !1044, line: 792, baseType: !109, size: 32, offset: 864)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1368, file: !1044, line: 793, baseType: !109, size: 32, offset: 896)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1368, file: !1044, line: 794, baseType: !109, size: 32, offset: 928)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1368, file: !1044, line: 795, baseType: !7, size: 32, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1368, file: !1044, line: 797, baseType: !1417, size: 2048, offset: 1024)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1044, line: 551, size: 2048, elements: !1418)
!1418 = !{!1419, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1439, !1442, !1443, !1444}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1417, file: !1044, line: 553, baseType: !1420, size: 128)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1044, line: 411, size: 128, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1420, file: !1044, line: 412, baseType: !309, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1420, file: !1044, line: 413, baseType: !408, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1417, file: !1044, line: 554, baseType: !712, size: 192, align: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1417, file: !1044, line: 555, baseType: !412, size: 64, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1417, file: !1044, line: 556, baseType: !412, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1417, file: !1044, line: 558, baseType: !176, size: 128, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1417, file: !1044, line: 559, baseType: !7, size: 32, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1417, file: !1044, line: 561, baseType: !412, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1417, file: !1044, line: 562, baseType: !412, size: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1417, file: !1044, line: 563, baseType: !412, size: 64, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1417, file: !1044, line: 564, baseType: !412, size: 64, offset: 832)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1417, file: !1044, line: 565, baseType: !610, size: 64, offset: 896)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1417, file: !1044, line: 566, baseType: !412, size: 64, offset: 960)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1417, file: !1044, line: 568, baseType: !412, size: 64, offset: 1024)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1417, file: !1044, line: 571, baseType: !109, size: 32, offset: 1088)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1417, file: !1044, line: 572, baseType: !1438, size: 64, offset: 1152)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1417, file: !1044, line: 574, baseType: !1440, size: 64, offset: 1216)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1044, line: 49, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1417, file: !1044, line: 576, baseType: !1440, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1417, file: !1044, line: 578, baseType: !309, size: 64, offset: 1344)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1417, file: !1044, line: 588, baseType: !1445, size: 512, align: 512, offset: 1536)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1044, line: 497, size: 512, align: 512, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1445, file: !1044, line: 498, baseType: !412, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1445, file: !1044, line: 499, baseType: !412, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1445, file: !1044, line: 500, baseType: !412, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1445, file: !1044, line: 501, baseType: !408, size: 32, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1445, file: !1044, line: 502, baseType: !408, size: 32, offset: 224)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1445, file: !1044, line: 503, baseType: !309, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1445, file: !1044, line: 504, baseType: !309, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1445, file: !1044, line: 505, baseType: !309, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1445, file: !1044, line: 506, baseType: !1456, size: 64, align: 64, offset: 448)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1044, line: 445, size: 64, align: 64, elements: !1457)
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1456, file: !1044, line: 446, baseType: !7, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1456, file: !1044, line: 447, baseType: !7, size: 32, offset: 32)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1368, file: !1044, line: 798, baseType: !1461, size: 384, offset: 3072)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1044, line: 592, size: 384, elements: !1462)
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1461, file: !1044, line: 593, baseType: !176, size: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1461, file: !1044, line: 594, baseType: !309, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1461, file: !1044, line: 595, baseType: !309, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1461, file: !1044, line: 596, baseType: !7, size: 32, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1461, file: !1044, line: 597, baseType: !229, size: 16, offset: 288)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1461, file: !1044, line: 598, baseType: !229, size: 16, offset: 304)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1461, file: !1044, line: 600, baseType: !1470, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1368, file: !1044, line: 799, baseType: !1472, size: 1792, offset: 3456)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1044, line: 610, size: 1792, elements: !1473)
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1563, !1564}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1472, file: !1044, line: 611, baseType: !712, size: 192, align: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1472, file: !1044, line: 618, baseType: !412, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1472, file: !1044, line: 619, baseType: !412, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1472, file: !1044, line: 620, baseType: !412, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1472, file: !1044, line: 621, baseType: !412, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1472, file: !1044, line: 622, baseType: !412, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1472, file: !1044, line: 629, baseType: !610, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1472, file: !1044, line: 630, baseType: !412, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1472, file: !1044, line: 631, baseType: !7, size: 32, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1472, file: !1044, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1472, file: !1044, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1472, file: !1044, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1472, file: !1044, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1472, file: !1044, line: 662, baseType: !1488, size: 512, offset: 704)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1489)
!1489 = !{!1490, !1498, !1499, !1504, !1559, !1560, !1561, !1562}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1488, file: !25, line: 119, baseType: !1491, size: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1492, line: 9, size: 256, elements: !1493)
!1492 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1491, file: !1492, line: 10, baseType: !712, size: 192, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1491, file: !1492, line: 11, baseType: !1496, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1497, line: 29, baseType: !610)
!1497 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1488, file: !25, line: 120, baseType: !1496, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1488, file: !25, line: 121, baseType: !1500, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!24, !1503}
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1488, file: !25, line: 122, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1507)
!1507 = !{!1508, !1533, !1534, !1537, !1542, !1543, !1554, !1558}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1506, file: !25, line: 160, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1511)
!1511 = !{!1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !25, line: 216, baseType: !558, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1510, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1510, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1510, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1510, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1510, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1510, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1510, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1510, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1510, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1510, file: !25, line: 227, baseType: !229, size: 16, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1510, file: !25, line: 228, baseType: !229, size: 16, offset: 208)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1510, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1510, file: !25, line: 235, baseType: !1496, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1510, file: !25, line: 236, baseType: !1503, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1510, file: !25, line: 237, baseType: !1496, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1510, file: !25, line: 238, baseType: !1503, size: 64, offset: 448)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1510, file: !25, line: 239, baseType: !1530, size: 4096, align: 512, offset: 512)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 4096, align: 512, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 8)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1506, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1506, file: !25, line: 162, baseType: !1535, size: 32, offset: 96)
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !293, line: 96, baseType: !109)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1506, file: !25, line: 163, baseType: !1538, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !381, line: 274, baseType: !1539)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !381, line: 274, size: 32, elements: !1540)
!1540 = !{!1541}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1539, file: !381, line: 274, baseType: !385, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1506, file: !25, line: 164, baseType: !1503, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1506, file: !25, line: 165, baseType: !1544, size: 128, offset: 256)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1492, line: 14, size: 128, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1544, file: !1492, line: 15, baseType: !1547, size: 128)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !713, line: 26, size: 128, elements: !1548)
!1548 = !{!1549, !1553}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1547, file: !713, line: 27, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !713, line: 12, size: 64, elements: !1551)
!1551 = !{!1552}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1550, file: !713, line: 13, baseType: !717, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1547, file: !713, line: 28, baseType: !717, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1506, file: !25, line: 166, baseType: !1555, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1496}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1506, file: !25, line: 167, baseType: !1496, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1488, file: !25, line: 123, baseType: !217, size: 8, offset: 448)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1488, file: !25, line: 124, baseType: !217, size: 8, offset: 456)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1488, file: !25, line: 125, baseType: !217, size: 8, offset: 464)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1488, file: !25, line: 126, baseType: !217, size: 8, offset: 472)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1472, file: !1044, line: 671, baseType: !1488, size: 512, offset: 1216)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1472, file: !1044, line: 679, baseType: !1565, size: 64, offset: 1728)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1368, file: !1044, line: 800, baseType: !1567, size: 64, offset: 5248)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1044, line: 800, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1368, file: !1044, line: 809, baseType: !1571, size: 64, offset: 5312)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1044, line: 70, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1368, file: !1044, line: 825, baseType: !1574, size: 2048, align: 512, offset: 5632)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1044, line: 509, size: 2048, align: 512, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1574, file: !1044, line: 511, baseType: !412, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1574, file: !1044, line: 512, baseType: !412, size: 64, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1574, file: !1044, line: 513, baseType: !412, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1574, file: !1044, line: 514, baseType: !412, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1574, file: !1044, line: 515, baseType: !412, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1574, file: !1044, line: 516, baseType: !412, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1574, file: !1044, line: 518, baseType: !412, size: 64, offset: 384)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1574, file: !1044, line: 519, baseType: !412, size: 64, offset: 448)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1574, file: !1044, line: 520, baseType: !610, size: 64, offset: 512)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1574, file: !1044, line: 522, baseType: !412, size: 64, offset: 576)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1574, file: !1044, line: 523, baseType: !412, size: 64, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1574, file: !1044, line: 524, baseType: !610, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1574, file: !1044, line: 526, baseType: !610, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1574, file: !1044, line: 527, baseType: !412, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1574, file: !1044, line: 529, baseType: !412, size: 64, offset: 896)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1574, file: !1044, line: 530, baseType: !412, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1574, file: !1044, line: 531, baseType: !412, size: 64, offset: 1024)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1574, file: !1044, line: 532, baseType: !412, size: 64, offset: 1088)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1574, file: !1044, line: 533, baseType: !412, size: 64, offset: 1152)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1574, file: !1044, line: 535, baseType: !412, size: 64, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1574, file: !1044, line: 536, baseType: !412, size: 64, offset: 1280)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1574, file: !1044, line: 537, baseType: !412, size: 64, offset: 1344)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1574, file: !1044, line: 538, baseType: !412, size: 64, offset: 1408)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1574, file: !1044, line: 539, baseType: !412, size: 64, offset: 1472)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1574, file: !1044, line: 540, baseType: !412, size: 64, offset: 1536)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1574, file: !1044, line: 541, baseType: !412, size: 64, offset: 1600)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1574, file: !1044, line: 542, baseType: !412, size: 64, offset: 1664)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1574, file: !1044, line: 543, baseType: !412, size: 64, offset: 1728)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1368, file: !1044, line: 833, baseType: !7, size: 32, offset: 7680)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1368, file: !1044, line: 836, baseType: !7, size: 32, offset: 7712)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1368, file: !1044, line: 837, baseType: !109, size: 32, offset: 7744)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1368, file: !1044, line: 838, baseType: !1608, size: 64, offset: 7808)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1611, line: 19, baseType: !1612)
!1611 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1611, line: 19, size: 64, elements: !1613)
!1613 = !{!1614}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1612, file: !1611, line: 19, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 64, elements: !1616)
!1616 = !{!1617}
!1617 = !DISubrange(count: 1)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1368, file: !1044, line: 839, baseType: !1619, size: 64, offset: 7872)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1368, file: !1044, line: 840, baseType: !1610, size: 64, offset: 7936)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1368, file: !1044, line: 841, baseType: !159, size: 64, offset: 8000)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1368, file: !1044, line: 843, baseType: !229, size: 16, offset: 8064)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1368, file: !1044, line: 845, baseType: !229, size: 16, offset: 8080)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1368, file: !1044, line: 848, baseType: !109, size: 32, offset: 8096)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1368, file: !1044, line: 849, baseType: !1626, size: 32, offset: 8128)
!1626 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1044, line: 718, size: 32, elements: !1627)
!1627 = !{!1628, !1635}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1626, file: !1044, line: 724, baseType: !1629, size: 32)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1626, file: !1044, line: 719, size: 32, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1634}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1629, file: !1044, line: 720, baseType: !217, size: 8)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1629, file: !1044, line: 721, baseType: !217, size: 8, offset: 8)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1629, file: !1044, line: 722, baseType: !217, size: 8, offset: 16)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1629, file: !1044, line: 723, baseType: !217, size: 8, offset: 24)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1626, file: !1044, line: 725, baseType: !408, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1368, file: !1044, line: 850, baseType: !176, size: 128, offset: 8192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1368, file: !1044, line: 851, baseType: !1638, size: 64, offset: 8320)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1044, line: 60, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1368, file: !1044, line: 855, baseType: !309, size: 64, offset: 8384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1368, file: !1044, line: 856, baseType: !217, size: 8, offset: 8448)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1368, file: !1044, line: 857, baseType: !217, size: 8, offset: 8456)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1368, file: !1044, line: 858, baseType: !109, size: 32, offset: 8480)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1368, file: !1044, line: 859, baseType: !176, size: 128, offset: 8512)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1368, file: !1044, line: 860, baseType: !109, size: 32, offset: 8640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1368, file: !1044, line: 861, baseType: !176, size: 128, offset: 8704)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1368, file: !1044, line: 873, baseType: !1648, size: 256, offset: 8832)
!1648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1044, line: 376, size: 256, elements: !1649)
!1649 = !{!1650, !1651, !1652, !1653}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1648, file: !1044, line: 381, baseType: !309, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1648, file: !1044, line: 384, baseType: !414, size: 64, offset: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1648, file: !1044, line: 389, baseType: !414, size: 64, offset: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1648, file: !1044, line: 392, baseType: !414, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1368, file: !1044, line: 875, baseType: !176, size: 128, offset: 9088)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1368, file: !1044, line: 877, baseType: !1656, size: 320, offset: 9216)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1657, line: 86, size: 320, elements: !1658)
!1657 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1658 = !{!1659, !1660, !1661}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1656, file: !1657, line: 87, baseType: !109, size: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1656, file: !1657, line: 88, baseType: !176, size: 128, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1656, file: !1657, line: 89, baseType: !176, size: 128, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1368, file: !1044, line: 878, baseType: !712, size: 192, align: 64, offset: 9536)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1368, file: !1044, line: 881, baseType: !1664, size: 64, offset: 9728)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1666)
!1666 = !{!1667, !2540}
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !38, line: 734, baseType: !1668, size: 10240)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !38, line: 734, size: 10240, elements: !1669)
!1669 = !{!1670, !1674, !1687, !2417, !2418, !2419, !2420, !2421, !2422, !2429, !2430, !2431, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2470, !2472, !2475, !2520, !2521, !2522, !2525, !2526, !2527, !2530, !2531, !2532, !2538, !2539}
!1670 = !DIDerivedType(tag: DW_TAG_member, scope: !1668, file: !38, line: 739, baseType: !1671, size: 512, align: 512)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1668, file: !38, line: 739, size: 512, align: 512, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1671, file: !38, line: 747, baseType: !209, size: 32)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1668, file: !38, line: 750, baseType: !1675, size: 128, offset: 512)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1676, line: 218, size: 128, elements: !1677)
!1676 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1677 = !{!1678, !1685, !1686}
!1678 = !DIDerivedType(tag: DW_TAG_member, scope: !1675, file: !1676, line: 219, baseType: !1679, size: 32)
!1679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1675, file: !1676, line: 219, size: 32, elements: !1680)
!1680 = !{!1681, !1682}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1679, file: !1676, line: 220, baseType: !189, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1679, file: !1676, line: 221, baseType: !1683)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1676, line: 197, baseType: !1684)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1676, line: 197, elements: !889)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1675, file: !1676, line: 223, baseType: !7, size: 32, offset: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1675, file: !1676, line: 224, baseType: !159, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1668, file: !38, line: 752, baseType: !1688, size: 64, offset: 640)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!309, !1691, !309, !309, !309, !309}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1693)
!1693 = !{!1694, !1700, !1701, !1703, !1704, !1705, !1706, !1707, !1757, !1947, !1956, !1957, !1958, !2407, !2408, !2409, !2410, !2412, !2413, !2416}
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1692, file: !14, line: 995, baseType: !1695, size: 128)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1692, file: !14, line: 995, size: 128, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1695, file: !14, line: 996, baseType: !1394, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1695, file: !14, line: 997, baseType: !820, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1695, file: !14, line: 998, baseType: !7, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1692, file: !14, line: 1005, baseType: !189, size: 32, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1692, file: !14, line: 1006, baseType: !1702, size: 32, offset: 160)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !7)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1692, file: !14, line: 1007, baseType: !604, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1692, file: !14, line: 1008, baseType: !600, size: 256, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1692, file: !14, line: 1009, baseType: !500, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1692, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1692, file: !14, line: 1011, baseType: !1708, size: 256, offset: 640)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1709)
!1709 = !{!1710, !1731, !1753, !1754, !1755, !1756}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1708, file: !14, line: 949, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1712, line: 34, baseType: !1713)
!1712 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1712, line: 25, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1713, file: !1712, line: 26, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1717, line: 27, baseType: !1718)
!1717 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1717, line: 13, size: 64, elements: !1719)
!1719 = !{!1720, !1730}
!1720 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !1717, line: 14, baseType: !1721, size: 32)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1718, file: !1717, line: 14, size: 32, elements: !1722)
!1722 = !{!1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1721, file: !1717, line: 15, baseType: !209, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !1717, line: 16, baseType: !1725, size: 32)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1717, line: 16, size: 32, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1725, file: !1717, line: 18, baseType: !217, size: 8)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1725, file: !1717, line: 19, baseType: !1729, size: 24, offset: 8)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 24, elements: !260)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1718, file: !1717, line: 26, baseType: !201, size: 32, offset: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1708, file: !14, line: 950, baseType: !1732, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1740, !1741, !1742, !1743}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1733, file: !30, line: 61, baseType: !1381, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1733, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1733, file: !30, line: 63, baseType: !189, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1733, file: !30, line: 65, baseType: !1739, size: 256, offset: 128)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 256, elements: !830)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1733, file: !30, line: 66, baseType: !970, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1733, file: !30, line: 68, baseType: !1354, size: 192, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1733, file: !30, line: 69, baseType: !820, size: 128, align: 64, offset: 640)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1733, file: !30, line: 70, baseType: !1744, offset: 768)
!1744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, elements: !1751)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1746)
!1746 = !{!1747, !1748}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1745, file: !30, line: 55, baseType: !109, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1745, file: !30, line: 56, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1751 = !{!1752}
!1752 = !DISubrange(count: -1)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1708, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1708, file: !14, line: 952, baseType: !345, size: 32, offset: 160)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1708, file: !14, line: 952, baseType: !345, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1708, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1692, file: !14, line: 1012, baseType: !1758, size: 64, offset: 896)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1760)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1761, line: 110, size: 1472, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1779, !1780, !1781, !1782, !1783, !1784, !1892, !1893, !1894, !1895, !1896, !1927, !1930, !1934, !1942}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1760, file: !1761, line: 111, baseType: !604, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1760, file: !1761, line: 112, baseType: !345, size: 32, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1760, file: !1761, line: 113, baseType: !354, size: 32, offset: 96)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1760, file: !1761, line: 114, baseType: !345, size: 32, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1760, file: !1761, line: 115, baseType: !354, size: 32, offset: 160)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1760, file: !1761, line: 116, baseType: !345, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1760, file: !1761, line: 117, baseType: !354, size: 32, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1760, file: !1761, line: 118, baseType: !345, size: 32, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1760, file: !1761, line: 119, baseType: !354, size: 32, offset: 288)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1760, file: !1761, line: 120, baseType: !7, size: 32, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1760, file: !1761, line: 121, baseType: !1774, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1775, line: 24, baseType: !1776)
!1775 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1775, line: 24, size: 64, elements: !1777)
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1776, file: !1775, line: 24, baseType: !412, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1760, file: !1761, line: 122, baseType: !1774, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1760, file: !1761, line: 123, baseType: !1774, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1760, file: !1761, line: 124, baseType: !1774, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1760, file: !1761, line: 125, baseType: !1774, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1760, file: !1761, line: 127, baseType: !221, size: 8, offset: 704)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1760, file: !1761, line: 129, baseType: !1785, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1787, line: 195, size: 1728, elements: !1788)
!1787 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1788 = !{!1789, !1790, !1793, !1798, !1799, !1802, !1803, !1808, !1809, !1810, !1811, !1814, !1815, !1816, !1817, !1818, !1856, !1877}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1786, file: !1787, line: 196, baseType: !1381, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1786, file: !1787, line: 197, baseType: !1791, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1787, line: 28, baseType: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !596)
!1793 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1787, line: 198, baseType: !1794, size: 192, offset: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1787, line: 198, size: 192, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1794, file: !1787, line: 199, baseType: !176, size: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1794, file: !1787, line: 200, baseType: !712, size: 192, align: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1786, file: !1787, line: 205, baseType: !1261, size: 320, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1786, file: !1787, line: 206, baseType: !1800, size: 64, offset: 576)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1787, line: 206, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1786, file: !1787, line: 207, baseType: !159, size: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1787, line: 208, baseType: !1804, size: 64, offset: 704)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1787, line: 208, size: 64, elements: !1805)
!1805 = !{!1806, !1807}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1804, file: !1787, line: 209, baseType: !1102, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1804, file: !1787, line: 210, baseType: !1102, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1786, file: !1787, line: 212, baseType: !1102, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1786, file: !1787, line: 213, baseType: !345, size: 32, offset: 832)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1786, file: !1787, line: 214, baseType: !354, size: 32, offset: 864)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1786, file: !1787, line: 215, baseType: !1812, size: 32, offset: 896)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1787, line: 31, baseType: !1813)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !408)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1786, file: !1787, line: 216, baseType: !229, size: 16, offset: 928)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1786, file: !1787, line: 217, baseType: !229, size: 16, offset: 944)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1786, file: !1787, line: 221, baseType: !738, size: 16, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1786, file: !1787, line: 228, baseType: !309, size: 64, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1787, line: 245, baseType: !1819, size: 320, offset: 1088)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1787, line: 245, size: 320, elements: !1820)
!1820 = !{!1821, !1848}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1819, file: !1787, line: 246, baseType: !1822, size: 320)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1787, line: 114, size: 320, elements: !1823)
!1823 = !{!1824, !1825, !1837, !1840, !1847}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1822, file: !1787, line: 116, baseType: !309, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !1787, line: 117, baseType: !1826, size: 64, offset: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !1787, line: 117, size: 64, elements: !1827)
!1827 = !{!1828, !1836}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !1787, line: 118, baseType: !1829, size: 64)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1826, file: !1787, line: 118, size: 64, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1829, file: !1787, line: 120, baseType: !227, size: 16)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1829, file: !1787, line: 121, baseType: !1833, size: 48, offset: 16)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 48, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 6)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1826, file: !1787, line: 127, baseType: !309, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1822, file: !1787, line: 129, baseType: !1838, size: 64, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1787, line: 102, flags: DIFlagFwdDecl)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1822, file: !1787, line: 130, baseType: !1841, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1787, line: 108, size: 192, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1842, file: !1787, line: 109, baseType: !820, size: 128, align: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1842, file: !1787, line: 110, baseType: !1381, size: 32, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1842, file: !1787, line: 111, baseType: !680, size: 8, offset: 160)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1822, file: !1787, line: 131, baseType: !172, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1819, file: !1787, line: 247, baseType: !1849, size: 320)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !1787, line: 247, size: 320, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1849, file: !1787, line: 248, baseType: !309, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1849, file: !1787, line: 249, baseType: !309, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1849, file: !1787, line: 250, baseType: !1838, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1849, file: !1787, line: 251, baseType: !1841, size: 64, offset: 192)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1849, file: !1787, line: 252, baseType: !259, size: 64, offset: 256)
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1786, file: !1787, line: 260, baseType: !1857, size: 256, offset: 1408)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1786, file: !1787, line: 260, size: 256, elements: !1858)
!1858 = !{!1859, !1865}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1857, file: !1787, line: 261, baseType: !1860, size: 256)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1787, line: 134, size: 256, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1860, file: !1787, line: 135, baseType: !159, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1860, file: !1787, line: 136, baseType: !1864, size: 256)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !830)
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !1787, line: 262, baseType: !1866, size: 256)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1857, file: !1787, line: 262, size: 256, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1866, file: !1787, line: 264, baseType: !176, size: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1866, file: !1787, line: 265, baseType: !1870, size: 128, offset: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1871, line: 22, size: 128, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1872 = !{!1873, !1876}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1870, file: !1871, line: 23, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1871, line: 23, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1870, file: !1871, line: 24, baseType: !309, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1786, file: !1787, line: 280, baseType: !1878, size: 64, offset: 1664)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1787, line: 176, size: 192, elements: !1880)
!1880 = !{!1881, !1890, !1891}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1879, file: !1787, line: 177, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1787, line: 171, baseType: !1883)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!109, !1785, !1886, !1888, !1785}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1860)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1879, file: !1787, line: 178, baseType: !1785, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1879, file: !1787, line: 179, baseType: !1838, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1760, file: !1761, line: 130, baseType: !1785, size: 64, offset: 832)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1760, file: !1761, line: 131, baseType: !1785, size: 64, offset: 896)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1760, file: !1761, line: 132, baseType: !1785, size: 64, offset: 960)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1760, file: !1761, line: 135, baseType: !159, size: 64, offset: 1024)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1760, file: !1761, line: 137, baseType: !1897, size: 64, offset: 1088)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1899, line: 14, size: 1088, elements: !1900)
!1899 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1900 = !{!1901, !1902, !1911, !1912, !1913, !1914, !1915, !1916}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1898, file: !1899, line: 15, baseType: !1381, size: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1898, file: !1899, line: 17, baseType: !1903, size: 320, offset: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1904, line: 22, size: 320, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1905 = !{!1906, !1907, !1908, !1909}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1903, file: !1904, line: 23, baseType: !558, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1903, file: !1904, line: 24, baseType: !610, size: 64, offset: 64)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1903, file: !1904, line: 26, baseType: !176, size: 128, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1903, file: !1904, line: 28, baseType: !1910, size: 64, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1898, file: !1899, line: 19, baseType: !309, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1898, file: !1899, line: 20, baseType: !604, size: 64, offset: 448)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1898, file: !1899, line: 23, baseType: !846, size: 128, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1898, file: !1899, line: 24, baseType: !345, size: 32, offset: 640)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1898, file: !1899, line: 29, baseType: !604, size: 64, offset: 704)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1898, file: !1899, line: 36, baseType: !1917, size: 320, offset: 768)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1918, line: 15, size: 320, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1917, file: !1918, line: 16, baseType: !558, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1917, file: !1918, line: 18, baseType: !109, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1917, file: !1918, line: 19, baseType: !109, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1917, file: !1918, line: 20, baseType: !109, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1917, file: !1918, line: 21, baseType: !109, size: 32, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1917, file: !1918, line: 22, baseType: !309, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1917, file: !1918, line: 23, baseType: !309, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1760, file: !1761, line: 138, baseType: !1928, size: 64, offset: 1152)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !346, line: 18, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1760, file: !1761, line: 139, baseType: !1931, size: 64, offset: 1216)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1933, line: 16, flags: DIFlagFwdDecl)
!1933 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1760, file: !1761, line: 140, baseType: !1935, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1761, line: 25, size: 64, elements: !1937)
!1937 = !{!1938, !1939, !1940}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1936, file: !1761, line: 26, baseType: !209, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1936, file: !1761, line: 27, baseType: !109, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1936, file: !1761, line: 28, baseType: !1941, offset: 64)
!1941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, elements: !1751)
!1942 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !1761, line: 142, baseType: !1943, size: 128, offset: 1344)
!1943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1760, file: !1761, line: 142, size: 128, elements: !1944)
!1944 = !{!1945, !1946}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1943, file: !1761, line: 143, baseType: !109, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1943, file: !1761, line: 144, baseType: !820, size: 128, align: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1692, file: !14, line: 1013, baseType: !1948, size: 256, offset: 960)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1948, file: !14, line: 971, baseType: !309, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1948, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1948, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1948, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1948, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1948, file: !14, line: 976, baseType: !500, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1692, file: !14, line: 1014, baseType: !1173, size: 128, offset: 1216)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1692, file: !14, line: 1015, baseType: !339, size: 64, offset: 1344)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1692, file: !14, line: 1016, baseType: !1959, size: 64, offset: 1408)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1961)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1962)
!1962 = !{!1963, !1964, !1968, !1973, !1977, !2005, !2006, !2012, !2025, !2033, !2037, !2038, !2329, !2330, !2334, !2339, !2340, !2344, !2348, !2354, !2355, !2359, !2360, !2366, !2370, !2374, !2380, !2384, !2388, !2392, !2396, !2397, !2403}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1961, file: !14, line: 1915, baseType: !529, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1961, file: !14, line: 1916, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!500, !1691, !500, !109}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1961, file: !14, line: 1917, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!291, !1691, !259, !306, !1972}
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1961, file: !14, line: 1918, baseType: !1974, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!291, !1691, !172, !306, !1972}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1961, file: !14, line: 1919, baseType: !1978, size: 64, offset: 256)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!291, !1981, !2003}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1990, !1991, !1992, !1993}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1982, file: !14, line: 374, baseType: !1691, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1982, file: !14, line: 375, baseType: !500, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1982, file: !14, line: 376, baseType: !1987, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !1981, !295}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1982, file: !14, line: 377, baseType: !159, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1982, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1982, file: !14, line: 379, baseType: !227, size: 16, offset: 288)
!1993 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !14, line: 380, baseType: !1994, size: 64, offset: 320)
!1994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !14, line: 380, size: 64, elements: !1995)
!1995 = !{!1996, !1999}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1994, file: !14, line: 386, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1994, file: !14, line: 395, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!291, !159}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1961, file: !14, line: 1920, baseType: !1978, size: 64, offset: 320)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1961, file: !14, line: 1921, baseType: !2007, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!109, !1981, !2010, !7}
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1961, file: !14, line: 1923, baseType: !2013, size: 64, offset: 448)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!109, !1691, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2018)
!2018 = !{!2019, !2024}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2017, file: !14, line: 1859, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!680, !2016, !172, !109, !500, !412, !7}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2017, file: !14, line: 1860, baseType: !500, size: 64, offset: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1961, file: !14, line: 1924, baseType: !2026, size: 64, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!2029, !1691, !2031}
!2029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2030, line: 59, baseType: !7)
!2030 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !515, line: 31, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1961, file: !14, line: 1925, baseType: !2034, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!295, !1691, !7, !309}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1961, file: !14, line: 1926, baseType: !2034, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1961, file: !14, line: 1927, baseType: !2039, size: 64, offset: 704)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!109, !1691, !2042}
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2044)
!2044 = !{!2045, !2054, !2055, !2063, !2070, !2071, !2076, !2077, !2082, !2083, !2086, !2322, !2323, !2324, !2325, !2326, !2327}
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !38, line: 628, baseType: !2046, size: 128)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !38, line: 628, size: 128, elements: !2047)
!2047 = !{!2048, !2053}
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2046, file: !38, line: 629, baseType: !2049, size: 128)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2046, file: !38, line: 629, size: 128, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2049, file: !38, line: 631, baseType: !309, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2049, file: !38, line: 632, baseType: !309, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2046, file: !38, line: 635, baseType: !820, size: 128, align: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2043, file: !38, line: 639, baseType: !1664, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2043, file: !38, line: 640, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2057, line: 297, baseType: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2057, line: 297, size: 64, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2058, file: !2057, line: 297, baseType: !2061, size: 64)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2062, line: 19, baseType: !309)
!2062 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2063 = !DIDerivedType(tag: DW_TAG_member, scope: !2043, file: !38, line: 646, baseType: !2064, size: 64, offset: 256)
!2064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2043, file: !38, line: 646, size: 64, elements: !2065)
!2065 = !{!2066, !2069}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2064, file: !38, line: 647, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !309)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2064, file: !38, line: 648, baseType: !2068, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2043, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2043, file: !38, line: 667, baseType: !2072, size: 64, offset: 384)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2074)
!2074 = !{!2075}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2073, file: !38, line: 580, baseType: !1261, size: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2043, file: !38, line: 670, baseType: !680, size: 8, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2043, file: !38, line: 681, baseType: !2078, size: 256, offset: 512)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !38, line: 678, size: 256, elements: !2079)
!2079 = !{!2080, !2081}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2078, file: !38, line: 679, baseType: !712, size: 192, align: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2078, file: !38, line: 680, baseType: !309, size: 64, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2043, file: !38, line: 689, baseType: !176, size: 128, offset: 768)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2043, file: !38, line: 691, baseType: !2084, size: 64, offset: 896)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2043, file: !38, line: 694, baseType: !2087, size: 64, offset: 960)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2089)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2090, line: 563, size: 1024, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2091 = !{!2092, !2096, !2097, !2101, !2105, !2109, !2286, !2290, !2294, !2298, !2299, !2300, !2304, !2308, !2314, !2318}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2089, file: !2090, line: 564, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{null, !2042}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2089, file: !2090, line: 569, baseType: !2093, size: 64, offset: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2089, file: !2090, line: 571, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!109, !2042, !309}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2089, file: !2090, line: 572, baseType: !2102, size: 64, offset: 192)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!109, !2042}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2089, file: !2090, line: 578, baseType: !2106, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!109, !2042, !309, !309, !309}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2089, file: !2090, line: 580, baseType: !2110, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2090, line: 512, size: 896, elements: !2116)
!2116 = !{!2117, !2125, !2126, !2133, !2140, !2150, !2279, !2280, !2282, !2284}
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2090, line: 513, baseType: !2118, size: 320)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2090, line: 513, size: 320, elements: !2119)
!2119 = !{!2120, !2121, !2122, !2123, !2124}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2118, file: !2090, line: 514, baseType: !2042, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2118, file: !2090, line: 515, baseType: !157, size: 32, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2118, file: !2090, line: 516, baseType: !309, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2118, file: !2090, line: 517, baseType: !309, size: 64, offset: 192)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2118, file: !2090, line: 518, baseType: !309, size: 64, offset: 256)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2115, file: !2090, line: 520, baseType: !37, size: 32, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2115, file: !2090, line: 522, baseType: !2127, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2062, line: 22, baseType: !2129)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2062, line: 22, size: 64, elements: !2130)
!2130 = !{!2131}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2129, file: !2062, line: 22, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2062, line: 15, baseType: !309)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2115, file: !2090, line: 524, baseType: !2134, size: 64, offset: 448)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2057, line: 372, baseType: !2136)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 372, size: 64, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2136, file: !2057, line: 372, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2062, line: 16, baseType: !309)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2090, line: 527, baseType: !2141, size: 64, offset: 512)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2115, file: !2090, line: 527, size: 64, elements: !2142)
!2142 = !{!2143, !2149}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2141, file: !2090, line: 528, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2062, line: 21, baseType: !2145)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2062, line: 21, size: 64, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2145, file: !2062, line: 21, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2062, line: 14, baseType: !309)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2141, file: !2090, line: 529, baseType: !2128, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2115, file: !2090, line: 534, baseType: !2151, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2153)
!2153 = !{!2154, !2155, !2273, !2278}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2152, file: !38, line: 75, baseType: !309, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2152, file: !38, line: 83, baseType: !2156, size: 320, offset: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2152, file: !38, line: 83, size: 320, elements: !2157)
!2157 = !{!2158, !2179, !2193, !2197, !2272}
!2158 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 84, baseType: !2159, size: 320)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 84, size: 320, elements: !2160)
!2160 = !{!2161, !2172, !2173, !2178}
!2161 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 90, baseType: !2162, size: 128)
!2162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !38, line: 90, size: 128, elements: !2163)
!2163 = !{!2164, !2165, !2170, !2171}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2162, file: !38, line: 91, baseType: !176, size: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !38, line: 94, baseType: !2166, size: 128)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2162, file: !38, line: 94, size: 128, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2166, file: !38, line: 96, baseType: !159, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2166, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2162, file: !38, line: 102, baseType: !176, size: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2162, file: !38, line: 103, baseType: !176, size: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2159, file: !38, line: 106, baseType: !335, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2159, file: !38, line: 107, baseType: !2174, size: 64, offset: 192)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2159, file: !38, line: 107, size: 64, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2174, file: !38, line: 108, baseType: !309, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2174, file: !38, line: 109, baseType: !309, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2159, file: !38, line: 117, baseType: !309, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 119, baseType: !2180, size: 320)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 119, size: 320, elements: !2181)
!2181 = !{!2182, !2183, !2186, !2187, !2188}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2180, file: !38, line: 124, baseType: !309, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2180, file: !38, line: 125, baseType: !2184, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2180, file: !38, line: 126, baseType: !309, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2180, file: !38, line: 127, baseType: !309, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2180, file: !38, line: 128, baseType: !2189, size: 64, offset: 256)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2180, file: !38, line: 128, size: 64, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2189, file: !38, line: 133, baseType: !309, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2189, file: !38, line: 138, baseType: !604, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 141, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 141, size: 64, elements: !2195)
!2195 = !{!2196}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2194, file: !38, line: 142, baseType: !309, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, scope: !2156, file: !38, line: 144, baseType: !2198, size: 128)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2156, file: !38, line: 144, size: 128, elements: !2199)
!2199 = !{!2200, !2271}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2198, file: !38, line: 146, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2203)
!2203 = !{!2204, !2214, !2235, !2236, !2237, !2238, !2239, !2253, !2254, !2255}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2202, file: !54, line: 127, baseType: !2205, size: 384)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2206)
!2206 = !{!2207, !2208, !2210, !2211, !2212, !2213}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2205, file: !54, line: 22, baseType: !309, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2205, file: !54, line: 23, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2205, file: !54, line: 24, baseType: !2209, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2205, file: !54, line: 25, baseType: !309, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2205, file: !54, line: 26, baseType: !309, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2205, file: !54, line: 27, baseType: !309, size: 64, offset: 320)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2202, file: !54, line: 128, baseType: !2215, size: 128, offset: 384)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2216, line: 105, size: 128, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2217 = !{!2218, !2219}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2215, file: !2216, line: 110, baseType: !309, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2215, file: !2216, line: 118, baseType: !2220, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2216, line: 95, size: 448, elements: !2222)
!2222 = !{!2223, !2224, !2230, !2231, !2232, !2233, !2234}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2221, file: !2216, line: 96, baseType: !604, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2221, file: !2216, line: 97, baseType: !2225, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2216, line: 60, baseType: !2227)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !2229}
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2221, file: !2216, line: 98, baseType: !2225, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2221, file: !2216, line: 99, baseType: !680, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2221, file: !2216, line: 100, baseType: !680, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2221, file: !2216, line: 101, baseType: !820, size: 128, align: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2221, file: !2216, line: 102, baseType: !2229, size: 64, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2202, file: !54, line: 129, baseType: !549, size: 256, offset: 512)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2202, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2202, file: !54, line: 132, baseType: !309, size: 64, offset: 832)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2202, file: !54, line: 133, baseType: !2240, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2243)
!2243 = !{!2244, !2248, !2249}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2242, file: !54, line: 83, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2151}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2242, file: !54, line: 89, baseType: !2110, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2242, file: !54, line: 100, baseType: !2250, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!109, !2201, !309, !309, !109}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2202, file: !54, line: 134, baseType: !159, size: 64, offset: 960)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2202, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2255 = !DIDerivedType(tag: DW_TAG_member, scope: !2202, file: !54, line: 136, baseType: !2256, size: 128, offset: 1088)
!2256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2202, file: !54, line: 136, size: 128, elements: !2257)
!2257 = !{!2258, !2264}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2256, file: !54, line: 137, baseType: !2259, size: 128)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2260, line: 6, size: 128, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2261 = !{!2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2259, file: !2260, line: 7, baseType: !412, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2259, file: !2260, line: 8, baseType: !412, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, scope: !2256, file: !54, line: 138, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2256, file: !54, line: 138, elements: !2266)
!2266 = !{!2267, !2269}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2265, file: !54, line: 138, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2265, file: !54, line: 138, elements: !889)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2265, file: !54, line: 138, baseType: !2270)
!2270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2259, elements: !1751)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2198, file: !38, line: 147, baseType: !159, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2156, file: !38, line: 161, baseType: !820, size: 128, align: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, scope: !2152, file: !38, line: 164, baseType: !2274, size: 32, offset: 384)
!2274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2152, file: !38, line: 164, size: 32, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2274, file: !38, line: 169, baseType: !209, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2274, file: !38, line: 177, baseType: !7, size: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2152, file: !38, line: 181, baseType: !209, size: 32, offset: 416)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2115, file: !2090, line: 535, baseType: !2151, size: 64, offset: 640)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2115, file: !2090, line: 541, baseType: !2281, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2115, file: !2090, line: 545, baseType: !2283, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2115, file: !2090, line: 549, baseType: !2285, size: 64, offset: 832)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2057, line: 520, baseType: !2151)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2089, file: !2090, line: 581, baseType: !2287, size: 64, offset: 384)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2113, !2114, !7}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2089, file: !2090, line: 582, baseType: !2291, size: 64, offset: 448)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2113, !2114, !309, !309}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2089, file: !2090, line: 584, baseType: !2295, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!309, !2042}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2089, file: !2090, line: 588, baseType: !2110, size: 64, offset: 576)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2089, file: !2090, line: 591, baseType: !2110, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2089, file: !2090, line: 597, baseType: !2301, size: 64, offset: 704)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!109, !2042, !309, !159, !109, !109}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2089, file: !2090, line: 603, baseType: !2305, size: 64, offset: 768)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!172, !2042}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2089, file: !2090, line: 613, baseType: !2309, size: 64, offset: 832)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!109, !2042, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2089, file: !2090, line: 625, baseType: !2315, size: 64, offset: 896)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!2312, !2042, !309}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2089, file: !2090, line: 633, baseType: !2319, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!2151, !2042, !309}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2043, file: !38, line: 697, baseType: !309, size: 64, offset: 1024)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2043, file: !38, line: 699, baseType: !1691, size: 64, offset: 1088)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2043, file: !38, line: 700, baseType: !159, size: 64, offset: 1152)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2043, file: !38, line: 711, baseType: !604, size: 64, offset: 1216)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2043, file: !38, line: 717, baseType: !2312, size: 64, offset: 1280)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2043, file: !38, line: 722, baseType: !2328, offset: 1344)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !889)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1961, file: !14, line: 1928, baseType: !309, size: 64, offset: 768)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1961, file: !14, line: 1929, baseType: !2331, size: 64, offset: 832)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!109, !339, !1691}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1961, file: !14, line: 1930, baseType: !2335, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!109, !1691, !2338}
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !159)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1961, file: !14, line: 1931, baseType: !2331, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1961, file: !14, line: 1932, baseType: !2341, size: 64, offset: 1024)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!109, !1691, !500, !500, !109}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1961, file: !14, line: 1933, baseType: !2345, size: 64, offset: 1088)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!109, !109, !1691, !109}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1961, file: !14, line: 1934, baseType: !2349, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!109, !1691, !109, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1961, file: !14, line: 1935, baseType: !1688, size: 64, offset: 1216)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1961, file: !14, line: 1936, baseType: !2356, size: 64, offset: 1280)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!109, !109}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1961, file: !14, line: 1937, baseType: !2349, size: 64, offset: 1344)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1961, file: !14, line: 1938, baseType: !2361, size: 64, offset: 1408)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!291, !2364, !1691, !1972, !306, !7}
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1044, line: 59, flags: DIFlagFwdDecl)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1961, file: !14, line: 1939, baseType: !2367, size: 64, offset: 1472)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!291, !1691, !1972, !2364, !306, !7}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1961, file: !14, line: 1940, baseType: !2371, size: 64, offset: 1536)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{null, !1691}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1961, file: !14, line: 1941, baseType: !2375, size: 64, offset: 1600)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!109, !1691, !109, !2378, !2379}
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1961, file: !14, line: 1942, baseType: !2381, size: 64, offset: 1664)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!295, !1691, !109, !500, !500}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1961, file: !14, line: 1944, baseType: !2385, size: 64, offset: 1728)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1042, !1691}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1961, file: !14, line: 1948, baseType: !2389, size: 64, offset: 1792)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!291, !1691, !500, !1691, !500, !306, !7}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1961, file: !14, line: 1950, baseType: !2393, size: 64, offset: 1856)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!500, !1691, !500, !1691, !500, !500, !7}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1961, file: !14, line: 1953, baseType: !2341, size: 64, offset: 1920)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1961, file: !14, line: 1954, baseType: !2398, size: 64, offset: 1984)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!109, !2401, !7}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1961, file: !14, line: 1955, baseType: !2404, size: 64, offset: 2048)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!109, !2401, !2010, !7}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1692, file: !14, line: 1018, baseType: !412, size: 64, offset: 1472)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1692, file: !14, line: 1020, baseType: !159, size: 64, offset: 1536)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1692, file: !14, line: 1023, baseType: !159, size: 64, offset: 1600)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1692, file: !14, line: 1027, baseType: !2411, size: 64, offset: 1664)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1692, file: !14, line: 1029, baseType: !335, size: 64, offset: 1728)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1692, file: !14, line: 1030, baseType: !2414, size: 32, offset: 1792)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2415, line: 8, baseType: !408)
!2415 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1692, file: !14, line: 1031, baseType: !2414, size: 32, offset: 1824)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1668, file: !38, line: 756, baseType: !309, size: 64, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1668, file: !38, line: 757, baseType: !309, size: 64, offset: 768)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1668, file: !38, line: 760, baseType: !309, size: 64, offset: 832)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1668, file: !38, line: 761, baseType: !309, size: 64, offset: 896)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1668, file: !38, line: 763, baseType: !309, size: 64, offset: 960)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1668, file: !38, line: 764, baseType: !2423, size: 64, offset: 1024)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2057, line: 299, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2057, line: 299, size: 64, elements: !2426)
!2426 = !{!2427}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2425, file: !2057, line: 299, baseType: !2428, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2062, line: 18, baseType: !309)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1668, file: !38, line: 773, baseType: !209, size: 32, offset: 1088)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1668, file: !38, line: 785, baseType: !209, size: 32, offset: 1120)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1668, file: !38, line: 795, baseType: !2432, size: 64, offset: 1152)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2433, file: !38, line: 727, baseType: !412, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2433, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1668, file: !38, line: 801, baseType: !309, size: 64, offset: 1216)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1668, file: !38, line: 804, baseType: !604, size: 64, offset: 1280)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1668, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1668, file: !38, line: 808, baseType: !189, size: 32, offset: 1376)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1668, file: !38, line: 823, baseType: !1261, size: 320, offset: 1408)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1668, file: !38, line: 825, baseType: !176, size: 128, offset: 1728)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1668, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1668, file: !38, line: 849, baseType: !309, size: 64, offset: 1920)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1668, file: !38, line: 850, baseType: !309, size: 64, offset: 1984)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1668, file: !38, line: 852, baseType: !309, size: 64, offset: 2048)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1668, file: !38, line: 853, baseType: !309, size: 64, offset: 2112)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1668, file: !38, line: 854, baseType: !606, size: 64, offset: 2176)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1668, file: !38, line: 855, baseType: !309, size: 64, offset: 2240)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1668, file: !38, line: 856, baseType: !309, size: 64, offset: 2304)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1668, file: !38, line: 857, baseType: !309, size: 64, offset: 2368)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1668, file: !38, line: 858, baseType: !309, size: 64, offset: 2432)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1668, file: !38, line: 865, baseType: !385, size: 32, offset: 2496)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1668, file: !38, line: 867, baseType: !189, size: 32, offset: 2528)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1668, file: !38, line: 869, baseType: !309, size: 64, offset: 2560)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1668, file: !38, line: 869, baseType: !309, size: 64, offset: 2624)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1668, file: !38, line: 869, baseType: !309, size: 64, offset: 2688)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1668, file: !38, line: 869, baseType: !309, size: 64, offset: 2752)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1668, file: !38, line: 870, baseType: !309, size: 64, offset: 2816)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1668, file: !38, line: 870, baseType: !309, size: 64, offset: 2880)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1668, file: !38, line: 870, baseType: !309, size: 64, offset: 2944)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1668, file: !38, line: 871, baseType: !309, size: 64, offset: 3008)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1668, file: !38, line: 871, baseType: !309, size: 64, offset: 3072)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1668, file: !38, line: 871, baseType: !309, size: 64, offset: 3136)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1668, file: !38, line: 871, baseType: !309, size: 64, offset: 3200)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1668, file: !38, line: 873, baseType: !2467, size: 3328, offset: 3264)
!2467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 3328, elements: !2468)
!2468 = !{!2469}
!2469 = !DISubrange(count: 52)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1668, file: !38, line: 875, baseType: !2471, size: 1280, offset: 6592)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, size: 1280, elements: !830)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1668, file: !38, line: 877, baseType: !2473, size: 64, offset: 7872)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1668, file: !38, line: 880, baseType: !2476, size: 1088, offset: 7936)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2477, line: 72, baseType: !2478)
!2477 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2477, line: 23, size: 1088, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2487, !2488, !2489, !2490, !2517, !2518, !2519}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2478, file: !2477, line: 28, baseType: !412, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2478, file: !2477, line: 38, baseType: !606, size: 64, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2478, file: !2477, line: 40, baseType: !309, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2478, file: !2477, line: 43, baseType: !1261, size: 320, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2478, file: !2477, line: 44, baseType: !2485, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2477, line: 44, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !2477, line: 48, baseType: !309, size: 64, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2478, file: !2477, line: 59, baseType: !600, size: 256, offset: 640)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2478, file: !2477, line: 60, baseType: !159, size: 64, offset: 896)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2478, file: !2477, line: 61, baseType: !2491, size: 64, offset: 960)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2493)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2494, line: 13, size: 1216, elements: !2495)
!2494 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2495 = !{!2496, !2497, !2498, !2499, !2500, !2501, !2502, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2493, file: !2494, line: 14, baseType: !159, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2493, file: !2494, line: 15, baseType: !309, size: 64, offset: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2493, file: !2494, line: 17, baseType: !309, size: 64, offset: 128)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2493, file: !2494, line: 17, baseType: !309, size: 64, offset: 192)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2493, file: !2494, line: 18, baseType: !309, size: 64, offset: 256)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2493, file: !2494, line: 18, baseType: !309, size: 64, offset: 320)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2493, file: !2494, line: 19, baseType: !2503, size: 64, offset: 384)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2493, file: !2494, line: 21, baseType: !295, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2493, file: !2494, line: 23, baseType: !295, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2493, file: !2494, line: 24, baseType: !295, size: 64, offset: 576)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2493, file: !2494, line: 25, baseType: !295, size: 64, offset: 640)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2493, file: !2494, line: 26, baseType: !295, size: 64, offset: 704)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2493, file: !2494, line: 27, baseType: !295, size: 64, offset: 768)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2493, file: !2494, line: 28, baseType: !295, size: 64, offset: 832)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2493, file: !2494, line: 29, baseType: !295, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2493, file: !2494, line: 30, baseType: !295, size: 64, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2493, file: !2494, line: 31, baseType: !295, size: 64, offset: 1024)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2493, file: !2494, line: 32, baseType: !295, size: 64, offset: 1088)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2493, file: !2494, line: 33, baseType: !295, size: 64, offset: 1152)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2478, file: !2477, line: 63, baseType: !209, size: 32, offset: 1024)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2478, file: !2477, line: 69, baseType: !227, size: 16, offset: 1056)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2478, file: !2477, line: 70, baseType: !736, size: 16, offset: 1072)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1668, file: !38, line: 882, baseType: !309, size: 64, offset: 9024)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1668, file: !38, line: 885, baseType: !189, size: 32, offset: 9088)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1668, file: !38, line: 886, baseType: !2523, size: 64, offset: 9152)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1668, file: !38, line: 901, baseType: !1928, size: 64, offset: 9216)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1668, file: !38, line: 904, baseType: !1691, size: 64, offset: 9280)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1668, file: !38, line: 906, baseType: !2528, size: 64, offset: 9344)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1668, file: !38, line: 930, baseType: !209, size: 32, offset: 9408)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1668, file: !38, line: 933, baseType: !209, size: 32, offset: 9440)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1668, file: !38, line: 935, baseType: !2533, size: 64, offset: 9472)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2534)
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2533, file: !68, line: 104, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1668, file: !38, line: 940, baseType: !604, size: 64, offset: 9536)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1668, file: !38, line: 942, baseType: !860, size: 256, offset: 9600)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1665, file: !38, line: 986, baseType: !2541, offset: 10240)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !1751)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1368, file: !1044, line: 882, baseType: !1664, size: 64, offset: 9792)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1368, file: !1044, line: 884, baseType: !109, size: 32, offset: 9856)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1368, file: !1044, line: 885, baseType: !109, size: 32, offset: 9888)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1368, file: !1044, line: 886, baseType: !109, size: 32, offset: 9920)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1368, file: !1044, line: 888, baseType: !109, size: 32, offset: 9952)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1368, file: !1044, line: 890, baseType: !309, size: 64, offset: 9984)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1368, file: !1044, line: 893, baseType: !7, size: 32, offset: 10048)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1368, file: !1044, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1368, file: !1044, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1368, file: !1044, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1368, file: !1044, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1368, file: !1044, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1368, file: !1044, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1368, file: !1044, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1368, file: !1044, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1368, file: !1044, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1368, file: !1044, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1368, file: !1044, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1368, file: !1044, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1368, file: !1044, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1368, file: !1044, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1368, file: !1044, line: 969, baseType: !309, size: 64, offset: 10176)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1368, file: !1044, line: 971, baseType: !2565, size: 448, offset: 10240)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2566)
!2566 = !{!2567, !2568, !2573}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2565, file: !62, line: 26, baseType: !309, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2565, file: !62, line: 27, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!295, !2572}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, scope: !2565, file: !62, line: 28, baseType: !2574, size: 320, offset: 128)
!2574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2565, file: !62, line: 28, size: 320, elements: !2575)
!2575 = !{!2576, !2586, !2611}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2574, file: !62, line: 37, baseType: !2577, size: 320)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !62, line: 30, size: 320, elements: !2578)
!2578 = !{!2579, !2581, !2582, !2583, !2584, !2585}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2577, file: !62, line: 31, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2577, file: !62, line: 32, baseType: !408, size: 32, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2577, file: !62, line: 33, baseType: !408, size: 32, offset: 96)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2577, file: !62, line: 34, baseType: !408, size: 32, offset: 128)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2577, file: !62, line: 35, baseType: !412, size: 64, offset: 192)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2577, file: !62, line: 36, baseType: !2580, size: 64, offset: 256)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2574, file: !62, line: 47, baseType: !2587, size: 192)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !62, line: 39, size: 192, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2610}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2587, file: !62, line: 40, baseType: !1535, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2587, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2587, file: !62, line: 42, baseType: !2592, size: 64, offset: 64)
!2592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2587, file: !62, line: 42, size: 64, elements: !2593)
!2593 = !{!2594, !2602}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2592, file: !62, line: 43, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2597, line: 7, size: 128, elements: !2598)
!2597 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2598 = !{!2599, !2601}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2596, file: !2597, line: 8, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !293, line: 93, baseType: !502)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2596, file: !2597, line: 9, baseType: !502, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2592, file: !62, line: 44, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2605, line: 7, size: 64, elements: !2606)
!2605 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2606 = !{!2607, !2609}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2604, file: !2605, line: 8, baseType: !2608, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2605, line: 5, baseType: !596)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2604, file: !2605, line: 9, baseType: !596, size: 32, offset: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2587, file: !62, line: 46, baseType: !412, size: 64, offset: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2574, file: !62, line: 55, baseType: !2612, size: 256)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2574, file: !62, line: 49, size: 256, elements: !2613)
!2613 = !{!2614, !2617, !2618, !2619, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2612, file: !62, line: 50, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2612, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2612, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2612, file: !62, line: 53, baseType: !309, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2612, file: !62, line: 54, baseType: !309, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1368, file: !1044, line: 973, baseType: !2622, size: 32, offset: 10688)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !2623)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !293, line: 28, baseType: !109)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1368, file: !1044, line: 974, baseType: !2622, size: 32, offset: 10720)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1368, file: !1044, line: 978, baseType: !309, size: 64, offset: 10752)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1368, file: !1044, line: 987, baseType: !1367, size: 64, offset: 10816)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1368, file: !1044, line: 990, baseType: !1367, size: 64, offset: 10880)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1368, file: !1044, line: 995, baseType: !176, size: 128, offset: 10944)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1368, file: !1044, line: 996, baseType: !176, size: 128, offset: 11072)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1368, file: !1044, line: 997, baseType: !1367, size: 64, offset: 11200)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1368, file: !1044, line: 1005, baseType: !176, size: 128, offset: 11264)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1368, file: !1044, line: 1006, baseType: !176, size: 128, offset: 11392)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1368, file: !1044, line: 1009, baseType: !1732, size: 64, offset: 11520)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1368, file: !1044, line: 1010, baseType: !2635, size: 512, offset: 11584)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 512, elements: !830)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1368, file: !1044, line: 1011, baseType: !176, size: 128, offset: 12096)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1368, file: !1044, line: 1012, baseType: !176, size: 128, offset: 12224)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1368, file: !1044, line: 1014, baseType: !548, size: 64, offset: 12352)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1368, file: !1044, line: 1017, baseType: !729, size: 64, offset: 12416)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1368, file: !1044, line: 1020, baseType: !729, size: 64, offset: 12480)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1368, file: !1044, line: 1023, baseType: !159, size: 64, offset: 12544)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1368, file: !1044, line: 1025, baseType: !412, size: 64, offset: 12608)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1368, file: !1044, line: 1026, baseType: !412, size: 64, offset: 12672)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1368, file: !1044, line: 1031, baseType: !412, size: 64, offset: 12736)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1368, file: !1044, line: 1032, baseType: !2646, size: 192, offset: 12800)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1044, line: 324, size: 192, elements: !2647)
!2647 = !{!2648, !2649, !2650}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2646, file: !1044, line: 326, baseType: !412, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2646, file: !1044, line: 327, baseType: !412, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2646, file: !1044, line: 328, baseType: !558, size: 32, offset: 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1368, file: !1044, line: 1041, baseType: !309, size: 64, offset: 12992)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1368, file: !1044, line: 1042, baseType: !309, size: 64, offset: 13056)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1368, file: !1044, line: 1045, baseType: !412, size: 64, offset: 13120)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1368, file: !1044, line: 1048, baseType: !412, size: 64, offset: 13184)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1368, file: !1044, line: 1051, baseType: !309, size: 64, offset: 13248)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1368, file: !1044, line: 1052, baseType: !309, size: 64, offset: 13312)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1368, file: !1044, line: 1055, baseType: !2658, size: 640, offset: 13376)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2659, line: 132, size: 640, elements: !2660)
!2659 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2660 = !{!2661, !2667, !2668}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2658, file: !2659, line: 133, baseType: !2662, size: 576)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2663, size: 576, elements: !260)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2659, line: 117, size: 192, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2663, file: !2659, line: 118, baseType: !412, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2663, file: !2659, line: 119, baseType: !1544, size: 128, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2658, file: !2659, line: 134, baseType: !7, size: 32, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2658, file: !2659, line: 135, baseType: !7, size: 32, offset: 608)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1368, file: !1044, line: 1058, baseType: !2670, size: 448, offset: 14016)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2659, line: 144, size: 448, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2670, file: !2659, line: 145, baseType: !820, size: 128, align: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2670, file: !2659, line: 146, baseType: !600, size: 256, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2670, file: !2659, line: 147, baseType: !7, size: 32, offset: 384)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1368, file: !1044, line: 1064, baseType: !1758, size: 64, offset: 14464)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1368, file: !1044, line: 1067, baseType: !1758, size: 64, offset: 14528)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1368, file: !1044, line: 1070, baseType: !1758, size: 64, offset: 14592)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1368, file: !1044, line: 1074, baseType: !1785, size: 64, offset: 14656)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1368, file: !1044, line: 1084, baseType: !2680, size: 128, offset: 14720)
!2680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 128, elements: !2681)
!2681 = !{!2682}
!2682 = !DISubrange(count: 16)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1368, file: !1044, line: 1086, baseType: !2684, size: 64, offset: 14848)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1044, line: 55, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1368, file: !1044, line: 1089, baseType: !2687, size: 64, offset: 14912)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2688, line: 12, size: 64, elements: !2689)
!2688 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2689 = !{!2690}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2687, file: !2688, line: 13, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2688, line: 8, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1368, file: !1044, line: 1090, baseType: !2694, size: 128, offset: 14976)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2695, line: 13, size: 128, elements: !2696)
!2695 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2696 = !{!2697}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2694, file: !2695, line: 14, baseType: !176, size: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1368, file: !1044, line: 1097, baseType: !2699, size: 64, offset: 15104)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1044, line: 50, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1368, file: !1044, line: 1100, baseType: !2702, size: 64, offset: 15168)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1044, line: 1100, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1368, file: !1044, line: 1103, baseType: !2705, size: 64, offset: 15232)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1044, line: 53, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1368, file: !1044, line: 1107, baseType: !2708, size: 64, offset: 15296)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2710, line: 35, flags: DIFlagFwdDecl)
!2710 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1368, file: !1044, line: 1110, baseType: !2712, size: 64, offset: 15360)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2714, line: 93, size: 8768, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2763, !2772, !2773, !2775, !2776, !2777, !2781, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2819, !2820, !2827, !2837, !2840, !2841, !2844, !2845, !2846, !2847, !2848, !2849}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2713, file: !2714, line: 94, baseType: !1381, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2713, file: !2714, line: 95, baseType: !209, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2713, file: !2714, line: 96, baseType: !109, size: 32, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2713, file: !2714, line: 97, baseType: !109, size: 32, offset: 96)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2713, file: !2714, line: 98, baseType: !176, size: 128, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2713, file: !2714, line: 100, baseType: !1354, size: 192, offset: 256)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2713, file: !2714, line: 103, baseType: !1367, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2713, file: !2714, line: 106, baseType: !2724, size: 192, offset: 512)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1933, line: 32, size: 192, elements: !2725)
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2724, file: !1933, line: 33, baseType: !176, size: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2724, file: !1933, line: 34, baseType: !2728, size: 64, offset: 128)
!2728 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2729, line: 25, baseType: !2730)
!2729 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2729, line: 23, size: 64, elements: !2731)
!2731 = !{!2732}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2730, file: !2729, line: 24, baseType: !1615, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2713, file: !2714, line: 109, baseType: !970, size: 64, offset: 704)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2713, file: !2714, line: 112, baseType: !109, size: 32, offset: 768)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2713, file: !2714, line: 114, baseType: !109, size: 32, offset: 800)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2713, file: !2714, line: 115, baseType: !1367, size: 64, offset: 832)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2713, file: !2714, line: 118, baseType: !109, size: 32, offset: 896)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !2714, line: 119, baseType: !7, size: 32, offset: 928)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2713, file: !2714, line: 121, baseType: !2740, size: 64, offset: 960)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2714, line: 80, size: 448, elements: !2742)
!2742 = !{!2743, !2744, !2750}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2741, file: !2714, line: 81, baseType: !209, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2741, file: !2714, line: 82, baseType: !2745, size: 128, offset: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2714, line: 75, size: 128, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2745, file: !2714, line: 76, baseType: !1367, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2745, file: !2714, line: 77, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2741, file: !2714, line: 83, baseType: !549, size: 256, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2713, file: !2714, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2713, file: !2714, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2713, file: !2714, line: 138, baseType: !7, size: 32, offset: 1056)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2713, file: !2714, line: 139, baseType: !176, size: 128, offset: 1088)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2713, file: !2714, line: 142, baseType: !1488, size: 512, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2713, file: !2714, line: 143, baseType: !1496, size: 64, offset: 1728)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2713, file: !2714, line: 150, baseType: !2758, size: 256, offset: 1792)
!2758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2759, size: 256, elements: !719)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2714, line: 38, size: 128, elements: !2760)
!2760 = !{!2761, !2762}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2759, file: !2714, line: 39, baseType: !412, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2759, file: !2714, line: 40, baseType: !412, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2713, file: !2714, line: 156, baseType: !2764, size: 192, offset: 2048)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2714, line: 66, size: 192, elements: !2765)
!2765 = !{!2766}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2764, file: !2714, line: 67, baseType: !2767, size: 192)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2714, line: 47, size: 192, elements: !2768)
!2768 = !{!2769, !2770, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2767, file: !2714, line: 48, baseType: !606, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2767, file: !2714, line: 49, baseType: !606, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2767, file: !2714, line: 50, baseType: !606, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2713, file: !2714, line: 160, baseType: !2658, size: 640, offset: 2240)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2713, file: !2714, line: 163, baseType: !2774, size: 256, offset: 2880)
!2774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1732, size: 256, elements: !830)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2713, file: !2714, line: 169, baseType: !1732, size: 64, offset: 3136)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2713, file: !2714, line: 172, baseType: !109, size: 32, offset: 3200)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2713, file: !2714, line: 174, baseType: !2778, size: 64, offset: 3264)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2780, line: 26, flags: DIFlagFwdDecl)
!2780 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2713, file: !2714, line: 185, baseType: !2782, size: 64, offset: 3328)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !381, line: 860, baseType: !2783)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 853, size: 64, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2783, file: !381, line: 858, baseType: !380, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2783, file: !381, line: 859, baseType: !189, size: 32, offset: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2713, file: !2714, line: 186, baseType: !412, size: 64, offset: 3392)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2713, file: !2714, line: 186, baseType: !412, size: 64, offset: 3456)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2713, file: !2714, line: 186, baseType: !412, size: 64, offset: 3520)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2713, file: !2714, line: 186, baseType: !412, size: 64, offset: 3584)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2713, file: !2714, line: 187, baseType: !412, size: 64, offset: 3648)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2713, file: !2714, line: 188, baseType: !412, size: 64, offset: 3712)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2713, file: !2714, line: 189, baseType: !2646, size: 192, offset: 3776)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2713, file: !2714, line: 190, baseType: !309, size: 64, offset: 3968)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2713, file: !2714, line: 190, baseType: !309, size: 64, offset: 4032)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2713, file: !2714, line: 190, baseType: !309, size: 64, offset: 4096)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2713, file: !2714, line: 190, baseType: !309, size: 64, offset: 4160)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2713, file: !2714, line: 191, baseType: !309, size: 64, offset: 4224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2713, file: !2714, line: 191, baseType: !309, size: 64, offset: 4288)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2713, file: !2714, line: 191, baseType: !309, size: 64, offset: 4352)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2713, file: !2714, line: 191, baseType: !309, size: 64, offset: 4416)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2713, file: !2714, line: 192, baseType: !309, size: 64, offset: 4480)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2713, file: !2714, line: 192, baseType: !309, size: 64, offset: 4544)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2713, file: !2714, line: 192, baseType: !309, size: 64, offset: 4608)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2713, file: !2714, line: 192, baseType: !309, size: 64, offset: 4672)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2713, file: !2714, line: 193, baseType: !309, size: 64, offset: 4736)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2713, file: !2714, line: 193, baseType: !309, size: 64, offset: 4800)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2713, file: !2714, line: 194, baseType: !2809, size: 448, offset: 4864)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2810, line: 12, size: 448, elements: !2811)
!2810 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2809, file: !2810, line: 15, baseType: !412, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2809, file: !2810, line: 17, baseType: !412, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2809, file: !2810, line: 19, baseType: !412, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2809, file: !2810, line: 21, baseType: !412, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2809, file: !2810, line: 29, baseType: !412, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2809, file: !2810, line: 35, baseType: !412, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2809, file: !2810, line: 44, baseType: !412, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2713, file: !2714, line: 202, baseType: !414, size: 64, offset: 5312)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2713, file: !2714, line: 213, baseType: !2821, size: 2048, offset: 5376)
!2821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2822, size: 2048, elements: !2681)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2823, line: 43, size: 128, elements: !2824)
!2823 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2824 = !{!2825, !2826}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2822, file: !2823, line: 44, baseType: !308, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2822, file: !2823, line: 45, baseType: !308, size: 64, offset: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2713, file: !2714, line: 216, baseType: !2828, size: 448, offset: 7424)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2714, line: 30, size: 448, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2828, file: !2714, line: 31, baseType: !109, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2828, file: !2714, line: 32, baseType: !295, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2828, file: !2714, line: 33, baseType: !309, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2828, file: !2714, line: 34, baseType: !412, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2828, file: !2714, line: 34, baseType: !412, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2828, file: !2714, line: 35, baseType: !309, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2828, file: !2714, line: 35, baseType: !309, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2713, file: !2714, line: 219, baseType: !2838, size: 64, offset: 7872)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2714, line: 219, flags: DIFlagFwdDecl)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2713, file: !2714, line: 222, baseType: !7, size: 32, offset: 7936)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2713, file: !2714, line: 223, baseType: !2842, size: 64, offset: 8000)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2714, line: 223, flags: DIFlagFwdDecl)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2713, file: !2714, line: 230, baseType: !680, size: 8, offset: 8064)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2713, file: !2714, line: 231, baseType: !738, size: 16, offset: 8080)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2713, file: !2714, line: 232, baseType: !738, size: 16, offset: 8096)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2713, file: !2714, line: 234, baseType: !1664, size: 64, offset: 8128)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2713, file: !2714, line: 237, baseType: !600, size: 256, offset: 8192)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2713, file: !2714, line: 243, baseType: !1261, size: 320, offset: 8448)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1368, file: !1044, line: 1111, baseType: !2851, size: 64, offset: 15424)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2714, line: 20, size: 16640, elements: !2853)
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2852, file: !2714, line: 21, baseType: !189, size: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2852, file: !2714, line: 22, baseType: !1381, size: 32, offset: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2852, file: !2714, line: 23, baseType: !1354, size: 192, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2852, file: !2714, line: 24, baseType: !2858, size: 16384, offset: 256)
!2858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2859, size: 16384, elements: !264)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1933, line: 51, size: 256, elements: !2860)
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2859, file: !1933, line: 52, baseType: !2862, size: 256)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1933, line: 37, size: 256, elements: !2863)
!2863 = !{!2864, !2871, !2872, !2876}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2862, file: !1933, line: 39, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2866, line: 83, baseType: !2867)
!2866 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2866, line: 82, baseType: !2869)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{null, !109}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2862, file: !1933, line: 40, baseType: !309, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2862, file: !1933, line: 46, baseType: !2873, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2866, line: 86, baseType: !2874)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2866, line: 85, baseType: !965)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2862, file: !1933, line: 48, baseType: !2728, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1368, file: !1044, line: 1112, baseType: !2728, size: 64, offset: 15488)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1368, file: !1044, line: 1113, baseType: !2728, size: 64, offset: 15552)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1368, file: !1044, line: 1115, baseType: !2728, size: 64, offset: 15616)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1368, file: !1044, line: 1116, baseType: !2724, size: 192, offset: 15680)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1368, file: !1044, line: 1117, baseType: !309, size: 64, offset: 15872)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1368, file: !1044, line: 1118, baseType: !306, size: 64, offset: 15936)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1368, file: !1044, line: 1119, baseType: !7, size: 32, offset: 16000)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1368, file: !1044, line: 1121, baseType: !819, size: 64, offset: 16064)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1368, file: !1044, line: 1125, baseType: !2886, size: 64, offset: 16128)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1044, line: 43, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1368, file: !1044, line: 1127, baseType: !345, size: 32, offset: 16192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1368, file: !1044, line: 1128, baseType: !7, size: 32, offset: 16224)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1368, file: !1044, line: 1130, baseType: !2891, size: 128, offset: 16256)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2892, line: 37, size: 128, elements: !2893)
!2892 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2893 = !{!2894, !2895, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2891, file: !2892, line: 38, baseType: !109, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2891, file: !2892, line: 39, baseType: !209, size: 32, offset: 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2891, file: !2892, line: 40, baseType: !2897, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2892, line: 24, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1368, file: !1044, line: 1131, baseType: !2900, size: 256, offset: 16384)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2901, line: 12, size: 256, elements: !2902)
!2901 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2900, file: !2901, line: 13, baseType: !259, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2900, file: !2901, line: 14, baseType: !309, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2900, file: !2901, line: 15, baseType: !309, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2900, file: !2901, line: 16, baseType: !680, size: 8, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1368, file: !1044, line: 1134, baseType: !412, size: 64, offset: 16640)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1368, file: !1044, line: 1135, baseType: !412, size: 64, offset: 16704)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1368, file: !1044, line: 1138, baseType: !189, size: 32, offset: 16768)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1368, file: !1044, line: 1141, baseType: !558, size: 32, offset: 16800)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1368, file: !1044, line: 1143, baseType: !2912, size: 64, offset: 16832)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1044, line: 735, size: 64, elements: !2913)
!2913 = !{!2914}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2912, file: !1044, line: 736, baseType: !2915, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1368, file: !1044, line: 1147, baseType: !1547, size: 128, offset: 16896)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1368, file: !1044, line: 1149, baseType: !1367, size: 64, offset: 17024)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1368, file: !1044, line: 1151, baseType: !2919, size: 64, offset: 17088)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1044, line: 1151, flags: DIFlagFwdDecl)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1368, file: !1044, line: 1188, baseType: !159, size: 64, offset: 17152)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1368, file: !1044, line: 1191, baseType: !2923, size: 64, offset: 17216)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1044, line: 44, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1368, file: !1044, line: 1194, baseType: !2926, size: 64, offset: 17280)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1044, line: 45, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1368, file: !1044, line: 1197, baseType: !2929, size: 64, offset: 17344)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1044, line: 61, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1368, file: !1044, line: 1199, baseType: !2932, size: 64, offset: 17408)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2934, line: 99, size: 128, elements: !2935)
!2934 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2935 = !{!2936, !2937, !2938}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2933, file: !2934, line: 100, baseType: !604, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2933, file: !2934, line: 101, baseType: !209, size: 32, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2933, file: !2934, line: 103, baseType: !229, size: 16, offset: 96)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1368, file: !1044, line: 1202, baseType: !2940, size: 64, offset: 17472)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1044, line: 48, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1368, file: !1044, line: 1205, baseType: !309, size: 64, offset: 17536)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1368, file: !1044, line: 1206, baseType: !2944, size: 64, offset: 17600)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1933, line: 14, baseType: !2946)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1933, line: 12, size: 384, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !1933, line: 13, baseType: !2949, size: 384)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !1933, line: 13, size: 384, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2949, file: !1933, line: 13, baseType: !109, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2949, file: !1933, line: 13, baseType: !109, size: 32, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2949, file: !1933, line: 13, baseType: !109, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2949, file: !1933, line: 13, baseType: !2955, size: 256, offset: 128)
!2955 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2956, line: 37, size: 256, elements: !2957)
!2956 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2957 = !{!2958, !2963, !2976, !2982, !2991, !3018, !3023}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2955, file: !2956, line: 42, baseType: !2959, size: 64)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 39, size: 64, elements: !2960)
!2960 = !{!2961, !2962}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2959, file: !2956, line: 40, baseType: !2623, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2959, file: !2956, line: 41, baseType: !351, size: 32, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2955, file: !2956, line: 50, baseType: !2964, size: 192)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 45, size: 192, elements: !2965)
!2965 = !{!2966, !2968, !2969, !2975}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2964, file: !2956, line: 46, baseType: !2967, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !293, line: 95, baseType: !109)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2964, file: !2956, line: 47, baseType: !109, size: 32, offset: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2964, file: !2956, line: 48, baseType: !2970, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2956, line: 11, baseType: !2971)
!2971 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2956, line: 8, size: 64, elements: !2972)
!2972 = !{!2973, !2974}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2971, file: !2956, line: 9, baseType: !109, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2971, file: !2956, line: 10, baseType: !159, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2964, file: !2956, line: 49, baseType: !109, size: 32, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2955, file: !2956, line: 57, baseType: !2977, size: 128)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 53, size: 128, elements: !2978)
!2978 = !{!2979, !2980, !2981}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2977, file: !2956, line: 54, baseType: !2623, size: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2977, file: !2956, line: 55, baseType: !351, size: 32, offset: 32)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2977, file: !2956, line: 56, baseType: !2970, size: 64, offset: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2955, file: !2956, line: 66, baseType: !2983, size: 256)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 60, size: 256, elements: !2984)
!2984 = !{!2985, !2986, !2987, !2988, !2990}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2983, file: !2956, line: 61, baseType: !2623, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2983, file: !2956, line: 62, baseType: !351, size: 32, offset: 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2983, file: !2956, line: 63, baseType: !109, size: 32, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2983, file: !2956, line: 64, baseType: !2989, size: 64, offset: 128)
!2989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !293, line: 94, baseType: !294)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2983, file: !2956, line: 65, baseType: !2989, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2955, file: !2956, line: 105, baseType: !2992, size: 256)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 69, size: 256, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2992, file: !2956, line: 70, baseType: !159, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, scope: !2992, file: !2956, line: 79, baseType: !2996, size: 192, offset: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2992, file: !2956, line: 79, size: 192, elements: !2997)
!2997 = !{!2998, !2999, !3000, !3007, !3012}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2996, file: !2956, line: 81, baseType: !109, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2996, file: !2956, line: 86, baseType: !738, size: 16)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2996, file: !2956, line: 92, baseType: !3001, size: 192)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2996, file: !2956, line: 88, size: 192, elements: !3002)
!3002 = !{!3003, !3005, !3006}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3001, file: !2956, line: 89, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !1531)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3001, file: !2956, line: 90, baseType: !159, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3001, file: !2956, line: 91, baseType: !159, size: 64, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2996, file: !2956, line: 97, baseType: !3008, size: 96)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2996, file: !2956, line: 94, size: 96, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3008, file: !2956, line: 95, baseType: !3004, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3008, file: !2956, line: 96, baseType: !409, size: 32, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2996, file: !2956, line: 103, baseType: !3013, size: 128)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2996, file: !2956, line: 99, size: 128, elements: !3014)
!3014 = !{!3015, !3016, !3017}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3013, file: !2956, line: 100, baseType: !309, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3013, file: !2956, line: 101, baseType: !409, size: 32, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3013, file: !2956, line: 102, baseType: !409, size: 32, offset: 96)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2955, file: !2956, line: 111, baseType: !3019, size: 128)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 108, size: 128, elements: !3020)
!3020 = !{!3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3019, file: !2956, line: 109, baseType: !295, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3019, file: !2956, line: 110, baseType: !109, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2955, file: !2956, line: 118, baseType: !3024, size: 128)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2955, file: !2956, line: 114, size: 128, elements: !3025)
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3024, file: !2956, line: 115, baseType: !159, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3024, file: !2956, line: 116, baseType: !109, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3024, file: !2956, line: 117, baseType: !7, size: 32, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1368, file: !1044, line: 1208, baseType: !2809, size: 448, offset: 17664)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1368, file: !1044, line: 1215, baseType: !412, size: 64, offset: 18112)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1368, file: !1044, line: 1217, baseType: !412, size: 64, offset: 18176)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1368, file: !1044, line: 1219, baseType: !412, size: 64, offset: 18240)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1368, file: !1044, line: 1223, baseType: !3034, size: 64, offset: 18304)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3035, line: 99, baseType: !3036)
!3035 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3035, line: 99, size: 64, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3036, file: !3035, line: 99, baseType: !1615, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1368, file: !1044, line: 1225, baseType: !380, size: 32, offset: 18368)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1368, file: !1044, line: 1226, baseType: !109, size: 32, offset: 18400)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1368, file: !1044, line: 1227, baseType: !109, size: 32, offset: 18432)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1368, file: !1044, line: 1231, baseType: !3043, size: 64, offset: 18496)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1044, line: 1231, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1368, file: !1044, line: 1233, baseType: !176, size: 128, offset: 18560)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1368, file: !1044, line: 1240, baseType: !3047, size: 64, offset: 18688)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1044, line: 62, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1368, file: !1044, line: 1242, baseType: !3050, size: 64, offset: 18752)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1044, line: 1242, flags: DIFlagFwdDecl)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1368, file: !1044, line: 1244, baseType: !176, size: 128, offset: 18816)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1368, file: !1044, line: 1245, baseType: !3054, size: 64, offset: 18944)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1044, line: 51, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1368, file: !1044, line: 1246, baseType: !600, size: 256, offset: 19008)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1368, file: !1044, line: 1247, baseType: !7, size: 32, offset: 19264)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1368, file: !1044, line: 1250, baseType: !3059, size: 64, offset: 19328)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1044, line: 57, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1368, file: !1044, line: 1251, baseType: !600, size: 256, offset: 19392)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1368, file: !1044, line: 1252, baseType: !176, size: 128, offset: 19648)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1368, file: !1044, line: 1259, baseType: !2312, size: 64, offset: 19776)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1368, file: !1044, line: 1260, baseType: !738, size: 16, offset: 19840)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1368, file: !1044, line: 1261, baseType: !738, size: 16, offset: 19856)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1368, file: !1044, line: 1314, baseType: !3067, size: 64, offset: 19904)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3069, line: 62, size: 256, align: 256, elements: !3070)
!3069 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3077}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3068, file: !3069, line: 75, baseType: !409, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3068, file: !3069, line: 90, baseType: !409, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3068, file: !3069, line: 112, baseType: !413, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3068, file: !3069, line: 132, baseType: !409, size: 32, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3068, file: !3069, line: 140, baseType: !409, size: 32, offset: 160)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3068, file: !3069, line: 149, baseType: !409, size: 32, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3068, file: !3069, line: 154, baseType: !3078, offset: 224)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !1751)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1368, file: !1044, line: 1315, baseType: !408, size: 32, offset: 19968)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1368, file: !1044, line: 1316, baseType: !408, size: 32, offset: 20000)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1368, file: !1044, line: 1321, baseType: !309, size: 64, offset: 20032)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1368, file: !1044, line: 1325, baseType: !109, size: 32, offset: 20096)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1368, file: !1044, line: 1326, baseType: !109, size: 32, offset: 20128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1368, file: !1044, line: 1327, baseType: !109, size: 32, offset: 20160)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1368, file: !1044, line: 1328, baseType: !109, size: 32, offset: 20192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1368, file: !1044, line: 1329, baseType: !820, size: 128, align: 64, offset: 20224)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1368, file: !1044, line: 1332, baseType: !3088, size: 128, offset: 20352)
!3088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3089, line: 51, size: 128, elements: !3090)
!3089 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3090 = !{!3091, !3096, !3097}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3088, file: !3089, line: 60, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3093, line: 7, size: 64, elements: !3094)
!3093 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3092, file: !3093, line: 12, baseType: !1612, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3088, file: !3089, line: 63, baseType: !680, size: 8, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3088, file: !3089, line: 70, baseType: !680, size: 8, offset: 72)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1368, file: !1044, line: 1335, baseType: !2364, size: 64, offset: 20480)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1368, file: !1044, line: 1337, baseType: !3100, size: 128, offset: 20544)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3089, line: 39, size: 128, elements: !3101)
!3101 = !{!3102, !3103, !3104}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3100, file: !3089, line: 40, baseType: !2151, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3100, file: !3089, line: 42, baseType: !409, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3100, file: !3089, line: 43, baseType: !409, size: 32, offset: 96)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1368, file: !1044, line: 1340, baseType: !3106, size: 64, offset: 20672)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1044, line: 69, flags: DIFlagFwdDecl)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1368, file: !1044, line: 1351, baseType: !109, size: 32, offset: 20736)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1368, file: !1044, line: 1352, baseType: !109, size: 32, offset: 20768)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1368, file: !1044, line: 1354, baseType: !309, size: 64, offset: 20800)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1368, file: !1044, line: 1364, baseType: !412, size: 64, offset: 20864)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1368, file: !1044, line: 1365, baseType: !412, size: 64, offset: 20928)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1368, file: !1044, line: 1412, baseType: !309, size: 64, offset: 20992)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1368, file: !1044, line: 1453, baseType: !3115, size: 64, offset: 21056)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1044, line: 1453, flags: DIFlagFwdDecl)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1368, file: !1044, line: 1457, baseType: !3118, size: 64, offset: 21120)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3120)
!3120 = !{!3121, !3122, !3141, !3144, !3145, !3178, !3188}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3119, file: !68, line: 62, baseType: !67, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, scope: !3119, file: !68, line: 64, baseType: !3123, size: 192, offset: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3119, file: !68, line: 64, size: 192, elements: !3124)
!3124 = !{!3125, !3136}
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !68, line: 65, baseType: !3126, size: 192)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3123, file: !68, line: 65, size: 192, elements: !3127)
!3127 = !{!3128, !3135}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3126, file: !68, line: 66, baseType: !3129, size: 128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3130, line: 50, size: 128, elements: !3131)
!3130 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3131 = !{!3132, !3133, !3134}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3129, file: !3130, line: 52, baseType: !309, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3129, file: !3130, line: 54, baseType: !7, size: 32, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3129, file: !3130, line: 55, baseType: !7, size: 32, offset: 96)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3126, file: !68, line: 67, baseType: !309, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3123, file: !68, line: 70, baseType: !3137, size: 192)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3123, file: !68, line: 70, size: 192, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3137, file: !68, line: 71, baseType: !820, size: 128, align: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3137, file: !68, line: 72, baseType: !309, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3119, file: !68, line: 76, baseType: !3142, size: 64, offset: 256)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3119, file: !68, line: 77, baseType: !309, size: 64, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3119, file: !68, line: 79, baseType: !3146, size: 64, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3130, line: 25, size: 256, elements: !3148)
!3148 = !{!3149, !3155, !3159}
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3147, file: !3130, line: 26, baseType: !3150, size: 128)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3147, file: !3130, line: 26, size: 128, elements: !3151)
!3151 = !{!3152, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3150, file: !3130, line: 27, baseType: !3153, size: 128)
!3153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 128, elements: !2681)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3150, file: !3130, line: 28, baseType: !3153, size: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3147, file: !3130, line: 31, baseType: !3156, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3158)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3130, line: 23, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3147, file: !3130, line: 33, baseType: !3160, size: 64, offset: 192)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3147, file: !3130, line: 33, size: 64, elements: !3161)
!3161 = !{!3162, !3168, !3173}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3160, file: !3130, line: 38, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3130, line: 34, size: 64, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3163, file: !3130, line: 35, baseType: !596, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3163, file: !3130, line: 36, baseType: !217, size: 8, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3163, file: !3130, line: 37, baseType: !217, size: 8, offset: 40)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3160, file: !3130, line: 42, baseType: !3169, size: 16)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3130, line: 39, size: 16, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3169, file: !3130, line: 40, baseType: !217, size: 8)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3169, file: !3130, line: 41, baseType: !217, size: 8, offset: 8)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3160, file: !3130, line: 46, baseType: !3174, size: 16)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3160, file: !3130, line: 43, size: 16, elements: !3175)
!3175 = !{!3176, !3177}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3174, file: !3130, line: 44, baseType: !217, size: 8)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3174, file: !3130, line: 45, baseType: !217, size: 8, offset: 8)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3119, file: !68, line: 81, baseType: !3179, size: 64, offset: 448)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3187}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3180, file: !68, line: 86, baseType: !3142, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3180, file: !68, line: 87, baseType: !309, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3180, file: !68, line: 88, baseType: !309, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3180, file: !68, line: 89, baseType: !309, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3180, file: !68, line: 90, baseType: !680, size: 8, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3180, file: !68, line: 92, baseType: !3179, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3119, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1368, file: !1044, line: 1463, baseType: !3190, offset: 21184)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1044, line: 739, elements: !889)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1368, file: !1044, line: 1470, baseType: !820, size: 128, align: 64, offset: 21184)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1368, file: !1044, line: 1471, baseType: !1381, size: 32, offset: 21312)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1368, file: !1044, line: 1472, baseType: !109, size: 32, offset: 21344)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1368, file: !1044, line: 1474, baseType: !1367, size: 64, offset: 21376)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1368, file: !1044, line: 1475, baseType: !842, size: 320, offset: 21440)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1368, file: !1044, line: 1478, baseType: !3197, size: 64, offset: 21760)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3199, line: 49, size: 512, elements: !3200)
!3199 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3207, !3208, !3209, !3211}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3198, file: !3199, line: 50, baseType: !3197, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3198, file: !3199, line: 51, baseType: !159, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3198, file: !3199, line: 52, baseType: !309, size: 64, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3198, file: !3199, line: 53, baseType: !309, size: 64, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3198, file: !3199, line: 54, baseType: !3206, size: 64, offset: 256)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3198, file: !3199, line: 56, baseType: !7, size: 32, offset: 320)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3198, file: !3199, line: 58, baseType: !7, size: 32, offset: 352)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3198, file: !3199, line: 59, baseType: !3210, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !158, line: 159, baseType: !412)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3198, file: !3199, line: 60, baseType: !2503, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1368, file: !1044, line: 1482, baseType: !1381, size: 32, offset: 21824)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1368, file: !1044, line: 1489, baseType: !159, size: 64, offset: 21888)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1368, file: !1044, line: 1504, baseType: !159, size: 64, offset: 21952)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1368, file: !1044, line: 1505, baseType: !413, size: 64, offset: 22016)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1368, file: !1044, line: 1506, baseType: !412, size: 64, offset: 22080)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1368, file: !1044, line: 1507, baseType: !413, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1368, file: !1044, line: 1508, baseType: !413, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1368, file: !1044, line: 1509, baseType: !413, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1368, file: !1044, line: 1510, baseType: !820, size: 128, align: 64, offset: 22208)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1368, file: !1044, line: 1511, baseType: !109, size: 32, offset: 22336)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1368, file: !1044, line: 1515, baseType: !3223, size: 64, offset: 22400)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1395, line: 56, size: 64, elements: !3224)
!3224 = !{!3225}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3223, file: !1395, line: 57, baseType: !1398, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1368, file: !1044, line: 1518, baseType: !3223, size: 64, offset: 22464)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1368, file: !1044, line: 1528, baseType: !820, size: 128, align: 64, offset: 22528)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1368, file: !1044, line: 1552, baseType: !3229, size: 35328, offset: 23040)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3230, line: 430, size: 35328, elements: !3231)
!3230 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3231 = !{!3232, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3261, !3262, !3263, !3264, !3265, !3266, !3269, !3270, !3271, !3272}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3229, file: !3230, line: 432, baseType: !3233, size: 192)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3234, size: 192, elements: !260)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3235, line: 16, size: 64, elements: !3236)
!3235 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3234, file: !3235, line: 17, baseType: !227, size: 16)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3234, file: !3235, line: 18, baseType: !227, size: 16, offset: 16)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3234, file: !3235, line: 19, baseType: !227, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3234, file: !3235, line: 19, baseType: !227, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3234, file: !3235, line: 19, baseType: !227, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3234, file: !3235, line: 19, baseType: !227, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3234, file: !3235, line: 19, baseType: !227, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3234, file: !3235, line: 20, baseType: !227, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3234, file: !3235, line: 20, baseType: !227, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3234, file: !3235, line: 20, baseType: !227, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3234, file: !3235, line: 20, baseType: !227, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3234, file: !3235, line: 20, baseType: !227, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3234, file: !3235, line: 20, baseType: !227, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3229, file: !3230, line: 436, baseType: !309, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3229, file: !3230, line: 440, baseType: !229, size: 16, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3229, file: !3230, line: 441, baseType: !229, size: 16, offset: 272)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3229, file: !3230, line: 442, baseType: !229, size: 16, offset: 288)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3229, file: !3230, line: 443, baseType: !229, size: 16, offset: 304)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3229, file: !3230, line: 447, baseType: !309, size: 64, offset: 320)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3229, file: !3230, line: 448, baseType: !309, size: 64, offset: 384)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3229, file: !3230, line: 459, baseType: !3258, size: 256, offset: 448)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3259, size: 256, elements: !830)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3230, line: 428, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3229, file: !3230, line: 461, baseType: !309, size: 64, offset: 704)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3229, file: !3230, line: 463, baseType: !309, size: 64, offset: 768)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3229, file: !3230, line: 465, baseType: !309, size: 64, offset: 832)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3229, file: !3230, line: 466, baseType: !309, size: 64, offset: 896)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3229, file: !3230, line: 467, baseType: !309, size: 64, offset: 960)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3229, file: !3230, line: 473, baseType: !3267, size: 64, offset: 1024)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3230, line: 10, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3229, file: !3230, line: 480, baseType: !309, size: 64, offset: 1088)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3229, file: !3230, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3229, file: !3230, line: 491, baseType: !408, size: 32, offset: 1184)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3229, file: !3230, line: 501, baseType: !3273, size: 33792, offset: 1536)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3274, line: 448, size: 33792, elements: !3275)
!3274 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3275 = !{!3276, !3277, !3278, !3440, !3441, !3447, !3448}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3273, file: !3274, line: 461, baseType: !7, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3273, file: !3274, line: 468, baseType: !309, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3273, file: !3274, line: 476, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3274, line: 356, size: 33280, align: 512, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3280, file: !3274, line: 358, baseType: !7, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3280, file: !3274, line: 361, baseType: !7, size: 32, offset: 32)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3280, file: !3274, line: 364, baseType: !412, size: 64, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3280, file: !3274, line: 367, baseType: !412, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3280, file: !3274, line: 370, baseType: !412, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3280, file: !3274, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3280, file: !3274, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3280, file: !3274, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3280, file: !3274, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3280, file: !3274, line: 397, baseType: !3292, size: 32768, offset: 512)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3274, line: 348, size: 32768, elements: !3293)
!3293 = !{!3294, !3309, !3346, !3423, !3436}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3292, file: !3274, line: 349, baseType: !3295, size: 896)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3274, line: 12, size: 896, elements: !3296)
!3296 = !{!3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3308}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3295, file: !3274, line: 13, baseType: !408, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3295, file: !3274, line: 14, baseType: !408, size: 32, offset: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3295, file: !3274, line: 15, baseType: !408, size: 32, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3295, file: !3274, line: 16, baseType: !408, size: 32, offset: 96)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3295, file: !3274, line: 17, baseType: !408, size: 32, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3295, file: !3274, line: 18, baseType: !408, size: 32, offset: 160)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3295, file: !3274, line: 19, baseType: !408, size: 32, offset: 192)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3295, file: !3274, line: 22, baseType: !3305, size: 640, offset: 224)
!3305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 640, elements: !3306)
!3306 = !{!3307}
!3307 = !DISubrange(count: 20)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3295, file: !3274, line: 25, baseType: !408, size: 32, offset: 864)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3292, file: !3274, line: 350, baseType: !3310, size: 4096, align: 128)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3274, line: 34, size: 4096, align: 128, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3331, !3332, !3333, !3335, !3337, !3341}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3310, file: !3274, line: 35, baseType: !227, size: 16)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3310, file: !3274, line: 36, baseType: !227, size: 16, offset: 16)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3310, file: !3274, line: 37, baseType: !227, size: 16, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3310, file: !3274, line: 38, baseType: !227, size: 16, offset: 48)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !3274, line: 39, baseType: !3317, size: 128, offset: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !3274, line: 39, size: 128, elements: !3318)
!3318 = !{!3319, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !3274, line: 40, baseType: !3320, size: 128)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3274, line: 40, size: 128, elements: !3321)
!3321 = !{!3322, !3323}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3320, file: !3274, line: 41, baseType: !412, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3320, file: !3274, line: 42, baseType: !412, size: 64, offset: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3317, file: !3274, line: 44, baseType: !3325, size: 128)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3274, line: 44, size: 128, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3325, file: !3274, line: 45, baseType: !408, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3325, file: !3274, line: 46, baseType: !408, size: 32, offset: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3325, file: !3274, line: 47, baseType: !408, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3325, file: !3274, line: 48, baseType: !408, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3310, file: !3274, line: 51, baseType: !408, size: 32, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3310, file: !3274, line: 52, baseType: !408, size: 32, offset: 224)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3310, file: !3274, line: 55, baseType: !3334, size: 1024, offset: 256)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1024, elements: !421)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3310, file: !3274, line: 58, baseType: !3336, size: 2048, offset: 1280)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 2048, elements: !264)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3310, file: !3274, line: 60, baseType: !3338, size: 384, offset: 3328)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 384, elements: !3339)
!3339 = !{!3340}
!3340 = !DISubrange(count: 12)
!3341 = !DIDerivedType(tag: DW_TAG_member, scope: !3310, file: !3274, line: 62, baseType: !3342, size: 384, offset: 3712)
!3342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3310, file: !3274, line: 62, size: 384, elements: !3343)
!3343 = !{!3344, !3345}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3342, file: !3274, line: 63, baseType: !3338, size: 384)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3342, file: !3274, line: 64, baseType: !3338, size: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3292, file: !3274, line: 351, baseType: !3347, size: 1088)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3274, line: 79, size: 1088, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3422}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3347, file: !3274, line: 80, baseType: !408, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3347, file: !3274, line: 81, baseType: !408, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3347, file: !3274, line: 82, baseType: !408, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3347, file: !3274, line: 83, baseType: !408, size: 32, offset: 96)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3347, file: !3274, line: 84, baseType: !408, size: 32, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3347, file: !3274, line: 85, baseType: !408, size: 32, offset: 160)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3347, file: !3274, line: 86, baseType: !408, size: 32, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3347, file: !3274, line: 88, baseType: !3305, size: 640, offset: 224)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3347, file: !3274, line: 89, baseType: !217, size: 8, offset: 864)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3347, file: !3274, line: 90, baseType: !217, size: 8, offset: 872)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3347, file: !3274, line: 91, baseType: !217, size: 8, offset: 880)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3347, file: !3274, line: 92, baseType: !217, size: 8, offset: 888)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3347, file: !3274, line: 93, baseType: !217, size: 8, offset: 896)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3347, file: !3274, line: 94, baseType: !217, size: 8, offset: 904)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3347, file: !3274, line: 95, baseType: !3364, size: 64, offset: 960)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3366, line: 11, size: 128, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3365, file: !3366, line: 12, baseType: !295, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3365, file: !3366, line: 13, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3372, line: 103, size: 1344, elements: !3373)
!3372 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3402, !3403, !3404}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3371, file: !3372, line: 109, baseType: !309, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3371, file: !3372, line: 110, baseType: !309, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3371, file: !3372, line: 111, baseType: !309, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3371, file: !3372, line: 112, baseType: !309, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3371, file: !3372, line: 113, baseType: !309, size: 64, offset: 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3371, file: !3372, line: 114, baseType: !309, size: 64, offset: 320)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3371, file: !3372, line: 117, baseType: !309, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3371, file: !3372, line: 118, baseType: !309, size: 64, offset: 448)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3371, file: !3372, line: 119, baseType: !309, size: 64, offset: 512)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3371, file: !3372, line: 120, baseType: !309, size: 64, offset: 576)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3371, file: !3372, line: 121, baseType: !309, size: 64, offset: 640)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3371, file: !3372, line: 122, baseType: !309, size: 64, offset: 704)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3371, file: !3372, line: 123, baseType: !309, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3371, file: !3372, line: 124, baseType: !309, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3371, file: !3372, line: 125, baseType: !309, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3371, file: !3372, line: 139, baseType: !309, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3371, file: !3372, line: 142, baseType: !309, size: 64, offset: 1024)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !3372, line: 144, baseType: !3392, size: 64, offset: 1088)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3371, file: !3372, line: 144, size: 64, elements: !3393)
!3393 = !{!3394, !3395, !3396}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3392, file: !3372, line: 146, baseType: !227, size: 16)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3392, file: !3372, line: 148, baseType: !412, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3392, file: !3372, line: 150, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3372, line: 59, size: 64, elements: !3398)
!3398 = !{!3399, !3400, !3401}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3397, file: !3372, line: 61, baseType: !412, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3397, file: !3372, line: 63, baseType: !412, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3397, file: !3372, line: 65, baseType: !412, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3371, file: !3372, line: 153, baseType: !309, size: 64, offset: 1152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3371, file: !3372, line: 154, baseType: !309, size: 64, offset: 1216)
!3404 = !DIDerivedType(tag: DW_TAG_member, scope: !3371, file: !3372, line: 156, baseType: !3405, size: 64, offset: 1280)
!3405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3371, file: !3372, line: 156, size: 64, elements: !3406)
!3406 = !{!3407, !3408, !3409}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3405, file: !3372, line: 158, baseType: !227, size: 16)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3405, file: !3372, line: 160, baseType: !412, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3405, file: !3372, line: 162, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3372, line: 69, size: 64, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3410, file: !3372, line: 71, baseType: !412, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3410, file: !3372, line: 73, baseType: !412, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3410, file: !3372, line: 75, baseType: !412, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3410, file: !3372, line: 77, baseType: !412, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3410, file: !3372, line: 80, baseType: !412, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3410, file: !3372, line: 83, baseType: !412, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3410, file: !3372, line: 86, baseType: !412, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3410, file: !3372, line: 88, baseType: !412, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3410, file: !3372, line: 93, baseType: !412, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3410, file: !3372, line: 100, baseType: !412, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3347, file: !3274, line: 96, baseType: !408, size: 32, offset: 1024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3292, file: !3274, line: 352, baseType: !3424, size: 4608, align: 512)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3274, line: 333, size: 4608, align: 512, elements: !3425)
!3425 = !{!3426, !3427, !3434}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3424, file: !3274, line: 334, baseType: !3310, size: 4096, align: 128)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3424, file: !3274, line: 335, baseType: !3428, size: 512, offset: 4096)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3274, line: 312, size: 512, elements: !3429)
!3429 = !{!3430, !3431, !3432}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3428, file: !3274, line: 313, baseType: !412, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3428, file: !3274, line: 314, baseType: !412, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3428, file: !3274, line: 315, baseType: !3433, size: 384, offset: 128)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !1834)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3424, file: !3274, line: 336, baseType: !3435, offset: 4608)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, elements: !1751)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3292, file: !3274, line: 353, baseType: !3437, size: 32768)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 32768, elements: !3438)
!3438 = !{!3439}
!3439 = !DISubrange(count: 4096)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3273, file: !3274, line: 484, baseType: !3279, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3273, file: !3274, line: 491, baseType: !3442, size: 128, offset: 256)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3274, line: 404, size: 128, elements: !3443)
!3443 = !{!3444, !3445, !3446}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3442, file: !3274, line: 424, baseType: !412, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3442, file: !3274, line: 432, baseType: !7, size: 32, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3442, file: !3274, line: 440, baseType: !7, size: 32, offset: 96)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3273, file: !3274, line: 498, baseType: !3442, size: 128, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3273, file: !3274, line: 508, baseType: !3280, size: 33280, align: 512, offset: 512)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1344, file: !1345, line: 16, baseType: !1354, size: 192, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1344, file: !1345, line: 17, baseType: !209, size: 32, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !491, file: !14, line: 1240, baseType: !159, size: 64, offset: 6912)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !491, file: !14, line: 1243, baseType: !408, size: 32, offset: 6976)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !491, file: !14, line: 1245, baseType: !1102, size: 64, offset: 7040)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !491, file: !14, line: 1246, baseType: !1102, size: 64, offset: 7104)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !491, file: !14, line: 1248, baseType: !409, size: 32, offset: 7168)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !491, file: !14, line: 1249, baseType: !3457, size: 64, offset: 7232)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !491, file: !14, line: 1252, baseType: !3460, size: 256, offset: 7296)
!3460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !421)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !491, file: !14, line: 1253, baseType: !3462, size: 128, offset: 7552)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3463, line: 21, baseType: !3464)
!3463 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3463, line: 19, size: 128, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3464, file: !3463, line: 20, baseType: !3467, size: 128)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !2681)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !491, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !491, file: !14, line: 1261, baseType: !600, size: 256, offset: 7744)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !491, file: !14, line: 1267, baseType: !172, size: 64, offset: 8000)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !491, file: !14, line: 1269, baseType: !437, size: 64, offset: 8064)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !491, file: !14, line: 1271, baseType: !3473, size: 448, offset: 8128)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1111, line: 63, size: 448, elements: !3474)
!3474 = !{!3475, !3480, !3481, !3482, !3483, !3484, !3485}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3473, file: !1111, line: 64, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{!309, !3479, !1109}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3473, file: !1111, line: 66, baseType: !3476, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3473, file: !1111, line: 69, baseType: !295, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3473, file: !1111, line: 70, baseType: !109, size: 32, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3473, file: !1111, line: 71, baseType: !7, size: 32, offset: 224)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3473, file: !1111, line: 74, baseType: !176, size: 128, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3473, file: !1111, line: 85, baseType: !3486, size: 64, offset: 384)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !491, file: !14, line: 1274, baseType: !604, size: 64, offset: 8576)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !491, file: !14, line: 1280, baseType: !604, size: 64, offset: 8640)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !491, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !491, file: !14, line: 1286, baseType: !2414, size: 32, offset: 8736)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !491, file: !14, line: 1289, baseType: !922, size: 64, offset: 8768)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !491, file: !14, line: 1290, baseType: !970, size: 64, offset: 8832)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !491, file: !14, line: 1297, baseType: !1928, size: 64, offset: 8896)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !491, file: !14, line: 1304, baseType: !3495, size: 64, offset: 8960)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3496, line: 49, size: 64, elements: !3497)
!3496 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3495, file: !3496, line: 50, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3496, line: 41, size: 512, align: 512, elements: !3501)
!3501 = !{!3502, !3503, !3508}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3500, file: !3496, line: 43, baseType: !189, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3500, file: !3496, line: 45, baseType: !3504, size: 192, offset: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3496, line: 29, size: 192, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3504, file: !3496, line: 30, baseType: !176, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3504, file: !3496, line: 32, baseType: !295, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3500, file: !3496, line: 46, baseType: !295, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !491, file: !14, line: 1305, baseType: !3495, size: 64, offset: 9024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !491, file: !14, line: 1306, baseType: !820, size: 128, align: 64, offset: 9088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !491, file: !14, line: 1307, baseType: !860, size: 256, offset: 9216)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !491, file: !14, line: 1309, baseType: !600, size: 256, offset: 9472)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !491, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !491, file: !14, line: 1317, baseType: !189, size: 32, align: 512, offset: 10240)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !491, file: !14, line: 1318, baseType: !176, size: 128, offset: 10304)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !491, file: !14, line: 1320, baseType: !189, size: 32, offset: 10432)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !491, file: !14, line: 1321, baseType: !176, size: 128, offset: 10496)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !485, file: !486, line: 73, baseType: !109, size: 32, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !485, file: !486, line: 74, baseType: !3520, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1775, line: 42, flags: DIFlagFwdDecl)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !439, file: !376, line: 141, baseType: !3524, size: 64, offset: 704)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!109, !1171, !680}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !439, file: !376, line: 142, baseType: !3528, size: 64, offset: 768)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!374, !374, !3531}
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !375, file: !376, line: 96, baseType: !490, size: 64, offset: 832)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !375, file: !376, line: 97, baseType: !309, size: 64, offset: 896)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !375, file: !376, line: 98, baseType: !159, size: 64, offset: 960)
!3536 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 100, baseType: !3537, size: 128, offset: 1024)
!3537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 100, size: 128, elements: !3538)
!3538 = !{!3539, !3540}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3537, file: !376, line: 101, baseType: !176, size: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3537, file: !376, line: 102, baseType: !3541, size: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !375, file: !376, line: 104, baseType: !176, size: 128, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !375, file: !376, line: 105, baseType: !176, size: 128, offset: 1280)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !375, file: !376, line: 113, baseType: !3545, size: 128, offset: 1408)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 109, size: 128, elements: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3545, file: !376, line: 110, baseType: !846, size: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3545, file: !376, line: 111, baseType: !390, size: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3545, file: !376, line: 112, baseType: !820, size: 128, align: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !368, file: !14, line: 1968, baseType: !3551, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!172, !374, !339, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3556, line: 10, size: 128, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3555, file: !3556, line: 11, baseType: !643, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3555, file: !3556, line: 12, baseType: !159, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !368, file: !14, line: 1969, baseType: !3561, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!109, !3520, !339, !109}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !368, file: !14, line: 1970, baseType: !3565, size: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!362, !339, !109, !680}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !368, file: !14, line: 1972, baseType: !3569, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{!109, !374, !259, !109}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !368, file: !14, line: 1974, baseType: !3573, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!109, !3520, !339, !374, !301, !680}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !368, file: !14, line: 1976, baseType: !3577, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!109, !374, !339, !374}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !368, file: !14, line: 1977, baseType: !3581, size: 64, offset: 448)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!109, !339, !374}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !368, file: !14, line: 1978, baseType: !3585, size: 64, offset: 512)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!109, !3520, !339, !374, !172}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !368, file: !14, line: 1980, baseType: !3589, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!109, !3520, !339, !374, !301}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !368, file: !14, line: 1982, baseType: !3581, size: 64, offset: 640)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !368, file: !14, line: 1983, baseType: !3594, size: 64, offset: 704)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!109, !3520, !339, !374, !301, !495}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !368, file: !14, line: 1985, baseType: !3598, size: 64, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!109, !3520, !339, !374, !339, !374, !7}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !368, file: !14, line: 1987, baseType: !3602, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!109, !3520, !374, !3605}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3607)
!3607 = !{!3608, !3609, !3610, !3620, !3629, !3630, !3635, !3636, !3637}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3606, file: !14, line: 227, baseType: !7, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3606, file: !14, line: 228, baseType: !301, size: 16, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !14, line: 241, baseType: !3611, size: 32, offset: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !14, line: 241, size: 32, elements: !3612)
!3612 = !{!3613, !3614}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3611, file: !14, line: 242, baseType: !345, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3611, file: !14, line: 243, baseType: !3615, size: 32)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3616, line: 16, baseType: !3617)
!3616 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3616, line: 14, size: 32, elements: !3618)
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3617, file: !3616, line: 15, baseType: !350, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3606, file: !14, line: 245, baseType: !3621, size: 32, offset: 96)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3606, file: !14, line: 245, size: 32, elements: !3622)
!3622 = !{!3623, !3624}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3621, file: !14, line: 246, baseType: !354, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3621, file: !14, line: 247, baseType: !3625, size: 32)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3616, line: 20, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3616, line: 18, size: 32, elements: !3627)
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3626, file: !3616, line: 19, baseType: !358, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3606, file: !14, line: 249, baseType: !500, size: 64, offset: 128)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3606, file: !14, line: 250, baseType: !3631, size: 128, offset: 192)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1103, line: 13, size: 128, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3631, file: !1103, line: 14, baseType: !1102, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3631, file: !1103, line: 15, baseType: !295, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3606, file: !14, line: 251, baseType: !3631, size: 128, offset: 320)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3606, file: !14, line: 252, baseType: !3631, size: 128, offset: 448)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3606, file: !14, line: 259, baseType: !1691, size: 64, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !368, file: !14, line: 1988, baseType: !3639, size: 64, offset: 896)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{!109, !3520, !1171, !3642, !408, !7}
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3644, line: 22, size: 1280, elements: !3645)
!3644 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3645 = !{!3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3643, file: !3644, line: 23, baseType: !408, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3643, file: !3644, line: 24, baseType: !301, size: 16, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3643, file: !3644, line: 25, baseType: !7, size: 32, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3643, file: !3644, line: 26, baseType: !1813, size: 32, offset: 96)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3643, file: !3644, line: 27, baseType: !412, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3643, file: !3644, line: 28, baseType: !412, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3643, file: !3644, line: 41, baseType: !412, size: 64, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3643, file: !3644, line: 42, baseType: !495, size: 32, offset: 320)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3643, file: !3644, line: 43, baseType: !495, size: 32, offset: 352)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3643, file: !3644, line: 44, baseType: !345, size: 32, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3643, file: !3644, line: 45, baseType: !354, size: 32, offset: 416)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3643, file: !3644, line: 46, baseType: !500, size: 64, offset: 448)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3643, file: !3644, line: 47, baseType: !3631, size: 128, offset: 512)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3643, file: !3644, line: 48, baseType: !3631, size: 128, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3643, file: !3644, line: 49, baseType: !3631, size: 128, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3643, file: !3644, line: 50, baseType: !3631, size: 128, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3643, file: !3644, line: 51, baseType: !412, size: 64, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3643, file: !3644, line: 52, baseType: !412, size: 64, offset: 1088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3643, file: !3644, line: 53, baseType: !408, size: 32, offset: 1152)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3643, file: !3644, line: 54, baseType: !408, size: 32, offset: 1184)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3643, file: !3644, line: 55, baseType: !412, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !368, file: !14, line: 1990, baseType: !3668, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!291, !374, !259, !306}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !368, file: !14, line: 1991, baseType: !3672, size: 64, offset: 1024)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !339, !3675, !412, !412}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !368, file: !14, line: 1993, baseType: !3678, size: 64, offset: 1088)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !339, !109}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !368, file: !14, line: 1994, baseType: !3682, size: 64, offset: 1152)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!109, !339, !374, !1691, !7, !301}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !368, file: !14, line: 1997, baseType: !3686, size: 64, offset: 1216)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!109, !3520, !339, !1691, !301}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !368, file: !14, line: 1999, baseType: !3690, size: 64, offset: 1280)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!362, !3520, !374, !109}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !368, file: !14, line: 2001, baseType: !3694, size: 64, offset: 1344)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!109, !3520, !374, !362, !109}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !368, file: !14, line: 2003, baseType: !3698, size: 64, offset: 1408)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !3520, !374, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !368, file: !14, line: 2005, baseType: !3704, size: 64, offset: 1472)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!109, !374, !3701}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !368, file: !14, line: 2006, baseType: !3708, size: 64, offset: 1536)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!3711, !339}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3713)
!3713 = !{!3714, !3721}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3712, file: !14, line: 3193, baseType: !3715, size: 128)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3716, line: 296, size: 128, elements: !3717)
!3716 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3717 = !{!3718, !3719, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3715, file: !3716, line: 297, baseType: !189, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3715, file: !3716, line: 299, baseType: !157, size: 32, offset: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3715, file: !3716, line: 300, baseType: !159, size: 64, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3712, file: !14, line: 3194, baseType: !408, size: 32, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !340, file: !14, line: 655, baseType: !490, size: 64, offset: 448)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !340, file: !14, line: 656, baseType: !335, size: 64, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !340, file: !14, line: 659, baseType: !159, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !340, file: !14, line: 663, baseType: !309, size: 64, offset: 640)
!3726 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 671, baseType: !3727, size: 32, offset: 704)
!3727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 671, size: 32, elements: !3728)
!3728 = !{!3729, !3731}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3727, file: !14, line: 672, baseType: !3730, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3727, file: !14, line: 673, baseType: !7, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !340, file: !14, line: 675, baseType: !495, size: 32, offset: 736)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !340, file: !14, line: 676, baseType: !500, size: 64, offset: 768)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !340, file: !14, line: 677, baseType: !3631, size: 128, offset: 832)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !340, file: !14, line: 678, baseType: !3631, size: 128, offset: 960)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !340, file: !14, line: 679, baseType: !3631, size: 128, offset: 1088)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !340, file: !14, line: 680, baseType: !189, size: 32, offset: 1216)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !340, file: !14, line: 681, baseType: !229, size: 16, offset: 1248)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !340, file: !14, line: 682, baseType: !217, size: 8, offset: 1264)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !340, file: !14, line: 683, baseType: !217, size: 8, offset: 1272)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !340, file: !14, line: 684, baseType: !1249, size: 64, offset: 1280)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !340, file: !14, line: 691, baseType: !309, size: 64, offset: 1344)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !340, file: !14, line: 692, baseType: !1261, size: 320, offset: 1408)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !340, file: !14, line: 694, baseType: !309, size: 64, offset: 1728)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !340, file: !14, line: 695, baseType: !309, size: 64, offset: 1792)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !340, file: !14, line: 697, baseType: !846, size: 128, offset: 1856)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !340, file: !14, line: 698, baseType: !176, size: 128, offset: 1984)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !340, file: !14, line: 707, baseType: !176, size: 128, offset: 2112)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !340, file: !14, line: 708, baseType: !176, size: 128, offset: 2240)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 709, baseType: !3751, size: 128, offset: 2368)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 709, size: 128, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3751, file: !14, line: 710, baseType: !970, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3751, file: !14, line: 711, baseType: !820, size: 128, align: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !340, file: !14, line: 713, baseType: !606, size: 64, offset: 2496)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !340, file: !14, line: 714, baseType: !606, size: 64, offset: 2560)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !340, file: !14, line: 715, baseType: !209, size: 32, offset: 2624)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !340, file: !14, line: 716, baseType: !209, size: 32, offset: 2656)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !340, file: !14, line: 717, baseType: !209, size: 32, offset: 2688)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !340, file: !14, line: 719, baseType: !209, size: 32, offset: 2720)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 721, baseType: !3762, size: 64, offset: 2752)
!3762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 721, size: 64, elements: !3763)
!3763 = !{!3764, !3765}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3762, file: !14, line: 722, baseType: !1959, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3762, file: !14, line: 723, baseType: !993, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !340, file: !14, line: 725, baseType: !3767, size: 64, offset: 2816)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !340, file: !14, line: 726, baseType: !336, size: 1536, align: 64, offset: 2880)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !340, file: !14, line: 727, baseType: !176, size: 128, offset: 4416)
!3771 = !DIDerivedType(tag: DW_TAG_member, scope: !340, file: !14, line: 728, baseType: !3772, size: 64, offset: 4544)
!3772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !340, file: !14, line: 728, size: 64, elements: !3773)
!3773 = !{!3774, !3775, !3778, !3779}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3772, file: !14, line: 729, baseType: !2364, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3772, file: !14, line: 730, baseType: !3776, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3772, file: !14, line: 731, baseType: !259, size: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3772, file: !14, line: 732, baseType: !7, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !340, file: !14, line: 735, baseType: !409, size: 32, offset: 4608)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !340, file: !14, line: 738, baseType: !409, size: 32, offset: 4640)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !340, file: !14, line: 739, baseType: !3457, size: 64, offset: 4672)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !340, file: !14, line: 750, baseType: !159, size: 64, offset: 4736)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !336, file: !14, line: 474, baseType: !3715, size: 128, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !336, file: !14, line: 475, baseType: !1261, size: 320, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !336, file: !14, line: 476, baseType: !157, size: 32, offset: 512)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !336, file: !14, line: 477, baseType: !209, size: 32, offset: 544)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !336, file: !14, line: 482, baseType: !1547, size: 128, offset: 576)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !336, file: !14, line: 483, baseType: !309, size: 64, offset: 704)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !336, file: !14, line: 484, baseType: !309, size: 64, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !336, file: !14, line: 485, baseType: !3792, size: 64, offset: 832)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3795)
!3795 = !{!3796, !3800, !3870, !3874, !3878, !3884, !3888, !3892, !3897, !3901, !3905, !3909, !3910, !3914, !3918, !3922, !3927, !3931, !3938, !3939}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3794, file: !14, line: 405, baseType: !3797, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!109, !2151, !1005}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3794, file: !14, line: 406, baseType: !3801, size: 64, offset: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!109, !1691, !3804}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3806)
!3806 = !{!3807, !3837, !3851}
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 295, baseType: !3808, size: 512)
!3808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !38, line: 295, size: 512, elements: !3809)
!3809 = !{!3810, !3836}
!3810 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !38, line: 296, baseType: !3811, size: 448)
!3811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3808, file: !38, line: 296, size: 448, elements: !3812)
!3812 = !{!3813, !3814, !3823, !3824, !3825, !3834, !3835}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3811, file: !38, line: 298, baseType: !309, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !38, line: 299, baseType: !3815, size: 128, offset: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !38, line: 299, size: 128, elements: !3816)
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3815, file: !38, line: 300, baseType: !176, size: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, scope: !3815, file: !38, line: 302, baseType: !3819, size: 128)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3815, file: !38, line: 302, size: 128, elements: !3820)
!3820 = !{!3821, !3822}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3819, file: !38, line: 303, baseType: !159, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3819, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3811, file: !38, line: 310, baseType: !335, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3811, file: !38, line: 311, baseType: !309, size: 64, offset: 256)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3811, file: !38, line: 312, baseType: !3826, size: 64, offset: 320)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3811, file: !38, line: 312, size: 64, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3826, file: !38, line: 313, baseType: !159, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3826, file: !38, line: 314, baseType: !3830, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3831)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3832)
!3832 = !{!3833}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3831, file: !38, line: 256, baseType: !309, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3811, file: !38, line: 316, baseType: !209, size: 32, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3811, file: !38, line: 317, baseType: !209, size: 32, offset: 416)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3808, file: !38, line: 323, baseType: !2152, size: 512, align: 128)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 325, baseType: !3838, size: 512, offset: 512)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !38, line: 325, size: 512, elements: !3839)
!3839 = !{!3840, !3850}
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3838, file: !38, line: 326, baseType: !3841, size: 320)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !38, line: 326, size: 320, elements: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3841, file: !38, line: 327, baseType: !309, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3841, file: !38, line: 328, baseType: !309, size: 64, offset: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3841, file: !38, line: 329, baseType: !309, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3841, file: !38, line: 331, baseType: !209, size: 32, offset: 192)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3841, file: !38, line: 332, baseType: !209, size: 32, offset: 224)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3841, file: !38, line: 333, baseType: !209, size: 32, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3841, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3838, file: !38, line: 339, baseType: !2152, size: 512, align: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !38, line: 341, baseType: !3852, size: 512, offset: 1024)
!3852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3805, file: !38, line: 341, size: 512, elements: !3853)
!3853 = !{!3854, !3863, !3869}
!3854 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !38, line: 342, baseType: !3855, size: 384)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3852, file: !38, line: 342, size: 384, elements: !3856)
!3856 = !{!3857, !3858, !3859, !3860, !3861, !3862}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3855, file: !38, line: 343, baseType: !309, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3855, file: !38, line: 344, baseType: !309, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3855, file: !38, line: 346, baseType: !159, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3855, file: !38, line: 347, baseType: !159, size: 64, offset: 192)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3855, file: !38, line: 348, baseType: !159, size: 64, offset: 256)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3855, file: !38, line: 349, baseType: !159, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, scope: !3852, file: !38, line: 352, baseType: !3864, size: 256)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3852, file: !38, line: 352, size: 256, elements: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3864, file: !38, line: 353, baseType: !309, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3864, file: !38, line: 354, baseType: !309, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3864, file: !38, line: 356, baseType: !176, size: 128, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3852, file: !38, line: 359, baseType: !2152, size: 512, align: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3794, file: !14, line: 409, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!109, !335, !1005}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3794, file: !14, line: 412, baseType: !3875, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!680, !335, !3804}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3794, file: !14, line: 414, baseType: !3879, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{null, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3794, file: !14, line: 416, baseType: !3885, size: 64, offset: 320)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!109, !1691, !335, !500, !7, !3206, !2379}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3794, file: !14, line: 419, baseType: !3889, size: 64, offset: 384)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!109, !1691, !335, !500, !7, !7, !2151, !159}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3794, file: !14, line: 424, baseType: !3893, size: 64, offset: 448)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!3896, !335, !3896}
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !412)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3794, file: !14, line: 425, baseType: !3898, size: 64, offset: 512)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{null, !3804, !306, !306}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3794, file: !14, line: 426, baseType: !3902, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!680, !3804, !157}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3794, file: !14, line: 427, baseType: !3906, size: 64, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3804}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3794, file: !14, line: 428, baseType: !1978, size: 64, offset: 704)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3794, file: !14, line: 433, baseType: !3911, size: 64, offset: 768)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!109, !335, !3804, !3804, !74}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3794, file: !14, line: 435, baseType: !3915, size: 64, offset: 832)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!109, !3804}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3794, file: !14, line: 436, baseType: !3919, size: 64, offset: 896)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!680, !3804, !306, !306}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3794, file: !14, line: 438, baseType: !3923, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !3804, !3926, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3794, file: !14, line: 439, baseType: !3928, size: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!109, !335, !2151}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3794, file: !14, line: 442, baseType: !3932, size: 64, offset: 1088)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!109, !3935, !1691, !3937}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3794, file: !14, line: 444, baseType: !2371, size: 64, offset: 1152)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3794, file: !14, line: 445, baseType: !3940, size: 64, offset: 1216)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!109, !1981, !2003}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !336, file: !14, line: 486, baseType: !309, size: 64, offset: 896)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !336, file: !14, line: 487, baseType: !1261, size: 320, offset: 960)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !336, file: !14, line: 488, baseType: !2414, size: 32, offset: 1280)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !336, file: !14, line: 489, baseType: !189, size: 32, offset: 1312)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !336, file: !14, line: 490, baseType: !176, size: 128, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !336, file: !14, line: 491, baseType: !159, size: 64, offset: 1472)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !326, file: !285, line: 180, baseType: !3950, size: 64, offset: 320)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!291, !1691, !182, !325, !259, !500, !306}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !326, file: !285, line: 182, baseType: !3950, size: 64, offset: 384)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !326, file: !285, line: 184, baseType: !3955, size: 64, offset: 448)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!109, !1691, !182, !325, !2042}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !314, file: !285, line: 90, baseType: !3959, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !314, file: !285, line: 91, baseType: !3961, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !275, file: !169, line: 120, baseType: !3963, size: 64, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!3966, !242}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3969)
!3969 = !{!3970, !3971, !3975, !3979, !3985, !3989}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3968, file: !82, line: 40, baseType: !81, size: 32)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3968, file: !82, line: 41, baseType: !3972, size: 64, offset: 64)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!680}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3968, file: !82, line: 42, baseType: !3976, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!159}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3968, file: !82, line: 43, baseType: !3980, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!2503, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3968, file: !82, line: 44, baseType: !3986, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!2503}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3968, file: !82, line: 45, baseType: !643, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !275, file: !169, line: 121, baseType: !3991, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!2503, !242}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !275, file: !169, line: 122, baseType: !3995, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !242, !3998, !3999}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !168, file: !169, line: 70, baseType: !4001, size: 64, offset: 384)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !515, line: 190, size: 1152, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4095, !4096, !4097, !4098, !4099, !4102}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4002, file: !515, line: 191, baseType: !209, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4002, file: !515, line: 192, baseType: !209, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4002, file: !515, line: 202, baseType: !4001, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4002, file: !515, line: 203, baseType: !172, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4002, file: !515, line: 205, baseType: !712, size: 192, align: 64, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4002, file: !515, line: 207, baseType: !2503, size: 64, offset: 384)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4002, file: !515, line: 208, baseType: !7, size: 32, offset: 448)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !4002, file: !515, line: 209, baseType: !4012, size: 256, offset: 512)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4002, file: !515, line: 209, size: 256, elements: !4013)
!4013 = !{!4014, !4023, !4027}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4012, file: !515, line: 210, baseType: !4015, size: 256)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !515, line: 153, size: 256, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4022}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4015, file: !515, line: 154, baseType: !309, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4015, file: !515, line: 156, baseType: !1550, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4015, file: !515, line: 162, baseType: !4020, size: 64, offset: 128)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !515, line: 162, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4015, file: !515, line: 167, baseType: !309, size: 64, offset: 192)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4012, file: !515, line: 211, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !515, line: 170, size: 64, elements: !4025)
!4025 = !{!4026}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4024, file: !515, line: 171, baseType: !4001, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4012, file: !515, line: 212, baseType: !4028, size: 256)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !515, line: 174, size: 256, elements: !4029)
!4029 = !{!4030, !4090, !4093, !4094}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4028, file: !515, line: 175, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4033)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !515, line: 271, size: 768, elements: !4034)
!4034 = !{!4035, !4055, !4059, !4063, !4067, !4071, !4075, !4079, !4080, !4081, !4082, !4086}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4033, file: !515, line: 276, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DISubroutineType(types: !4038)
!4038 = !{!109, !4039}
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !515, line: 251, size: 1216, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4040, file: !515, line: 253, baseType: !4001, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4040, file: !515, line: 254, baseType: !1691, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4040, file: !515, line: 255, baseType: !1042, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4040, file: !515, line: 256, baseType: !159, size: 64, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4040, file: !515, line: 259, baseType: !600, size: 256, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4040, file: !515, line: 260, baseType: !600, size: 256, offset: 512)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4040, file: !515, line: 261, baseType: !109, size: 32, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4040, file: !515, line: 262, baseType: !176, size: 128, offset: 832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4040, file: !515, line: 263, baseType: !259, size: 64, offset: 960)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4040, file: !515, line: 265, baseType: !306, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4040, file: !515, line: 266, baseType: !680, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4040, file: !515, line: 267, baseType: !680, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4040, file: !515, line: 268, baseType: !2087, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4033, file: !515, line: 277, baseType: !4056, size: 64, offset: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !4039}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4033, file: !515, line: 290, baseType: !4060, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!109, !1042, !159}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4033, file: !515, line: 292, baseType: !4064, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!159, !1042, !1972}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4033, file: !515, line: 293, baseType: !4068, size: 64, offset: 256)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!159, !1042, !159, !1972}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4033, file: !515, line: 294, baseType: !4072, size: 64, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !1042, !159}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4033, file: !515, line: 296, baseType: !4076, size: 64, offset: 384)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!291, !4039, !259, !306, !500}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4033, file: !515, line: 306, baseType: !306, size: 64, offset: 448)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4033, file: !515, line: 313, baseType: !680, size: 8, offset: 512)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4033, file: !515, line: 314, baseType: !4076, size: 64, offset: 576)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4033, file: !515, line: 317, baseType: !4083, size: 64, offset: 640)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!2029, !4039, !2031}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4033, file: !515, line: 320, baseType: !4087, size: 64, offset: 704)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{!109, !4039, !2042}
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4028, file: !515, line: 176, baseType: !4091, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !515, line: 35, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4028, file: !515, line: 177, baseType: !500, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4028, file: !515, line: 178, baseType: !4001, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4002, file: !515, line: 215, baseType: !159, size: 64, offset: 768)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4002, file: !515, line: 221, baseType: !412, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4002, file: !515, line: 223, baseType: !229, size: 16, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4002, file: !515, line: 224, baseType: !301, size: 16, offset: 912)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4002, file: !515, line: 225, baseType: !4100, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !515, line: 36, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4002, file: !515, line: 227, baseType: !820, size: 128, align: 64, offset: 1024)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !168, file: !169, line: 71, baseType: !4104, size: 32, offset: 448)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4105, line: 19, size: 32, elements: !4106)
!4105 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4106 = !{!4107}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4104, file: !4105, line: 20, baseType: !1381, size: 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !168, file: !169, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !168, file: !169, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !168, file: !169, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !168, file: !169, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !168, file: !169, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !165, file: !94, line: 707, baseType: !4114, size: 64, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !165, file: !94, line: 709, baseType: !4116, size: 64, offset: 576)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !165, file: !94, line: 711, baseType: !172, size: 64, offset: 640)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !94, line: 712, baseType: !4120, size: 64, offset: 704)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4132, !4137, !4141}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4122, file: !94, line: 90, baseType: !172, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4122, file: !94, line: 91, baseType: !311, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4122, file: !94, line: 92, baseType: !4127, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!109, !4130, !254}
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4122, file: !94, line: 93, baseType: !4133, size: 64, offset: 192)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!259, !4130, !4136, !3998, !3999}
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4122, file: !94, line: 95, baseType: !4138, size: 64, offset: 256)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !4114}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4122, file: !94, line: 97, baseType: !4142, size: 64, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!4144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4145)
!4145 = !{!4146, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4144, file: !101, line: 287, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!109, !4114}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4144, file: !101, line: 288, baseType: !4138, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4144, file: !101, line: 289, baseType: !4147, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4144, file: !101, line: 290, baseType: !4147, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4144, file: !101, line: 291, baseType: !4147, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4144, file: !101, line: 292, baseType: !4147, size: 64, offset: 320)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4144, file: !101, line: 293, baseType: !4147, size: 64, offset: 384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4144, file: !101, line: 294, baseType: !4147, size: 64, offset: 448)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4144, file: !101, line: 295, baseType: !4147, size: 64, offset: 512)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4144, file: !101, line: 296, baseType: !4147, size: 64, offset: 576)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4144, file: !101, line: 297, baseType: !4147, size: 64, offset: 640)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4144, file: !101, line: 298, baseType: !4147, size: 64, offset: 704)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4144, file: !101, line: 299, baseType: !4147, size: 64, offset: 768)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4144, file: !101, line: 300, baseType: !4147, size: 64, offset: 832)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4144, file: !101, line: 301, baseType: !4147, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4144, file: !101, line: 302, baseType: !4147, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4144, file: !101, line: 303, baseType: !4147, size: 64, offset: 1024)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4144, file: !101, line: 304, baseType: !4147, size: 64, offset: 1088)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4144, file: !101, line: 305, baseType: !4147, size: 64, offset: 1152)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4144, file: !101, line: 306, baseType: !4147, size: 64, offset: 1216)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4144, file: !101, line: 307, baseType: !4147, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4144, file: !101, line: 308, baseType: !4147, size: 64, offset: 1344)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4144, file: !101, line: 309, baseType: !4147, size: 64, offset: 1408)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !165, file: !94, line: 714, baseType: !4173, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4175)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4176, line: 80, size: 1344, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4256}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 81, baseType: !172, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4175, file: !4176, line: 82, baseType: !172, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4175, file: !4176, line: 83, baseType: !311, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4175, file: !4176, line: 84, baseType: !311, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4175, file: !4176, line: 85, baseType: !311, size: 64, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4175, file: !4176, line: 87, baseType: !4184, size: 64, offset: 320)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!109, !4114, !4187}
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4189)
!4189 = !{!4190, !4191, !4192, !4193, !4194, !4195, !4196, !4209, !4219, !4220, !4221, !4222, !4223, !4231, !4232, !4233, !4234, !4235, !4236}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4188, file: !88, line: 97, baseType: !172, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4188, file: !88, line: 98, baseType: !4173, size: 64, offset: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4188, file: !88, line: 100, baseType: !529, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4188, file: !88, line: 101, baseType: !172, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4188, file: !88, line: 103, baseType: !680, size: 8, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4188, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4188, file: !88, line: 106, baseType: !4197, size: 64, offset: 320)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4199)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4200, line: 282, size: 1600, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4201 = !{!4202, !4203, !4204, !4208}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4199, file: !4200, line: 283, baseType: !3460, size: 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4199, file: !4200, line: 284, baseType: !3460, size: 256, offset: 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4199, file: !4200, line: 285, baseType: !4205, size: 1024, offset: 512)
!4205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 1024, elements: !4206)
!4206 = !{!4207}
!4207 = !DISubrange(count: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4199, file: !4200, line: 286, baseType: !2503, size: 64, offset: 1536)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4188, file: !88, line: 107, baseType: !4210, size: 64, offset: 384)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4212)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4200, line: 217, size: 256, elements: !4213)
!4213 = !{!4214, !4215, !4217, !4218}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4212, file: !4200, line: 218, baseType: !3467, size: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4212, file: !4200, line: 219, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4200, line: 15, baseType: !309)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4212, file: !4200, line: 220, baseType: !409, size: 32, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4212, file: !4200, line: 221, baseType: !409, size: 32, offset: 224)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4188, file: !88, line: 109, baseType: !4147, size: 64, offset: 448)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4188, file: !88, line: 110, baseType: !4138, size: 64, offset: 512)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4188, file: !88, line: 111, baseType: !4147, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4188, file: !88, line: 112, baseType: !4138, size: 64, offset: 640)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4188, file: !88, line: 113, baseType: !4224, size: 64, offset: 704)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!109, !4114, !4227}
!4227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4228)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4229)
!4229 = !{!4230}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4228, file: !101, line: 59, baseType: !109, size: 32)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4188, file: !88, line: 114, baseType: !4147, size: 64, offset: 768)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4188, file: !88, line: 115, baseType: !311, size: 64, offset: 832)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4188, file: !88, line: 116, baseType: !311, size: 64, offset: 896)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4188, file: !88, line: 118, baseType: !4142, size: 64, offset: 960)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4188, file: !88, line: 119, baseType: !4138, size: 64, offset: 1024)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4188, file: !88, line: 121, baseType: !4237, size: 64, offset: 1088)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4175, file: !4176, line: 88, baseType: !4127, size: 64, offset: 384)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4175, file: !4176, line: 89, baseType: !4147, size: 64, offset: 448)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4175, file: !4176, line: 90, baseType: !4138, size: 64, offset: 512)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4175, file: !4176, line: 91, baseType: !4138, size: 64, offset: 576)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4175, file: !4176, line: 92, baseType: !4138, size: 64, offset: 640)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4175, file: !4176, line: 94, baseType: !4147, size: 64, offset: 704)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4175, file: !4176, line: 95, baseType: !4147, size: 64, offset: 768)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4175, file: !4176, line: 97, baseType: !4224, size: 64, offset: 832)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4175, file: !4176, line: 98, baseType: !4147, size: 64, offset: 896)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4175, file: !4176, line: 100, baseType: !4147, size: 64, offset: 960)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4175, file: !4176, line: 102, baseType: !4147, size: 64, offset: 1024)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4175, file: !4176, line: 103, baseType: !4138, size: 64, offset: 1088)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4175, file: !4176, line: 105, baseType: !4142, size: 64, offset: 1152)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4175, file: !4176, line: 107, baseType: !4253, size: 64, offset: 1216)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4255)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4176, line: 107, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4175, file: !4176, line: 109, baseType: !680, size: 8, offset: 1280)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !165, file: !94, line: 715, baseType: !4187, size: 64, offset: 832)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !165, file: !94, line: 717, baseType: !159, size: 64, offset: 896)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !165, file: !94, line: 719, baseType: !159, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !165, file: !94, line: 721, baseType: !600, size: 256, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !165, file: !94, line: 725, baseType: !4262, size: 448, offset: 1280)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4263)
!4263 = !{!4264, !4265, !4266, !4267}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4262, file: !94, line: 518, baseType: !176, size: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4262, file: !94, line: 519, baseType: !176, size: 128, offset: 128)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4262, file: !94, line: 520, baseType: !176, size: 128, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4262, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !165, file: !94, line: 726, baseType: !4269, size: 2496, offset: 1728)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4270)
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4353, !4357}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4269, file: !101, line: 664, baseType: !4227, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4269, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4269, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4269, file: !101, line: 667, baseType: !680, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4269, file: !101, line: 668, baseType: !680, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4269, file: !101, line: 669, baseType: !680, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4269, file: !101, line: 670, baseType: !680, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4269, file: !101, line: 671, baseType: !680, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4269, file: !101, line: 672, baseType: !680, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4269, file: !101, line: 673, baseType: !680, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4269, file: !101, line: 674, baseType: !680, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4269, file: !101, line: 675, baseType: !408, size: 32, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4269, file: !101, line: 676, baseType: !189, size: 32, offset: 96)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4269, file: !101, line: 678, baseType: !176, size: 128, offset: 128)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4269, file: !101, line: 679, baseType: !549, size: 256, offset: 256)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4269, file: !101, line: 680, baseType: !4287, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4289, line: 43, size: 1536, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4290 = !{!4291, !4292, !4293, !4294, !4295, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4288, file: !4289, line: 44, baseType: !172, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4288, file: !4289, line: 45, baseType: !109, size: 32, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4288, file: !4289, line: 46, baseType: !176, size: 128, offset: 128)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4288, file: !4289, line: 47, baseType: !189, size: 32, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4288, file: !4289, line: 48, baseType: !4296, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4288, file: !4289, line: 49, baseType: !842, size: 320, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4288, file: !4289, line: 50, baseType: !309, size: 64, offset: 704)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4288, file: !4289, line: 51, baseType: !1496, size: 64, offset: 768)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4288, file: !4289, line: 52, baseType: !1496, size: 64, offset: 832)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4288, file: !4289, line: 53, baseType: !1496, size: 64, offset: 896)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4288, file: !4289, line: 54, baseType: !1496, size: 64, offset: 960)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4288, file: !4289, line: 55, baseType: !1496, size: 64, offset: 1024)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4288, file: !4289, line: 56, baseType: !309, size: 64, offset: 1088)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4288, file: !4289, line: 57, baseType: !309, size: 64, offset: 1152)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4288, file: !4289, line: 58, baseType: !309, size: 64, offset: 1216)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4288, file: !4289, line: 59, baseType: !309, size: 64, offset: 1280)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4288, file: !4289, line: 60, baseType: !309, size: 64, offset: 1344)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4288, file: !4289, line: 61, baseType: !4114, size: 64, offset: 1408)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4288, file: !4289, line: 62, baseType: !680, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4288, file: !4289, line: 63, baseType: !680, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4269, file: !101, line: 681, baseType: !680, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4269, file: !101, line: 682, baseType: !680, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4269, file: !101, line: 683, baseType: !680, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4269, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4269, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4269, file: !101, line: 690, baseType: !1488, size: 512, offset: 640)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4269, file: !101, line: 691, baseType: !412, size: 64, offset: 1152)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4269, file: !101, line: 692, baseType: !860, size: 256, offset: 1216)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4269, file: !101, line: 693, baseType: !1354, size: 192, offset: 1472)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4269, file: !101, line: 694, baseType: !4296, size: 64, offset: 1664)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4269, file: !101, line: 695, baseType: !209, size: 32, offset: 1728)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4269, file: !101, line: 696, baseType: !209, size: 32, offset: 1760)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4269, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4269, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4269, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4269, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4269, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4269, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4269, file: !101, line: 703, baseType: !680, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4269, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4269, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4269, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4269, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4269, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4269, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4269, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4269, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4269, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4269, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4269, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4269, file: !101, line: 715, baseType: !412, size: 64, offset: 2048)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4269, file: !101, line: 716, baseType: !412, size: 64, offset: 2112)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4269, file: !101, line: 717, baseType: !412, size: 64, offset: 2176)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4269, file: !101, line: 718, baseType: !412, size: 64, offset: 2240)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4269, file: !101, line: 720, baseType: !4348, size: 64, offset: 2304)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4350)
!4350 = !{!4351, !4352}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4349, file: !101, line: 633, baseType: !189, size: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4349, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4269, file: !101, line: 721, baseType: !4354, size: 64, offset: 2368)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4114, !596}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4269, file: !101, line: 722, baseType: !4358, size: 64, offset: 2432)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !165, file: !94, line: 727, baseType: !4361, size: 64, offset: 4224)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4370, !4371, !4372}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4362, file: !101, line: 743, baseType: !4144, size: 1472)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4362, file: !101, line: 744, baseType: !4147, size: 64, offset: 1472)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4362, file: !101, line: 745, baseType: !4367, size: 64, offset: 1536)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{null, !4114, !680}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4362, file: !101, line: 746, baseType: !4147, size: 64, offset: 1600)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4362, file: !101, line: 747, baseType: !4138, size: 64, offset: 1664)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4362, file: !101, line: 748, baseType: !4138, size: 64, offset: 1728)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !165, file: !94, line: 736, baseType: !4374, size: 128, offset: 4288)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4375)
!4375 = !{!4376, !4380}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4374, file: !94, line: 531, baseType: !4377, size: 64)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4379, line: 13, flags: DIFlagFwdDecl)
!4379 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4374, file: !94, line: 532, baseType: !4381, size: 64, offset: 64)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !165, file: !94, line: 738, baseType: !4384, size: 64, offset: 4416)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !165, file: !94, line: 740, baseType: !4388, size: 64, offset: 4480)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !165, file: !94, line: 741, baseType: !412, size: 64, offset: 4544)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !165, file: !94, line: 746, baseType: !412, size: 64, offset: 4608)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !165, file: !94, line: 747, baseType: !4392, size: 64, offset: 4672)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4394)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !165, file: !94, line: 749, baseType: !4396, size: 64, offset: 4736)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4398)
!4398 = !{!4399, !4400, !4401}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4397, file: !94, line: 433, baseType: !7, size: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4397, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4397, file: !94, line: 435, baseType: !309, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !165, file: !94, line: 751, baseType: !176, size: 128, offset: 4800)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !165, file: !94, line: 762, baseType: !4404, size: 64, offset: 4928)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !165, file: !94, line: 770, baseType: !4407, offset: 4992)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4408, line: 5, elements: !889)
!4408 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !165, file: !94, line: 772, baseType: !4410, size: 64, offset: 4992)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4412, line: 18, flags: DIFlagFwdDecl)
!4412 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !165, file: !94, line: 773, baseType: !4414, size: 64, offset: 5056)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4416, line: 41, size: 512, elements: !4417)
!4416 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4417 = !{!4418, !4419, !4513, !4514, !4515, !4516}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4415, file: !4416, line: 42, baseType: !4414, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4415, file: !4416, line: 43, baseType: !4420, size: 64, offset: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4422)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4416, line: 125, size: 1408, elements: !4423)
!4423 = !{!4424, !4428, !4432, !4438, !4442, !4443, !4448, !4452, !4456, !4460, !4464, !4465, !4469, !4473, !4477, !4488, !4489, !4490, !4491, !4501, !4505, !4509}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4422, file: !4416, line: 126, baseType: !4425, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!4414, !4414}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4422, file: !4416, line: 127, baseType: !4429, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4414}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4422, file: !4416, line: 128, baseType: !4433, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!680, !4436}
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4422, file: !4416, line: 129, baseType: !4439, size: 64, offset: 192)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!2503, !4436, !4130}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4422, file: !4416, line: 131, baseType: !4433, size: 64, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4422, file: !4416, line: 133, baseType: !4444, size: 64, offset: 320)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!4447, !4436}
!4447 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4416, line: 132, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4422, file: !4416, line: 134, baseType: !4449, size: 64, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!680, !4436, !172}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4422, file: !4416, line: 136, baseType: !4453, size: 64, offset: 448)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!109, !4436, !172, !7, !159, !306}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4422, file: !4416, line: 141, baseType: !4457, size: 64, offset: 512)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!109, !4436, !172, !937, !306}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4422, file: !4416, line: 144, baseType: !4461, size: 64, offset: 576)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!172, !4436}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4422, file: !4416, line: 145, baseType: !4461, size: 64, offset: 640)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4422, file: !4416, line: 146, baseType: !4466, size: 64, offset: 704)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!4414, !4436}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4422, file: !4416, line: 148, baseType: !4470, size: 64, offset: 768)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!4414, !4436, !4414}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4422, file: !4416, line: 151, baseType: !4474, size: 64, offset: 832)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!4414, !4436, !172}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4422, file: !4416, line: 153, baseType: !4478, size: 64, offset: 896)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!109, !4436, !172, !172, !7, !7, !4481}
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4416, line: 94, size: 640, elements: !4483)
!4483 = !{!4484, !4485, !4486}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4482, file: !4416, line: 95, baseType: !4414, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4482, file: !4416, line: 96, baseType: !7, size: 32, offset: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4482, file: !4416, line: 97, baseType: !4487, size: 512, offset: 128)
!4487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !1531)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4422, file: !4416, line: 158, baseType: !4470, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4422, file: !4416, line: 161, baseType: !4466, size: 64, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4422, file: !4416, line: 163, baseType: !4425, size: 64, offset: 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4422, file: !4416, line: 164, baseType: !4492, size: 64, offset: 1152)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!109, !4436, !4495}
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4416, line: 73, size: 128, elements: !4497)
!4497 = !{!4498, !4499, !4500}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4496, file: !4416, line: 74, baseType: !7, size: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4496, file: !4416, line: 75, baseType: !7, size: 32, offset: 32)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4496, file: !4416, line: 76, baseType: !4436, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4422, file: !4416, line: 166, baseType: !4502, size: 64, offset: 1216)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!159, !4414, !109}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4422, file: !4416, line: 167, baseType: !4506, size: 64, offset: 1280)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!109, !4436, !7}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4422, file: !4416, line: 168, baseType: !4510, size: 64, offset: 1344)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!109, !4414}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4415, file: !4416, line: 44, baseType: !4114, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4415, file: !4416, line: 45, baseType: !176, size: 128, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4415, file: !4416, line: 46, baseType: !176, size: 128, offset: 320)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4415, file: !4416, line: 47, baseType: !217, size: 8, offset: 448)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !165, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !165, file: !94, line: 778, baseType: !495, size: 32, offset: 5152)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !165, file: !94, line: 779, baseType: !408, size: 32, offset: 5184)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !165, file: !94, line: 781, baseType: !189, size: 32, offset: 5216)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !165, file: !94, line: 782, baseType: !176, size: 128, offset: 5248)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !165, file: !94, line: 784, baseType: !4523, size: 64, offset: 5376)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4526, line: 52, size: 768, elements: !4527)
!4526 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4527 = !{!4528, !4529, !4530, !4531, !4532, !4536, !4540, !4541, !4542, !4543, !4547, !4551}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4525, file: !4526, line: 53, baseType: !172, size: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4525, file: !4526, line: 55, baseType: !311, size: 64, offset: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4525, file: !4526, line: 56, baseType: !311, size: 64, offset: 128)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4525, file: !4526, line: 58, baseType: !4127, size: 64, offset: 192)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4525, file: !4526, line: 59, baseType: !4533, size: 64, offset: 256)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!259, !4130, !4136}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4525, file: !4526, line: 61, baseType: !4537, size: 64, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{null, !4523}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4525, file: !4526, line: 62, baseType: !4138, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4525, file: !4526, line: 64, baseType: !4147, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4525, file: !4526, line: 66, baseType: !3966, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4525, file: !4526, line: 67, baseType: !4544, size: 64, offset: 576)
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = !DISubroutineType(types: !4546)
!4546 = !{!2503, !4130}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4525, file: !4526, line: 69, baseType: !4548, size: 64, offset: 640)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !4130, !3998, !3999}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4525, file: !4526, line: 71, baseType: !4142, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !165, file: !94, line: 785, baseType: !311, size: 64, offset: 5440)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !165, file: !94, line: 787, baseType: !4138, size: 64, offset: 5504)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !165, file: !94, line: 788, baseType: !4555, size: 64, offset: 5568)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !165, file: !94, line: 789, baseType: !4558, size: 64, offset: 5632)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !165, file: !94, line: 791, baseType: !4561, size: 64, offset: 5696)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4562, file: !94, line: 598, baseType: !116, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4562, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4562, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4562, file: !94, line: 601, baseType: !680, size: 8, offset: 96)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4562, file: !94, line: 602, baseType: !680, size: 8, offset: 104)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !165, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !165, file: !94, line: 795, baseType: !680, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !165, file: !94, line: 796, baseType: !680, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !165, file: !94, line: 797, baseType: !680, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !165, file: !94, line: 798, baseType: !680, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !165, file: !94, line: 799, baseType: !680, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !161, file: !162, line: 245, baseType: !412, size: 64, offset: 5824)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !161, file: !162, line: 246, baseType: !7, size: 32, offset: 5888)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !161, file: !162, line: 247, baseType: !109, size: 32, offset: 5920)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !161, file: !162, line: 249, baseType: !176, size: 128, offset: 5952)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !161, file: !162, line: 250, baseType: !176, size: 128, offset: 6080)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !161, file: !162, line: 251, baseType: !176, size: 128, offset: 6208)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !161, file: !162, line: 252, baseType: !176, size: 128, offset: 6336)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !161, file: !162, line: 254, baseType: !4583, size: 64, offset: 6464)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !162, line: 411, size: 6720, elements: !4585)
!4585 = !{!4586, !4587, !4588, !4592, !4593, !4594, !4598, !4602, !4603, !4604, !4605, !4606}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !4584, file: !162, line: 412, baseType: !176, size: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4584, file: !162, line: 413, baseType: !259, size: 64, offset: 128)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4584, file: !162, line: 416, baseType: !4589, size: 64, offset: 192)
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DISubroutineType(types: !4591)
!4591 = !{!109, !160}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4584, file: !162, line: 417, baseType: !4589, size: 64, offset: 256)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4584, file: !162, line: 418, baseType: !4589, size: 64, offset: 320)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4584, file: !162, line: 421, baseType: !4595, size: 64, offset: 384)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!680, !160}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4584, file: !162, line: 422, baseType: !4599, size: 64, offset: 448)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!109, !160, !4227}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4584, file: !162, line: 423, baseType: !4589, size: 64, offset: 512)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4584, file: !162, line: 426, baseType: !221, size: 8, offset: 576)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4584, file: !162, line: 427, baseType: !165, size: 5824, offset: 640)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !4584, file: !162, line: 428, baseType: !176, size: 128, offset: 6464)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4584, file: !162, line: 429, baseType: !176, size: 128, offset: 6592)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !161, file: !162, line: 255, baseType: !4608, size: 64, offset: 6528)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !162, line: 202, size: 6976, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615, !4616, !4617, !4623, !4627, !4628, !4629, !4630, !4631}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4609, file: !162, line: 203, baseType: !165, size: 5824)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4609, file: !162, line: 204, baseType: !221, size: 8, offset: 5824)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !4609, file: !162, line: 205, baseType: !176, size: 128, offset: 5888)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !4609, file: !162, line: 206, baseType: !176, size: 128, offset: 6016)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4609, file: !162, line: 207, baseType: !176, size: 128, offset: 6144)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4609, file: !162, line: 209, baseType: !4583, size: 64, offset: 6272)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4609, file: !162, line: 210, baseType: !4618, size: 64, offset: 6336)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !162, line: 369, size: 128, elements: !4620)
!4620 = !{!4621, !4622}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4619, file: !162, line: 370, baseType: !3004, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4619, file: !162, line: 371, baseType: !4618, size: 64, offset: 64)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4609, file: !162, line: 212, baseType: !4624, size: 400, offset: 6400)
!4624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 400, elements: !4625)
!4625 = !{!4626}
!4626 = !DISubrange(count: 50)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !4609, file: !162, line: 213, baseType: !221, size: 8, offset: 6800)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !4609, file: !162, line: 214, baseType: !221, size: 8, offset: 6808)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !4609, file: !162, line: 215, baseType: !7, size: 32, offset: 6816)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !4609, file: !162, line: 216, baseType: !221, size: 8, offset: 6848)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4609, file: !162, line: 217, baseType: !4632, size: 64, offset: 6912)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !162, line: 217, flags: DIFlagFwdDecl)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !161, file: !162, line: 256, baseType: !4635, size: 64, offset: 6592)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !162, line: 374, size: 1664, elements: !4637)
!4637 = !{!4638, !4639, !4647, !4648, !4652, !4656, !4657, !4658, !4659}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4636, file: !162, line: 375, baseType: !172, size: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4636, file: !162, line: 376, baseType: !4640, size: 64, offset: 64)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4642)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !4200, line: 240, size: 128, elements: !4643)
!4643 = !{!4644, !4646}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4642, file: !4200, line: 241, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !1531)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4642, file: !4200, line: 242, baseType: !4216, size: 64, offset: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4636, file: !162, line: 377, baseType: !7, size: 32, offset: 128)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4636, file: !162, line: 378, baseType: !4649, size: 64, offset: 192)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!109, !160, !4640}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4636, file: !162, line: 379, baseType: !4653, size: 64, offset: 256)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{null, !160}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4636, file: !162, line: 380, baseType: !4653, size: 64, offset: 320)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4636, file: !162, line: 381, baseType: !4599, size: 64, offset: 384)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4636, file: !162, line: 382, baseType: !4589, size: 64, offset: 448)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4636, file: !162, line: 383, baseType: !4188, size: 1152, offset: 512)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !161, file: !162, line: 257, baseType: !4661, size: 64, offset: 6656)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !162, line: 226, size: 256, elements: !4663)
!4663 = !{!4664, !4665, !4701, !4702}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !4662, file: !162, line: 227, baseType: !4608, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4662, file: !162, line: 228, baseType: !4666, size: 64, offset: 64)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !162, line: 388, size: 2240, elements: !4668)
!4668 = !{!4669, !4670, !4671, !4683, !4684, !4688, !4692, !4696, !4700}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !4667, file: !162, line: 389, baseType: !176, size: 128)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4667, file: !162, line: 390, baseType: !259, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4667, file: !162, line: 391, baseType: !4672, size: 64, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !4200, line: 245, size: 640, elements: !4675)
!4675 = !{!4676, !4677, !4678}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4674, file: !4200, line: 246, baseType: !4645, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4674, file: !4200, line: 247, baseType: !4216, size: 64, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !4674, file: !4200, line: 250, baseType: !4679, size: 512, offset: 128)
!4679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4680, size: 512, elements: !1531)
!4680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4674, file: !4200, line: 248, size: 64, elements: !4681)
!4681 = !{!4682}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4680, file: !4200, line: 249, baseType: !4645, size: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4667, file: !162, line: 392, baseType: !7, size: 32, offset: 256)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4667, file: !162, line: 393, baseType: !4685, size: 64, offset: 320)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!109, !4661, !4672}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4667, file: !162, line: 395, baseType: !4689, size: 64, offset: 384)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !4661}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4667, file: !162, line: 396, baseType: !4693, size: 64, offset: 448)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DISubroutineType(types: !4695)
!4695 = !{!109, !4661, !4227}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4667, file: !162, line: 397, baseType: !4697, size: 64, offset: 512)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!109, !4661}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4667, file: !162, line: 398, baseType: !4636, size: 1664, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4662, file: !162, line: 229, baseType: !159, size: 64, offset: 128)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !4662, file: !162, line: 230, baseType: !4227, size: 32, offset: 192)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !161, file: !162, line: 259, baseType: !4618, size: 64, offset: 6720)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !161, file: !162, line: 261, baseType: !109, size: 32, offset: 6784)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !161, file: !162, line: 262, baseType: !109, size: 32, offset: 6816)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !161, file: !162, line: 263, baseType: !7, size: 32, offset: 6848)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !161, file: !162, line: 264, baseType: !176, size: 128, offset: 6912)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !161, file: !162, line: 265, baseType: !176, size: 128, offset: 7040)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !162, line: 267, baseType: !4624, size: 400, offset: 7168)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !162, line: 268, baseType: !109, size: 32, offset: 7584)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !161, file: !162, line: 269, baseType: !4632, size: 64, offset: 7616)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !161, file: !162, line: 270, baseType: !159, size: 64, offset: 7680)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !179)
!4715 = !{!0, !4716, !4721, !4726, !4731, !4733, !4735, !4737, !4739, !4744, !4749, !4763, !4766, !4768, !4770}
!4716 = !DIGlobalVariableExpression(var: !4717, expr: !DIExpression())
!4717 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !4718, isLocal: true, isDefinition: true)
!4718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 80, elements: !4719)
!4719 = !{!4720}
!4720 = !DISubrange(count: 10)
!4721 = !DIGlobalVariableExpression(var: !4722, expr: !DIExpression())
!4722 = distinct !DIGlobalVariable(scope: null, file: !3, line: 243, type: !4723, isLocal: true, isDefinition: true)
!4723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 232, elements: !4724)
!4724 = !{!4725}
!4725 = !DISubrange(count: 29)
!4726 = !DIGlobalVariableExpression(var: !4727, expr: !DIExpression())
!4727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !4728, isLocal: true, isDefinition: true)
!4728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 120, elements: !4729)
!4729 = !{!4730}
!4730 = !DISubrange(count: 15)
!4731 = !DIGlobalVariableExpression(var: !4732, expr: !DIExpression())
!4732 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_request_card_device291", scope: !2, file: !3, line: 372, type: !159, isLocal: true, isDefinition: true)
!4733 = !DIGlobalVariableExpression(var: !4734, expr: !DIExpression())
!4734 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_release_card_device292", scope: !2, file: !3, line: 386, type: !159, isLocal: true, isDefinition: true)
!4735 = !DIGlobalVariableExpression(var: !4736, expr: !DIExpression())
!4736 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_register_card_driver293", scope: !2, file: !3, line: 444, type: !159, isLocal: true, isDefinition: true)
!4737 = !DIGlobalVariableExpression(var: !4738, expr: !DIExpression())
!4738 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_unregister_card_driver294", scope: !2, file: !3, line: 457, type: !159, isLocal: true, isDefinition: true)
!4739 = !DIGlobalVariableExpression(var: !4740, expr: !DIExpression())
!4740 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !4741, isLocal: true, isDefinition: true)
!4741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 168, elements: !4742)
!4742 = !{!4743}
!4743 = !DISubrange(count: 21)
!4744 = !DIGlobalVariableExpression(var: !4745, expr: !DIExpression())
!4745 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !4746, isLocal: true, isDefinition: true)
!4746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 40, elements: !4747)
!4747 = !{!4748}
!4748 = !DISubrange(count: 5)
!4749 = !DIGlobalVariableExpression(var: !4750, expr: !DIExpression())
!4750 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 194, type: !4751, isLocal: true, isDefinition: true)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !4752)
!4752 = !{!4753, !4754, !4759}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4751, file: !94, line: 107, baseType: !297, size: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4751, file: !94, line: 108, baseType: !4755, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!291, !4114, !4758, !259}
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4751, file: !94, line: 110, baseType: !4760, size: 64, offset: 192)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!291, !4114, !4758, !172, !306}
!4763 = !DIGlobalVariableExpression(var: !4764, expr: !DIExpression())
!4764 = distinct !DIGlobalVariable(scope: null, file: !3, line: 190, type: !4765, isLocal: true, isDefinition: true)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 32, elements: !830)
!4766 = !DIGlobalVariableExpression(var: !4767, expr: !DIExpression())
!4767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !3004, isLocal: true, isDefinition: true)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "dev_attr_card_id", scope: !2, file: !3, line: 210, type: !4751, isLocal: true, isDefinition: true)
!4770 = !DIGlobalVariableExpression(var: !4771, expr: !DIExpression())
!4771 = distinct !DIGlobalVariable(name: "pnp_card_drivers", scope: !2, file: !3, line: 17, type: !176, isLocal: true, isDefinition: true)
!4772 = !{i32 7, !"Dwarf Version", i32 5}
!4773 = !{i32 2, !"Debug Info Version", i32 3}
!4774 = !{i32 1, !"wchar_size", i32 2}
!4775 = !{i32 8, !"cf-protection-branch", i32 1}
!4776 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4777 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4778 = !{i32 1, !"Code Model", i32 2}
!4779 = !{i32 1, !"override-stack-alignment", i32 8}
!4780 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4781 = distinct !DISubprogram(name: "pnp_alloc_card", scope: !3, file: !3, line: 157, type: !4782, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4782 = !DISubroutineType(types: !4783)
!4783 = !{!4608, !4583, !109, !259}
!4784 = !{!4785, !4786, !4787, !4788, !4789}
!4785 = !DILocalVariable(name: "protocol", arg: 1, scope: !4781, file: !3, line: 157, type: !4583)
!4786 = !DILocalVariable(name: "id", arg: 2, scope: !4781, file: !3, line: 157, type: !109)
!4787 = !DILocalVariable(name: "pnpid", arg: 3, scope: !4781, file: !3, line: 157, type: !259)
!4788 = !DILocalVariable(name: "card", scope: !4781, file: !3, line: 159, type: !4608)
!4789 = !DILocalVariable(name: "dev_id", scope: !4781, file: !3, line: 160, type: !4618)
!4790 = !DILocation(line: 157, column: 54, scope: !4781)
!4791 = !DILocation(line: 157, column: 68, scope: !4781)
!4792 = !DILocation(line: 157, column: 78, scope: !4781)
!4793 = !DILocation(line: 159, column: 2, scope: !4781)
!4794 = !DILocation(line: 159, column: 19, scope: !4781)
!4795 = !DILocation(line: 160, column: 2, scope: !4781)
!4796 = !DILocation(line: 160, column: 17, scope: !4781)
!4797 = !DILocation(line: 162, column: 9, scope: !4781)
!4798 = !DILocation(line: 162, column: 7, scope: !4781)
!4799 = !DILocation(line: 163, column: 7, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 163, column: 6)
!4801 = !DILocation(line: 163, column: 6, scope: !4781)
!4802 = !DILocation(line: 164, column: 3, scope: !4800)
!4803 = !DILocation(line: 166, column: 19, scope: !4781)
!4804 = !DILocation(line: 166, column: 2, scope: !4781)
!4805 = !DILocation(line: 166, column: 8, scope: !4781)
!4806 = !DILocation(line: 166, column: 17, scope: !4781)
!4807 = !DILocation(line: 167, column: 17, scope: !4781)
!4808 = !DILocation(line: 167, column: 2, scope: !4781)
!4809 = !DILocation(line: 167, column: 8, scope: !4781)
!4810 = !DILocation(line: 167, column: 15, scope: !4781)
!4811 = !DILocation(line: 169, column: 22, scope: !4781)
!4812 = !DILocation(line: 169, column: 28, scope: !4781)
!4813 = !DILocation(line: 169, column: 38, scope: !4781)
!4814 = !DILocation(line: 169, column: 2, scope: !4781)
!4815 = !DILocation(line: 169, column: 8, scope: !4781)
!4816 = !DILocation(line: 169, column: 12, scope: !4781)
!4817 = !DILocation(line: 169, column: 19, scope: !4781)
!4818 = !DILocation(line: 170, column: 16, scope: !4781)
!4819 = !DILocation(line: 170, column: 22, scope: !4781)
!4820 = !DILocation(line: 170, column: 40, scope: !4781)
!4821 = !DILocation(line: 170, column: 46, scope: !4781)
!4822 = !DILocation(line: 170, column: 56, scope: !4781)
!4823 = !DILocation(line: 170, column: 64, scope: !4781)
!4824 = !DILocation(line: 170, column: 70, scope: !4781)
!4825 = !DILocation(line: 170, column: 2, scope: !4781)
!4826 = !DILocation(line: 172, column: 2, scope: !4781)
!4827 = !DILocation(line: 172, column: 8, scope: !4781)
!4828 = !DILocation(line: 172, column: 12, scope: !4781)
!4829 = !DILocation(line: 172, column: 30, scope: !4781)
!4830 = !DILocation(line: 173, column: 24, scope: !4781)
!4831 = !DILocation(line: 173, column: 30, scope: !4781)
!4832 = !DILocation(line: 173, column: 34, scope: !4781)
!4833 = !DILocation(line: 173, column: 2, scope: !4781)
!4834 = !DILocation(line: 173, column: 8, scope: !4781)
!4835 = !DILocation(line: 173, column: 12, scope: !4781)
!4836 = !DILocation(line: 173, column: 21, scope: !4781)
!4837 = !DILocation(line: 175, column: 27, scope: !4781)
!4838 = !DILocation(line: 175, column: 33, scope: !4781)
!4839 = !DILocation(line: 175, column: 11, scope: !4781)
!4840 = !DILocation(line: 175, column: 9, scope: !4781)
!4841 = !DILocation(line: 176, column: 7, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 176, column: 6)
!4843 = !DILocation(line: 176, column: 6, scope: !4781)
!4844 = !DILocation(line: 177, column: 9, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4842, file: !3, line: 176, column: 15)
!4846 = !DILocation(line: 177, column: 3, scope: !4845)
!4847 = !DILocation(line: 178, column: 3, scope: !4845)
!4848 = !DILocation(line: 181, column: 9, scope: !4781)
!4849 = !DILocation(line: 181, column: 2, scope: !4781)
!4850 = !DILocation(line: 182, column: 1, scope: !4781)
!4851 = distinct !DISubprogram(name: "kzalloc", scope: !147, file: !147, line: 719, type: !4852, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4854)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!159, !306, !157}
!4854 = !{!4855, !4856}
!4855 = !DILocalVariable(name: "size", arg: 1, scope: !4851, file: !147, line: 719, type: !306)
!4856 = !DILocalVariable(name: "flags", arg: 2, scope: !4851, file: !147, line: 719, type: !157)
!4857 = !DILocation(line: 719, column: 52, scope: !4851)
!4858 = !DILocation(line: 719, column: 64, scope: !4851)
!4859 = !DILocation(line: 721, column: 17, scope: !4851)
!4860 = !DILocation(line: 721, column: 23, scope: !4851)
!4861 = !DILocation(line: 721, column: 29, scope: !4851)
!4862 = !DILocation(line: 721, column: 9, scope: !4851)
!4863 = !DILocation(line: 721, column: 2, scope: !4851)
!4864 = !DISubprogram(name: "dev_set_name", scope: !94, file: !94, line: 879, type: !4865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!109, !4114, !172, null}
!4867 = distinct !DISubprogram(name: "pnp_add_card_id", scope: !3, file: !3, line: 107, type: !4868, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4870)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!4618, !4608, !259}
!4870 = !{!4871, !4872, !4873, !4874}
!4871 = !DILocalVariable(name: "card", arg: 1, scope: !4867, file: !3, line: 107, type: !4608)
!4872 = !DILocalVariable(name: "id", arg: 2, scope: !4867, file: !3, line: 107, type: !259)
!4873 = !DILocalVariable(name: "dev_id", scope: !4867, file: !3, line: 109, type: !4618)
!4874 = !DILocalVariable(name: "ptr", scope: !4867, file: !3, line: 109, type: !4618)
!4875 = !DILocation(line: 107, column: 56, scope: !4867)
!4876 = !DILocation(line: 107, column: 68, scope: !4867)
!4877 = !DILocation(line: 109, column: 2, scope: !4867)
!4878 = !DILocation(line: 109, column: 17, scope: !4867)
!4879 = !DILocation(line: 109, column: 26, scope: !4867)
!4880 = !DILocation(line: 111, column: 11, scope: !4867)
!4881 = !DILocation(line: 111, column: 9, scope: !4867)
!4882 = !DILocation(line: 112, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 112, column: 6)
!4884 = !DILocation(line: 112, column: 6, scope: !4867)
!4885 = !DILocation(line: 113, column: 3, scope: !4883)
!4886 = !DILocation(line: 115, column: 18, scope: !4867)
!4887 = !DILocation(line: 115, column: 2, scope: !4867)
!4888 = !DILocation(line: 115, column: 10, scope: !4867)
!4889 = !DILocation(line: 115, column: 16, scope: !4867)
!4890 = !DILocation(line: 116, column: 18, scope: !4867)
!4891 = !DILocation(line: 116, column: 2, scope: !4867)
!4892 = !DILocation(line: 116, column: 10, scope: !4867)
!4893 = !DILocation(line: 116, column: 16, scope: !4867)
!4894 = !DILocation(line: 117, column: 18, scope: !4867)
!4895 = !DILocation(line: 117, column: 2, scope: !4867)
!4896 = !DILocation(line: 117, column: 10, scope: !4867)
!4897 = !DILocation(line: 117, column: 16, scope: !4867)
!4898 = !DILocation(line: 118, column: 18, scope: !4867)
!4899 = !DILocation(line: 118, column: 2, scope: !4867)
!4900 = !DILocation(line: 118, column: 10, scope: !4867)
!4901 = !DILocation(line: 118, column: 16, scope: !4867)
!4902 = !DILocation(line: 119, column: 18, scope: !4867)
!4903 = !DILocation(line: 119, column: 2, scope: !4867)
!4904 = !DILocation(line: 119, column: 10, scope: !4867)
!4905 = !DILocation(line: 119, column: 16, scope: !4867)
!4906 = !DILocation(line: 120, column: 18, scope: !4867)
!4907 = !DILocation(line: 120, column: 2, scope: !4867)
!4908 = !DILocation(line: 120, column: 10, scope: !4867)
!4909 = !DILocation(line: 120, column: 16, scope: !4867)
!4910 = !DILocation(line: 121, column: 18, scope: !4867)
!4911 = !DILocation(line: 121, column: 2, scope: !4867)
!4912 = !DILocation(line: 121, column: 10, scope: !4867)
!4913 = !DILocation(line: 121, column: 16, scope: !4867)
!4914 = !DILocation(line: 122, column: 2, scope: !4867)
!4915 = !DILocation(line: 122, column: 10, scope: !4867)
!4916 = !DILocation(line: 122, column: 16, scope: !4867)
!4917 = !DILocation(line: 124, column: 2, scope: !4867)
!4918 = !DILocation(line: 124, column: 10, scope: !4867)
!4919 = !DILocation(line: 124, column: 15, scope: !4867)
!4920 = !DILocation(line: 125, column: 8, scope: !4867)
!4921 = !DILocation(line: 125, column: 14, scope: !4867)
!4922 = !DILocation(line: 125, column: 6, scope: !4867)
!4923 = !DILocation(line: 126, column: 2, scope: !4867)
!4924 = !DILocation(line: 126, column: 9, scope: !4867)
!4925 = !DILocation(line: 126, column: 13, scope: !4867)
!4926 = !DILocation(line: 126, column: 16, scope: !4867)
!4927 = !DILocation(line: 126, column: 21, scope: !4867)
!4928 = !DILocation(line: 0, scope: !4867)
!4929 = !DILocation(line: 127, column: 9, scope: !4867)
!4930 = !DILocation(line: 127, column: 14, scope: !4867)
!4931 = !DILocation(line: 127, column: 7, scope: !4867)
!4932 = distinct !{!4932, !4923, !4930, !4933, !4934}
!4933 = !{!"llvm.loop.mustprogress"}
!4934 = !{!"llvm.loop.unroll.disable"}
!4935 = !DILocation(line: 128, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 128, column: 6)
!4937 = !DILocation(line: 128, column: 6, scope: !4867)
!4938 = !DILocation(line: 129, column: 15, scope: !4936)
!4939 = !DILocation(line: 129, column: 3, scope: !4936)
!4940 = !DILocation(line: 129, column: 8, scope: !4936)
!4941 = !DILocation(line: 129, column: 13, scope: !4936)
!4942 = !DILocation(line: 131, column: 14, scope: !4936)
!4943 = !DILocation(line: 131, column: 3, scope: !4936)
!4944 = !DILocation(line: 131, column: 9, scope: !4936)
!4945 = !DILocation(line: 131, column: 12, scope: !4936)
!4946 = !DILocation(line: 133, column: 9, scope: !4867)
!4947 = !DILocation(line: 133, column: 2, scope: !4867)
!4948 = !DILocation(line: 134, column: 1, scope: !4867)
!4949 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !4950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4950 = !DISubroutineType(types: !4951)
!4951 = !{null, !2503}
!4952 = distinct !DISubprogram(name: "pnp_add_card", scope: !3, file: !3, line: 234, type: !4953, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4955)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!109, !4608}
!4955 = !{!4956, !4957, !4958, !4959, !4960, !4964, !4966, !4970}
!4956 = !DILocalVariable(name: "card", arg: 1, scope: !4952, file: !3, line: 234, type: !4608)
!4957 = !DILocalVariable(name: "error", scope: !4952, file: !3, line: 236, type: !109)
!4958 = !DILocalVariable(name: "pos", scope: !4952, file: !3, line: 237, type: !179)
!4959 = !DILocalVariable(name: "temp", scope: !4952, file: !3, line: 237, type: !179)
!4960 = !DILocalVariable(name: "dev", scope: !4961, file: !3, line: 258, type: !160)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 257, column: 37)
!4962 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 257, column: 2)
!4963 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 257, column: 2)
!4964 = !DILocalVariable(name: "__mptr", scope: !4965, file: !3, line: 258, type: !159)
!4965 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 258, column: 25)
!4966 = !DILocalVariable(name: "drv", scope: !4967, file: !3, line: 264, type: !4666)
!4967 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 263, column: 51)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 263, column: 2)
!4969 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 263, column: 2)
!4970 = !DILocalVariable(name: "__mptr", scope: !4971, file: !3, line: 265, type: !159)
!4971 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 265, column: 7)
!4972 = !DILocation(line: 234, column: 35, scope: !4952)
!4973 = !DILocation(line: 236, column: 2, scope: !4952)
!4974 = !DILocation(line: 236, column: 6, scope: !4952)
!4975 = !DILocation(line: 237, column: 2, scope: !4952)
!4976 = !DILocation(line: 237, column: 20, scope: !4952)
!4977 = !DILocation(line: 237, column: 26, scope: !4952)
!4978 = !DILocation(line: 239, column: 2, scope: !4952)
!4979 = !DILocation(line: 239, column: 8, scope: !4952)
!4980 = !DILocation(line: 239, column: 12, scope: !4952)
!4981 = !DILocation(line: 239, column: 16, scope: !4952)
!4982 = !DILocation(line: 240, column: 2, scope: !4952)
!4983 = !DILocation(line: 240, column: 8, scope: !4952)
!4984 = !DILocation(line: 240, column: 12, scope: !4952)
!4985 = !DILocation(line: 240, column: 20, scope: !4952)
!4986 = !DILocation(line: 241, column: 27, scope: !4952)
!4987 = !DILocation(line: 241, column: 33, scope: !4952)
!4988 = !DILocation(line: 241, column: 10, scope: !4952)
!4989 = !DILocation(line: 241, column: 8, scope: !4952)
!4990 = !DILocation(line: 242, column: 6, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 242, column: 6)
!4992 = !DILocation(line: 242, column: 6, scope: !4952)
!4993 = !DILocation(line: 243, column: 3, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 243, column: 3)
!4995 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 242, column: 13)
!4996 = !DILocation(line: 243, column: 3, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4994, file: !3, line: 243, column: 3)
!4998 = !DILocation(line: 244, column: 15, scope: !4995)
!4999 = !DILocation(line: 244, column: 21, scope: !4995)
!5000 = !DILocation(line: 244, column: 3, scope: !4995)
!5001 = !DILocation(line: 245, column: 10, scope: !4995)
!5002 = !DILocation(line: 245, column: 3, scope: !4995)
!5003 = !DILocation(line: 248, column: 28, scope: !4952)
!5004 = !DILocation(line: 248, column: 2, scope: !4952)
!5005 = !DILocation(line: 249, column: 2, scope: !4952)
!5006 = !DILocation(line: 250, column: 17, scope: !4952)
!5007 = !DILocation(line: 250, column: 23, scope: !4952)
!5008 = !DILocation(line: 250, column: 2, scope: !4952)
!5009 = !DILocation(line: 251, column: 17, scope: !4952)
!5010 = !DILocation(line: 251, column: 23, scope: !4952)
!5011 = !DILocation(line: 251, column: 39, scope: !4952)
!5012 = !DILocation(line: 251, column: 45, scope: !4952)
!5013 = !DILocation(line: 251, column: 55, scope: !4952)
!5014 = !DILocation(line: 251, column: 2, scope: !4952)
!5015 = !DILocation(line: 252, column: 2, scope: !4952)
!5016 = !DILocation(line: 257, column: 2, scope: !4963)
!5017 = !DILocation(line: 257, column: 2, scope: !4962)
!5018 = !DILocation(line: 258, column: 3, scope: !4961)
!5019 = !DILocation(line: 258, column: 19, scope: !4961)
!5020 = !DILocation(line: 258, column: 25, scope: !4965)
!5021 = !DILocation(line: 258, column: 25, scope: !4961)
!5022 = !DILocation(line: 259, column: 20, scope: !4961)
!5023 = !DILocation(line: 259, column: 3, scope: !4961)
!5024 = !DILocation(line: 260, column: 2, scope: !4962)
!5025 = !DILocation(line: 260, column: 2, scope: !4961)
!5026 = distinct !{!5026, !5016, !5027, !4933, !4934}
!5027 = !DILocation(line: 260, column: 2, scope: !4963)
!5028 = !DILocation(line: 263, column: 2, scope: !4969)
!5029 = !DILocation(line: 263, column: 2, scope: !4968)
!5030 = !DILocation(line: 264, column: 3, scope: !4967)
!5031 = !DILocation(line: 264, column: 27, scope: !4967)
!5032 = !DILocation(line: 265, column: 7, scope: !4971)
!5033 = !DILocation(line: 265, column: 7, scope: !4967)
!5034 = !DILocation(line: 267, column: 14, scope: !4967)
!5035 = !DILocation(line: 267, column: 20, scope: !4967)
!5036 = !DILocation(line: 267, column: 3, scope: !4967)
!5037 = !DILocation(line: 268, column: 2, scope: !4968)
!5038 = !DILocation(line: 268, column: 2, scope: !4967)
!5039 = distinct !{!5039, !5028, !5040, !4933, !4934}
!5040 = !DILocation(line: 268, column: 2, scope: !4969)
!5041 = !DILocation(line: 269, column: 2, scope: !4952)
!5042 = !DILocation(line: 270, column: 1, scope: !4952)
!5043 = distinct !DISubprogram(name: "pnp_release_card", scope: !3, file: !3, line: 149, type: !4139, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5044)
!5044 = !{!5045, !5046, !5047}
!5045 = !DILocalVariable(name: "dmdev", arg: 1, scope: !5043, file: !3, line: 149, type: !4114)
!5046 = !DILocalVariable(name: "card", scope: !5043, file: !3, line: 151, type: !4608)
!5047 = !DILocalVariable(name: "__mptr", scope: !5048, file: !3, line: 151, type: !159)
!5048 = distinct !DILexicalBlock(scope: !5043, file: !3, line: 151, column: 26)
!5049 = !DILocation(line: 149, column: 45, scope: !5043)
!5050 = !DILocation(line: 151, column: 2, scope: !5043)
!5051 = !DILocation(line: 151, column: 19, scope: !5043)
!5052 = !DILocation(line: 151, column: 26, scope: !5048)
!5053 = !DILocation(line: 151, column: 26, scope: !5043)
!5054 = !DILocation(line: 153, column: 20, scope: !5043)
!5055 = !DILocation(line: 153, column: 2, scope: !5043)
!5056 = !DILocation(line: 154, column: 8, scope: !5043)
!5057 = !DILocation(line: 154, column: 2, scope: !5043)
!5058 = !DILocation(line: 155, column: 1, scope: !5043)
!5059 = !DISubprogram(name: "device_register", scope: !94, file: !94, line: 1054, type: !4148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5060 = !DISubprogram(name: "_dev_err", scope: !5061, file: !5061, line: 50, type: !5062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5061 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !4130, !172, null}
!5064 = !DISubprogram(name: "put_device", scope: !94, file: !94, line: 1231, type: !4139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5065 = distinct !DISubprogram(name: "pnp_interface_attach_card", scope: !3, file: !3, line: 212, type: !4953, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5066)
!5066 = !{!5067, !5068, !5069}
!5067 = !DILocalVariable(name: "card", arg: 1, scope: !5065, file: !3, line: 212, type: !4608)
!5068 = !DILocalVariable(name: "rc", scope: !5065, file: !3, line: 214, type: !109)
!5069 = !DILabel(scope: !5065, name: "err_name", file: !3, line: 225)
!5070 = !DILocation(line: 212, column: 55, scope: !5065)
!5071 = !DILocation(line: 214, column: 2, scope: !5065)
!5072 = !DILocation(line: 214, column: 6, scope: !5065)
!5073 = !DILocation(line: 214, column: 31, scope: !5065)
!5074 = !DILocation(line: 214, column: 37, scope: !5065)
!5075 = !DILocation(line: 214, column: 11, scope: !5065)
!5076 = !DILocation(line: 216, column: 6, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 216, column: 6)
!5078 = !DILocation(line: 216, column: 6, scope: !5065)
!5079 = !DILocation(line: 217, column: 10, scope: !5077)
!5080 = !DILocation(line: 217, column: 3, scope: !5077)
!5081 = !DILocation(line: 219, column: 27, scope: !5065)
!5082 = !DILocation(line: 219, column: 33, scope: !5065)
!5083 = !DILocation(line: 219, column: 7, scope: !5065)
!5084 = !DILocation(line: 219, column: 5, scope: !5065)
!5085 = !DILocation(line: 220, column: 6, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5065, file: !3, line: 220, column: 6)
!5087 = !DILocation(line: 220, column: 6, scope: !5065)
!5088 = !DILocation(line: 221, column: 3, scope: !5086)
!5089 = !DILocation(line: 223, column: 2, scope: !5065)
!5090 = !DILocation(line: 225, column: 1, scope: !5065)
!5091 = !DILocation(line: 226, column: 22, scope: !5065)
!5092 = !DILocation(line: 226, column: 28, scope: !5065)
!5093 = !DILocation(line: 226, column: 2, scope: !5065)
!5094 = !DILocation(line: 227, column: 9, scope: !5065)
!5095 = !DILocation(line: 227, column: 2, scope: !5065)
!5096 = !DILocation(line: 228, column: 1, scope: !5065)
!5097 = !DISubprogram(name: "mutex_lock", scope: !601, file: !601, line: 227, type: !5098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{null, !5100}
!5100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!5101 = distinct !DISubprogram(name: "list_add_tail", scope: !5102, file: !5102, line: 181, type: !5103, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5105)
!5102 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5103 = !DISubroutineType(types: !5104)
!5104 = !{null, !179, !179}
!5105 = !{!5106, !5107}
!5106 = !DILocalVariable(name: "new", arg: 1, scope: !5101, file: !5102, line: 181, type: !179)
!5107 = !DILocalVariable(name: "head", arg: 2, scope: !5101, file: !5102, line: 181, type: !179)
!5108 = !DILocation(line: 181, column: 52, scope: !5101)
!5109 = !DILocation(line: 181, column: 75, scope: !5101)
!5110 = !DILocation(line: 183, column: 13, scope: !5101)
!5111 = !DILocation(line: 183, column: 18, scope: !5101)
!5112 = !DILocation(line: 183, column: 24, scope: !5101)
!5113 = !DILocation(line: 183, column: 30, scope: !5101)
!5114 = !DILocation(line: 183, column: 2, scope: !5101)
!5115 = !DILocation(line: 184, column: 1, scope: !5101)
!5116 = !DISubprogram(name: "mutex_unlock", scope: !601, file: !601, line: 246, type: !5098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5117 = distinct !DISubprogram(name: "list_is_head", scope: !5102, file: !5102, line: 362, type: !5118, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5122)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!109, !5120, !5120}
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5121, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!5122 = !{!5123, !5124}
!5123 = !DILocalVariable(name: "list", arg: 1, scope: !5117, file: !5102, line: 362, type: !5120)
!5124 = !DILocalVariable(name: "head", arg: 2, scope: !5117, file: !5102, line: 362, type: !5120)
!5125 = !DILocation(line: 362, column: 56, scope: !5117)
!5126 = !DILocation(line: 362, column: 86, scope: !5117)
!5127 = !DILocation(line: 364, column: 9, scope: !5117)
!5128 = !DILocation(line: 364, column: 17, scope: !5117)
!5129 = !DILocation(line: 364, column: 14, scope: !5117)
!5130 = !DILocation(line: 364, column: 2, scope: !5117)
!5131 = !DISubprogram(name: "__pnp_add_device", scope: !5132, file: !5132, line: 139, type: !4590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5132 = !DIFile(filename: "drivers/pnp/base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad88cd72d3973577aa1f5f71c7f3d528")
!5133 = distinct !DISubprogram(name: "card_probe", scope: !3, file: !3, line: 71, type: !5134, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5136)
!5134 = !DISubroutineType(types: !5135)
!5135 = !{!109, !4608, !4666}
!5136 = !{!5137, !5138, !5139, !5140, !5141, !5142, !5145}
!5137 = !DILocalVariable(name: "card", arg: 1, scope: !5133, file: !3, line: 71, type: !4608)
!5138 = !DILocalVariable(name: "drv", arg: 2, scope: !5133, file: !3, line: 71, type: !4666)
!5139 = !DILocalVariable(name: "id", scope: !5133, file: !3, line: 73, type: !4672)
!5140 = !DILocalVariable(name: "clink", scope: !5133, file: !3, line: 74, type: !4661)
!5141 = !DILocalVariable(name: "dev", scope: !5133, file: !3, line: 75, type: !160)
!5142 = !DILocalVariable(name: "__mptr", scope: !5143, file: !3, line: 94, type: !159)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 94, column: 2)
!5144 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 94, column: 2)
!5145 = !DILocalVariable(name: "__mptr", scope: !5146, file: !3, line: 94, type: !159)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 94, column: 2)
!5147 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 94, column: 2)
!5148 = !DILocation(line: 71, column: 40, scope: !5133)
!5149 = !DILocation(line: 71, column: 70, scope: !5133)
!5150 = !DILocation(line: 73, column: 2, scope: !5133)
!5151 = !DILocation(line: 73, column: 35, scope: !5133)
!5152 = !DILocation(line: 74, column: 2, scope: !5133)
!5153 = !DILocation(line: 74, column: 24, scope: !5133)
!5154 = !DILocation(line: 75, column: 2, scope: !5133)
!5155 = !DILocation(line: 75, column: 18, scope: !5133)
!5156 = !DILocation(line: 77, column: 7, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 77, column: 6)
!5158 = !DILocation(line: 77, column: 12, scope: !5157)
!5159 = !DILocation(line: 77, column: 6, scope: !5133)
!5160 = !DILocation(line: 78, column: 3, scope: !5157)
!5161 = !DILocation(line: 79, column: 18, scope: !5133)
!5162 = !DILocation(line: 79, column: 23, scope: !5133)
!5163 = !DILocation(line: 79, column: 7, scope: !5133)
!5164 = !DILocation(line: 79, column: 5, scope: !5133)
!5165 = !DILocation(line: 80, column: 7, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 80, column: 6)
!5167 = !DILocation(line: 80, column: 6, scope: !5133)
!5168 = !DILocation(line: 81, column: 3, scope: !5166)
!5169 = !DILocation(line: 83, column: 10, scope: !5133)
!5170 = !DILocation(line: 83, column: 8, scope: !5133)
!5171 = !DILocation(line: 84, column: 7, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 84, column: 6)
!5173 = !DILocation(line: 84, column: 6, scope: !5133)
!5174 = !DILocation(line: 85, column: 3, scope: !5172)
!5175 = !DILocation(line: 86, column: 16, scope: !5133)
!5176 = !DILocation(line: 86, column: 2, scope: !5133)
!5177 = !DILocation(line: 86, column: 9, scope: !5133)
!5178 = !DILocation(line: 86, column: 14, scope: !5133)
!5179 = !DILocation(line: 87, column: 18, scope: !5133)
!5180 = !DILocation(line: 87, column: 2, scope: !5133)
!5181 = !DILocation(line: 87, column: 9, scope: !5133)
!5182 = !DILocation(line: 87, column: 16, scope: !5133)
!5183 = !DILocation(line: 88, column: 2, scope: !5133)
!5184 = !DILocation(line: 88, column: 9, scope: !5133)
!5185 = !DILocation(line: 88, column: 20, scope: !5133)
!5186 = !DILocation(line: 90, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5133, file: !3, line: 90, column: 6)
!5188 = !DILocation(line: 90, column: 11, scope: !5187)
!5189 = !DILocation(line: 90, column: 17, scope: !5187)
!5190 = !DILocation(line: 90, column: 24, scope: !5187)
!5191 = !DILocation(line: 90, column: 28, scope: !5187)
!5192 = !DILocation(line: 90, column: 6, scope: !5133)
!5193 = !DILocation(line: 91, column: 3, scope: !5187)
!5194 = !DILocation(line: 94, column: 2, scope: !5143)
!5195 = !DILocation(line: 94, column: 2, scope: !5144)
!5196 = !DILocation(line: 94, column: 2, scope: !5147)
!5197 = !DILocation(line: 95, column: 7, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 95, column: 7)
!5199 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 94, column: 31)
!5200 = !DILocation(line: 95, column: 12, scope: !5198)
!5201 = !DILocation(line: 95, column: 25, scope: !5198)
!5202 = !DILocation(line: 95, column: 22, scope: !5198)
!5203 = !DILocation(line: 95, column: 7, scope: !5199)
!5204 = !DILocation(line: 96, column: 28, scope: !5198)
!5205 = !DILocation(line: 96, column: 4, scope: !5198)
!5206 = !DILocation(line: 97, column: 2, scope: !5199)
!5207 = !DILocation(line: 94, column: 2, scope: !5146)
!5208 = distinct !{!5208, !5195, !5209, !4933, !4934}
!5209 = !DILocation(line: 97, column: 2, scope: !5144)
!5210 = !DILocation(line: 98, column: 8, scope: !5133)
!5211 = !DILocation(line: 98, column: 2, scope: !5133)
!5212 = !DILocation(line: 99, column: 2, scope: !5133)
!5213 = !DILocation(line: 100, column: 1, scope: !5133)
!5214 = distinct !DISubprogram(name: "pnp_remove_card", scope: !3, file: !3, line: 276, type: !5215, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5217)
!5215 = !DISubroutineType(types: !5216)
!5216 = !{null, !4608}
!5217 = !{!5218, !5219, !5220, !5221, !5225}
!5218 = !DILocalVariable(name: "card", arg: 1, scope: !5214, file: !3, line: 276, type: !4608)
!5219 = !DILocalVariable(name: "pos", scope: !5214, file: !3, line: 278, type: !179)
!5220 = !DILocalVariable(name: "temp", scope: !5214, file: !3, line: 278, type: !179)
!5221 = !DILocalVariable(name: "dev", scope: !5222, file: !3, line: 286, type: !160)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 285, column: 48)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 285, column: 2)
!5224 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 285, column: 2)
!5225 = !DILocalVariable(name: "__mptr", scope: !5226, file: !3, line: 286, type: !159)
!5226 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 286, column: 25)
!5227 = !DILocation(line: 276, column: 39, scope: !5214)
!5228 = !DILocation(line: 278, column: 2, scope: !5214)
!5229 = !DILocation(line: 278, column: 20, scope: !5214)
!5230 = !DILocation(line: 278, column: 26, scope: !5214)
!5231 = !DILocation(line: 280, column: 21, scope: !5214)
!5232 = !DILocation(line: 280, column: 27, scope: !5214)
!5233 = !DILocation(line: 280, column: 2, scope: !5214)
!5234 = !DILocation(line: 281, column: 2, scope: !5214)
!5235 = !DILocation(line: 282, column: 12, scope: !5214)
!5236 = !DILocation(line: 282, column: 18, scope: !5214)
!5237 = !DILocation(line: 282, column: 2, scope: !5214)
!5238 = !DILocation(line: 283, column: 12, scope: !5214)
!5239 = !DILocation(line: 283, column: 18, scope: !5214)
!5240 = !DILocation(line: 283, column: 2, scope: !5214)
!5241 = !DILocation(line: 284, column: 2, scope: !5214)
!5242 = !DILocation(line: 285, column: 2, scope: !5224)
!5243 = !DILocation(line: 285, column: 2, scope: !5223)
!5244 = !DILocation(line: 286, column: 3, scope: !5222)
!5245 = !DILocation(line: 286, column: 19, scope: !5222)
!5246 = !DILocation(line: 286, column: 25, scope: !5226)
!5247 = !DILocation(line: 286, column: 25, scope: !5222)
!5248 = !DILocation(line: 287, column: 26, scope: !5222)
!5249 = !DILocation(line: 287, column: 3, scope: !5222)
!5250 = !DILocation(line: 288, column: 2, scope: !5223)
!5251 = !DILocation(line: 288, column: 2, scope: !5222)
!5252 = distinct !{!5252, !5242, !5253, !4933, !4934}
!5253 = !DILocation(line: 288, column: 2, scope: !5224)
!5254 = !DILocation(line: 289, column: 1, scope: !5214)
!5255 = !DISubprogram(name: "device_unregister", scope: !94, file: !94, line: 1055, type: !4139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5256 = distinct !DISubprogram(name: "list_del", scope: !5102, file: !5102, line: 227, type: !5257, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{null, !179}
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "entry", arg: 1, scope: !5256, file: !5102, line: 227, type: !179)
!5261 = !DILocation(line: 227, column: 47, scope: !5256)
!5262 = !DILocation(line: 229, column: 19, scope: !5256)
!5263 = !DILocation(line: 229, column: 2, scope: !5256)
!5264 = !DILocation(line: 230, column: 2, scope: !5256)
!5265 = !DILocation(line: 230, column: 9, scope: !5256)
!5266 = !DILocation(line: 230, column: 14, scope: !5256)
!5267 = !DILocation(line: 231, column: 2, scope: !5256)
!5268 = !DILocation(line: 231, column: 9, scope: !5256)
!5269 = !DILocation(line: 231, column: 14, scope: !5256)
!5270 = !DILocation(line: 232, column: 1, scope: !5256)
!5271 = distinct !DISubprogram(name: "pnp_remove_card_device", scope: !3, file: !3, line: 313, type: !4654, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5272)
!5272 = !{!5273}
!5273 = !DILocalVariable(name: "dev", arg: 1, scope: !5271, file: !3, line: 313, type: !160)
!5274 = !DILocation(line: 313, column: 45, scope: !5271)
!5275 = !DILocation(line: 315, column: 2, scope: !5271)
!5276 = !DILocation(line: 316, column: 2, scope: !5271)
!5277 = !DILocation(line: 316, column: 7, scope: !5271)
!5278 = !DILocation(line: 316, column: 12, scope: !5271)
!5279 = !DILocation(line: 317, column: 12, scope: !5271)
!5280 = !DILocation(line: 317, column: 17, scope: !5271)
!5281 = !DILocation(line: 317, column: 2, scope: !5271)
!5282 = !DILocation(line: 318, column: 2, scope: !5271)
!5283 = !DILocation(line: 319, column: 22, scope: !5271)
!5284 = !DILocation(line: 319, column: 2, scope: !5271)
!5285 = !DILocation(line: 320, column: 1, scope: !5271)
!5286 = distinct !DISubprogram(name: "pnp_add_card_device", scope: !3, file: !3, line: 296, type: !5287, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5289)
!5287 = !DISubroutineType(types: !5288)
!5288 = !{!109, !4608, !160}
!5289 = !{!5290, !5291}
!5290 = !DILocalVariable(name: "card", arg: 1, scope: !5286, file: !3, line: 296, type: !4608)
!5291 = !DILocalVariable(name: "dev", arg: 2, scope: !5286, file: !3, line: 296, type: !160)
!5292 = !DILocation(line: 296, column: 42, scope: !5286)
!5293 = !DILocation(line: 296, column: 64, scope: !5286)
!5294 = !DILocation(line: 298, column: 21, scope: !5286)
!5295 = !DILocation(line: 298, column: 27, scope: !5286)
!5296 = !DILocation(line: 298, column: 2, scope: !5286)
!5297 = !DILocation(line: 298, column: 7, scope: !5286)
!5298 = !DILocation(line: 298, column: 11, scope: !5286)
!5299 = !DILocation(line: 298, column: 18, scope: !5286)
!5300 = !DILocation(line: 299, column: 2, scope: !5286)
!5301 = !DILocation(line: 299, column: 7, scope: !5286)
!5302 = !DILocation(line: 299, column: 17, scope: !5286)
!5303 = !DILocation(line: 300, column: 16, scope: !5286)
!5304 = !DILocation(line: 300, column: 21, scope: !5286)
!5305 = !DILocation(line: 301, column: 8, scope: !5286)
!5306 = !DILocation(line: 301, column: 13, scope: !5286)
!5307 = !DILocation(line: 301, column: 23, scope: !5286)
!5308 = !DILocation(line: 301, column: 31, scope: !5286)
!5309 = !DILocation(line: 301, column: 37, scope: !5286)
!5310 = !DILocation(line: 301, column: 45, scope: !5286)
!5311 = !DILocation(line: 301, column: 50, scope: !5286)
!5312 = !DILocation(line: 300, column: 2, scope: !5286)
!5313 = !DILocation(line: 302, column: 2, scope: !5286)
!5314 = !DILocation(line: 303, column: 14, scope: !5286)
!5315 = !DILocation(line: 303, column: 2, scope: !5286)
!5316 = !DILocation(line: 303, column: 7, scope: !5286)
!5317 = !DILocation(line: 303, column: 12, scope: !5286)
!5318 = !DILocation(line: 304, column: 17, scope: !5286)
!5319 = !DILocation(line: 304, column: 22, scope: !5286)
!5320 = !DILocation(line: 304, column: 34, scope: !5286)
!5321 = !DILocation(line: 304, column: 40, scope: !5286)
!5322 = !DILocation(line: 304, column: 2, scope: !5286)
!5323 = !DILocation(line: 305, column: 2, scope: !5286)
!5324 = !DILocation(line: 306, column: 2, scope: !5286)
!5325 = !DISubprogram(name: "__pnp_remove_device", scope: !5132, file: !5132, line: 140, type: !4654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5326 = distinct !DISubprogram(name: "pnp_request_card_device", scope: !3, file: !3, line: 328, type: !5327, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5329)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!160, !4661, !172, !160}
!5329 = !{!5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5340, !5341}
!5330 = !DILocalVariable(name: "clink", arg: 1, scope: !5326, file: !3, line: 328, type: !4661)
!5331 = !DILocalVariable(name: "id", arg: 2, scope: !5326, file: !3, line: 329, type: !172)
!5332 = !DILocalVariable(name: "from", arg: 3, scope: !5326, file: !3, line: 329, type: !160)
!5333 = !DILocalVariable(name: "pos", scope: !5326, file: !3, line: 331, type: !179)
!5334 = !DILocalVariable(name: "dev", scope: !5326, file: !3, line: 332, type: !160)
!5335 = !DILocalVariable(name: "drv", scope: !5326, file: !3, line: 333, type: !4666)
!5336 = !DILocalVariable(name: "card", scope: !5326, file: !3, line: 334, type: !4608)
!5337 = !DILocalVariable(name: "__mptr", scope: !5338, file: !3, line: 349, type: !159)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 349, column: 9)
!5339 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 348, column: 32)
!5340 = !DILabel(scope: !5326, name: "found", file: !3, line: 357)
!5341 = !DILabel(scope: !5326, name: "err_out", file: !3, line: 367)
!5342 = !DILocation(line: 328, column: 63, scope: !5326)
!5343 = !DILocation(line: 329, column: 18, scope: !5326)
!5344 = !DILocation(line: 329, column: 38, scope: !5326)
!5345 = !DILocation(line: 331, column: 2, scope: !5326)
!5346 = !DILocation(line: 331, column: 20, scope: !5326)
!5347 = !DILocation(line: 332, column: 2, scope: !5326)
!5348 = !DILocation(line: 332, column: 18, scope: !5326)
!5349 = !DILocation(line: 333, column: 2, scope: !5326)
!5350 = !DILocation(line: 333, column: 26, scope: !5326)
!5351 = !DILocation(line: 334, column: 2, scope: !5326)
!5352 = !DILocation(line: 334, column: 19, scope: !5326)
!5353 = !DILocation(line: 336, column: 7, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 336, column: 6)
!5355 = !DILocation(line: 336, column: 13, scope: !5354)
!5356 = !DILocation(line: 336, column: 17, scope: !5354)
!5357 = !DILocation(line: 336, column: 6, scope: !5326)
!5358 = !DILocation(line: 337, column: 3, scope: !5354)
!5359 = !DILocation(line: 339, column: 9, scope: !5326)
!5360 = !DILocation(line: 339, column: 16, scope: !5326)
!5361 = !DILocation(line: 339, column: 7, scope: !5326)
!5362 = !DILocation(line: 340, column: 8, scope: !5326)
!5363 = !DILocation(line: 340, column: 15, scope: !5326)
!5364 = !DILocation(line: 340, column: 6, scope: !5326)
!5365 = !DILocation(line: 341, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 341, column: 6)
!5367 = !DILocation(line: 341, column: 6, scope: !5326)
!5368 = !DILocation(line: 342, column: 9, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 341, column: 13)
!5370 = !DILocation(line: 342, column: 15, scope: !5369)
!5371 = !DILocation(line: 342, column: 23, scope: !5369)
!5372 = !DILocation(line: 342, column: 7, scope: !5369)
!5373 = !DILocation(line: 343, column: 2, scope: !5369)
!5374 = !DILocation(line: 344, column: 7, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 344, column: 7)
!5376 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 343, column: 9)
!5377 = !DILocation(line: 344, column: 13, scope: !5375)
!5378 = !DILocation(line: 344, column: 21, scope: !5375)
!5379 = !DILocation(line: 344, column: 18, scope: !5375)
!5380 = !DILocation(line: 344, column: 7, scope: !5376)
!5381 = !DILocation(line: 345, column: 4, scope: !5375)
!5382 = !DILocation(line: 346, column: 9, scope: !5376)
!5383 = !DILocation(line: 346, column: 15, scope: !5376)
!5384 = !DILocation(line: 346, column: 25, scope: !5376)
!5385 = !DILocation(line: 346, column: 7, scope: !5376)
!5386 = !DILocation(line: 348, column: 2, scope: !5326)
!5387 = !DILocation(line: 348, column: 9, scope: !5326)
!5388 = !DILocation(line: 348, column: 17, scope: !5326)
!5389 = !DILocation(line: 348, column: 23, scope: !5326)
!5390 = !DILocation(line: 348, column: 13, scope: !5326)
!5391 = !DILocation(line: 349, column: 9, scope: !5338)
!5392 = !DILocation(line: 349, column: 9, scope: !5339)
!5393 = !DILocation(line: 349, column: 7, scope: !5339)
!5394 = !DILocation(line: 350, column: 9, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 350, column: 7)
!5396 = !DILocation(line: 350, column: 14, scope: !5395)
!5397 = !DILocation(line: 350, column: 25, scope: !5395)
!5398 = !DILocation(line: 350, column: 43, scope: !5395)
!5399 = !DILocation(line: 350, column: 48, scope: !5395)
!5400 = !DILocation(line: 350, column: 52, scope: !5395)
!5401 = !DILocation(line: 350, column: 28, scope: !5395)
!5402 = !DILocation(line: 350, column: 7, scope: !5339)
!5403 = !DILocation(line: 351, column: 4, scope: !5395)
!5404 = !DILocation(line: 352, column: 9, scope: !5339)
!5405 = !DILocation(line: 352, column: 14, scope: !5339)
!5406 = !DILocation(line: 352, column: 7, scope: !5339)
!5407 = distinct !{!5407, !5386, !5408, !4933, !4934}
!5408 = !DILocation(line: 353, column: 2, scope: !5326)
!5409 = !DILocation(line: 355, column: 2, scope: !5326)
!5410 = !DILocation(line: 357, column: 1, scope: !5326)
!5411 = !DILocation(line: 358, column: 19, scope: !5326)
!5412 = !DILocation(line: 358, column: 2, scope: !5326)
!5413 = !DILocation(line: 358, column: 7, scope: !5326)
!5414 = !DILocation(line: 358, column: 17, scope: !5326)
!5415 = !DILocation(line: 359, column: 21, scope: !5326)
!5416 = !DILocation(line: 359, column: 26, scope: !5326)
!5417 = !DILocation(line: 359, column: 31, scope: !5326)
!5418 = !DILocation(line: 359, column: 2, scope: !5326)
!5419 = !DILocation(line: 359, column: 7, scope: !5326)
!5420 = !DILocation(line: 359, column: 11, scope: !5326)
!5421 = !DILocation(line: 359, column: 18, scope: !5326)
!5422 = !DILocation(line: 360, column: 19, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 360, column: 6)
!5424 = !DILocation(line: 360, column: 26, scope: !5423)
!5425 = !DILocation(line: 360, column: 31, scope: !5423)
!5426 = !DILocation(line: 360, column: 6, scope: !5423)
!5427 = !DILocation(line: 360, column: 6, scope: !5326)
!5428 = !DILocation(line: 361, column: 3, scope: !5423)
!5429 = !DILocation(line: 362, column: 26, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 362, column: 6)
!5431 = !DILocation(line: 362, column: 31, scope: !5430)
!5432 = !DILocation(line: 362, column: 6, scope: !5430)
!5433 = !DILocation(line: 362, column: 6, scope: !5326)
!5434 = !DILocation(line: 363, column: 3, scope: !5430)
!5435 = !DILocation(line: 365, column: 9, scope: !5326)
!5436 = !DILocation(line: 365, column: 2, scope: !5326)
!5437 = !DILocation(line: 367, column: 1, scope: !5326)
!5438 = !DILocation(line: 368, column: 2, scope: !5326)
!5439 = !DILocation(line: 368, column: 7, scope: !5326)
!5440 = !DILocation(line: 368, column: 11, scope: !5326)
!5441 = !DILocation(line: 368, column: 18, scope: !5326)
!5442 = !DILocation(line: 369, column: 2, scope: !5326)
!5443 = !DILocation(line: 369, column: 7, scope: !5326)
!5444 = !DILocation(line: 369, column: 17, scope: !5326)
!5445 = !DILocation(line: 370, column: 2, scope: !5326)
!5446 = !DILocation(line: 371, column: 1, scope: !5326)
!5447 = !DISubprogram(name: "compare_pnp_id", scope: !162, file: !162, line: 468, type: !5448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5448 = !DISubroutineType(types: !5449)
!5449 = !{!109, !4618, !172}
!5450 = !DISubprogram(name: "device_bind_driver", scope: !94, file: !94, line: 1168, type: !4148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5451 = distinct !DISubprogram(name: "pnp_release_card_device", scope: !3, file: !3, line: 378, type: !4654, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5452)
!5452 = !{!5453, !5454}
!5453 = !DILocalVariable(name: "dev", arg: 1, scope: !5451, file: !3, line: 378, type: !160)
!5454 = !DILocalVariable(name: "drv", scope: !5451, file: !3, line: 380, type: !4666)
!5455 = !DILocation(line: 378, column: 46, scope: !5451)
!5456 = !DILocation(line: 380, column: 2, scope: !5451)
!5457 = !DILocation(line: 380, column: 26, scope: !5451)
!5458 = !DILocation(line: 380, column: 32, scope: !5451)
!5459 = !DILocation(line: 380, column: 37, scope: !5451)
!5460 = !DILocation(line: 380, column: 48, scope: !5451)
!5461 = !DILocation(line: 382, column: 2, scope: !5451)
!5462 = !DILocation(line: 382, column: 7, scope: !5451)
!5463 = !DILocation(line: 382, column: 12, scope: !5451)
!5464 = !DILocation(line: 382, column: 19, scope: !5451)
!5465 = !DILocation(line: 383, column: 25, scope: !5451)
!5466 = !DILocation(line: 383, column: 30, scope: !5451)
!5467 = !DILocation(line: 383, column: 2, scope: !5451)
!5468 = !DILocation(line: 384, column: 2, scope: !5451)
!5469 = !DILocation(line: 384, column: 7, scope: !5451)
!5470 = !DILocation(line: 384, column: 12, scope: !5451)
!5471 = !DILocation(line: 384, column: 19, scope: !5451)
!5472 = !DILocation(line: 385, column: 1, scope: !5451)
!5473 = distinct !DISubprogram(name: "card_remove", scope: !3, file: !3, line: 53, type: !4654, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5474 = !{!5475}
!5475 = !DILocalVariable(name: "dev", arg: 1, scope: !5473, file: !3, line: 53, type: !160)
!5476 = !DILocation(line: 53, column: 41, scope: !5473)
!5477 = !DILocation(line: 55, column: 2, scope: !5473)
!5478 = !DILocation(line: 55, column: 7, scope: !5473)
!5479 = !DILocation(line: 55, column: 17, scope: !5473)
!5480 = !DILocation(line: 56, column: 1, scope: !5473)
!5481 = !DISubprogram(name: "device_release_driver", scope: !94, file: !94, line: 1169, type: !4139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5482 = distinct !DISubprogram(name: "card_remove_first", scope: !3, file: !3, line: 58, type: !4654, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5483)
!5483 = !{!5484, !5485, !5486}
!5484 = !DILocalVariable(name: "dev", arg: 1, scope: !5482, file: !3, line: 58, type: !160)
!5485 = !DILocalVariable(name: "drv", scope: !5482, file: !3, line: 60, type: !4666)
!5486 = !DILocalVariable(name: "__mptr", scope: !5487, file: !3, line: 60, type: !159)
!5487 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 60, column: 32)
!5488 = !DILocation(line: 58, column: 47, scope: !5482)
!5489 = !DILocation(line: 60, column: 2, scope: !5482)
!5490 = !DILocation(line: 60, column: 26, scope: !5482)
!5491 = !DILocation(line: 60, column: 32, scope: !5487)
!5492 = !DILocation(line: 60, column: 32, scope: !5482)
!5493 = !DILocation(line: 62, column: 7, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 62, column: 6)
!5495 = !DILocation(line: 62, column: 12, scope: !5494)
!5496 = !DILocation(line: 62, column: 17, scope: !5494)
!5497 = !DILocation(line: 62, column: 21, scope: !5494)
!5498 = !DILocation(line: 62, column: 6, scope: !5482)
!5499 = !DILocation(line: 63, column: 3, scope: !5494)
!5500 = !DILocation(line: 64, column: 6, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 64, column: 6)
!5502 = !DILocation(line: 64, column: 11, scope: !5501)
!5503 = !DILocation(line: 64, column: 6, scope: !5482)
!5504 = !DILocation(line: 65, column: 3, scope: !5501)
!5505 = !DILocation(line: 65, column: 8, scope: !5501)
!5506 = !DILocation(line: 65, column: 15, scope: !5501)
!5507 = !DILocation(line: 65, column: 20, scope: !5501)
!5508 = !DILocation(line: 66, column: 2, scope: !5482)
!5509 = !DILocation(line: 66, column: 7, scope: !5482)
!5510 = !DILocation(line: 66, column: 12, scope: !5482)
!5511 = !DILocation(line: 66, column: 19, scope: !5482)
!5512 = !DILocation(line: 67, column: 8, scope: !5482)
!5513 = !DILocation(line: 67, column: 13, scope: !5482)
!5514 = !DILocation(line: 67, column: 2, scope: !5482)
!5515 = !DILocation(line: 68, column: 14, scope: !5482)
!5516 = !DILocation(line: 68, column: 2, scope: !5482)
!5517 = !DILocation(line: 69, column: 1, scope: !5482)
!5518 = distinct !DISubprogram(name: "pnp_register_card_driver", scope: !3, file: !3, line: 416, type: !5519, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5521)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!109, !4666}
!5521 = !{!5522, !5523, !5524, !5525, !5526, !5530}
!5522 = !DILocalVariable(name: "drv", arg: 1, scope: !5518, file: !3, line: 416, type: !4666)
!5523 = !DILocalVariable(name: "error", scope: !5518, file: !3, line: 418, type: !109)
!5524 = !DILocalVariable(name: "pos", scope: !5518, file: !3, line: 419, type: !179)
!5525 = !DILocalVariable(name: "temp", scope: !5518, file: !3, line: 419, type: !179)
!5526 = !DILocalVariable(name: "card", scope: !5527, file: !3, line: 438, type: !4608)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 437, column: 44)
!5528 = distinct !DILexicalBlock(scope: !5529, file: !3, line: 437, column: 2)
!5529 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 437, column: 2)
!5530 = !DILocalVariable(name: "__mptr", scope: !5531, file: !3, line: 439, type: !159)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 439, column: 7)
!5532 = !DILocation(line: 416, column: 54, scope: !5518)
!5533 = !DILocation(line: 418, column: 2, scope: !5518)
!5534 = !DILocation(line: 418, column: 6, scope: !5518)
!5535 = !DILocation(line: 419, column: 2, scope: !5518)
!5536 = !DILocation(line: 419, column: 20, scope: !5518)
!5537 = !DILocation(line: 419, column: 26, scope: !5518)
!5538 = !DILocation(line: 421, column: 19, scope: !5518)
!5539 = !DILocation(line: 421, column: 24, scope: !5518)
!5540 = !DILocation(line: 421, column: 2, scope: !5518)
!5541 = !DILocation(line: 421, column: 7, scope: !5518)
!5542 = !DILocation(line: 421, column: 12, scope: !5518)
!5543 = !DILocation(line: 421, column: 17, scope: !5518)
!5544 = !DILocation(line: 422, column: 2, scope: !5518)
!5545 = !DILocation(line: 422, column: 7, scope: !5518)
!5546 = !DILocation(line: 422, column: 12, scope: !5518)
!5547 = !DILocation(line: 422, column: 21, scope: !5518)
!5548 = !DILocation(line: 423, column: 20, scope: !5518)
!5549 = !DILocation(line: 423, column: 25, scope: !5518)
!5550 = !DILocation(line: 423, column: 2, scope: !5518)
!5551 = !DILocation(line: 423, column: 7, scope: !5518)
!5552 = !DILocation(line: 423, column: 12, scope: !5518)
!5553 = !DILocation(line: 423, column: 18, scope: !5518)
!5554 = !DILocation(line: 424, column: 2, scope: !5518)
!5555 = !DILocation(line: 424, column: 7, scope: !5518)
!5556 = !DILocation(line: 424, column: 12, scope: !5518)
!5557 = !DILocation(line: 424, column: 18, scope: !5518)
!5558 = !DILocation(line: 425, column: 2, scope: !5518)
!5559 = !DILocation(line: 425, column: 7, scope: !5518)
!5560 = !DILocation(line: 425, column: 12, scope: !5518)
!5561 = !DILocation(line: 425, column: 19, scope: !5518)
!5562 = !DILocation(line: 426, column: 22, scope: !5518)
!5563 = !DILocation(line: 426, column: 27, scope: !5518)
!5564 = !DILocation(line: 426, column: 2, scope: !5518)
!5565 = !DILocation(line: 426, column: 7, scope: !5518)
!5566 = !DILocation(line: 426, column: 12, scope: !5518)
!5567 = !DILocation(line: 426, column: 20, scope: !5518)
!5568 = !DILocation(line: 427, column: 21, scope: !5518)
!5569 = !DILocation(line: 427, column: 26, scope: !5518)
!5570 = !DILocation(line: 427, column: 2, scope: !5518)
!5571 = !DILocation(line: 427, column: 7, scope: !5518)
!5572 = !DILocation(line: 427, column: 12, scope: !5518)
!5573 = !DILocation(line: 427, column: 19, scope: !5518)
!5574 = !DILocation(line: 429, column: 31, scope: !5518)
!5575 = !DILocation(line: 429, column: 36, scope: !5518)
!5576 = !DILocation(line: 429, column: 10, scope: !5518)
!5577 = !DILocation(line: 429, column: 8, scope: !5518)
!5578 = !DILocation(line: 430, column: 6, scope: !5579)
!5579 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 430, column: 6)
!5580 = !DILocation(line: 430, column: 12, scope: !5579)
!5581 = !DILocation(line: 430, column: 6, scope: !5518)
!5582 = !DILocation(line: 431, column: 10, scope: !5579)
!5583 = !DILocation(line: 431, column: 3, scope: !5579)
!5584 = !DILocation(line: 433, column: 2, scope: !5518)
!5585 = !DILocation(line: 434, column: 17, scope: !5518)
!5586 = !DILocation(line: 434, column: 22, scope: !5518)
!5587 = !DILocation(line: 434, column: 2, scope: !5518)
!5588 = !DILocation(line: 435, column: 2, scope: !5518)
!5589 = !DILocation(line: 437, column: 2, scope: !5529)
!5590 = !DILocation(line: 437, column: 2, scope: !5528)
!5591 = !DILocation(line: 438, column: 3, scope: !5527)
!5592 = !DILocation(line: 438, column: 20, scope: !5527)
!5593 = !DILocation(line: 439, column: 7, scope: !5531)
!5594 = !DILocation(line: 439, column: 7, scope: !5527)
!5595 = !DILocation(line: 440, column: 14, scope: !5527)
!5596 = !DILocation(line: 440, column: 20, scope: !5527)
!5597 = !DILocation(line: 440, column: 3, scope: !5527)
!5598 = !DILocation(line: 441, column: 2, scope: !5528)
!5599 = !DILocation(line: 441, column: 2, scope: !5527)
!5600 = distinct !{!5600, !5589, !5601, !4933, !4934}
!5601 = !DILocation(line: 441, column: 2, scope: !5529)
!5602 = !DILocation(line: 442, column: 2, scope: !5518)
!5603 = !DILocation(line: 443, column: 1, scope: !5518)
!5604 = distinct !DISubprogram(name: "card_suspend", scope: !3, file: !3, line: 391, type: !4600, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5605)
!5605 = !{!5606, !5607, !5608}
!5606 = !DILocalVariable(name: "dev", arg: 1, scope: !5604, file: !3, line: 391, type: !160)
!5607 = !DILocalVariable(name: "state", arg: 2, scope: !5604, file: !3, line: 391, type: !4227)
!5608 = !DILocalVariable(name: "link", scope: !5604, file: !3, line: 393, type: !4661)
!5609 = !DILocation(line: 391, column: 41, scope: !5604)
!5610 = !DILocation(line: 391, column: 59, scope: !5604)
!5611 = !DILocation(line: 393, column: 2, scope: !5604)
!5612 = !DILocation(line: 393, column: 24, scope: !5604)
!5613 = !DILocation(line: 393, column: 31, scope: !5604)
!5614 = !DILocation(line: 393, column: 36, scope: !5604)
!5615 = !DILocation(line: 395, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 395, column: 6)
!5617 = !DILocation(line: 395, column: 12, scope: !5616)
!5618 = !DILocation(line: 395, column: 21, scope: !5616)
!5619 = !DILocation(line: 395, column: 36, scope: !5616)
!5620 = !DILocation(line: 395, column: 27, scope: !5616)
!5621 = !DILocation(line: 395, column: 6, scope: !5604)
!5622 = !DILocation(line: 396, column: 3, scope: !5616)
!5623 = !DILocation(line: 397, column: 2, scope: !5604)
!5624 = !DILocation(line: 397, column: 8, scope: !5604)
!5625 = !DILocation(line: 397, column: 19, scope: !5604)
!5626 = !DILocation(line: 398, column: 9, scope: !5604)
!5627 = !DILocation(line: 398, column: 15, scope: !5604)
!5628 = !DILocation(line: 398, column: 23, scope: !5604)
!5629 = !DILocation(line: 398, column: 31, scope: !5604)
!5630 = !DILocation(line: 398, column: 2, scope: !5604)
!5631 = !DILocation(line: 399, column: 1, scope: !5604)
!5632 = distinct !DISubprogram(name: "card_resume", scope: !3, file: !3, line: 401, type: !4590, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5633)
!5633 = !{!5634, !5635}
!5634 = !DILocalVariable(name: "dev", arg: 1, scope: !5632, file: !3, line: 401, type: !160)
!5635 = !DILocalVariable(name: "link", scope: !5632, file: !3, line: 403, type: !4661)
!5636 = !DILocation(line: 401, column: 40, scope: !5632)
!5637 = !DILocation(line: 403, column: 2, scope: !5632)
!5638 = !DILocation(line: 403, column: 24, scope: !5632)
!5639 = !DILocation(line: 403, column: 31, scope: !5632)
!5640 = !DILocation(line: 403, column: 36, scope: !5632)
!5641 = !DILocation(line: 405, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5632, file: !3, line: 405, column: 6)
!5643 = !DILocation(line: 405, column: 12, scope: !5642)
!5644 = !DILocation(line: 405, column: 21, scope: !5642)
!5645 = !DILocation(line: 405, column: 27, scope: !5642)
!5646 = !DILocation(line: 405, column: 6, scope: !5632)
!5647 = !DILocation(line: 406, column: 3, scope: !5642)
!5648 = !DILocation(line: 407, column: 2, scope: !5632)
!5649 = !DILocation(line: 407, column: 8, scope: !5632)
!5650 = !DILocation(line: 407, column: 19, scope: !5632)
!5651 = !DILocation(line: 408, column: 2, scope: !5632)
!5652 = !DILocation(line: 408, column: 8, scope: !5632)
!5653 = !DILocation(line: 408, column: 16, scope: !5632)
!5654 = !DILocation(line: 408, column: 23, scope: !5632)
!5655 = !DILocation(line: 409, column: 2, scope: !5632)
!5656 = !DILocation(line: 410, column: 1, scope: !5632)
!5657 = !DISubprogram(name: "pnp_register_driver", scope: !162, file: !162, line: 469, type: !5658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!109, !4635}
!5660 = distinct !DISubprogram(name: "pnp_unregister_card_driver", scope: !3, file: !3, line: 450, type: !5661, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5663)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{null, !4666}
!5663 = !{!5664}
!5664 = !DILocalVariable(name: "drv", arg: 1, scope: !5660, file: !3, line: 450, type: !4666)
!5665 = !DILocation(line: 450, column: 57, scope: !5660)
!5666 = !DILocation(line: 452, column: 2, scope: !5660)
!5667 = !DILocation(line: 453, column: 12, scope: !5660)
!5668 = !DILocation(line: 453, column: 17, scope: !5660)
!5669 = !DILocation(line: 453, column: 2, scope: !5660)
!5670 = !DILocation(line: 454, column: 2, scope: !5660)
!5671 = !DILocation(line: 455, column: 25, scope: !5660)
!5672 = !DILocation(line: 455, column: 30, scope: !5660)
!5673 = !DILocation(line: 455, column: 2, scope: !5660)
!5674 = !DILocation(line: 456, column: 1, scope: !5660)
!5675 = !DISubprogram(name: "pnp_unregister_driver", scope: !162, file: !162, line: 470, type: !5676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !4635}
!5678 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !4852, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5679)
!5679 = !{!5680, !5681, !5682}
!5680 = !DILocalVariable(name: "size", arg: 1, scope: !5678, file: !147, line: 591, type: !306)
!5681 = !DILocalVariable(name: "flags", arg: 2, scope: !5678, file: !147, line: 591, type: !157)
!5682 = !DILocalVariable(name: "index", scope: !5683, file: !147, line: 594, type: !7)
!5683 = distinct !DILexicalBlock(scope: !5684, file: !147, line: 593, column: 42)
!5684 = distinct !DILexicalBlock(scope: !5678, file: !147, line: 593, column: 6)
!5685 = !DILocation(line: 591, column: 61, scope: !5678)
!5686 = !DILocation(line: 591, column: 73, scope: !5678)
!5687 = !DILocation(line: 593, column: 27, scope: !5684)
!5688 = !DILocation(line: 593, column: 6, scope: !5684)
!5689 = !DILocation(line: 593, column: 33, scope: !5684)
!5690 = !DILocation(line: 593, column: 36, scope: !5684)
!5691 = !DILocation(line: 593, column: 6, scope: !5678)
!5692 = !DILocation(line: 594, column: 3, scope: !5683)
!5693 = !DILocation(line: 594, column: 16, scope: !5683)
!5694 = !DILocation(line: 596, column: 7, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5683, file: !147, line: 596, column: 7)
!5696 = !DILocation(line: 596, column: 12, scope: !5695)
!5697 = !DILocation(line: 596, column: 7, scope: !5683)
!5698 = !DILocation(line: 597, column: 25, scope: !5695)
!5699 = !DILocation(line: 597, column: 31, scope: !5695)
!5700 = !DILocation(line: 597, column: 11, scope: !5695)
!5701 = !DILocation(line: 597, column: 4, scope: !5695)
!5702 = !DILocation(line: 599, column: 11, scope: !5683)
!5703 = !DILocation(line: 599, column: 9, scope: !5683)
!5704 = !DILocation(line: 601, column: 33, scope: !5683)
!5705 = !DILocation(line: 601, column: 40, scope: !5683)
!5706 = !DILocation(line: 601, column: 20, scope: !5683)
!5707 = !DILocation(line: 601, column: 5, scope: !5683)
!5708 = !DILocation(line: 601, column: 51, scope: !5683)
!5709 = !DILocation(line: 602, column: 5, scope: !5683)
!5710 = !DILocation(line: 602, column: 12, scope: !5683)
!5711 = !DILocation(line: 600, column: 10, scope: !5683)
!5712 = !DILocation(line: 600, column: 3, scope: !5683)
!5713 = !DILocation(line: 603, column: 2, scope: !5684)
!5714 = !DILocation(line: 604, column: 19, scope: !5678)
!5715 = !DILocation(line: 604, column: 25, scope: !5678)
!5716 = !DILocation(line: 604, column: 9, scope: !5678)
!5717 = !DILocation(line: 604, column: 2, scope: !5678)
!5718 = !DILocation(line: 605, column: 1, scope: !5678)
!5719 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !4852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5720 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !5721, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5723)
!5721 = !DISubroutineType(types: !5722)
!5722 = !{!7, !306, !680}
!5723 = !{!5724, !5725}
!5724 = !DILocalVariable(name: "size", arg: 1, scope: !5720, file: !147, line: 444, type: !306)
!5725 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5720, file: !147, line: 445, type: !680)
!5726 = !DILocation(line: 444, column: 60, scope: !5720)
!5727 = !DILocation(line: 445, column: 16, scope: !5720)
!5728 = !DILocation(line: 447, column: 7, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 447, column: 6)
!5730 = !DILocation(line: 447, column: 6, scope: !5720)
!5731 = !DILocation(line: 448, column: 3, scope: !5729)
!5732 = !DILocation(line: 450, column: 6, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 450, column: 6)
!5734 = !DILocation(line: 450, column: 11, scope: !5733)
!5735 = !DILocation(line: 450, column: 6, scope: !5720)
!5736 = !DILocation(line: 451, column: 3, scope: !5733)
!5737 = !DILocation(line: 453, column: 32, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 453, column: 6)
!5739 = !DILocation(line: 453, column: 37, scope: !5738)
!5740 = !DILocation(line: 453, column: 42, scope: !5738)
!5741 = !DILocation(line: 453, column: 45, scope: !5738)
!5742 = !DILocation(line: 453, column: 50, scope: !5738)
!5743 = !DILocation(line: 453, column: 6, scope: !5720)
!5744 = !DILocation(line: 454, column: 3, scope: !5738)
!5745 = !DILocation(line: 455, column: 32, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 455, column: 6)
!5747 = !DILocation(line: 455, column: 37, scope: !5746)
!5748 = !DILocation(line: 455, column: 43, scope: !5746)
!5749 = !DILocation(line: 455, column: 46, scope: !5746)
!5750 = !DILocation(line: 455, column: 51, scope: !5746)
!5751 = !DILocation(line: 455, column: 6, scope: !5720)
!5752 = !DILocation(line: 456, column: 3, scope: !5746)
!5753 = !DILocation(line: 457, column: 6, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 457, column: 6)
!5755 = !DILocation(line: 457, column: 11, scope: !5754)
!5756 = !DILocation(line: 457, column: 6, scope: !5720)
!5757 = !DILocation(line: 457, column: 26, scope: !5754)
!5758 = !DILocation(line: 458, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 458, column: 6)
!5760 = !DILocation(line: 458, column: 11, scope: !5759)
!5761 = !DILocation(line: 458, column: 6, scope: !5720)
!5762 = !DILocation(line: 458, column: 26, scope: !5759)
!5763 = !DILocation(line: 459, column: 6, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 459, column: 6)
!5765 = !DILocation(line: 459, column: 11, scope: !5764)
!5766 = !DILocation(line: 459, column: 6, scope: !5720)
!5767 = !DILocation(line: 459, column: 26, scope: !5764)
!5768 = !DILocation(line: 460, column: 6, scope: !5769)
!5769 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 460, column: 6)
!5770 = !DILocation(line: 460, column: 11, scope: !5769)
!5771 = !DILocation(line: 460, column: 6, scope: !5720)
!5772 = !DILocation(line: 460, column: 26, scope: !5769)
!5773 = !DILocation(line: 461, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 461, column: 6)
!5775 = !DILocation(line: 461, column: 11, scope: !5774)
!5776 = !DILocation(line: 461, column: 6, scope: !5720)
!5777 = !DILocation(line: 461, column: 26, scope: !5774)
!5778 = !DILocation(line: 462, column: 6, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 462, column: 6)
!5780 = !DILocation(line: 462, column: 11, scope: !5779)
!5781 = !DILocation(line: 462, column: 6, scope: !5720)
!5782 = !DILocation(line: 462, column: 26, scope: !5779)
!5783 = !DILocation(line: 463, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 463, column: 6)
!5785 = !DILocation(line: 463, column: 11, scope: !5784)
!5786 = !DILocation(line: 463, column: 6, scope: !5720)
!5787 = !DILocation(line: 463, column: 26, scope: !5784)
!5788 = !DILocation(line: 464, column: 6, scope: !5789)
!5789 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 464, column: 6)
!5790 = !DILocation(line: 464, column: 11, scope: !5789)
!5791 = !DILocation(line: 464, column: 6, scope: !5720)
!5792 = !DILocation(line: 464, column: 26, scope: !5789)
!5793 = !DILocation(line: 465, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 465, column: 6)
!5795 = !DILocation(line: 465, column: 11, scope: !5794)
!5796 = !DILocation(line: 465, column: 6, scope: !5720)
!5797 = !DILocation(line: 465, column: 26, scope: !5794)
!5798 = !DILocation(line: 466, column: 6, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 466, column: 6)
!5800 = !DILocation(line: 466, column: 11, scope: !5799)
!5801 = !DILocation(line: 466, column: 6, scope: !5720)
!5802 = !DILocation(line: 466, column: 26, scope: !5799)
!5803 = !DILocation(line: 467, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 467, column: 6)
!5805 = !DILocation(line: 467, column: 11, scope: !5804)
!5806 = !DILocation(line: 467, column: 6, scope: !5720)
!5807 = !DILocation(line: 467, column: 26, scope: !5804)
!5808 = !DILocation(line: 468, column: 6, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 468, column: 6)
!5810 = !DILocation(line: 468, column: 11, scope: !5809)
!5811 = !DILocation(line: 468, column: 6, scope: !5720)
!5812 = !DILocation(line: 468, column: 26, scope: !5809)
!5813 = !DILocation(line: 469, column: 6, scope: !5814)
!5814 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 469, column: 6)
!5815 = !DILocation(line: 469, column: 11, scope: !5814)
!5816 = !DILocation(line: 469, column: 6, scope: !5720)
!5817 = !DILocation(line: 469, column: 26, scope: !5814)
!5818 = !DILocation(line: 470, column: 6, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 470, column: 6)
!5820 = !DILocation(line: 470, column: 11, scope: !5819)
!5821 = !DILocation(line: 470, column: 6, scope: !5720)
!5822 = !DILocation(line: 470, column: 26, scope: !5819)
!5823 = !DILocation(line: 471, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 471, column: 6)
!5825 = !DILocation(line: 471, column: 11, scope: !5824)
!5826 = !DILocation(line: 471, column: 6, scope: !5720)
!5827 = !DILocation(line: 471, column: 26, scope: !5824)
!5828 = !DILocation(line: 472, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 472, column: 6)
!5830 = !DILocation(line: 472, column: 11, scope: !5829)
!5831 = !DILocation(line: 472, column: 6, scope: !5720)
!5832 = !DILocation(line: 472, column: 26, scope: !5829)
!5833 = !DILocation(line: 473, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 473, column: 6)
!5835 = !DILocation(line: 473, column: 11, scope: !5834)
!5836 = !DILocation(line: 473, column: 6, scope: !5720)
!5837 = !DILocation(line: 473, column: 26, scope: !5834)
!5838 = !DILocation(line: 474, column: 6, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 474, column: 6)
!5840 = !DILocation(line: 474, column: 11, scope: !5839)
!5841 = !DILocation(line: 474, column: 6, scope: !5720)
!5842 = !DILocation(line: 474, column: 27, scope: !5839)
!5843 = !DILocation(line: 475, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 475, column: 6)
!5845 = !DILocation(line: 475, column: 11, scope: !5844)
!5846 = !DILocation(line: 475, column: 6, scope: !5720)
!5847 = !DILocation(line: 475, column: 32, scope: !5844)
!5848 = !DILocation(line: 477, column: 50, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5720, file: !147, line: 477, column: 6)
!5850 = !{i8 0, i8 2}
!5851 = !DILocation(line: 477, column: 6, scope: !5720)
!5852 = !DILocation(line: 478, column: 3, scope: !5849)
!5853 = !DILocation(line: 478, column: 3, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5855, file: !147, line: 478, column: 3)
!5855 = distinct !DILexicalBlock(scope: !5849, file: !147, line: 478, column: 3)
!5856 = !{i32 -2142591822}
!5857 = !DILocation(line: 478, column: 3, scope: !5855)
!5858 = !DILocation(line: 480, column: 3, scope: !5849)
!5859 = !DILocation(line: 480, column: 3, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5849, file: !147, line: 480, column: 3)
!5861 = !DILocation(line: 480, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5860, file: !147, line: 480, column: 3)
!5863 = !DILocation(line: 480, column: 3, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5860, file: !147, line: 480, column: 3)
!5865 = !{i64 2152375677, i64 2152375706, i64 2152375752, i64 2152375810, i64 2152375864, i64 2152375918, i64 2152375973, i64 2152376004}
!5866 = !DILocation(line: 483, column: 2, scope: !5720)
!5867 = !DILocation(line: 484, column: 1, scope: !5720)
!5868 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !5869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{!159, !5871, !157, !306}
!5871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5872, size: 64)
!5872 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5873, line: 11, flags: DIFlagFwdDecl)
!5873 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5874 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !5875, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5877)
!5875 = !DISubroutineType(types: !5876)
!5876 = !{!146, !157, !309}
!5877 = !{!5878, !5879}
!5878 = !DILocalVariable(name: "flags", arg: 1, scope: !5874, file: !147, line: 401, type: !157)
!5879 = !DILocalVariable(name: "caller", arg: 2, scope: !5874, file: !147, line: 401, type: !309)
!5880 = !DILocation(line: 401, column: 67, scope: !5874)
!5881 = !DILocation(line: 401, column: 88, scope: !5874)
!5882 = !DILocation(line: 407, column: 6, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5874, file: !147, line: 407, column: 6)
!5884 = !DILocation(line: 407, column: 6, scope: !5874)
!5885 = !DILocation(line: 413, column: 3, scope: !5883)
!5886 = !DILocation(line: 423, column: 38, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5874, file: !147, line: 423, column: 6)
!5888 = !DILocation(line: 423, column: 44, scope: !5887)
!5889 = !DILocation(line: 423, column: 6, scope: !5874)
!5890 = !DILocation(line: 424, column: 3, scope: !5887)
!5891 = !DILocation(line: 426, column: 3, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5874, file: !147, line: 425, column: 6)
!5893 = !DILocation(line: 429, column: 1, scope: !5874)
!5894 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !4852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5895 = !DISubprogram(name: "__compiletime_assert_196", scope: !147, file: !147, line: 478, type: !965, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5896 = distinct !DISubprogram(name: "__tolower", scope: !5897, file: !5897, line: 49, type: !5898, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5900)
!5897 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!5898 = !DISubroutineType(types: !5899)
!5899 = !{!221, !221}
!5900 = !{!5901}
!5901 = !DILocalVariable(name: "c", arg: 1, scope: !5896, file: !5897, line: 49, type: !221)
!5902 = !DILocation(line: 49, column: 53, scope: !5896)
!5903 = !DILocation(line: 51, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5896, file: !5897, line: 51, column: 6)
!5905 = !DILocation(line: 51, column: 6, scope: !5896)
!5906 = !DILocation(line: 52, column: 5, scope: !5904)
!5907 = !DILocation(line: 52, column: 3, scope: !5904)
!5908 = !DILocation(line: 53, column: 9, scope: !5896)
!5909 = !DILocation(line: 53, column: 2, scope: !5896)
!5910 = distinct !DISubprogram(name: "pnp_free_card_ids", scope: !3, file: !3, line: 136, type: !5215, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5911)
!5911 = !{!5912, !5913, !5914}
!5912 = !DILocalVariable(name: "card", arg: 1, scope: !5910, file: !3, line: 136, type: !4608)
!5913 = !DILocalVariable(name: "id", scope: !5910, file: !3, line: 138, type: !4618)
!5914 = !DILocalVariable(name: "next", scope: !5910, file: !3, line: 139, type: !4618)
!5915 = !DILocation(line: 136, column: 48, scope: !5910)
!5916 = !DILocation(line: 138, column: 2, scope: !5910)
!5917 = !DILocation(line: 138, column: 17, scope: !5910)
!5918 = !DILocation(line: 139, column: 2, scope: !5910)
!5919 = !DILocation(line: 139, column: 17, scope: !5910)
!5920 = !DILocation(line: 141, column: 7, scope: !5910)
!5921 = !DILocation(line: 141, column: 13, scope: !5910)
!5922 = !DILocation(line: 141, column: 5, scope: !5910)
!5923 = !DILocation(line: 142, column: 2, scope: !5910)
!5924 = !DILocation(line: 142, column: 9, scope: !5910)
!5925 = !DILocation(line: 143, column: 10, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 142, column: 13)
!5927 = !DILocation(line: 143, column: 14, scope: !5926)
!5928 = !DILocation(line: 143, column: 8, scope: !5926)
!5929 = !DILocation(line: 144, column: 9, scope: !5926)
!5930 = !DILocation(line: 144, column: 3, scope: !5926)
!5931 = !DILocation(line: 145, column: 8, scope: !5926)
!5932 = !DILocation(line: 145, column: 6, scope: !5926)
!5933 = distinct !{!5933, !5923, !5934, !4933, !4934}
!5934 = !DILocation(line: 146, column: 2, scope: !5910)
!5935 = !DILocation(line: 147, column: 1, scope: !5910)
!5936 = !DISubprogram(name: "device_create_file", scope: !94, file: !94, line: 259, type: !5937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5937 = !DISubroutineType(types: !5938)
!5938 = !{!109, !4114, !5939}
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4751)
!5941 = !DISubprogram(name: "device_remove_file", scope: !94, file: !94, line: 261, type: !5942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5942 = !DISubroutineType(types: !5943)
!5943 = !{null, !4114, !5939}
!5944 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 184, type: !4756, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948, !5949, !5950, !5951}
!5946 = !DILocalVariable(name: "dmdev", arg: 1, scope: !5944, file: !3, line: 184, type: !4114)
!5947 = !DILocalVariable(name: "attr", arg: 2, scope: !5944, file: !3, line: 185, type: !4758)
!5948 = !DILocalVariable(name: "buf", arg: 3, scope: !5944, file: !3, line: 185, type: !259)
!5949 = !DILocalVariable(name: "str", scope: !5944, file: !3, line: 187, type: !259)
!5950 = !DILocalVariable(name: "card", scope: !5944, file: !3, line: 188, type: !4608)
!5951 = !DILocalVariable(name: "__mptr", scope: !5952, file: !3, line: 188, type: !159)
!5952 = distinct !DILexicalBlock(scope: !5944, file: !3, line: 188, column: 26)
!5953 = !DILocation(line: 184, column: 41, scope: !5944)
!5954 = !DILocation(line: 185, column: 30, scope: !5944)
!5955 = !DILocation(line: 185, column: 42, scope: !5944)
!5956 = !DILocation(line: 187, column: 2, scope: !5944)
!5957 = !DILocation(line: 187, column: 8, scope: !5944)
!5958 = !DILocation(line: 187, column: 14, scope: !5944)
!5959 = !DILocation(line: 188, column: 2, scope: !5944)
!5960 = !DILocation(line: 188, column: 19, scope: !5944)
!5961 = !DILocation(line: 188, column: 26, scope: !5952)
!5962 = !DILocation(line: 188, column: 26, scope: !5944)
!5963 = !DILocation(line: 190, column: 17, scope: !5944)
!5964 = !DILocation(line: 190, column: 30, scope: !5944)
!5965 = !DILocation(line: 190, column: 36, scope: !5944)
!5966 = !DILocation(line: 190, column: 9, scope: !5944)
!5967 = !DILocation(line: 190, column: 6, scope: !5944)
!5968 = !DILocation(line: 191, column: 10, scope: !5944)
!5969 = !DILocation(line: 191, column: 16, scope: !5944)
!5970 = !DILocation(line: 191, column: 14, scope: !5944)
!5971 = !DILocation(line: 192, column: 1, scope: !5944)
!5972 = !DILocation(line: 191, column: 2, scope: !5944)
!5973 = !DISubprogram(name: "sprintf", scope: !5974, file: !5974, line: 10, type: !5975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5974 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5975 = !DISubroutineType(types: !5976)
!5976 = !{!109, !259, !172, null}
!5977 = distinct !DISubprogram(name: "card_id_show", scope: !3, file: !3, line: 196, type: !4756, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5978)
!5978 = !{!5979, !5980, !5981, !5982, !5983, !5984, !5986}
!5979 = !DILocalVariable(name: "dmdev", arg: 1, scope: !5977, file: !3, line: 196, type: !4114)
!5980 = !DILocalVariable(name: "attr", arg: 2, scope: !5977, file: !3, line: 197, type: !4758)
!5981 = !DILocalVariable(name: "buf", arg: 3, scope: !5977, file: !3, line: 197, type: !259)
!5982 = !DILocalVariable(name: "str", scope: !5977, file: !3, line: 199, type: !259)
!5983 = !DILocalVariable(name: "card", scope: !5977, file: !3, line: 200, type: !4608)
!5984 = !DILocalVariable(name: "__mptr", scope: !5985, file: !3, line: 200, type: !159)
!5985 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 200, column: 26)
!5986 = !DILocalVariable(name: "pos", scope: !5977, file: !3, line: 201, type: !4618)
!5987 = !DILocation(line: 196, column: 44, scope: !5977)
!5988 = !DILocation(line: 197, column: 33, scope: !5977)
!5989 = !DILocation(line: 197, column: 45, scope: !5977)
!5990 = !DILocation(line: 199, column: 2, scope: !5977)
!5991 = !DILocation(line: 199, column: 8, scope: !5977)
!5992 = !DILocation(line: 199, column: 14, scope: !5977)
!5993 = !DILocation(line: 200, column: 2, scope: !5977)
!5994 = !DILocation(line: 200, column: 19, scope: !5977)
!5995 = !DILocation(line: 200, column: 26, scope: !5985)
!5996 = !DILocation(line: 200, column: 26, scope: !5977)
!5997 = !DILocation(line: 201, column: 2, scope: !5977)
!5998 = !DILocation(line: 201, column: 17, scope: !5977)
!5999 = !DILocation(line: 201, column: 23, scope: !5977)
!6000 = !DILocation(line: 201, column: 29, scope: !5977)
!6001 = !DILocation(line: 203, column: 2, scope: !5977)
!6002 = !DILocation(line: 203, column: 9, scope: !5977)
!6003 = !DILocation(line: 204, column: 18, scope: !6004)
!6004 = distinct !DILexicalBlock(scope: !5977, file: !3, line: 203, column: 14)
!6005 = !DILocation(line: 204, column: 31, scope: !6004)
!6006 = !DILocation(line: 204, column: 36, scope: !6004)
!6007 = !DILocation(line: 204, column: 10, scope: !6004)
!6008 = !DILocation(line: 204, column: 7, scope: !6004)
!6009 = !DILocation(line: 205, column: 9, scope: !6004)
!6010 = !DILocation(line: 205, column: 14, scope: !6004)
!6011 = !DILocation(line: 205, column: 7, scope: !6004)
!6012 = distinct !{!6012, !6001, !6013, !4933, !4934}
!6013 = !DILocation(line: 206, column: 2, scope: !5977)
!6014 = !DILocation(line: 207, column: 10, scope: !5977)
!6015 = !DILocation(line: 207, column: 16, scope: !5977)
!6016 = !DILocation(line: 207, column: 14, scope: !5977)
!6017 = !DILocation(line: 208, column: 1, scope: !5977)
!6018 = !DILocation(line: 207, column: 2, scope: !5977)
!6019 = distinct !DISubprogram(name: "__list_add", scope: !5102, file: !5102, line: 146, type: !6020, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6022)
!6020 = !DISubroutineType(types: !6021)
!6021 = !{null, !179, !179, !179}
!6022 = !{!6023, !6024, !6025}
!6023 = !DILocalVariable(name: "new", arg: 1, scope: !6019, file: !5102, line: 146, type: !179)
!6024 = !DILocalVariable(name: "prev", arg: 2, scope: !6019, file: !5102, line: 147, type: !179)
!6025 = !DILocalVariable(name: "next", arg: 3, scope: !6019, file: !5102, line: 148, type: !179)
!6026 = !DILocation(line: 146, column: 49, scope: !6019)
!6027 = !DILocation(line: 147, column: 28, scope: !6019)
!6028 = !DILocation(line: 148, column: 28, scope: !6019)
!6029 = !DILocation(line: 150, column: 24, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6019, file: !5102, line: 150, column: 6)
!6031 = !DILocation(line: 150, column: 29, scope: !6030)
!6032 = !DILocation(line: 150, column: 35, scope: !6030)
!6033 = !DILocation(line: 150, column: 7, scope: !6030)
!6034 = !DILocation(line: 150, column: 6, scope: !6019)
!6035 = !DILocation(line: 151, column: 3, scope: !6030)
!6036 = !DILocation(line: 153, column: 15, scope: !6019)
!6037 = !DILocation(line: 153, column: 2, scope: !6019)
!6038 = !DILocation(line: 153, column: 8, scope: !6019)
!6039 = !DILocation(line: 153, column: 13, scope: !6019)
!6040 = !DILocation(line: 154, column: 14, scope: !6019)
!6041 = !DILocation(line: 154, column: 2, scope: !6019)
!6042 = !DILocation(line: 154, column: 7, scope: !6019)
!6043 = !DILocation(line: 154, column: 12, scope: !6019)
!6044 = !DILocation(line: 155, column: 14, scope: !6019)
!6045 = !DILocation(line: 155, column: 2, scope: !6019)
!6046 = !DILocation(line: 155, column: 7, scope: !6019)
!6047 = !DILocation(line: 155, column: 12, scope: !6019)
!6048 = !DILocation(line: 156, column: 2, scope: !6019)
!6049 = !DILocation(line: 156, column: 2, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6019, file: !5102, line: 156, column: 2)
!6051 = !DILocation(line: 156, column: 2, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6050, file: !5102, line: 156, column: 2)
!6053 = !DILocation(line: 156, column: 2, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6050, file: !5102, line: 156, column: 2)
!6055 = !DILocation(line: 157, column: 1, scope: !6019)
!6056 = distinct !DISubprogram(name: "__list_add_valid", scope: !5102, file: !5102, line: 128, type: !6057, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6059)
!6057 = !DISubroutineType(types: !6058)
!6058 = !{!680, !179, !179, !179}
!6059 = !{!6060, !6061, !6062}
!6060 = !DILocalVariable(name: "new", arg: 1, scope: !6056, file: !5102, line: 128, type: !179)
!6061 = !DILocalVariable(name: "prev", arg: 2, scope: !6056, file: !5102, line: 129, type: !179)
!6062 = !DILocalVariable(name: "next", arg: 3, scope: !6056, file: !5102, line: 130, type: !179)
!6063 = !DILocation(line: 128, column: 55, scope: !6056)
!6064 = !DILocation(line: 129, column: 23, scope: !6056)
!6065 = !DILocation(line: 130, column: 23, scope: !6056)
!6066 = !DILocation(line: 132, column: 2, scope: !6056)
!6067 = distinct !DISubprogram(name: "match_card", scope: !3, file: !3, line: 19, type: !6068, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6070)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!4672, !4666, !4608}
!6070 = !{!6071, !6072, !6073, !6074, !6078, !6082, !6083, !6086}
!6071 = !DILocalVariable(name: "drv", arg: 1, scope: !6067, file: !3, line: 19, type: !4666)
!6072 = !DILocalVariable(name: "card", arg: 2, scope: !6067, file: !3, line: 20, type: !4608)
!6073 = !DILocalVariable(name: "drv_id", scope: !6067, file: !3, line: 22, type: !4672)
!6074 = !DILocalVariable(name: "i", scope: !6075, file: !3, line: 26, type: !109)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !3, line: 25, column: 45)
!6076 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 25, column: 7)
!6077 = distinct !DILexicalBlock(scope: !6067, file: !3, line: 24, column: 22)
!6078 = !DILocalVariable(name: "found", scope: !6079, file: !3, line: 29, type: !109)
!6079 = distinct !DILexicalBlock(scope: !6080, file: !3, line: 28, column: 13)
!6080 = distinct !DILexicalBlock(scope: !6081, file: !3, line: 28, column: 4)
!6081 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 28, column: 4)
!6082 = !DILocalVariable(name: "dev", scope: !6079, file: !3, line: 30, type: !160)
!6083 = !DILocalVariable(name: "__mptr", scope: !6084, file: !3, line: 36, type: !159)
!6084 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 36, column: 5)
!6085 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 36, column: 5)
!6086 = !DILocalVariable(name: "__mptr", scope: !6087, file: !3, line: 36, type: !159)
!6087 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 36, column: 5)
!6088 = distinct !DILexicalBlock(scope: !6085, file: !3, line: 36, column: 5)
!6089 = !DILocation(line: 19, column: 76, scope: !6067)
!6090 = !DILocation(line: 20, column: 27, scope: !6067)
!6091 = !DILocation(line: 22, column: 2, scope: !6067)
!6092 = !DILocation(line: 22, column: 35, scope: !6067)
!6093 = !DILocation(line: 22, column: 44, scope: !6067)
!6094 = !DILocation(line: 22, column: 49, scope: !6067)
!6095 = !DILocation(line: 24, column: 2, scope: !6067)
!6096 = !DILocation(line: 24, column: 10, scope: !6067)
!6097 = !DILocation(line: 24, column: 18, scope: !6067)
!6098 = !DILocation(line: 24, column: 9, scope: !6067)
!6099 = !DILocation(line: 25, column: 22, scope: !6076)
!6100 = !DILocation(line: 25, column: 28, scope: !6076)
!6101 = !DILocation(line: 25, column: 32, scope: !6076)
!6102 = !DILocation(line: 25, column: 40, scope: !6076)
!6103 = !DILocation(line: 25, column: 7, scope: !6076)
!6104 = !DILocation(line: 25, column: 7, scope: !6077)
!6105 = !DILocation(line: 26, column: 4, scope: !6075)
!6106 = !DILocation(line: 26, column: 8, scope: !6075)
!6107 = !DILocation(line: 28, column: 4, scope: !6075)
!6108 = !DILocation(line: 29, column: 5, scope: !6079)
!6109 = !DILocation(line: 29, column: 9, scope: !6079)
!6110 = !DILocation(line: 30, column: 5, scope: !6079)
!6111 = !DILocation(line: 30, column: 21, scope: !6079)
!6112 = !DILocation(line: 32, column: 9, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 32, column: 9)
!6114 = !DILocation(line: 32, column: 11, scope: !6113)
!6115 = !DILocation(line: 32, column: 30, scope: !6113)
!6116 = !DILocation(line: 33, column: 11, scope: !6113)
!6117 = !DILocation(line: 33, column: 19, scope: !6113)
!6118 = !DILocation(line: 33, column: 24, scope: !6113)
!6119 = !DILocation(line: 33, column: 27, scope: !6113)
!6120 = !DILocation(line: 33, column: 10, scope: !6113)
!6121 = !DILocation(line: 32, column: 9, scope: !6079)
!6122 = !DILocation(line: 34, column: 13, scope: !6113)
!6123 = !DILocation(line: 34, column: 6, scope: !6113)
!6124 = !DILocation(line: 35, column: 11, scope: !6079)
!6125 = !DILocation(line: 36, column: 5, scope: !6084)
!6126 = !DILocation(line: 36, column: 5, scope: !6085)
!6127 = !DILocation(line: 36, column: 5, scope: !6088)
!6128 = !DILocation(line: 37, column: 25, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 37, column: 10)
!6130 = distinct !DILexicalBlock(scope: !6088, file: !3, line: 36, column: 34)
!6131 = !DILocation(line: 37, column: 30, scope: !6129)
!6132 = !DILocation(line: 38, column: 10, scope: !6129)
!6133 = !DILocation(line: 38, column: 18, scope: !6129)
!6134 = !DILocation(line: 38, column: 23, scope: !6129)
!6135 = !DILocation(line: 38, column: 26, scope: !6129)
!6136 = !DILocation(line: 37, column: 10, scope: !6129)
!6137 = !DILocation(line: 37, column: 10, scope: !6130)
!6138 = !DILocation(line: 39, column: 13, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 38, column: 31)
!6140 = !DILocation(line: 40, column: 7, scope: !6139)
!6141 = !DILocation(line: 42, column: 5, scope: !6130)
!6142 = !DILocation(line: 36, column: 5, scope: !6087)
!6143 = distinct !{!6143, !6126, !6144, !4933, !4934}
!6144 = !DILocation(line: 42, column: 5, scope: !6085)
!6145 = !DILocation(line: 43, column: 10, scope: !6146)
!6146 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 43, column: 9)
!6147 = !DILocation(line: 43, column: 9, scope: !6079)
!6148 = !DILocation(line: 44, column: 6, scope: !6146)
!6149 = !DILocation(line: 45, column: 6, scope: !6079)
!6150 = !DILocation(line: 46, column: 4, scope: !6080)
!6151 = !DILocation(line: 28, column: 4, scope: !6080)
!6152 = distinct !{!6152, !6153, !6154, !4934}
!6153 = !DILocation(line: 28, column: 4, scope: !6081)
!6154 = !DILocation(line: 46, column: 4, scope: !6081)
!6155 = !DILocation(line: 47, column: 3, scope: !6076)
!6156 = !DILocation(line: 47, column: 3, scope: !6075)
!6157 = !DILocation(line: 48, column: 9, scope: !6077)
!6158 = distinct !{!6158, !6095, !6159, !4933, !4934}
!6159 = !DILocation(line: 49, column: 2, scope: !6067)
!6160 = !DILocation(line: 50, column: 2, scope: !6067)
!6161 = !DILocation(line: 51, column: 1, scope: !6067)
!6162 = distinct !DISubprogram(name: "__list_del_entry", scope: !5102, file: !5102, line: 213, type: !5257, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6163)
!6163 = !{!6164}
!6164 = !DILocalVariable(name: "entry", arg: 1, scope: !6162, file: !5102, line: 213, type: !179)
!6165 = !DILocation(line: 213, column: 55, scope: !6162)
!6166 = !DILocation(line: 215, column: 30, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6162, file: !5102, line: 215, column: 6)
!6168 = !DILocation(line: 215, column: 7, scope: !6167)
!6169 = !DILocation(line: 215, column: 6, scope: !6162)
!6170 = !DILocation(line: 216, column: 3, scope: !6167)
!6171 = !DILocation(line: 218, column: 13, scope: !6162)
!6172 = !DILocation(line: 218, column: 20, scope: !6162)
!6173 = !DILocation(line: 218, column: 26, scope: !6162)
!6174 = !DILocation(line: 218, column: 33, scope: !6162)
!6175 = !DILocation(line: 218, column: 2, scope: !6162)
!6176 = !DILocation(line: 219, column: 1, scope: !6162)
!6177 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5102, file: !5102, line: 134, type: !6178, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6180)
!6178 = !DISubroutineType(types: !6179)
!6179 = !{!680, !179}
!6180 = !{!6181}
!6181 = !DILocalVariable(name: "entry", arg: 1, scope: !6177, file: !5102, line: 134, type: !179)
!6182 = !DILocation(line: 134, column: 61, scope: !6177)
!6183 = !DILocation(line: 136, column: 2, scope: !6177)
!6184 = distinct !DISubprogram(name: "__list_del", scope: !5102, file: !5102, line: 193, type: !5103, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6185 = !{!6186, !6187}
!6186 = !DILocalVariable(name: "prev", arg: 1, scope: !6184, file: !5102, line: 193, type: !179)
!6187 = !DILocalVariable(name: "next", arg: 2, scope: !6184, file: !5102, line: 193, type: !179)
!6188 = !DILocation(line: 193, column: 50, scope: !6184)
!6189 = !DILocation(line: 193, column: 75, scope: !6184)
!6190 = !DILocation(line: 195, column: 15, scope: !6184)
!6191 = !DILocation(line: 195, column: 2, scope: !6184)
!6192 = !DILocation(line: 195, column: 8, scope: !6184)
!6193 = !DILocation(line: 195, column: 13, scope: !6184)
!6194 = !DILocation(line: 196, column: 2, scope: !6184)
!6195 = !DILocation(line: 196, column: 2, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6184, file: !5102, line: 196, column: 2)
!6197 = !DILocation(line: 196, column: 2, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6196, file: !5102, line: 196, column: 2)
!6199 = !DILocation(line: 196, column: 2, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6196, file: !5102, line: 196, column: 2)
!6201 = !DILocation(line: 197, column: 1, scope: !6184)
