; ModuleID = 'drivers/virtio/virtio.c'
source_filename = "drivers/virtio/virtio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_virtio_check_driver_offered_feature: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad virtio_check_driver_offered_feature ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_virtio_config_changed: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad virtio_config_changed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_virtio_add_status: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad virtio_add_status ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_virtio_reset_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad virtio_reset_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_register_virtio_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad register_virtio_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_virtio_driver: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_virtio_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_register_virtio_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad register_virtio_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_is_virtio_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad is_virtio_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_virtio_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_virtio_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_virtio_device_freeze: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad virtio_device_freeze ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_virtio_device_restore: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad virtio_device_restore ; .previous"
module asm ".section\09\22.initcall1.init..kmod_virtio__303_574_virtio_init\22, \22a\22\09\09"
module asm "__initcall__kmod_virtio__303_574_virtio_init1:\09\09\09"
module asm ".long\09__initstub__kmod_virtio__303_574_virtio_init1 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [24 x i8] c"drivers/virtio/virtio.c\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_virtio_check_driver_offered_feature292 = internal global ptr @virtio_check_driver_offered_feature, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_virtio_config_changed293 = internal global ptr @virtio_config_changed, section ".discard.addressable", align 8, !dbg !4732
@__UNIQUE_ID___addressable_virtio_add_status294 = internal global ptr @virtio_add_status, section ".discard.addressable", align 8, !dbg !4734
@__UNIQUE_ID___addressable_virtio_reset_device295 = internal global ptr @virtio_reset_device, section ".discard.addressable", align 8, !dbg !4736
@virtio_bus = internal global %struct.bus_type { ptr @.str.2, ptr null, ptr null, ptr @virtio_dev_groups, ptr null, ptr @virtio_dev_match, ptr @virtio_uevent, ptr @virtio_dev_probe, ptr null, ptr @virtio_dev_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8, !dbg !4780
@__UNIQUE_ID___addressable_register_virtio_driver296 = internal global ptr @register_virtio_driver, section ".discard.addressable", align 8, !dbg !4738
@__UNIQUE_ID___addressable_unregister_virtio_driver297 = internal global ptr @unregister_virtio_driver, section ".discard.addressable", align 8, !dbg !4740
@virtio_index_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !4845
@.str.1 = private unnamed_addr constant [9 x i8] c"virtio%u\00", align 1, !dbg !4742
@__UNIQUE_ID___addressable_register_virtio_device298 = internal global ptr @register_virtio_device, section ".discard.addressable", align 8, !dbg !4747
@__UNIQUE_ID___addressable_is_virtio_device299 = internal global ptr @is_virtio_device, section ".discard.addressable", align 8, !dbg !4749
@__UNIQUE_ID___addressable_unregister_virtio_device300 = internal global ptr @unregister_virtio_device, section ".discard.addressable", align 8, !dbg !4751
@__UNIQUE_ID___addressable_virtio_device_freeze301 = internal global ptr @virtio_device_freeze, section ".discard.addressable", align 8, !dbg !4753
@__UNIQUE_ID___addressable_virtio_device_restore302 = internal global ptr @virtio_device_restore, section ".discard.addressable", align 8, !dbg !4755
@__UNIQUE_ID___addressable___initstub__kmod_virtio__303_574_virtio_init1304 = internal global ptr @__initstub__kmod_virtio__303_574_virtio_init1, section ".discard.addressable", align 8, !dbg !4757
@__exitcall_virtio_exit = internal global ptr @virtio_exit, section ".exitcall.exit", align 8, !dbg !4759
@__UNIQUE_ID_file305 = internal constant [34 x i8] c"virtio.file=drivers/virtio/virtio\00", section ".modinfo", align 1, !dbg !4763
@__UNIQUE_ID_license306 = internal constant [19 x i8] c"virtio.license=GPL\00", section ".modinfo", align 1, !dbg !4768
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4773
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"virtio\00", align 1, !dbg !4777
@virtio_dev_groups = internal global [2 x ptr] [ptr @virtio_dev_group, ptr null], align 16, !dbg !4782
@virtio_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @virtio_dev_attrs, ptr null }, align 8, !dbg !4785
@virtio_dev_attrs = internal global [6 x ptr] [ptr @dev_attr_device, ptr @dev_attr_vendor, ptr @dev_attr_status, ptr @dev_attr_modalias, ptr @dev_attr_features, ptr null], align 16, !dbg !4787
@dev_attr_device = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292 }, ptr @device_show, ptr null }, align 8, !dbg !4792
@dev_attr_vendor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @vendor_show, ptr null }, align 8, !dbg !4810
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @status_show, ptr null }, align 8, !dbg !4814
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @modalias_show, ptr null }, align 8, !dbg !4820
@dev_attr_features = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @features_show, ptr null }, align 8, !dbg !4827
@.str.3 = private unnamed_addr constant [7 x i8] c"device\00", align 1, !dbg !4790
@.str.4 = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1, !dbg !4806
@.str.5 = private unnamed_addr constant [7 x i8] c"vendor\00", align 1, !dbg !4808
@.str.6 = private unnamed_addr constant [7 x i8] c"status\00", align 1, !dbg !4812
@.str.7 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1, !dbg !4816
@.str.8 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1, !dbg !4818
@.str.9 = private unnamed_addr constant [19 x i8] c"virtio:d%08Xv%08X\0A\00", align 1, !dbg !4822
@.str.10 = private unnamed_addr constant [9 x i8] c"features\00", align 1, !dbg !4825
@.str.11 = private unnamed_addr constant [3 x i8] c"%c\00", align 1, !dbg !4829
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4832
@.str.13 = private unnamed_addr constant [30 x i8] c"include/linux/virtio_config.h\00", align 1, !dbg !4835
@.str.14 = private unnamed_addr constant [27 x i8] c"MODALIAS=virtio:d%08Xv%08X\00", align 1, !dbg !4840
@__const.virtio_device_of_init.compat = private unnamed_addr constant [22 x i8] c"virtio,deviceXXXXXXXX\00", align 16
@.str.15 = private unnamed_addr constant [16 x i8] c"virtio,device%x\00", align 1, !dbg !4851
@virtio_check_mem_acc_cb = external dso_local global ptr, align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"device must provide VIRTIO_F_VERSION_1\0A\00", align 1, !dbg !4853
@.str.17 = private unnamed_addr constant [46 x i8] c"device must provide VIRTIO_F_ACCESS_PLATFORM\0A\00", align 1, !dbg !4858
@.str.18 = private unnamed_addr constant [37 x i8] c"virtio: device refuses features: %x\0A\00", align 1, !dbg !4863
@.str.19 = private unnamed_addr constant [31 x i8] c"virtio bus registration failed\00", align 1, !dbg !4868
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID___addressable_virtio_check_driver_offered_feature292, ptr @__UNIQUE_ID___addressable_virtio_config_changed293, ptr @__UNIQUE_ID___addressable_virtio_add_status294, ptr @__UNIQUE_ID___addressable_virtio_reset_device295, ptr @__UNIQUE_ID___addressable_register_virtio_driver296, ptr @__UNIQUE_ID___addressable_unregister_virtio_driver297, ptr @__UNIQUE_ID___addressable_register_virtio_device298, ptr @__UNIQUE_ID___addressable_is_virtio_device299, ptr @__UNIQUE_ID___addressable_unregister_virtio_device300, ptr @__UNIQUE_ID___addressable_virtio_device_freeze301, ptr @__UNIQUE_ID___addressable_virtio_device_restore302, ptr @virtio_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_virtio__303_574_virtio_init1304, ptr @__exitcall_virtio_exit, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef %fbit) #0 align 16 !dbg !4882 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %drv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !4886, metadata !DIExpression()), !dbg !4890
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !4887, metadata !DIExpression()), !dbg !4891
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4888, metadata !DIExpression()), !dbg !4893
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !4894
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !4889, metadata !DIExpression()), !dbg !4895
  %0 = load ptr, ptr %vdev.addr, align 8, !dbg !4896
  %dev = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, !dbg !4897
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6, !dbg !4898
  %1 = load ptr, ptr %driver, align 8, !dbg !4898
  %call = call ptr @drv_to_virtio(ptr noundef %1) #14, !dbg !4899
  store ptr %call, ptr %drv, align 8, !dbg !4895
  store i32 0, ptr %i, align 4, !dbg !4900
  br label %for.cond, !dbg !4902

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !4903
  %3 = load ptr, ptr %drv, align 8, !dbg !4905
  %feature_table_size = getelementptr inbounds %struct.virtio_driver, ptr %3, i32 0, i32 3, !dbg !4906
  %4 = load i32, ptr %feature_table_size, align 8, !dbg !4906
  %cmp = icmp ult i32 %2, %4, !dbg !4907
  br i1 %cmp, label %for.body, label %for.end, !dbg !4908

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %drv, align 8, !dbg !4909
  %feature_table = getelementptr inbounds %struct.virtio_driver, ptr %5, i32 0, i32 2, !dbg !4911
  %6 = load ptr, ptr %feature_table, align 8, !dbg !4911
  %7 = load i32, ptr %i, align 4, !dbg !4912
  %idxprom = zext i32 %7 to i64, !dbg !4909
  %arrayidx = getelementptr i32, ptr %6, i64 %idxprom, !dbg !4909
  %8 = load i32, ptr %arrayidx, align 4, !dbg !4909
  %9 = load i32, ptr %fbit.addr, align 4, !dbg !4913
  %cmp1 = icmp eq i32 %8, %9, !dbg !4914
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4915

if.then:                                          ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4916

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4913

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !4917
  %inc = add i32 %10, 1, !dbg !4917
  store i32 %inc, ptr %i, align 4, !dbg !4917
  br label %for.cond, !dbg !4918, !llvm.loop !4919

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %drv, align 8, !dbg !4923
  %feature_table_legacy = getelementptr inbounds %struct.virtio_driver, ptr %11, i32 0, i32 4, !dbg !4925
  %12 = load ptr, ptr %feature_table_legacy, align 8, !dbg !4925
  %tobool = icmp ne ptr %12, null, !dbg !4923
  br i1 %tobool, label %if.then2, label %if.end15, !dbg !4926

if.then2:                                         ; preds = %for.end
  store i32 0, ptr %i, align 4, !dbg !4927
  br label %for.cond3, !dbg !4930

for.cond3:                                        ; preds = %for.inc12, %if.then2
  %13 = load i32, ptr %i, align 4, !dbg !4931
  %14 = load ptr, ptr %drv, align 8, !dbg !4933
  %feature_table_size_legacy = getelementptr inbounds %struct.virtio_driver, ptr %14, i32 0, i32 5, !dbg !4934
  %15 = load i32, ptr %feature_table_size_legacy, align 8, !dbg !4934
  %cmp4 = icmp ult i32 %13, %15, !dbg !4935
  br i1 %cmp4, label %for.body5, label %for.end14, !dbg !4936

for.body5:                                        ; preds = %for.cond3
  %16 = load ptr, ptr %drv, align 8, !dbg !4937
  %feature_table_legacy6 = getelementptr inbounds %struct.virtio_driver, ptr %16, i32 0, i32 4, !dbg !4939
  %17 = load ptr, ptr %feature_table_legacy6, align 8, !dbg !4939
  %18 = load i32, ptr %i, align 4, !dbg !4940
  %idxprom7 = zext i32 %18 to i64, !dbg !4937
  %arrayidx8 = getelementptr i32, ptr %17, i64 %idxprom7, !dbg !4937
  %19 = load i32, ptr %arrayidx8, align 4, !dbg !4937
  %20 = load i32, ptr %fbit.addr, align 4, !dbg !4941
  %cmp9 = icmp eq i32 %19, %20, !dbg !4942
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4943

if.then10:                                        ; preds = %for.body5
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4944

if.end11:                                         ; preds = %for.body5
  br label %for.inc12, !dbg !4941

for.inc12:                                        ; preds = %if.end11
  %21 = load i32, ptr %i, align 4, !dbg !4945
  %inc13 = add i32 %21, 1, !dbg !4945
  store i32 %inc13, ptr %i, align 4, !dbg !4945
  br label %for.cond3, !dbg !4946, !llvm.loop !4947

for.end14:                                        ; preds = %for.cond3
  br label %if.end15, !dbg !4949

if.end15:                                         ; preds = %for.end14, %for.end
  br label %do.body, !dbg !4950

do.body:                                          ; preds = %if.end15
  br label %do.body16, !dbg !4951

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !4953

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !4953

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !4951

do.body17:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 122, i32 0, i64 12) #13, !dbg !4955, !srcloc !4957
  br label %do.cond18, !dbg !4955

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4955

do.end19:                                         ; preds = %do.cond18
  unreachable, !dbg !4951

do.cond20:                                        ; No predecessors!
  br label %do.end21, !dbg !4951

do.end21:                                         ; preds = %do.cond20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4958
  br label %cleanup, !dbg !4958

cleanup:                                          ; preds = %do.end21, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !4958
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4958
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4958

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drv_to_virtio(ptr noundef %drv) #3 align 16 !dbg !4959 {
entry:
  %drv.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !4963, metadata !DIExpression()), !dbg !4966
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4964, metadata !DIExpression()), !dbg !4967
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !4967
  store ptr %0, ptr %__mptr, align 8, !dbg !4967
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4967
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4967
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4967
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !4968
  %2 = load ptr, ptr %tmp, align 8, !dbg !4967
  ret ptr %2, !dbg !4969
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_config_changed(ptr noundef %dev) #0 align 16 !dbg !4970 {
entry:
  %dev.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4972, metadata !DIExpression()), !dbg !4979
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !4980
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4973, metadata !DIExpression()), !dbg !4981
  br label %do.body, !dbg !4982

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4983

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4974, metadata !DIExpression()), !dbg !4984
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !4984
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4978, metadata !DIExpression()), !dbg !4984
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4984
  %conv = zext i1 %cmp to i32, !dbg !4984
  store i32 1, ptr %tmp, align 4, !dbg !4984
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !4985
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !4985
  %0 = load i32, ptr %tmp, align 4, !dbg !4984
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4985
  %config_lock = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 4, !dbg !4985
  %call = call ptr @spinlock_check(ptr noundef %config_lock) #14, !dbg !4985
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #14, !dbg !4985
  store i64 %call2, ptr %flags, align 8, !dbg !4985
  br label %do.cond, !dbg !4985

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4985

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4983

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4983

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4986
  call void @__virtio_config_changed(ptr noundef %2) #14, !dbg !4987
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4988
  %config_lock5 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 4, !dbg !4989
  %4 = load i64, ptr %flags, align 8, !dbg !4990
  call void @spin_unlock_irqrestore(ptr noundef %config_lock5, i64 noundef %4) #14, !dbg !4991
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !4992
  ret void, !dbg !4992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4993 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !4998 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5003, metadata !DIExpression()), !dbg !5004
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5005
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5006
  ret ptr %1, !dbg !5007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__virtio_config_changed(ptr noundef %dev) #0 align 16 !dbg !5008 {
entry:
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5010, metadata !DIExpression()), !dbg !5012
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !5013
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5011, metadata !DIExpression()), !dbg !5014
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5015
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, !dbg !5016
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5017
  %1 = load ptr, ptr %driver, align 8, !dbg !5017
  %call = call ptr @drv_to_virtio(ptr noundef %1) #14, !dbg !5018
  store ptr %call, ptr %drv, align 8, !dbg !5014
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5019
  %config_enabled = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 2, !dbg !5021
  %3 = load i8, ptr %config_enabled, align 1, !dbg !5021, !range !5022, !noundef !1378
  %tobool = trunc i8 %3 to i1, !dbg !5021
  br i1 %tobool, label %if.else, label %if.then, !dbg !5023

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5024
  %config_change_pending = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 3, !dbg !5025
  store i8 1, ptr %config_change_pending, align 2, !dbg !5026
  br label %if.end6, !dbg !5024

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %drv, align 8, !dbg !5027
  %tobool2 = icmp ne ptr %5, null, !dbg !5027
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !5029

land.lhs.true:                                    ; preds = %if.else
  %6 = load ptr, ptr %drv, align 8, !dbg !5030
  %config_changed = getelementptr inbounds %struct.virtio_driver, ptr %6, i32 0, i32 10, !dbg !5031
  %7 = load ptr, ptr %config_changed, align 8, !dbg !5031
  %tobool3 = icmp ne ptr %7, null, !dbg !5030
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5032

if.then4:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %drv, align 8, !dbg !5033
  %config_changed5 = getelementptr inbounds %struct.virtio_driver, ptr %8, i32 0, i32 10, !dbg !5034
  %9 = load ptr, ptr %config_changed5, align 8, !dbg !5034
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5035
  call void %9(ptr noundef %10) #14, !dbg !5033
  br label %if.end, !dbg !5033

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !5036
  ret void, !dbg !5036
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !5037 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5041, metadata !DIExpression()), !dbg !5047
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5042, metadata !DIExpression()), !dbg !5048
  br label %do.body, !dbg !5049

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5043, metadata !DIExpression()), !dbg !5050
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !5050
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5046, metadata !DIExpression()), !dbg !5050
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5050
  %conv = zext i1 %cmp to i32, !dbg !5050
  store i32 1, ptr %tmp, align 4, !dbg !5050
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !5051
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !5051
  %0 = load i32, ptr %tmp, align 4, !dbg !5050
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5051
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5051
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5051
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #14, !dbg !5051
  br label %do.end, !dbg !5051

do.end:                                           ; preds = %do.body
  ret void, !dbg !5052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_add_status(ptr noundef %dev, i32 noundef %status) #0 align 16 !dbg !5053 {
entry:
  %dev.addr = alloca ptr, align 8
  %status.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5057, metadata !DIExpression()), !dbg !5059
  store i32 %status, ptr %status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %status.addr, metadata !5058, metadata !DIExpression()), !dbg !5060
  br label %do.body, !dbg !5061

do.body:                                          ; preds = %entry
  call void @might_resched() #14, !dbg !5062
  br label %do.end, !dbg !5062

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5064
  %config = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8, !dbg !5065
  %1 = load ptr, ptr %config, align 8, !dbg !5065
  %set_status = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 4, !dbg !5066
  %2 = load ptr, ptr %set_status, align 8, !dbg !5066
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5067
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5068
  %config1 = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 8, !dbg !5069
  %5 = load ptr, ptr %config1, align 8, !dbg !5069
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 3, !dbg !5070
  %6 = load ptr, ptr %get_status, align 8, !dbg !5070
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5071
  %call = call zeroext i8 %6(ptr noundef %7) #14, !dbg !5068
  %conv = zext i8 %call to i32, !dbg !5068
  %8 = load i32, ptr %status.addr, align 4, !dbg !5072
  %or = or i32 %conv, %8, !dbg !5073
  %conv2 = trunc i32 %or to i8, !dbg !5068
  call void %2(ptr noundef %3, i8 noundef zeroext %conv2) #14, !dbg !5064
  ret void, !dbg !5074
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !4775 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5075
  %0 = load ptr, ptr %tmp, align 8, !dbg !5075
  %call = call i32 %0() #14, !dbg !5077
  ret void, !dbg !5078
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @virtio_reset_device(ptr noundef %dev) #0 align 16 !dbg !5079 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5083
  %config = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8, !dbg !5084
  %1 = load ptr, ptr %config, align 8, !dbg !5084
  %reset = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 5, !dbg !5085
  %2 = load ptr, ptr %reset, align 8, !dbg !5085
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5086
  call void %2(ptr noundef %3) #14, !dbg !5083
  ret void, !dbg !5087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_virtio_driver(ptr noundef %driver) #0 align 16 !dbg !5088 {
entry:
  %driver.addr = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5092, metadata !DIExpression()), !dbg !5093
  br label %do.body, !dbg !5094

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5095
  %feature_table_size = getelementptr inbounds %struct.virtio_driver, ptr %0, i32 0, i32 3, !dbg !5095
  %1 = load i32, ptr %feature_table_size, align 8, !dbg !5095
  %tobool = icmp ne i32 %1, 0, !dbg !5095
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5095

land.rhs:                                         ; preds = %do.body
  %2 = load ptr, ptr %driver.addr, align 8, !dbg !5095
  %feature_table = getelementptr inbounds %struct.virtio_driver, ptr %2, i32 0, i32 2, !dbg !5095
  %3 = load ptr, ptr %feature_table, align 8, !dbg !5095
  %tobool1 = icmp ne ptr %3, null, !dbg !5095
  %lnot = xor i1 %tobool1, true, !dbg !5095
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.body
  %4 = phi i1 [ false, %do.body ], [ %lnot, %land.rhs ], !dbg !5098
  %lnot2 = xor i1 %4, true, !dbg !5095
  %lnot3 = xor i1 %lnot2, true, !dbg !5095
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5095
  %conv = sext i32 %lnot.ext to i64, !dbg !5095
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5095
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5095
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5099

if.then:                                          ; preds = %land.end
  br label %do.body5, !dbg !5095

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5100

do.body6:                                         ; preds = %do.body5
  br label %do.end, !dbg !5102

do.end:                                           ; preds = %do.body6
  br label %do.body7, !dbg !5100

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 355, i32 0, i64 12) #13, !dbg !5104, !srcloc !5106
  br label %do.end8, !dbg !5104

do.end8:                                          ; preds = %do.body7
  unreachable, !dbg !5100

do.end9:                                          ; No predecessors!
  br label %if.end, !dbg !5100

if.end:                                           ; preds = %do.end9, %land.end
  br label %do.end10, !dbg !5099

do.end10:                                         ; preds = %if.end
  %5 = load ptr, ptr %driver.addr, align 8, !dbg !5107
  %driver11 = getelementptr inbounds %struct.virtio_driver, ptr %5, i32 0, i32 0, !dbg !5108
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver11, i32 0, i32 1, !dbg !5109
  store ptr @virtio_bus, ptr %bus, align 8, !dbg !5110
  %6 = load ptr, ptr %driver.addr, align 8, !dbg !5111
  %driver12 = getelementptr inbounds %struct.virtio_driver, ptr %6, i32 0, i32 0, !dbg !5112
  %call = call i32 @driver_register(ptr noundef %driver12) #14, !dbg !5113
  ret i32 %call, !dbg !5114
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5115 dso_local i32 @driver_register(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_virtio_driver(ptr noundef %driver) #0 align 16 !dbg !5118 {
entry:
  %driver.addr = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5124
  %driver1 = getelementptr inbounds %struct.virtio_driver, ptr %0, i32 0, i32 0, !dbg !5125
  call void @driver_unregister(ptr noundef %driver1) #14, !dbg !5126
  ret void, !dbg !5127
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5128 dso_local void @driver_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_virtio_device(ptr noundef %dev) #0 align 16 !dbg !5131 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral17 = alloca %struct.spinlock, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5133, metadata !DIExpression()), !dbg !5138
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5134, metadata !DIExpression()), !dbg !5140
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5141
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, !dbg !5142
  %bus = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 5, !dbg !5143
  store ptr @virtio_bus, ptr %bus, align 8, !dbg !5144
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5145
  %dev2 = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6, !dbg !5146
  call void @device_initialize(ptr noundef %dev2) #14, !dbg !5147
  %call = call i32 @ida_alloc(ptr noundef @virtio_index_ida, i32 noundef 3264) #14, !dbg !5148
  store i32 %call, ptr %err, align 4, !dbg !5149
  %2 = load i32, ptr %err, align 4, !dbg !5150
  %cmp = icmp slt i32 %2, 0, !dbg !5152
  br i1 %cmp, label %if.then, label %if.end, !dbg !5153

if.then:                                          ; preds = %entry
  br label %out, !dbg !5154

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !5155
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5156
  %index = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 0, !dbg !5157
  store i32 %3, ptr %index, align 8, !dbg !5158
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5159
  %dev3 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6, !dbg !5160
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5161
  %index4 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 0, !dbg !5162
  %7 = load i32, ptr %index4, align 8, !dbg !5162
  %call5 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev3, ptr noundef @.str.1, i32 noundef %7) #14, !dbg !5163
  store i32 %call5, ptr %err, align 4, !dbg !5164
  %8 = load i32, ptr %err, align 4, !dbg !5165
  %tobool = icmp ne i32 %8, 0, !dbg !5165
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !5167

if.then6:                                         ; preds = %if.end
  br label %out_ida_remove, !dbg !5168

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5169
  %call8 = call i32 @virtio_device_of_init(ptr noundef %9) #14, !dbg !5170
  store i32 %call8, ptr %err, align 4, !dbg !5171
  %10 = load i32, ptr %err, align 4, !dbg !5172
  %tobool9 = icmp ne i32 %10, 0, !dbg !5172
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5174

if.then10:                                        ; preds = %if.end7
  br label %out_ida_remove, !dbg !5175

if.end11:                                         ; preds = %if.end7
  br label %do.body, !dbg !5176

do.body:                                          ; preds = %if.end11
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5177
  %config_lock = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 4, !dbg !5177
  %call12 = call ptr @spinlock_check(ptr noundef %config_lock) #14, !dbg !5177
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5177
  %config_lock13 = getelementptr inbounds %struct.virtio_device, ptr %12, i32 0, i32 4, !dbg !5177
  %13 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5177
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %13, i32 0, i32 0, !dbg !5177
  %14 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5177
  %counter = getelementptr inbounds %struct.atomic_t, ptr %14, i32 0, i32 0, !dbg !5177
  store i32 0, ptr %counter, align 4, !dbg !5177
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %config_lock13, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5177
  br label %do.cond, !dbg !5177

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5177

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5179
  %config_enabled = getelementptr inbounds %struct.virtio_device, ptr %15, i32 0, i32 2, !dbg !5180
  store i8 0, ptr %config_enabled, align 1, !dbg !5181
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5182
  %config_change_pending = getelementptr inbounds %struct.virtio_device, ptr %16, i32 0, i32 3, !dbg !5183
  store i8 0, ptr %config_change_pending, align 2, !dbg !5184
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5185
  %vqs = getelementptr inbounds %struct.virtio_device, ptr %17, i32 0, i32 10, !dbg !5186
  call void @INIT_LIST_HEAD(ptr noundef %vqs) #14, !dbg !5187
  br label %do.body14, !dbg !5188

do.body14:                                        ; preds = %do.end
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5189
  %vqs_list_lock = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 5, !dbg !5189
  %call15 = call ptr @spinlock_check(ptr noundef %vqs_list_lock) #14, !dbg !5189
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5189
  %vqs_list_lock16 = getelementptr inbounds %struct.virtio_device, ptr %19, i32 0, i32 5, !dbg !5189
  %20 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral17, i32 0, i32 0, !dbg !5189
  %raw_lock18 = getelementptr inbounds %struct.raw_spinlock, ptr %20, i32 0, i32 0, !dbg !5189
  %21 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock18, i32 0, i32 0, !dbg !5189
  %counter19 = getelementptr inbounds %struct.atomic_t, ptr %21, i32 0, i32 0, !dbg !5189
  store i32 0, ptr %counter19, align 4, !dbg !5189
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %vqs_list_lock16, ptr align 4 %.compoundliteral17, i64 4, i1 false), !dbg !5189
  br label %do.cond20, !dbg !5189

do.cond20:                                        ; preds = %do.body14
  br label %do.end21, !dbg !5189

do.end21:                                         ; preds = %do.cond20
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5191
  call void @virtio_reset_device(ptr noundef %22) #14, !dbg !5192
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5193
  call void @virtio_add_status(ptr noundef %23, i32 noundef 1) #14, !dbg !5194
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !5195
  %dev22 = getelementptr inbounds %struct.virtio_device, ptr %24, i32 0, i32 6, !dbg !5196
  %call23 = call i32 @device_add(ptr noundef %dev22) #14, !dbg !5197
  store i32 %call23, ptr %err, align 4, !dbg !5198
  %25 = load i32, ptr %err, align 4, !dbg !5199
  %tobool24 = icmp ne i32 %25, 0, !dbg !5199
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5201

if.then25:                                        ; preds = %do.end21
  br label %out_of_node_put, !dbg !5202

if.end26:                                         ; preds = %do.end21
  store i32 0, ptr %retval, align 4, !dbg !5203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5203

out_of_node_put:                                  ; preds = %if.then25
  call void @llvm.dbg.label(metadata !5135), !dbg !5204
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5205
  %dev27 = getelementptr inbounds %struct.virtio_device, ptr %26, i32 0, i32 6, !dbg !5206
  %of_node = getelementptr inbounds %struct.device, ptr %dev27, i32 0, i32 23, !dbg !5207
  %27 = load ptr, ptr %of_node, align 8, !dbg !5207
  call void @of_node_put(ptr noundef %27) #14, !dbg !5208
  br label %out_ida_remove, !dbg !5208

out_ida_remove:                                   ; preds = %out_of_node_put, %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !5136), !dbg !5209
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5210
  %index28 = getelementptr inbounds %struct.virtio_device, ptr %28, i32 0, i32 0, !dbg !5211
  %29 = load i32, ptr %index28, align 8, !dbg !5211
  call void @ida_free(ptr noundef @virtio_index_ida, i32 noundef %29) #14, !dbg !5212
  br label %out, !dbg !5212

out:                                              ; preds = %out_ida_remove, %if.then
  call void @llvm.dbg.label(metadata !5137), !dbg !5213
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !5214
  call void @virtio_add_status(ptr noundef %30, i32 noundef 128) #14, !dbg !5215
  %31 = load i32, ptr %err, align 4, !dbg !5216
  store i32 %31, ptr %retval, align 4, !dbg !5217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5217

cleanup:                                          ; preds = %out, %if.end26
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !5218
  %32 = load i32, ptr %retval, align 4, !dbg !5218
  ret i32 %32, !dbg !5218
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5219 dso_local void @device_initialize(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ida_alloc(ptr noundef %ida, i32 noundef %gfp) #3 align 16 !dbg !5220 {
entry:
  %ida.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !5225, metadata !DIExpression()), !dbg !5227
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5226, metadata !DIExpression()), !dbg !5228
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !5229
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5230
  %call = call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %1) #14, !dbg !5231
  ret i32 %call, !dbg !5232
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5233 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_device_of_init(ptr noundef %dev) #0 align 16 !dbg !5236 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %np = alloca ptr, align 8
  %pnode = alloca ptr, align 8
  %compat = alloca [22 x i8], align 16
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on35 = alloca i32, align 4
  %__flags53 = alloca i32, align 4
  %tmp66 = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5238, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #13, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %np, metadata !5239, metadata !DIExpression()), !dbg !5262
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnode) #13, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %pnode, metadata !5240, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5264
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, !dbg !5265
  %parent = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 1, !dbg !5266
  %1 = load ptr, ptr %parent, align 8, !dbg !5266
  %call = call ptr @dev_of_node(ptr noundef %1) #14, !dbg !5267
  store ptr %call, ptr %pnode, align 8, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 22, ptr %compat) #13, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %compat, metadata !5241, metadata !DIExpression()), !dbg !5269
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %compat, ptr align 16 @__const.virtio_device_of_init.compat, i64 22, i1 false), !dbg !5269
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5245, metadata !DIExpression()), !dbg !5271
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #13, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5246, metadata !DIExpression()), !dbg !5272
  %2 = load ptr, ptr %pnode, align 8, !dbg !5273
  %tobool = icmp ne ptr %2, null, !dbg !5273
  br i1 %tobool, label %if.end, label %if.then, !dbg !5275

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5276

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pnode, align 8, !dbg !5277
  %call2 = call i32 @of_get_available_child_count(ptr noundef %3) #14, !dbg !5278
  store i32 %call2, ptr %count, align 4, !dbg !5279
  %4 = load i32, ptr %count, align 4, !dbg !5280
  %tobool3 = icmp ne i32 %4, 0, !dbg !5280
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5282

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5283

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5284
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5247, metadata !DIExpression()), !dbg !5284
  %5 = load i32, ptr %count, align 4, !dbg !5284
  %cmp = icmp sgt i32 %5, 1, !dbg !5284
  %lnot = xor i1 %cmp, true, !dbg !5284
  %lnot6 = xor i1 %lnot, true, !dbg !5284
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5284
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5284
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5285
  %tobool7 = icmp ne i32 %6, 0, !dbg !5285
  %lnot8 = xor i1 %tobool7, true, !dbg !5285
  %lnot10 = xor i1 %lnot8, true, !dbg !5285
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5285
  %conv = sext i32 %lnot.ext11 to i64, !dbg !5285
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5285
  %tobool12 = icmp ne i64 %expval, 0, !dbg !5285
  br i1 %tobool12, label %if.then13, label %if.end23, !dbg !5284

if.then13:                                        ; preds = %if.end5
  br label %do.body, !dbg !5285

do.body:                                          ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5250, metadata !DIExpression()), !dbg !5286
  store i32 2305, ptr %__flags, align 4, !dbg !5286
  br label %do.body14, !dbg !5286

do.body14:                                        ; preds = %do.body
  br label %do.cond, !dbg !5287

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !5287

do.end:                                           ; preds = %do.cond
  br label %do.body15, !dbg !5286

do.body15:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !5289
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 381, i32 %7, i64 12) #13, !dbg !5289, !srcloc !5291
  br label %do.cond16, !dbg !5289

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5289

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !5286

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !5292

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5292

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5285
  br label %do.cond21, !dbg !5286

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !5286

do.end22:                                         ; preds = %do.cond21
  br label %if.end23, !dbg !5286

if.end23:                                         ; preds = %do.end22, %if.end5
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5284
  %tobool24 = icmp ne i32 %8, 0, !dbg !5284
  %lnot25 = xor i1 %tobool24, true, !dbg !5284
  %lnot27 = xor i1 %lnot25, true, !dbg !5284
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5284
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5284
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5284
  store i64 %expval30, ptr %tmp, align 8, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5294
  %9 = load i64, ptr %tmp, align 8, !dbg !5284
  %tobool31 = icmp ne i64 %9, 0, !dbg !5294
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5295

if.then32:                                        ; preds = %if.end23
  store i32 -22, ptr %retval, align 4, !dbg !5296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5296

if.end33:                                         ; preds = %if.end23
  %10 = load ptr, ptr %pnode, align 8, !dbg !5297
  %call34 = call ptr @of_get_next_available_child(ptr noundef %10, ptr noundef null) #14, !dbg !5298
  store ptr %call34, ptr %np, align 8, !dbg !5299
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on35) #13, !dbg !5300
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on35, metadata !5253, metadata !DIExpression()), !dbg !5300
  %11 = load ptr, ptr %np, align 8, !dbg !5300
  %tobool36 = icmp ne ptr %11, null, !dbg !5300
  %lnot37 = xor i1 %tobool36, true, !dbg !5300
  %lnot39 = xor i1 %lnot37, true, !dbg !5300
  %lnot41 = xor i1 %lnot39, true, !dbg !5300
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5300
  store i32 %lnot.ext42, ptr %__ret_warn_on35, align 4, !dbg !5300
  %12 = load i32, ptr %__ret_warn_on35, align 4, !dbg !5301
  %tobool43 = icmp ne i32 %12, 0, !dbg !5301
  %lnot44 = xor i1 %tobool43, true, !dbg !5301
  %lnot46 = xor i1 %lnot44, true, !dbg !5301
  %lnot.ext47 = zext i1 %lnot46 to i32, !dbg !5301
  %conv48 = sext i32 %lnot.ext47 to i64, !dbg !5301
  %expval49 = call i64 @llvm.expect.i64(i64 %conv48, i64 0), !dbg !5301
  %tobool50 = icmp ne i64 %expval49, 0, !dbg !5301
  br i1 %tobool50, label %if.then51, label %if.end65, !dbg !5300

if.then51:                                        ; preds = %if.end33
  br label %do.body52, !dbg !5301

do.body52:                                        ; preds = %if.then51
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags53) #13, !dbg !5302
  call void @llvm.dbg.declare(metadata ptr %__flags53, metadata !5256, metadata !DIExpression()), !dbg !5302
  store i32 2305, ptr %__flags53, align 4, !dbg !5302
  br label %do.body54, !dbg !5302

do.body54:                                        ; preds = %do.body52
  br label %do.cond55, !dbg !5303

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !5303

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !5302

do.body57:                                        ; preds = %do.end56
  %13 = load i32, ptr %__flags53, align 4, !dbg !5305
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 385, i32 %13, i64 12) #13, !dbg !5305, !srcloc !5307
  br label %do.cond58, !dbg !5305

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !5305

do.end59:                                         ; preds = %do.cond58
  br label %do.body60, !dbg !5302

do.body60:                                        ; preds = %do.end59
  br label %do.cond61, !dbg !5308

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5308

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags53) #13, !dbg !5301
  br label %do.cond63, !dbg !5302

do.cond63:                                        ; preds = %do.end62
  br label %do.end64, !dbg !5302

do.end64:                                         ; preds = %do.cond63
  br label %if.end65, !dbg !5302

if.end65:                                         ; preds = %do.end64, %if.end33
  %14 = load i32, ptr %__ret_warn_on35, align 4, !dbg !5300
  %tobool67 = icmp ne i32 %14, 0, !dbg !5300
  %lnot68 = xor i1 %tobool67, true, !dbg !5300
  %lnot70 = xor i1 %lnot68, true, !dbg !5300
  %lnot.ext71 = zext i1 %lnot70 to i32, !dbg !5300
  %conv72 = sext i32 %lnot.ext71 to i64, !dbg !5300
  %expval73 = call i64 @llvm.expect.i64(i64 %conv72, i64 0), !dbg !5300
  store i64 %expval73, ptr %tmp66, align 8, !dbg !5301
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on35) #13, !dbg !5310
  %15 = load i64, ptr %tmp66, align 8, !dbg !5300
  %tobool74 = icmp ne i64 %15, 0, !dbg !5310
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !5311

if.then75:                                        ; preds = %if.end65
  store i32 -19, ptr %retval, align 4, !dbg !5312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5312

if.end76:                                         ; preds = %if.end65
  %arraydecay = getelementptr inbounds [22 x i8], ptr %compat, i64 0, i64 0, !dbg !5313
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5314
  %id = getelementptr inbounds %struct.virtio_device, ptr %16, i32 0, i32 7, !dbg !5315
  %device = getelementptr inbounds %struct.virtio_device_id, ptr %id, i32 0, i32 0, !dbg !5316
  %17 = load i32, ptr %device, align 8, !dbg !5316
  %call77 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 22, ptr noundef @.str.15, i32 noundef %17) #14, !dbg !5317
  store i32 %call77, ptr %ret, align 4, !dbg !5318
  br label %do.body78, !dbg !5319

do.body78:                                        ; preds = %if.end76
  %18 = load i32, ptr %ret, align 4, !dbg !5320
  %conv79 = sext i32 %18 to i64, !dbg !5320
  %cmp80 = icmp uge i64 %conv79, 22, !dbg !5320
  %lnot82 = xor i1 %cmp80, true, !dbg !5320
  %lnot84 = xor i1 %lnot82, true, !dbg !5320
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !5320
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !5320
  %expval87 = call i64 @llvm.expect.i64(i64 %conv86, i64 0), !dbg !5320
  %tobool88 = icmp ne i64 %expval87, 0, !dbg !5320
  br i1 %tobool88, label %if.then89, label %if.end99, !dbg !5323

if.then89:                                        ; preds = %do.body78
  br label %do.body90, !dbg !5320

do.body90:                                        ; preds = %if.then89
  br label %do.body91, !dbg !5324

do.body91:                                        ; preds = %do.body90
  br label %do.cond92, !dbg !5326

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !5326

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !5324

do.body94:                                        ; preds = %do.end93
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 389, i32 0, i64 12) #13, !dbg !5328, !srcloc !5330
  br label %do.cond95, !dbg !5328

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !5328

do.end96:                                         ; preds = %do.cond95
  unreachable, !dbg !5324

do.cond97:                                        ; No predecessors!
  br label %do.end98, !dbg !5324

do.end98:                                         ; preds = %do.cond97
  br label %if.end99, !dbg !5324

if.end99:                                         ; preds = %do.end98, %do.body78
  br label %do.cond100, !dbg !5323

do.cond100:                                       ; preds = %if.end99
  br label %do.end101, !dbg !5323

do.end101:                                        ; preds = %do.cond100
  %19 = load ptr, ptr %np, align 8, !dbg !5331
  %arraydecay102 = getelementptr inbounds [22 x i8], ptr %compat, i64 0, i64 0, !dbg !5333
  %call103 = call i32 @of_device_is_compatible(ptr noundef %19, ptr noundef %arraydecay102) #14, !dbg !5334
  %tobool104 = icmp ne i32 %call103, 0, !dbg !5334
  br i1 %tobool104, label %if.end106, label %if.then105, !dbg !5335

if.then105:                                       ; preds = %do.end101
  store i32 0, ptr %ret, align 4, !dbg !5336
  br label %out, !dbg !5338

if.end106:                                        ; preds = %do.end101
  %20 = load ptr, ptr %np, align 8, !dbg !5339
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5340
  %dev107 = getelementptr inbounds %struct.virtio_device, ptr %21, i32 0, i32 6, !dbg !5341
  %of_node = getelementptr inbounds %struct.device, ptr %dev107, i32 0, i32 23, !dbg !5342
  store ptr %20, ptr %of_node, align 8, !dbg !5343
  store i32 0, ptr %retval, align 4, !dbg !5344
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5344

out:                                              ; preds = %if.then105
  call void @llvm.dbg.label(metadata !5259), !dbg !5345
  %22 = load ptr, ptr %np, align 8, !dbg !5346
  call void @of_node_put(ptr noundef %22) #14, !dbg !5347
  %23 = load i32, ptr %ret, align 4, !dbg !5348
  store i32 %23, ptr %retval, align 4, !dbg !5349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5349

cleanup:                                          ; preds = %out, %if.end106, %if.then75, %if.then32, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #13, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 22, ptr %compat) #13, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnode) #13, !dbg !5350
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #13, !dbg !5350
  %24 = load i32, ptr %retval, align 4, !dbg !5350
  ret i32 %24, !dbg !5350
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5351 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5356, metadata !DIExpression()), !dbg !5357
  br label %do.body, !dbg !5358

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5359

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5361

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5359

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5363
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5363
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5363
  store volatile ptr %0, ptr %next, align 8, !dbg !5363
  br label %do.end3, !dbg !5363

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5359

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5365

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5366

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5368

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5366

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5370
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5370
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5370
  store volatile ptr %2, ptr %prev, align 8, !dbg !5370
  br label %do.end9, !dbg !5370

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5366

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5373 dso_local i32 @device_add(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @of_node_put(ptr noundef %node) #3 align 16 !dbg !5374 {
entry:
  %node.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  ret void, !dbg !5380
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5381 dso_local void @ida_free(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @is_virtio_device(ptr noundef %dev) #0 align 16 !dbg !5384 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5388, metadata !DIExpression()), !dbg !5389
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5390
  %bus = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5, !dbg !5391
  %1 = load ptr, ptr %bus, align 8, !dbg !5391
  %cmp = icmp eq ptr %1, @virtio_bus, !dbg !5392
  ret i1 %cmp, !dbg !5393
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_virtio_device(ptr noundef %dev) #0 align 16 !dbg !5394 {
entry:
  %dev.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5396, metadata !DIExpression()), !dbg !5398
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5397, metadata !DIExpression()), !dbg !5400
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5401
  %index1 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 0, !dbg !5402
  %1 = load i32, ptr %index1, align 8, !dbg !5402
  store i32 %1, ptr %index, align 4, !dbg !5400
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5403
  %dev2 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 6, !dbg !5404
  call void @device_unregister(ptr noundef %dev2) #14, !dbg !5405
  %3 = load i32, ptr %index, align 4, !dbg !5406
  call void @ida_free(ptr noundef @virtio_index_ida, i32 noundef %3) #14, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !5408
  ret void, !dbg !5408
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5409 dso_local void @device_unregister(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @virtio_device_freeze(ptr noundef %dev) #0 align 16 !dbg !5410 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5412, metadata !DIExpression()), !dbg !5415
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5413, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5418
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, !dbg !5419
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5420
  %1 = load ptr, ptr %driver, align 8, !dbg !5420
  %call = call ptr @drv_to_virtio(ptr noundef %1) #14, !dbg !5421
  store ptr %call, ptr %drv, align 8, !dbg !5417
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5414, metadata !DIExpression()), !dbg !5423
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5424
  call void @virtio_config_disable(ptr noundef %2) #14, !dbg !5425
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5426
  %config = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 8, !dbg !5427
  %4 = load ptr, ptr %config, align 8, !dbg !5427
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 3, !dbg !5428
  %5 = load ptr, ptr %get_status, align 8, !dbg !5428
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5429
  %call2 = call zeroext i8 %5(ptr noundef %6) #14, !dbg !5426
  %conv = zext i8 %call2 to i32, !dbg !5426
  %and = and i32 %conv, 128, !dbg !5430
  %tobool = icmp ne i32 %and, 0, !dbg !5426
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5431
  %failed = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 1, !dbg !5432
  %frombool = zext i1 %tobool to i8, !dbg !5433
  store i8 %frombool, ptr %failed, align 4, !dbg !5433
  %8 = load ptr, ptr %drv, align 8, !dbg !5434
  %tobool3 = icmp ne ptr %8, null, !dbg !5434
  br i1 %tobool3, label %land.lhs.true, label %if.end9, !dbg !5436

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %drv, align 8, !dbg !5437
  %freeze = getelementptr inbounds %struct.virtio_driver, ptr %9, i32 0, i32 11, !dbg !5438
  %10 = load ptr, ptr %freeze, align 8, !dbg !5438
  %tobool4 = icmp ne ptr %10, null, !dbg !5437
  br i1 %tobool4, label %if.then, label %if.end9, !dbg !5439

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %drv, align 8, !dbg !5440
  %freeze5 = getelementptr inbounds %struct.virtio_driver, ptr %11, i32 0, i32 11, !dbg !5442
  %12 = load ptr, ptr %freeze5, align 8, !dbg !5442
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5443
  %call6 = call i32 %12(ptr noundef %13) #14, !dbg !5440
  store i32 %call6, ptr %ret, align 4, !dbg !5444
  %14 = load i32, ptr %ret, align 4, !dbg !5445
  %tobool7 = icmp ne i32 %14, 0, !dbg !5445
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !5447

if.then8:                                         ; preds = %if.then
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5448
  call void @virtio_config_enable(ptr noundef %15) #14, !dbg !5450
  %16 = load i32, ptr %ret, align 4, !dbg !5451
  store i32 %16, ptr %retval, align 4, !dbg !5452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5452

if.end:                                           ; preds = %if.then
  br label %if.end9, !dbg !5453

if.end9:                                          ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5454

cleanup:                                          ; preds = %if.end9, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5455
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !5455
  %17 = load i32, ptr %retval, align 4, !dbg !5455
  ret i32 %17, !dbg !5455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_config_disable(ptr noundef %dev) #0 align 16 !dbg !5456 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5458, metadata !DIExpression()), !dbg !5459
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5460
  %config_lock = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 4, !dbg !5461
  call void @spin_lock_irq(ptr noundef %config_lock) #14, !dbg !5462
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5463
  %config_enabled = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 2, !dbg !5464
  store i8 0, ptr %config_enabled, align 1, !dbg !5465
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5466
  %config_lock1 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 4, !dbg !5467
  call void @spin_unlock_irq(ptr noundef %config_lock1) #14, !dbg !5468
  ret void, !dbg !5469
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_config_enable(ptr noundef %dev) #0 align 16 !dbg !5470 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5474
  %config_lock = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 4, !dbg !5475
  call void @spin_lock_irq(ptr noundef %config_lock) #14, !dbg !5476
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5477
  %config_enabled = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 2, !dbg !5478
  store i8 1, ptr %config_enabled, align 1, !dbg !5479
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5480
  %config_change_pending = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 3, !dbg !5482
  %3 = load i8, ptr %config_change_pending, align 2, !dbg !5482, !range !5022, !noundef !1378
  %tobool = trunc i8 %3 to i1, !dbg !5482
  br i1 %tobool, label %if.then, label %if.end, !dbg !5483

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5484
  call void @__virtio_config_changed(ptr noundef %4) #14, !dbg !5485
  br label %if.end, !dbg !5485

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5486
  %config_change_pending1 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 3, !dbg !5487
  store i8 0, ptr %config_change_pending1, align 2, !dbg !5488
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5489
  %config_lock2 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 4, !dbg !5490
  call void @spin_unlock_irq(ptr noundef %config_lock2) #14, !dbg !5491
  ret void, !dbg !5492
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @virtio_device_restore(ptr noundef %dev) #0 align 16 !dbg !5493 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5495, metadata !DIExpression()), !dbg !5499
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5496, metadata !DIExpression()), !dbg !5501
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5502
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 6, !dbg !5503
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5504
  %1 = load ptr, ptr %driver, align 8, !dbg !5504
  %call = call ptr @drv_to_virtio(ptr noundef %1) #14, !dbg !5505
  store ptr %call, ptr %drv, align 8, !dbg !5501
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5497, metadata !DIExpression()), !dbg !5507
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5508
  call void @virtio_reset_device(ptr noundef %2) #14, !dbg !5509
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5510
  call void @virtio_add_status(ptr noundef %3, i32 noundef 1) #14, !dbg !5511
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5512
  %failed = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 1, !dbg !5514
  %5 = load i8, ptr %failed, align 4, !dbg !5514, !range !5022, !noundef !1378
  %tobool = trunc i8 %5 to i1, !dbg !5514
  br i1 %tobool, label %if.then, label %if.end, !dbg !5515

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5516
  call void @virtio_add_status(ptr noundef %6, i32 noundef 128) #14, !dbg !5517
  br label %if.end, !dbg !5517

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %drv, align 8, !dbg !5518
  %tobool2 = icmp ne ptr %7, null, !dbg !5518
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5520

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5521

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5522
  call void @virtio_add_status(ptr noundef %8, i32 noundef 2) #14, !dbg !5523
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5524
  %config = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 8, !dbg !5525
  %10 = load ptr, ptr %config, align 8, !dbg !5525
  %finalize_features = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 10, !dbg !5526
  %11 = load ptr, ptr %finalize_features, align 8, !dbg !5526
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5527
  %call5 = call i32 %11(ptr noundef %12) #14, !dbg !5524
  store i32 %call5, ptr %ret, align 4, !dbg !5528
  %13 = load i32, ptr %ret, align 4, !dbg !5529
  %tobool6 = icmp ne i32 %13, 0, !dbg !5529
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5531

if.then7:                                         ; preds = %if.end4
  br label %err, !dbg !5532

if.end8:                                          ; preds = %if.end4
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5533
  %call9 = call i32 @virtio_features_ok(ptr noundef %14) #14, !dbg !5534
  store i32 %call9, ptr %ret, align 4, !dbg !5535
  %15 = load i32, ptr %ret, align 4, !dbg !5536
  %tobool10 = icmp ne i32 %15, 0, !dbg !5536
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5538

if.then11:                                        ; preds = %if.end8
  br label %err, !dbg !5539

if.end12:                                         ; preds = %if.end8
  %16 = load ptr, ptr %drv, align 8, !dbg !5540
  %restore = getelementptr inbounds %struct.virtio_driver, ptr %16, i32 0, i32 12, !dbg !5542
  %17 = load ptr, ptr %restore, align 8, !dbg !5542
  %tobool13 = icmp ne ptr %17, null, !dbg !5540
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !5543

if.then14:                                        ; preds = %if.end12
  %18 = load ptr, ptr %drv, align 8, !dbg !5544
  %restore15 = getelementptr inbounds %struct.virtio_driver, ptr %18, i32 0, i32 12, !dbg !5546
  %19 = load ptr, ptr %restore15, align 8, !dbg !5546
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5547
  %call16 = call i32 %19(ptr noundef %20) #14, !dbg !5544
  store i32 %call16, ptr %ret, align 4, !dbg !5548
  %21 = load i32, ptr %ret, align 4, !dbg !5549
  %tobool17 = icmp ne i32 %21, 0, !dbg !5549
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5551

if.then18:                                        ; preds = %if.then14
  br label %err, !dbg !5552

if.end19:                                         ; preds = %if.then14
  br label %if.end20, !dbg !5553

if.end20:                                         ; preds = %if.end19, %if.end12
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5554
  %config21 = getelementptr inbounds %struct.virtio_device, ptr %22, i32 0, i32 8, !dbg !5556
  %23 = load ptr, ptr %config21, align 8, !dbg !5556
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %23, i32 0, i32 3, !dbg !5557
  %24 = load ptr, ptr %get_status, align 8, !dbg !5557
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !5558
  %call22 = call zeroext i8 %24(ptr noundef %25) #14, !dbg !5554
  %conv = zext i8 %call22 to i32, !dbg !5554
  %and = and i32 %conv, 4, !dbg !5559
  %tobool23 = icmp ne i32 %and, 0, !dbg !5559
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !5560

if.then24:                                        ; preds = %if.end20
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5561
  call void @virtio_device_ready(ptr noundef %26) #14, !dbg !5562
  br label %if.end25, !dbg !5562

if.end25:                                         ; preds = %if.then24, %if.end20
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5563
  call void @virtio_config_enable(ptr noundef %27) #14, !dbg !5564
  store i32 0, ptr %retval, align 4, !dbg !5565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

err:                                              ; preds = %if.then18, %if.then11, %if.then7
  call void @llvm.dbg.label(metadata !5498), !dbg !5566
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5567
  call void @virtio_add_status(ptr noundef %28, i32 noundef 128) #14, !dbg !5568
  %29 = load i32, ptr %ret, align 4, !dbg !5569
  store i32 %29, ptr %retval, align 4, !dbg !5570
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5570

cleanup:                                          ; preds = %err, %if.end25, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !5571
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !5571
  %30 = load i32, ptr %retval, align 4, !dbg !5571
  ret i32 %30, !dbg !5571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_features_ok(ptr noundef %dev) #0 align 16 !dbg !5572 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5574, metadata !DIExpression()), !dbg !5576
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !5577
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5575, metadata !DIExpression()), !dbg !5578
  br label %do.body, !dbg !5579

do.body:                                          ; preds = %entry
  call void @might_resched() #14, !dbg !5580
  br label %do.cond, !dbg !5580

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5580

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr @virtio_check_mem_acc_cb, align 8, !dbg !5582
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5584
  %call = call zeroext i1 %0(ptr noundef %1) #14, !dbg !5582
  br i1 %call, label %if.then, label %if.end14, !dbg !5585

if.then:                                          ; preds = %do.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5586
  %call1 = call zeroext i1 @virtio_has_feature(ptr noundef %2, i32 noundef 32) #14, !dbg !5589
  br i1 %call1, label %if.end, label %if.then2, !dbg !5590

if.then2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5591

do.body3:                                         ; preds = %if.then2
  br label %do.cond4, !dbg !5594

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !5594

do.end5:                                          ; preds = %do.cond4
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5591
  %dev6 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, !dbg !5591
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef @.str.16) #15, !dbg !5591
  store i32 -19, ptr %retval, align 4, !dbg !5596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5596

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5597
  %call7 = call zeroext i1 @virtio_has_feature(ptr noundef %4, i32 noundef 33) #14, !dbg !5599
  br i1 %call7, label %if.end13, label %if.then8, !dbg !5600

if.then8:                                         ; preds = %if.end
  br label %do.body9, !dbg !5601

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !5604

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5604

do.end11:                                         ; preds = %do.cond10
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5601
  %dev12 = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6, !dbg !5601
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12, ptr noundef @.str.17) #15, !dbg !5601
  store i32 -19, ptr %retval, align 4, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5606

if.end13:                                         ; preds = %if.end
  br label %if.end14, !dbg !5607

if.end14:                                         ; preds = %if.end13, %do.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5608
  %call15 = call zeroext i1 @virtio_has_feature(ptr noundef %6, i32 noundef 32) #14, !dbg !5610
  br i1 %call15, label %if.end17, label %if.then16, !dbg !5611

if.then16:                                        ; preds = %if.end14
  store i32 0, ptr %retval, align 4, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

if.end17:                                         ; preds = %if.end14
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5613
  call void @virtio_add_status(ptr noundef %7, i32 noundef 8) #14, !dbg !5614
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5615
  %config = getelementptr inbounds %struct.virtio_device, ptr %8, i32 0, i32 8, !dbg !5616
  %9 = load ptr, ptr %config, align 8, !dbg !5616
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 3, !dbg !5617
  %10 = load ptr, ptr %get_status, align 8, !dbg !5617
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !5618
  %call18 = call zeroext i8 %10(ptr noundef %11) #14, !dbg !5615
  %conv = zext i8 %call18 to i32, !dbg !5615
  store i32 %conv, ptr %status, align 4, !dbg !5619
  %12 = load i32, ptr %status, align 4, !dbg !5620
  %and = and i32 %12, 8, !dbg !5622
  %tobool = icmp ne i32 %and, 0, !dbg !5622
  br i1 %tobool, label %if.end24, label %if.then19, !dbg !5623

if.then19:                                        ; preds = %if.end17
  br label %do.body20, !dbg !5624

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !5627

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5627

do.end22:                                         ; preds = %do.cond21
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5624
  %dev23 = getelementptr inbounds %struct.virtio_device, ptr %13, i32 0, i32 6, !dbg !5624
  %14 = load i32, ptr %status, align 4, !dbg !5624
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef @.str.18, i32 noundef %14) #15, !dbg !5624
  store i32 -19, ptr %retval, align 4, !dbg !5629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5629

if.end24:                                         ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

cleanup:                                          ; preds = %if.end24, %do.end22, %if.then16, %do.end11, %do.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !5631
  %15 = load i32, ptr %retval, align 4, !dbg !5631
  ret i32 %15, !dbg !5631
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_device_ready(ptr noundef %dev) #3 align 16 !dbg !5632 {
entry:
  %dev.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5634, metadata !DIExpression()), !dbg !5641
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5635, metadata !DIExpression()), !dbg !5643
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5644
  %config = getelementptr inbounds %struct.virtio_device, ptr %0, i32 0, i32 8, !dbg !5645
  %1 = load ptr, ptr %config, align 8, !dbg !5645
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 3, !dbg !5646
  %2 = load ptr, ptr %get_status, align 8, !dbg !5646
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5647
  %call = call zeroext i8 %2(ptr noundef %3) #14, !dbg !5644
  %conv = zext i8 %call to i32, !dbg !5644
  store i32 %conv, ptr %status, align 4, !dbg !5643
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5636, metadata !DIExpression()), !dbg !5648
  %4 = load i32, ptr %status, align 4, !dbg !5648
  %and = and i32 %4, 4, !dbg !5648
  %tobool = icmp ne i32 %and, 0, !dbg !5648
  %lnot = xor i1 %tobool, true, !dbg !5648
  %lnot1 = xor i1 %lnot, true, !dbg !5648
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5648
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5648
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5649
  %tobool2 = icmp ne i32 %5, 0, !dbg !5649
  %lnot3 = xor i1 %tobool2, true, !dbg !5649
  %lnot5 = xor i1 %lnot3, true, !dbg !5649
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5649
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !5649
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5649
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5649
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5648

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5649

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !5650
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5638, metadata !DIExpression()), !dbg !5650
  store i32 2305, ptr %__flags, align 4, !dbg !5650
  br label %do.body9, !dbg !5650

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5651

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5651

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5650

do.body10:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5653
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 274, i32 %6, i64 12) #13, !dbg !5653, !srcloc !5655
  br label %do.cond11, !dbg !5653

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5653

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5650

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5656

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5656

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !5649
  br label %do.cond16, !dbg !5650

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5650

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5650

if.end:                                           ; preds = %do.end17, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5648
  %tobool18 = icmp ne i32 %7, 0, !dbg !5648
  %lnot19 = xor i1 %tobool18, true, !dbg !5648
  %lnot21 = xor i1 %lnot19, true, !dbg !5648
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5648
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5648
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5648
  store i64 %expval24, ptr %tmp, align 8, !dbg !5649
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !5658
  %8 = load i64, ptr %tmp, align 8, !dbg !5648
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5659
  %config25 = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 8, !dbg !5660
  %10 = load ptr, ptr %config25, align 8, !dbg !5660
  %set_status = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 4, !dbg !5661
  %11 = load ptr, ptr %set_status, align 8, !dbg !5661
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5662
  %13 = load i32, ptr %status, align 4, !dbg !5663
  %or = or i32 %13, 4, !dbg !5664
  %conv26 = trunc i32 %or to i8, !dbg !5663
  call void %11(ptr noundef %12, i8 noundef zeroext %conv26) #14, !dbg !5659
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !5665
  ret void, !dbg !5665
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @virtio_exit() #8 section ".exit.text" align 16 !dbg !5666 {
entry:
  call void @bus_unregister(ptr noundef @virtio_bus) #14, !dbg !5667
  call void @ida_destroy(ptr noundef @virtio_index_ida) #14, !dbg !5668
  ret void, !dbg !5669
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5670 dso_local void @bus_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5673 dso_local void @ida_destroy(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_virtio__303_574_virtio_init1() #8 section ".init.text" align 16 !dbg !5676 {
entry:
  %call = call i32 @virtio_init() #14, !dbg !5677
  ret i32 %call, !dbg !5677
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_init() #0 align 16 !dbg !5678 {
entry:
  %call = call i32 @bus_register(ptr noundef @virtio_bus) #14, !dbg !5679
  %cmp = icmp ne i32 %call, 0, !dbg !5681
  br i1 %cmp, label %if.then, label %if.end, !dbg !5682

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.19) #16, !dbg !5683
  unreachable, !dbg !5683

if.end:                                           ; preds = %entry
  ret i32 0, !dbg !5684
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5685 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_dev_match(ptr noundef %_dv, ptr noundef %_dr) #0 align 16 !dbg !5688 {
entry:
  %retval = alloca i32, align 4
  %_dv.addr = alloca ptr, align 8
  %_dr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ids = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_dv, ptr %_dv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dv.addr, metadata !5690, metadata !DIExpression()), !dbg !5697
  store ptr %_dr, ptr %_dr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dr.addr, metadata !5691, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5692, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5693, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5694, metadata !DIExpression()), !dbg !5703
  %0 = load ptr, ptr %_dv.addr, align 8, !dbg !5703
  store ptr %0, ptr %__mptr, align 8, !dbg !5703
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5703
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !5703
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5703
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5704
  %2 = load ptr, ptr %tmp, align 8, !dbg !5703
  store ptr %2, ptr %dev, align 8, !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %ids) #13, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %ids, metadata !5696, metadata !DIExpression()), !dbg !5706
  %3 = load ptr, ptr %_dr.addr, align 8, !dbg !5707
  %call = call ptr @drv_to_virtio(ptr noundef %3) #14, !dbg !5708
  %id_table = getelementptr inbounds %struct.virtio_driver, ptr %call, i32 0, i32 1, !dbg !5709
  %4 = load ptr, ptr %id_table, align 8, !dbg !5709
  store ptr %4, ptr %ids, align 8, !dbg !5710
  store i32 0, ptr %i, align 4, !dbg !5711
  br label %for.cond, !dbg !5713

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %ids, align 8, !dbg !5714
  %6 = load i32, ptr %i, align 4, !dbg !5716
  %idxprom = zext i32 %6 to i64, !dbg !5714
  %arrayidx = getelementptr %struct.virtio_device_id, ptr %5, i64 %idxprom, !dbg !5714
  %device = getelementptr inbounds %struct.virtio_device_id, ptr %arrayidx, i32 0, i32 0, !dbg !5717
  %7 = load i32, ptr %device, align 4, !dbg !5717
  %tobool = icmp ne i32 %7, 0, !dbg !5718
  br i1 %tobool, label %for.body, label %for.end, !dbg !5718

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dev, align 8, !dbg !5719
  %9 = load ptr, ptr %ids, align 8, !dbg !5721
  %10 = load i32, ptr %i, align 4, !dbg !5722
  %idxprom1 = zext i32 %10 to i64, !dbg !5721
  %arrayidx2 = getelementptr %struct.virtio_device_id, ptr %9, i64 %idxprom1, !dbg !5721
  %call3 = call i32 @virtio_id_match(ptr noundef %8, ptr noundef %arrayidx2) #14, !dbg !5723
  %tobool4 = icmp ne i32 %call3, 0, !dbg !5723
  br i1 %tobool4, label %if.then, label %if.end, !dbg !5724

if.then:                                          ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !5725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5725

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5726

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !5727
  %inc = add i32 %11, 1, !dbg !5727
  store i32 %inc, ptr %i, align 4, !dbg !5727
  br label %for.cond, !dbg !5728, !llvm.loop !5729

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5731

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ids) #13, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !5732
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !5732
  %12 = load i32, ptr %retval, align 4, !dbg !5732
  ret i32 %12, !dbg !5732
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_uevent(ptr noundef %_dv, ptr noundef %env) #0 align 16 !dbg !5733 {
entry:
  %_dv.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_dv, ptr %_dv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_dv.addr, metadata !5735, metadata !DIExpression()), !dbg !5740
  store ptr %env, ptr %env.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %env.addr, metadata !5736, metadata !DIExpression()), !dbg !5741
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !5742
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5737, metadata !DIExpression()), !dbg !5743
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5738, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %_dv.addr, align 8, !dbg !5744
  store ptr %0, ptr %__mptr, align 8, !dbg !5744
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5744
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !5744
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5744
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5745
  %2 = load ptr, ptr %tmp, align 8, !dbg !5744
  store ptr %2, ptr %dev, align 8, !dbg !5743
  %3 = load ptr, ptr %env.addr, align 8, !dbg !5746
  %4 = load ptr, ptr %dev, align 8, !dbg !5747
  %id = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 7, !dbg !5748
  %device = getelementptr inbounds %struct.virtio_device_id, ptr %id, i32 0, i32 0, !dbg !5749
  %5 = load i32, ptr %device, align 8, !dbg !5749
  %6 = load ptr, ptr %dev, align 8, !dbg !5750
  %id1 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 7, !dbg !5751
  %vendor = getelementptr inbounds %struct.virtio_device_id, ptr %id1, i32 0, i32 1, !dbg !5752
  %7 = load i32, ptr %vendor, align 4, !dbg !5752
  %call = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %3, ptr noundef @.str.14, i32 noundef %5, i32 noundef %7) #14, !dbg !5753
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !5754
  ret i32 %call, !dbg !5755
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_dev_probe(ptr noundef %_d) #0 align 16 !dbg !5756 {
entry:
  %retval = alloca i32, align 4
  %_d.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %device_features = alloca i64, align 8
  %driver_features = alloca i64, align 8
  %driver_features_legacy = alloca i64, align 8
  %f = alloca i32, align 4
  %f20 = alloca i32, align 4
  %features81 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !5758, metadata !DIExpression()), !dbg !5782
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5759, metadata !DIExpression()), !dbg !5784
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5760, metadata !DIExpression()), !dbg !5785
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !5786
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5761, metadata !DIExpression()), !dbg !5787
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !5788
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5762, metadata !DIExpression()), !dbg !5788
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !5788
  store ptr %0, ptr %__mptr, align 8, !dbg !5788
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5788
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !5788
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5788
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !5789
  %2 = load ptr, ptr %tmp, align 8, !dbg !5788
  store ptr %2, ptr %dev, align 8, !dbg !5787
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !5790
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !5764, metadata !DIExpression()), !dbg !5791
  %3 = load ptr, ptr %dev, align 8, !dbg !5792
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, !dbg !5793
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !5794
  %4 = load ptr, ptr %driver, align 8, !dbg !5794
  %call = call ptr @drv_to_virtio(ptr noundef %4) #14, !dbg !5795
  store ptr %call, ptr %drv, align 8, !dbg !5791
  call void @llvm.lifetime.start.p0(i64 8, ptr %device_features) #13, !dbg !5796
  call void @llvm.dbg.declare(metadata ptr %device_features, metadata !5765, metadata !DIExpression()), !dbg !5797
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_features) #13, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %driver_features, metadata !5766, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 8, ptr %driver_features_legacy) #13, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %driver_features_legacy, metadata !5767, metadata !DIExpression()), !dbg !5801
  %5 = load ptr, ptr %dev, align 8, !dbg !5802
  call void @virtio_add_status(ptr noundef %5, i32 noundef 2) #14, !dbg !5803
  %6 = load ptr, ptr %dev, align 8, !dbg !5804
  %config = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 8, !dbg !5805
  %7 = load ptr, ptr %config, align 8, !dbg !5805
  %get_features = getelementptr inbounds %struct.virtio_config_ops, ptr %7, i32 0, i32 9, !dbg !5806
  %8 = load ptr, ptr %get_features, align 8, !dbg !5806
  %9 = load ptr, ptr %dev, align 8, !dbg !5807
  %call2 = call i64 %8(ptr noundef %9) #14, !dbg !5804
  store i64 %call2, ptr %device_features, align 8, !dbg !5808
  store i64 0, ptr %driver_features, align 8, !dbg !5809
  store i32 0, ptr %i, align 4, !dbg !5810
  br label %for.cond, !dbg !5811

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, ptr %i, align 4, !dbg !5812
  %11 = load ptr, ptr %drv, align 8, !dbg !5813
  %feature_table_size = getelementptr inbounds %struct.virtio_driver, ptr %11, i32 0, i32 3, !dbg !5814
  %12 = load i32, ptr %feature_table_size, align 8, !dbg !5814
  %cmp = icmp ult i32 %10, %12, !dbg !5815
  br i1 %cmp, label %for.body, label %for.end, !dbg !5816

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #13, !dbg !5817
  call void @llvm.dbg.declare(metadata ptr %f, metadata !5768, metadata !DIExpression()), !dbg !5818
  %13 = load ptr, ptr %drv, align 8, !dbg !5819
  %feature_table = getelementptr inbounds %struct.virtio_driver, ptr %13, i32 0, i32 2, !dbg !5820
  %14 = load ptr, ptr %feature_table, align 8, !dbg !5820
  %15 = load i32, ptr %i, align 4, !dbg !5821
  %idxprom = sext i32 %15 to i64, !dbg !5819
  %arrayidx = getelementptr i32, ptr %14, i64 %idxprom, !dbg !5819
  %16 = load i32, ptr %arrayidx, align 4, !dbg !5819
  store i32 %16, ptr %f, align 4, !dbg !5818
  br label %do.body, !dbg !5822

do.body:                                          ; preds = %for.body
  %17 = load i32, ptr %f, align 4, !dbg !5823
  %cmp3 = icmp uge i32 %17, 64, !dbg !5823
  %lnot = xor i1 %cmp3, true, !dbg !5823
  %lnot4 = xor i1 %lnot, true, !dbg !5823
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5823
  %conv = sext i32 %lnot.ext to i64, !dbg !5823
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5823
  %tobool = icmp ne i64 %expval, 0, !dbg !5823
  br i1 %tobool, label %if.then, label %if.end, !dbg !5826

if.then:                                          ; preds = %do.body
  br label %do.body5, !dbg !5823

do.body5:                                         ; preds = %if.then
  br label %do.body6, !dbg !5827

do.body6:                                         ; preds = %do.body5
  br label %do.cond, !dbg !5829

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5829

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !5827

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 256, i32 0, i64 12) #13, !dbg !5831, !srcloc !5833
  br label %do.cond8, !dbg !5831

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5831

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !5827

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !5827

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !5827

if.end:                                           ; preds = %do.end11, %do.body
  br label %do.cond12, !dbg !5826

do.cond12:                                        ; preds = %if.end
  br label %do.end13, !dbg !5826

do.end13:                                         ; preds = %do.cond12
  %18 = load i32, ptr %f, align 4, !dbg !5834
  %sh_prom = zext i32 %18 to i64, !dbg !5835
  %shl = shl i64 1, %sh_prom, !dbg !5835
  %19 = load i64, ptr %driver_features, align 8, !dbg !5836
  %or = or i64 %19, %shl, !dbg !5836
  store i64 %or, ptr %driver_features, align 8, !dbg !5836
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #13, !dbg !5837
  br label %for.inc, !dbg !5838

for.inc:                                          ; preds = %do.end13
  %20 = load i32, ptr %i, align 4, !dbg !5839
  %inc = add i32 %20, 1, !dbg !5839
  store i32 %inc, ptr %i, align 4, !dbg !5839
  br label %for.cond, !dbg !5840, !llvm.loop !5841

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %drv, align 8, !dbg !5843
  %feature_table_legacy = getelementptr inbounds %struct.virtio_driver, ptr %21, i32 0, i32 4, !dbg !5844
  %22 = load ptr, ptr %feature_table_legacy, align 8, !dbg !5844
  %tobool14 = icmp ne ptr %22, null, !dbg !5843
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !5845

if.then15:                                        ; preds = %for.end
  store i64 0, ptr %driver_features_legacy, align 8, !dbg !5846
  store i32 0, ptr %i, align 4, !dbg !5847
  br label %for.cond16, !dbg !5848

for.cond16:                                       ; preds = %for.inc50, %if.then15
  %23 = load i32, ptr %i, align 4, !dbg !5849
  %24 = load ptr, ptr %drv, align 8, !dbg !5850
  %feature_table_size_legacy = getelementptr inbounds %struct.virtio_driver, ptr %24, i32 0, i32 5, !dbg !5851
  %25 = load i32, ptr %feature_table_size_legacy, align 8, !dbg !5851
  %cmp17 = icmp ult i32 %23, %25, !dbg !5852
  br i1 %cmp17, label %for.body19, label %for.end52, !dbg !5853

for.body19:                                       ; preds = %for.cond16
  call void @llvm.lifetime.start.p0(i64 4, ptr %f20) #13, !dbg !5854
  call void @llvm.dbg.declare(metadata ptr %f20, metadata !5772, metadata !DIExpression()), !dbg !5855
  %26 = load ptr, ptr %drv, align 8, !dbg !5856
  %feature_table_legacy21 = getelementptr inbounds %struct.virtio_driver, ptr %26, i32 0, i32 4, !dbg !5857
  %27 = load ptr, ptr %feature_table_legacy21, align 8, !dbg !5857
  %28 = load i32, ptr %i, align 4, !dbg !5858
  %idxprom22 = sext i32 %28 to i64, !dbg !5856
  %arrayidx23 = getelementptr i32, ptr %27, i64 %idxprom22, !dbg !5856
  %29 = load i32, ptr %arrayidx23, align 4, !dbg !5856
  store i32 %29, ptr %f20, align 4, !dbg !5855
  br label %do.body24, !dbg !5859

do.body24:                                        ; preds = %for.body19
  %30 = load i32, ptr %f20, align 4, !dbg !5860
  %cmp25 = icmp uge i32 %30, 64, !dbg !5860
  %lnot27 = xor i1 %cmp25, true, !dbg !5860
  %lnot29 = xor i1 %lnot27, true, !dbg !5860
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5860
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5860
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5860
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !5860
  br i1 %tobool33, label %if.then34, label %if.end44, !dbg !5863

if.then34:                                        ; preds = %do.body24
  br label %do.body35, !dbg !5860

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !5864

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !5866

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !5866

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !5864

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 265, i32 0, i64 12) #13, !dbg !5868, !srcloc !5870
  br label %do.cond40, !dbg !5868

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !5868

do.end41:                                         ; preds = %do.cond40
  unreachable, !dbg !5864

do.cond42:                                        ; No predecessors!
  br label %do.end43, !dbg !5864

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !5864

if.end44:                                         ; preds = %do.end43, %do.body24
  br label %do.cond45, !dbg !5863

do.cond45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !5863

do.end46:                                         ; preds = %do.cond45
  %31 = load i32, ptr %f20, align 4, !dbg !5871
  %sh_prom47 = zext i32 %31 to i64, !dbg !5872
  %shl48 = shl i64 1, %sh_prom47, !dbg !5872
  %32 = load i64, ptr %driver_features_legacy, align 8, !dbg !5873
  %or49 = or i64 %32, %shl48, !dbg !5873
  store i64 %or49, ptr %driver_features_legacy, align 8, !dbg !5873
  call void @llvm.lifetime.end.p0(i64 4, ptr %f20) #13, !dbg !5874
  br label %for.inc50, !dbg !5875

for.inc50:                                        ; preds = %do.end46
  %33 = load i32, ptr %i, align 4, !dbg !5876
  %inc51 = add i32 %33, 1, !dbg !5876
  store i32 %inc51, ptr %i, align 4, !dbg !5876
  br label %for.cond16, !dbg !5877, !llvm.loop !5878

for.end52:                                        ; preds = %for.cond16
  br label %if.end53, !dbg !5880

if.else:                                          ; preds = %for.end
  %34 = load i64, ptr %driver_features, align 8, !dbg !5881
  store i64 %34, ptr %driver_features_legacy, align 8, !dbg !5883
  br label %if.end53

if.end53:                                         ; preds = %if.else, %for.end52
  %35 = load i64, ptr %device_features, align 8, !dbg !5884
  %and = and i64 %35, 4294967296, !dbg !5886
  %tobool54 = icmp ne i64 %and, 0, !dbg !5886
  br i1 %tobool54, label %if.then55, label %if.else57, !dbg !5887

if.then55:                                        ; preds = %if.end53
  %36 = load i64, ptr %driver_features, align 8, !dbg !5888
  %37 = load i64, ptr %device_features, align 8, !dbg !5889
  %and56 = and i64 %36, %37, !dbg !5890
  %38 = load ptr, ptr %dev, align 8, !dbg !5891
  %features = getelementptr inbounds %struct.virtio_device, ptr %38, i32 0, i32 11, !dbg !5892
  store i64 %and56, ptr %features, align 8, !dbg !5893
  br label %if.end60, !dbg !5891

if.else57:                                        ; preds = %if.end53
  %39 = load i64, ptr %driver_features_legacy, align 8, !dbg !5894
  %40 = load i64, ptr %device_features, align 8, !dbg !5895
  %and58 = and i64 %39, %40, !dbg !5896
  %41 = load ptr, ptr %dev, align 8, !dbg !5897
  %features59 = getelementptr inbounds %struct.virtio_device, ptr %41, i32 0, i32 11, !dbg !5898
  store i64 %and58, ptr %features59, align 8, !dbg !5899
  br label %if.end60

if.end60:                                         ; preds = %if.else57, %if.then55
  store i32 28, ptr %i, align 4, !dbg !5900
  br label %for.cond61, !dbg !5902

for.cond61:                                       ; preds = %for.inc71, %if.end60
  %42 = load i32, ptr %i, align 4, !dbg !5903
  %cmp62 = icmp slt i32 %42, 41, !dbg !5905
  br i1 %cmp62, label %for.body64, label %for.end73, !dbg !5906

for.body64:                                       ; preds = %for.cond61
  %43 = load i64, ptr %device_features, align 8, !dbg !5907
  %44 = load i32, ptr %i, align 4, !dbg !5909
  %sh_prom65 = zext i32 %44 to i64, !dbg !5910
  %shl66 = shl i64 1, %sh_prom65, !dbg !5910
  %and67 = and i64 %43, %shl66, !dbg !5911
  %tobool68 = icmp ne i64 %and67, 0, !dbg !5911
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !5912

if.then69:                                        ; preds = %for.body64
  %45 = load ptr, ptr %dev, align 8, !dbg !5913
  %46 = load i32, ptr %i, align 4, !dbg !5914
  call void @__virtio_set_bit(ptr noundef %45, i32 noundef %46) #14, !dbg !5915
  br label %if.end70, !dbg !5915

if.end70:                                         ; preds = %if.then69, %for.body64
  br label %for.inc71, !dbg !5916

for.inc71:                                        ; preds = %if.end70
  %47 = load i32, ptr %i, align 4, !dbg !5917
  %inc72 = add i32 %47, 1, !dbg !5917
  store i32 %inc72, ptr %i, align 4, !dbg !5917
  br label %for.cond61, !dbg !5918, !llvm.loop !5919

for.end73:                                        ; preds = %for.cond61
  %48 = load ptr, ptr %dev, align 8, !dbg !5921
  %config74 = getelementptr inbounds %struct.virtio_device, ptr %48, i32 0, i32 8, !dbg !5922
  %49 = load ptr, ptr %config74, align 8, !dbg !5922
  %finalize_features = getelementptr inbounds %struct.virtio_config_ops, ptr %49, i32 0, i32 10, !dbg !5923
  %50 = load ptr, ptr %finalize_features, align 8, !dbg !5923
  %51 = load ptr, ptr %dev, align 8, !dbg !5924
  %call75 = call i32 %50(ptr noundef %51) #14, !dbg !5921
  store i32 %call75, ptr %err, align 4, !dbg !5925
  %52 = load i32, ptr %err, align 4, !dbg !5926
  %tobool76 = icmp ne i32 %52, 0, !dbg !5926
  br i1 %tobool76, label %if.then77, label %if.end78, !dbg !5928

if.then77:                                        ; preds = %for.end73
  br label %err119, !dbg !5929

if.end78:                                         ; preds = %for.end73
  %53 = load ptr, ptr %drv, align 8, !dbg !5930
  %validate = getelementptr inbounds %struct.virtio_driver, ptr %53, i32 0, i32 6, !dbg !5931
  %54 = load ptr, ptr %validate, align 8, !dbg !5931
  %tobool79 = icmp ne ptr %54, null, !dbg !5930
  br i1 %tobool79, label %if.then80, label %if.end99, !dbg !5932

if.then80:                                        ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 8, ptr %features81) #13, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %features81, metadata !5778, metadata !DIExpression()), !dbg !5934
  %55 = load ptr, ptr %dev, align 8, !dbg !5935
  %features82 = getelementptr inbounds %struct.virtio_device, ptr %55, i32 0, i32 11, !dbg !5936
  %56 = load i64, ptr %features82, align 8, !dbg !5936
  store i64 %56, ptr %features81, align 8, !dbg !5934
  %57 = load ptr, ptr %drv, align 8, !dbg !5937
  %validate83 = getelementptr inbounds %struct.virtio_driver, ptr %57, i32 0, i32 6, !dbg !5938
  %58 = load ptr, ptr %validate83, align 8, !dbg !5938
  %59 = load ptr, ptr %dev, align 8, !dbg !5939
  %call84 = call i32 %58(ptr noundef %59) #14, !dbg !5937
  store i32 %call84, ptr %err, align 4, !dbg !5940
  %60 = load i32, ptr %err, align 4, !dbg !5941
  %tobool85 = icmp ne i32 %60, 0, !dbg !5941
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !5943

if.then86:                                        ; preds = %if.then80
  store i32 27, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5944

if.end87:                                         ; preds = %if.then80
  %61 = load i64, ptr %features81, align 8, !dbg !5945
  %62 = load ptr, ptr %dev, align 8, !dbg !5947
  %features88 = getelementptr inbounds %struct.virtio_device, ptr %62, i32 0, i32 11, !dbg !5948
  %63 = load i64, ptr %features88, align 8, !dbg !5948
  %cmp89 = icmp ne i64 %61, %63, !dbg !5949
  br i1 %cmp89, label %if.then91, label %if.end98, !dbg !5950

if.then91:                                        ; preds = %if.end87
  %64 = load ptr, ptr %dev, align 8, !dbg !5951
  %config92 = getelementptr inbounds %struct.virtio_device, ptr %64, i32 0, i32 8, !dbg !5953
  %65 = load ptr, ptr %config92, align 8, !dbg !5953
  %finalize_features93 = getelementptr inbounds %struct.virtio_config_ops, ptr %65, i32 0, i32 10, !dbg !5954
  %66 = load ptr, ptr %finalize_features93, align 8, !dbg !5954
  %67 = load ptr, ptr %dev, align 8, !dbg !5955
  %call94 = call i32 %66(ptr noundef %67) #14, !dbg !5951
  store i32 %call94, ptr %err, align 4, !dbg !5956
  %68 = load i32, ptr %err, align 4, !dbg !5957
  %tobool95 = icmp ne i32 %68, 0, !dbg !5957
  br i1 %tobool95, label %if.then96, label %if.end97, !dbg !5959

if.then96:                                        ; preds = %if.then91
  store i32 27, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5960

if.end97:                                         ; preds = %if.then91
  br label %if.end98, !dbg !5961

if.end98:                                         ; preds = %if.end97, %if.end87
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5962
  br label %cleanup, !dbg !5962

cleanup:                                          ; preds = %if.then96, %if.then86, %if.end98
  call void @llvm.lifetime.end.p0(i64 8, ptr %features81) #13, !dbg !5962
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup120 [
    i32 0, label %cleanup.cont
    i32 27, label %err119
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end99, !dbg !5963

if.end99:                                         ; preds = %cleanup.cont, %if.end78
  %69 = load ptr, ptr %dev, align 8, !dbg !5964
  %call100 = call i32 @virtio_features_ok(ptr noundef %69) #14, !dbg !5965
  store i32 %call100, ptr %err, align 4, !dbg !5966
  %70 = load i32, ptr %err, align 4, !dbg !5967
  %tobool101 = icmp ne i32 %70, 0, !dbg !5967
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !5969

if.then102:                                       ; preds = %if.end99
  br label %err119, !dbg !5970

if.end103:                                        ; preds = %if.end99
  %71 = load ptr, ptr %drv, align 8, !dbg !5971
  %probe = getelementptr inbounds %struct.virtio_driver, ptr %71, i32 0, i32 7, !dbg !5972
  %72 = load ptr, ptr %probe, align 8, !dbg !5972
  %73 = load ptr, ptr %dev, align 8, !dbg !5973
  %call104 = call i32 %72(ptr noundef %73) #14, !dbg !5971
  store i32 %call104, ptr %err, align 4, !dbg !5974
  %74 = load i32, ptr %err, align 4, !dbg !5975
  %tobool105 = icmp ne i32 %74, 0, !dbg !5975
  br i1 %tobool105, label %if.then106, label %if.end107, !dbg !5977

if.then106:                                       ; preds = %if.end103
  br label %err119, !dbg !5978

if.end107:                                        ; preds = %if.end103
  %75 = load ptr, ptr %dev, align 8, !dbg !5979
  %config108 = getelementptr inbounds %struct.virtio_device, ptr %75, i32 0, i32 8, !dbg !5981
  %76 = load ptr, ptr %config108, align 8, !dbg !5981
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %76, i32 0, i32 3, !dbg !5982
  %77 = load ptr, ptr %get_status, align 8, !dbg !5982
  %78 = load ptr, ptr %dev, align 8, !dbg !5983
  %call109 = call zeroext i8 %77(ptr noundef %78) #14, !dbg !5979
  %conv110 = zext i8 %call109 to i32, !dbg !5979
  %and111 = and i32 %conv110, 4, !dbg !5984
  %tobool112 = icmp ne i32 %and111, 0, !dbg !5984
  br i1 %tobool112, label %if.end114, label %if.then113, !dbg !5985

if.then113:                                       ; preds = %if.end107
  %79 = load ptr, ptr %dev, align 8, !dbg !5986
  call void @virtio_device_ready(ptr noundef %79) #14, !dbg !5987
  br label %if.end114, !dbg !5987

if.end114:                                        ; preds = %if.then113, %if.end107
  %80 = load ptr, ptr %drv, align 8, !dbg !5988
  %scan = getelementptr inbounds %struct.virtio_driver, ptr %80, i32 0, i32 8, !dbg !5990
  %81 = load ptr, ptr %scan, align 8, !dbg !5990
  %tobool115 = icmp ne ptr %81, null, !dbg !5988
  br i1 %tobool115, label %if.then116, label %if.end118, !dbg !5991

if.then116:                                       ; preds = %if.end114
  %82 = load ptr, ptr %drv, align 8, !dbg !5992
  %scan117 = getelementptr inbounds %struct.virtio_driver, ptr %82, i32 0, i32 8, !dbg !5993
  %83 = load ptr, ptr %scan117, align 8, !dbg !5993
  %84 = load ptr, ptr %dev, align 8, !dbg !5994
  call void %83(ptr noundef %84) #14, !dbg !5992
  br label %if.end118, !dbg !5992

if.end118:                                        ; preds = %if.then116, %if.end114
  %85 = load ptr, ptr %dev, align 8, !dbg !5995
  call void @virtio_config_enable(ptr noundef %85) #14, !dbg !5996
  store i32 0, ptr %retval, align 4, !dbg !5997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !5997

err119:                                           ; preds = %cleanup, %if.then106, %if.then102, %if.then77
  call void @llvm.dbg.label(metadata !5781), !dbg !5998
  %86 = load ptr, ptr %dev, align 8, !dbg !5999
  call void @virtio_add_status(ptr noundef %86, i32 noundef 128) #14, !dbg !6000
  %87 = load i32, ptr %err, align 4, !dbg !6001
  store i32 %87, ptr %retval, align 4, !dbg !6002
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup120, !dbg !6002

cleanup120:                                       ; preds = %err119, %if.end118, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_features_legacy) #13, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %driver_features) #13, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %device_features) #13, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !6003
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !6003
  %88 = load i32, ptr %retval, align 4, !dbg !6003
  ret i32 %88, !dbg !6003
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_dev_remove(ptr noundef %_d) #0 align 16 !dbg !6004 {
entry:
  %_d.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp19 = alloca i64, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !6006, metadata !DIExpression()), !dbg !6016
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6007, metadata !DIExpression()), !dbg !6018
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6019
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6008, metadata !DIExpression()), !dbg !6019
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !6019
  store ptr %0, ptr %__mptr, align 8, !dbg !6019
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6019
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6019
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6019
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6020
  %2 = load ptr, ptr %tmp, align 8, !dbg !6019
  store ptr %2, ptr %dev, align 8, !dbg !6018
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !6021
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !6010, metadata !DIExpression()), !dbg !6022
  %3 = load ptr, ptr %dev, align 8, !dbg !6023
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 6, !dbg !6024
  %driver = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 6, !dbg !6025
  %4 = load ptr, ptr %driver, align 8, !dbg !6025
  %call = call ptr @drv_to_virtio(ptr noundef %4) #14, !dbg !6026
  store ptr %call, ptr %drv, align 8, !dbg !6022
  %5 = load ptr, ptr %dev, align 8, !dbg !6027
  call void @virtio_config_disable(ptr noundef %5) #14, !dbg !6028
  %6 = load ptr, ptr %drv, align 8, !dbg !6029
  %remove = getelementptr inbounds %struct.virtio_driver, ptr %6, i32 0, i32 9, !dbg !6030
  %7 = load ptr, ptr %remove, align 8, !dbg !6030
  %8 = load ptr, ptr %dev, align 8, !dbg !6031
  call void %7(ptr noundef %8) #14, !dbg !6029
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6011, metadata !DIExpression()), !dbg !6032
  %9 = load ptr, ptr %dev, align 8, !dbg !6032
  %config = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 8, !dbg !6032
  %10 = load ptr, ptr %config, align 8, !dbg !6032
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 3, !dbg !6032
  %11 = load ptr, ptr %get_status, align 8, !dbg !6032
  %12 = load ptr, ptr %dev, align 8, !dbg !6032
  %call2 = call zeroext i8 %11(ptr noundef %12) #14, !dbg !6032
  %tobool = icmp ne i8 %call2, 0, !dbg !6032
  %lnot = xor i1 %tobool, true, !dbg !6032
  %lnot3 = xor i1 %lnot, true, !dbg !6032
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6032
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6032
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !6033
  %tobool4 = icmp ne i32 %13, 0, !dbg !6033
  %lnot5 = xor i1 %tobool4, true, !dbg !6033
  %lnot7 = xor i1 %lnot5, true, !dbg !6033
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6033
  %conv = sext i32 %lnot.ext8 to i64, !dbg !6033
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6033
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6033
  br i1 %tobool9, label %if.then, label %if.end, !dbg !6032

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6033

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !6034
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6013, metadata !DIExpression()), !dbg !6034
  store i32 2307, ptr %__flags, align 4, !dbg !6034
  br label %do.body10, !dbg !6034

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !6035

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6035

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6034

do.body11:                                        ; preds = %do.end
  %14 = load i32, ptr %__flags, align 4, !dbg !6037
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 335, i32 %14, i64 12) #13, !dbg !6037, !srcloc !6039
  br label %do.cond12, !dbg !6037

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6037

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6034

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !6040

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6040

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !6033
  br label %do.cond17, !dbg !6034

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6034

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !6034

if.end:                                           ; preds = %do.end18, %entry
  %15 = load i32, ptr %__ret_warn_on, align 4, !dbg !6032
  %tobool20 = icmp ne i32 %15, 0, !dbg !6032
  %lnot21 = xor i1 %tobool20, true, !dbg !6032
  %lnot23 = xor i1 %lnot21, true, !dbg !6032
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6032
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6032
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6032
  store i64 %expval26, ptr %tmp19, align 8, !dbg !6033
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !6042
  %16 = load i64, ptr %tmp19, align 8, !dbg !6032
  %17 = load ptr, ptr %dev, align 8, !dbg !6043
  call void @virtio_add_status(ptr noundef %17, i32 noundef 1) #14, !dbg !6044
  %18 = load ptr, ptr %dev, align 8, !dbg !6045
  %dev27 = getelementptr inbounds %struct.virtio_device, ptr %18, i32 0, i32 6, !dbg !6046
  %of_node = getelementptr inbounds %struct.device, ptr %dev27, i32 0, i32 23, !dbg !6047
  %19 = load ptr, ptr %of_node, align 8, !dbg !6047
  call void @of_node_put(ptr noundef %19) #14, !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !6049
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6049
  ret void, !dbg !6049
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @device_show(ptr noundef %_d, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6050 {
entry:
  %_d.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !6052, metadata !DIExpression()), !dbg !6058
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6053, metadata !DIExpression()), !dbg !6059
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6054, metadata !DIExpression()), !dbg !6060
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6055, metadata !DIExpression()), !dbg !6062
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6063
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6056, metadata !DIExpression()), !dbg !6063
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !6063
  store ptr %0, ptr %__mptr, align 8, !dbg !6063
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6063
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6063
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6064
  %2 = load ptr, ptr %tmp, align 8, !dbg !6063
  store ptr %2, ptr %dev, align 8, !dbg !6062
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6065
  %4 = load ptr, ptr %dev, align 8, !dbg !6066
  %id = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 7, !dbg !6067
  %device = getelementptr inbounds %struct.virtio_device_id, ptr %id, i32 0, i32 0, !dbg !6068
  %5 = load i32, ptr %device, align 8, !dbg !6068
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.4, i32 noundef %5) #14, !dbg !6069
  %conv = sext i32 %call to i64, !dbg !6069
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6070
  ret i64 %conv, !dbg !6071
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vendor_show(ptr noundef %_d, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6075 {
entry:
  %_d.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !6077, metadata !DIExpression()), !dbg !6083
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6078, metadata !DIExpression()), !dbg !6084
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6079, metadata !DIExpression()), !dbg !6085
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !6086
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6080, metadata !DIExpression()), !dbg !6087
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6088
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6081, metadata !DIExpression()), !dbg !6088
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !6088
  store ptr %0, ptr %__mptr, align 8, !dbg !6088
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6088
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6088
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6088
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6089
  %2 = load ptr, ptr %tmp, align 8, !dbg !6088
  store ptr %2, ptr %dev, align 8, !dbg !6087
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6090
  %4 = load ptr, ptr %dev, align 8, !dbg !6091
  %id = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 7, !dbg !6092
  %vendor = getelementptr inbounds %struct.virtio_device_id, ptr %id, i32 0, i32 1, !dbg !6093
  %5 = load i32, ptr %vendor, align 4, !dbg !6093
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.4, i32 noundef %5) #14, !dbg !6094
  %conv = sext i32 %call to i64, !dbg !6094
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6095
  ret i64 %conv, !dbg !6096
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @status_show(ptr noundef %_d, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6097 {
entry:
  %_d.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !6099, metadata !DIExpression()), !dbg !6105
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6100, metadata !DIExpression()), !dbg !6106
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6101, metadata !DIExpression()), !dbg !6107
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !6108
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6102, metadata !DIExpression()), !dbg !6109
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6110
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6103, metadata !DIExpression()), !dbg !6110
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !6110
  store ptr %0, ptr %__mptr, align 8, !dbg !6110
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6110
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6110
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6111
  %2 = load ptr, ptr %tmp, align 8, !dbg !6110
  store ptr %2, ptr %dev, align 8, !dbg !6109
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6112
  %4 = load ptr, ptr %dev, align 8, !dbg !6113
  %config = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 8, !dbg !6114
  %5 = load ptr, ptr %config, align 8, !dbg !6114
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %5, i32 0, i32 3, !dbg !6115
  %6 = load ptr, ptr %get_status, align 8, !dbg !6115
  %7 = load ptr, ptr %dev, align 8, !dbg !6116
  %call = call zeroext i8 %6(ptr noundef %7) #14, !dbg !6113
  %conv = zext i8 %call to i32, !dbg !6113
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.7, i32 noundef %conv) #14, !dbg !6117
  %conv2 = sext i32 %call1 to i64, !dbg !6117
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6118
  ret i64 %conv2, !dbg !6119
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @modalias_show(ptr noundef %_d, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6120 {
entry:
  %_d.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !6122, metadata !DIExpression()), !dbg !6128
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6123, metadata !DIExpression()), !dbg !6129
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6124, metadata !DIExpression()), !dbg !6130
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !6131
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6125, metadata !DIExpression()), !dbg !6132
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6126, metadata !DIExpression()), !dbg !6133
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !6133
  store ptr %0, ptr %__mptr, align 8, !dbg !6133
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6133
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6133
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6134
  %2 = load ptr, ptr %tmp, align 8, !dbg !6133
  store ptr %2, ptr %dev, align 8, !dbg !6132
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6135
  %4 = load ptr, ptr %dev, align 8, !dbg !6136
  %id = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 7, !dbg !6137
  %device = getelementptr inbounds %struct.virtio_device_id, ptr %id, i32 0, i32 0, !dbg !6138
  %5 = load i32, ptr %device, align 8, !dbg !6138
  %6 = load ptr, ptr %dev, align 8, !dbg !6139
  %id1 = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 7, !dbg !6140
  %vendor = getelementptr inbounds %struct.virtio_device_id, ptr %id1, i32 0, i32 1, !dbg !6141
  %7 = load i32, ptr %vendor, align 4, !dbg !6141
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.9, i32 noundef %5, i32 noundef %7) #14, !dbg !6142
  %conv = sext i32 %call to i64, !dbg !6142
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6143
  ret i64 %conv, !dbg !6144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @features_show(ptr noundef %_d, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6145 {
entry:
  %_d.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %i = alloca i32, align 4
  %len = alloca i64, align 8
  store ptr %_d, ptr %_d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_d.addr, metadata !6147, metadata !DIExpression()), !dbg !6155
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6148, metadata !DIExpression()), !dbg !6156
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6149, metadata !DIExpression()), !dbg !6157
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !6158
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6150, metadata !DIExpression()), !dbg !6159
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !6160
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6151, metadata !DIExpression()), !dbg !6160
  %0 = load ptr, ptr %_d.addr, align 8, !dbg !6160
  store ptr %0, ptr %__mptr, align 8, !dbg !6160
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6160
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !6160
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6160
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !6161
  %2 = load ptr, ptr %tmp, align 8, !dbg !6160
  store ptr %2, ptr %dev, align 8, !dbg !6159
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !6162
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6153, metadata !DIExpression()), !dbg !6163
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #13, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6154, metadata !DIExpression()), !dbg !6165
  store i64 0, ptr %len, align 8, !dbg !6165
  store i32 0, ptr %i, align 4, !dbg !6166
  br label %for.cond, !dbg !6168

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !6169
  %conv = zext i32 %3 to i64, !dbg !6169
  %cmp = icmp ult i64 %conv, 64, !dbg !6171
  br i1 %cmp, label %for.body, label %for.end, !dbg !6172

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6173
  %5 = load i64, ptr %len, align 8, !dbg !6174
  %conv2 = trunc i64 %5 to i32, !dbg !6174
  %6 = load ptr, ptr %dev, align 8, !dbg !6175
  %7 = load i32, ptr %i, align 4, !dbg !6176
  %call = call zeroext i1 @__virtio_test_bit(ptr noundef %6, i32 noundef %7) #14, !dbg !6177
  %8 = zext i1 %call to i64, !dbg !6177
  %cond = select i1 %call, i32 49, i32 48, !dbg !6177
  %call4 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %4, i32 noundef %conv2, ptr noundef @.str.11, i32 noundef %cond) #14, !dbg !6178
  %conv5 = sext i32 %call4 to i64, !dbg !6178
  %9 = load i64, ptr %len, align 8, !dbg !6179
  %add = add i64 %9, %conv5, !dbg !6179
  store i64 %add, ptr %len, align 8, !dbg !6179
  br label %for.inc, !dbg !6180

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4, !dbg !6181
  %inc = add i32 %10, 1, !dbg !6181
  store i32 %inc, ptr %i, align 4, !dbg !6181
  br label %for.cond, !dbg !6182, !llvm.loop !6183

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !6185
  %12 = load i64, ptr %len, align 8, !dbg !6186
  %conv6 = trunc i64 %12 to i32, !dbg !6186
  %call7 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %11, i32 noundef %conv6, ptr noundef @.str.12) #14, !dbg !6187
  %conv8 = sext i32 %call7 to i64, !dbg !6187
  %13 = load i64, ptr %len, align 8, !dbg !6188
  %add9 = add i64 %13, %conv8, !dbg !6188
  store i64 %add9, ptr %len, align 8, !dbg !6188
  %14 = load i64, ptr %len, align 8, !dbg !6189
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #13, !dbg !6190
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !6190
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !6190
  ret i64 %14, !dbg !6191
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6192 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__virtio_test_bit(ptr noundef %vdev, i32 noundef %fbit) #3 align 16 !dbg !6195 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6199, metadata !DIExpression()), !dbg !6201
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6200, metadata !DIExpression()), !dbg !6202
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6203
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6205
  br i1 %1, label %if.then, label %if.else, !dbg !6206

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6207

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6208
  %cmp = icmp uge i32 %2, 64, !dbg !6208
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6211

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_289() #17, !dbg !6208, !srcloc !6212
  unreachable, !dbg !6208

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6211

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !6211

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !6213

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !6214
  %cmp3 = icmp uge i32 %3, 64, !dbg !6214
  %lnot = xor i1 %cmp3, true, !dbg !6214
  %lnot4 = xor i1 %lnot, true, !dbg !6214
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6214
  %conv = sext i32 %lnot.ext to i64, !dbg !6214
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6214
  %tobool = icmp ne i64 %expval, 0, !dbg !6214
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !6217

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !6214

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !6218

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6220

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6218

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 143, i32 0, i64 12) #13, !dbg !6222, !srcloc !6224
  br label %do.end10, !dbg !6222

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !6218

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !6218

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !6217

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load ptr, ptr %vdev.addr, align 8, !dbg !6225
  %features = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11, !dbg !6226
  %5 = load i64, ptr %features, align 8, !dbg !6226
  %6 = load i32, ptr %fbit.addr, align 4, !dbg !6227
  %sh_prom = zext i32 %6 to i64, !dbg !6227
  %shl = shl i64 1, %sh_prom, !dbg !6227
  %and = and i64 %5, %shl, !dbg !6228
  %tobool15 = icmp ne i64 %and, 0, !dbg !6225
  ret i1 %tobool15, !dbg !6229
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6230 dso_local void @__compiletime_assert_289() #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @virtio_id_match(ptr noundef %dev, ptr noundef %id) #3 align 16 !dbg !6231 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6235, metadata !DIExpression()), !dbg !6237
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6236, metadata !DIExpression()), !dbg !6238
  %0 = load ptr, ptr %id.addr, align 8, !dbg !6239
  %device = getelementptr inbounds %struct.virtio_device_id, ptr %0, i32 0, i32 0, !dbg !6241
  %1 = load i32, ptr %device, align 4, !dbg !6241
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6242
  %id1 = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 7, !dbg !6243
  %device2 = getelementptr inbounds %struct.virtio_device_id, ptr %id1, i32 0, i32 0, !dbg !6244
  %3 = load i32, ptr %device2, align 8, !dbg !6244
  %cmp = icmp ne i32 %1, %3, !dbg !6245
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6246

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %id.addr, align 8, !dbg !6247
  %device3 = getelementptr inbounds %struct.virtio_device_id, ptr %4, i32 0, i32 0, !dbg !6248
  %5 = load i32, ptr %device3, align 4, !dbg !6248
  %cmp4 = icmp ne i32 %5, -1, !dbg !6249
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6250

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !6251
  br label %return, !dbg !6251

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %id.addr, align 8, !dbg !6252
  %vendor = getelementptr inbounds %struct.virtio_device_id, ptr %6, i32 0, i32 1, !dbg !6253
  %7 = load i32, ptr %vendor, align 4, !dbg !6253
  %cmp5 = icmp eq i32 %7, -1, !dbg !6254
  br i1 %cmp5, label %lor.end, label %lor.rhs, !dbg !6255

lor.rhs:                                          ; preds = %if.end
  %8 = load ptr, ptr %id.addr, align 8, !dbg !6256
  %vendor6 = getelementptr inbounds %struct.virtio_device_id, ptr %8, i32 0, i32 1, !dbg !6257
  %9 = load i32, ptr %vendor6, align 4, !dbg !6257
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6258
  %id7 = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 7, !dbg !6259
  %vendor8 = getelementptr inbounds %struct.virtio_device_id, ptr %id7, i32 0, i32 1, !dbg !6260
  %11 = load i32, ptr %vendor8, align 4, !dbg !6260
  %cmp9 = icmp eq i32 %9, %11, !dbg !6261
  br label %lor.end, !dbg !6255

lor.end:                                          ; preds = %lor.rhs, %if.end
  %12 = phi i1 [ true, %if.end ], [ %cmp9, %lor.rhs ]
  %lor.ext = zext i1 %12 to i32, !dbg !6255
  store i32 %lor.ext, ptr %retval, align 4, !dbg !6262
  br label %return, !dbg !6262

return:                                           ; preds = %lor.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !6263
  ret i32 %13, !dbg !6263
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6264 dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__virtio_set_bit(ptr noundef %vdev, i32 noundef %fbit) #3 align 16 !dbg !6267 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6269, metadata !DIExpression()), !dbg !6271
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6270, metadata !DIExpression()), !dbg !6272
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6273
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6275
  br i1 %1, label %if.then, label %if.else, !dbg !6276

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6277

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6278
  %cmp = icmp uge i32 %2, 64, !dbg !6278
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6281

if.then1:                                         ; preds = %do.body
  call void @__compiletime_assert_290() #17, !dbg !6278, !srcloc !6282
  unreachable, !dbg !6278

if.end:                                           ; preds = %do.body
  br label %do.end, !dbg !6281

do.end:                                           ; preds = %if.end
  br label %if.end14, !dbg !6281

if.else:                                          ; preds = %entry
  br label %do.body2, !dbg !6283

do.body2:                                         ; preds = %if.else
  %3 = load i32, ptr %fbit.addr, align 4, !dbg !6284
  %cmp3 = icmp uge i32 %3, 64, !dbg !6284
  %lnot = xor i1 %cmp3, true, !dbg !6284
  %lnot4 = xor i1 %lnot, true, !dbg !6284
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6284
  %conv = sext i32 %lnot.ext to i64, !dbg !6284
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6284
  %tobool = icmp ne i64 %expval, 0, !dbg !6284
  br i1 %tobool, label %if.then5, label %if.end12, !dbg !6287

if.then5:                                         ; preds = %do.body2
  br label %do.body6, !dbg !6284

do.body6:                                         ; preds = %if.then5
  br label %do.body7, !dbg !6288

do.body7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !6290

do.end8:                                          ; preds = %do.body7
  br label %do.body9, !dbg !6288

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 160, i32 0, i64 12) #13, !dbg !6292, !srcloc !6294
  br label %do.end10, !dbg !6292

do.end10:                                         ; preds = %do.body9
  unreachable, !dbg !6288

do.end11:                                         ; No predecessors!
  br label %if.end12, !dbg !6288

if.end12:                                         ; preds = %do.end11, %do.body2
  br label %do.end13, !dbg !6287

do.end13:                                         ; preds = %if.end12
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %do.end
  %4 = load i32, ptr %fbit.addr, align 4, !dbg !6295
  %sh_prom = zext i32 %4 to i64, !dbg !6295
  %shl = shl i64 1, %sh_prom, !dbg !6295
  %5 = load ptr, ptr %vdev.addr, align 8, !dbg !6296
  %features = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 11, !dbg !6297
  %6 = load i64, ptr %features, align 8, !dbg !6298
  %or = or i64 %6, %shl, !dbg !6298
  store i64 %or, ptr %features, align 8, !dbg !6298
  ret void, !dbg !6299
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6300 dso_local void @__compiletime_assert_290() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6301 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_of_node(ptr noundef %dev) #3 align 16 !dbg !6304 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6308, metadata !DIExpression()), !dbg !6309
  ret ptr null, !dbg !6310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_get_available_child_count(ptr noundef %np) #3 align 16 !dbg !6312 {
entry:
  %np.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %num = alloca i32, align 4
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !6318, metadata !DIExpression()), !dbg !6321
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #13, !dbg !6322
  call void @llvm.dbg.declare(metadata ptr %child, metadata !6319, metadata !DIExpression()), !dbg !6323
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #13, !dbg !6324
  call void @llvm.dbg.declare(metadata ptr %num, metadata !6320, metadata !DIExpression()), !dbg !6325
  store i32 0, ptr %num, align 4, !dbg !6325
  %0 = load ptr, ptr %np.addr, align 8, !dbg !6326
  %call = call ptr @of_get_next_available_child(ptr noundef %0, ptr noundef null) #14, !dbg !6326
  store ptr %call, ptr %child, align 8, !dbg !6326
  br label %for.cond, !dbg !6326

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %child, align 8, !dbg !6328
  %cmp = icmp ne ptr %1, null, !dbg !6328
  br i1 %cmp, label %for.body, label %for.end, !dbg !6326

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %num, align 4, !dbg !6330
  %inc = add i32 %2, 1, !dbg !6330
  store i32 %inc, ptr %num, align 4, !dbg !6330
  br label %for.inc, !dbg !6331

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %np.addr, align 8, !dbg !6328
  %4 = load ptr, ptr %child, align 8, !dbg !6328
  %call1 = call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef %4) #14, !dbg !6328
  store ptr %call1, ptr %child, align 8, !dbg !6328
  br label %for.cond, !dbg !6328, !llvm.loop !6332

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %num, align 4, !dbg !6334
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #13, !dbg !6335
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #13, !dbg !6335
  ret i32 %5, !dbg !6336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_get_next_available_child(ptr noundef %node, ptr noundef %prev) #3 align 16 !dbg !6337 {
entry:
  %node.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !6341, metadata !DIExpression()), !dbg !6343
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6342, metadata !DIExpression()), !dbg !6344
  ret ptr null, !dbg !6345
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6346 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_device_is_compatible(ptr noundef %device, ptr noundef %name) #3 align 16 !dbg !6350 {
entry:
  %device.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !6354, metadata !DIExpression()), !dbg !6356
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6355, metadata !DIExpression()), !dbg !6357
  ret i32 0, !dbg !6358
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !6359 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6363, metadata !DIExpression()), !dbg !6364
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6365
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6365
  call void @_raw_spin_lock_irq(ptr noundef %1) #14, !dbg !6365
  ret void, !dbg !6366
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !6367 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6369, metadata !DIExpression()), !dbg !6370
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6371
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6371
  call void @_raw_spin_unlock_irq(ptr noundef %1) #14, !dbg !6371
  ret void, !dbg !6372
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6373 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6376 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @virtio_has_feature(ptr noundef %vdev, i32 noundef %fbit) #3 align 16 !dbg !6377 {
entry:
  %vdev.addr = alloca ptr, align 8
  %fbit.addr = alloca i32, align 4
  store ptr %vdev, ptr %vdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdev.addr, metadata !6379, metadata !DIExpression()), !dbg !6381
  store i32 %fbit, ptr %fbit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fbit.addr, metadata !6380, metadata !DIExpression()), !dbg !6382
  %0 = load i32, ptr %fbit.addr, align 4, !dbg !6383
  %cmp = icmp ult i32 %0, 28, !dbg !6385
  br i1 %cmp, label %if.then, label %if.end, !dbg !6386

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %vdev.addr, align 8, !dbg !6387
  %2 = load i32, ptr %fbit.addr, align 4, !dbg !6388
  call void @virtio_check_driver_offered_feature(ptr noundef %1, i32 noundef %2) #14, !dbg !6389
  br label %if.end, !dbg !6389

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %vdev.addr, align 8, !dbg !6390
  %4 = load i32, ptr %fbit.addr, align 4, !dbg !6391
  %call = call zeroext i1 @__virtio_test_bit(ptr noundef %3, i32 noundef %4) #14, !dbg !6392
  ret i1 %call, !dbg !6393
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6394 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #11

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6398 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6399 dso_local i32 @bus_register(ptr noundef) #4

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !6402 dso_local void @panic(ptr noundef, ...) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: fbit >= 64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }
attributes #16 = { cold noredzone noreturn }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880}
!llvm.ident = !{!4881}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 122, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/virtio/virtio.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2f7943e4803df05016bb154fe3d2e4c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 24)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_virtio_check_driver_offered_feature292", scope: !9, file: !2, line: 124, type: !159, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/virtio/.virtio.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/virtio/virtio\22 -D KBUILD_BASENAME=\22virtio\22 -D KBUILD_MODNAME=\22virtio\22 -D __KBUILD_MODNAME=kmod_virtio -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/virtio/virtio.ll drivers/virtio/virtio.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !158, globals: !4731, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93, !99, !106, !114, !122, !128, !137, !142, !147, !153}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !60, line: 68, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
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
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !123, line: 30, baseType: !13, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!126 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!127 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136}
!130 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!131 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!132 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!133 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!134 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!135 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!136 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !138)
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!140 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!141 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!145 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!150 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!151 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!152 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !154, line: 10, baseType: !13, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "false", value: 0)
!157 = !DIEnumerator(name: "true", value: 1)
!158 = !{!159, !160, !162, !4609, !4727, !4729}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !161, line: 154, baseType: !13)
!161 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_driver", file: !164, line: 182, size: 1920, elements: !165)
!164 = !DIFile(filename: "./include/linux/virtio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e5ffaaf59c73222e5165cb3fb97a1c")
!165 = !{!166, !4593, !4600, !4602, !4603, !4604, !4605, !4721, !4722, !4723, !4724, !4725, !4726}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !163, file: !164, line: 183, baseType: !167, size: 1152)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !168)
!168 = !{!169, !172, !4553, !4554, !4555, !4556, !4557, !4570, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !94, line: 97, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !167, file: !94, line: 98, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !176, line: 80, size: 1344, elements: !177)
!176 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!177 = !{!178, !179, !180, !4121, !4122, !4123, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4543, !4544, !4545, !4546, !4547, !4548, !4552}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !175, file: !176, line: 81, baseType: !170, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !175, file: !176, line: 82, baseType: !170, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !175, file: !176, line: 83, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !185, line: 84, size: 320, elements: !186)
!185 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!186 = !{!187, !188, !4094, !4117, !4119}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !185, line: 85, baseType: !170, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !184, file: !185, line: 86, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!192, !194, !317, !115}
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !161, line: 24, baseType: !193)
!193 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !196, line: 64, size: 512, elements: !197)
!196 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!197 = !{!198, !199, !205, !206, !294, !389, !4084, !4089, !4090, !4091, !4092, !4093}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !196, line: 65, baseType: !170, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !195, file: !196, line: 66, baseType: !200, size: 128, offset: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !161, line: 190, size: 128, elements: !201)
!201 = !{!202, !204}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !200, file: !161, line: 191, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !200, file: !161, line: 191, baseType: !203, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !195, file: !196, line: 67, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !195, file: !196, line: 68, baseType: !207, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !196, line: 168, size: 768, elements: !209)
!209 = !{!210, !211, !253, !254}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !208, file: !196, line: 169, baseType: !200, size: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !208, file: !196, line: 170, baseType: !212, size: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !213, line: 29, baseType: !214)
!213 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !213, line: 17, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !213, line: 18, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 18, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !217, file: !213, line: 19, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !221, line: 14, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !220, file: !221, line: 15, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !225, line: 44, baseType: !226)
!225 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !225, line: 14, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !225, line: 15, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 15, size: 32, elements: !230)
!230 = !{!231, !236, !246}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !229, file: !225, line: 16, baseType: !232, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !161, line: 174, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 172, size: 32, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !233, file: !161, line: 173, baseType: !115, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !225, line: 24, baseType: !237, size: 16)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !225, line: 24, size: 16, elements: !238)
!238 = !{!239, !245}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !237, file: !225, line: 25, baseType: !240, size: 8)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !241, line: 17, baseType: !242)
!241 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !243, line: 21, baseType: !244)
!243 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!244 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !237, file: !225, line: 26, baseType: !240, size: 8, offset: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !225, line: 28, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !229, file: !225, line: 28, size: 32, elements: !248)
!248 = !{!249, !252}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !247, file: !225, line: 29, baseType: !250, size: 16)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !241, line: 19, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !243, line: 24, baseType: !193)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !247, file: !225, line: 30, baseType: !250, size: 16, offset: 16)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !208, file: !196, line: 171, baseType: !195, size: 512, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !208, file: !196, line: 172, baseType: !255, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !196, line: 133, size: 192, elements: !258)
!258 = !{!259, !266, !271}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !257, file: !196, line: 134, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!115, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !196, line: 135, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!170, !264}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !257, file: !196, line: 136, baseType: !272, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!115, !264, !276}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !196, line: 125, size: 20736, elements: !278)
!278 = !{!279, !284, !288, !289, !293}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !277, file: !196, line: 126, baseType: !280, size: 192)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 192, elements: !282)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!282 = !{!283}
!283 = !DISubrange(count: 3)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !277, file: !196, line: 127, baseType: !285, size: 4096, offset: 192)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 4096, elements: !286)
!286 = !{!287}
!287 = !DISubrange(count: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !277, file: !196, line: 128, baseType: !115, size: 32, offset: 4288)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !277, file: !196, line: 129, baseType: !290, size: 16384, offset: 4320)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 2048)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !277, file: !196, line: 130, baseType: !115, size: 32, offset: 20704)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !195, file: !196, line: 69, baseType: !295, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !196, line: 116, size: 384, elements: !298)
!298 = !{!299, !303, !330, !331, !366, !370}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !297, file: !196, line: 117, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !194}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !297, file: !196, line: 118, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !185, line: 254, size: 128, elements: !307)
!307 = !{!308, !322}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !306, file: !185, line: 255, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !194, !317, !281}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !161, line: 66, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !314, line: 73, baseType: !315)
!314 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !314, line: 15, baseType: !316)
!316 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !185, line: 30, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !185, line: 31, baseType: !170, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !318, file: !185, line: 32, baseType: !192, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !306, file: !185, line: 256, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!312, !194, !317, !170, !326}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !161, line: 61, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !314, line: 72, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !314, line: 16, baseType: !329)
!329 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !297, file: !196, line: 119, baseType: !181, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !297, file: !196, line: 120, baseType: !332, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !264}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !338)
!338 = !{!339, !340, !346, !350, !358, !362}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !337, file: !88, line: 40, baseType: !87, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !337, file: !88, line: 41, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!344}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !161, line: 35, baseType: !345)
!345 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !337, file: !88, line: 42, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!159}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !337, file: !88, line: 43, baseType: !351, size: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !337, file: !88, line: 44, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!354}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !337, file: !88, line: 45, baseType: !363, size: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !159}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !297, file: !196, line: 121, baseType: !367, size: 64, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!354, !264}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !297, file: !196, line: 122, baseType: !371, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !264, !374, !382}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !376, line: 23, baseType: !377)
!376 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 21, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !377, file: !376, line: 22, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !161, line: 37, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !314, line: 49, baseType: !13)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !376, line: 28, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 26, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !384, file: !376, line: 27, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !161, line: 38, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !314, line: 50, baseType: !13)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !195, file: !196, line: 70, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !392, line: 190, size: 1152, elements: !393)
!392 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!393 = !{!394, !395, !396, !397, !398, !406, !407, !408, !4076, !4077, !4078, !4079, !4080, !4083}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !391, file: !392, line: 191, baseType: !232, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !391, file: !392, line: 192, baseType: !232, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !391, file: !392, line: 202, baseType: !390, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !392, line: 203, baseType: !170, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !391, file: !392, line: 205, baseType: !399, size: 192, align: 64, offset: 192)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !400, line: 5, size: 192, align: 64, elements: !401)
!400 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!401 = !{!402, !403, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !399, file: !400, line: 6, baseType: !329, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !399, file: !400, line: 7, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !399, file: !400, line: 8, baseType: !404, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !391, file: !392, line: 207, baseType: !354, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !391, file: !392, line: 208, baseType: !13, size: 32, offset: 448)
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !392, line: 209, baseType: !409, size: 256, offset: 512)
!409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 209, size: 256, elements: !410)
!410 = !{!411, !423, !427}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !409, file: !392, line: 210, baseType: !412, size: 256)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !392, line: 153, size: 256, elements: !413)
!413 = !{!414, !415, !419, !422}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !412, file: !392, line: 154, baseType: !329, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !412, file: !392, line: 156, baseType: !416, size: 64, offset: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !400, line: 12, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !416, file: !400, line: 13, baseType: !404, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !412, file: !392, line: 162, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !392, line: 162, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !412, file: !392, line: 167, baseType: !329, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !409, file: !392, line: 211, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !392, line: 170, size: 64, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !424, file: !392, line: 171, baseType: !390, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !409, file: !392, line: 212, baseType: !428, size: 256)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !392, line: 174, size: 256, elements: !429)
!429 = !{!430, !4071, !4074, !4075}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !428, file: !392, line: 175, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !392, line: 271, size: 768, elements: !434)
!434 = !{!435, !4036, !4040, !4044, !4048, !4052, !4056, !4060, !4061, !4062, !4063, !4067}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !433, file: !392, line: 276, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!115, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !392, line: 251, size: 1216, elements: !441)
!441 = !{!442, !443, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !440, file: !392, line: 253, baseType: !390, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !440, file: !392, line: 254, baseType: !444, size: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !446)
!446 = !{!447, !466, !467, !469, !479, !492, !495, !496, !568, !776, !785, !4015, !4016, !4017, !4018, !4019, !4020, !4022, !4023, !4024}
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !20, line: 995, baseType: !448, size: 128)
!448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !20, line: 995, size: 128, elements: !449)
!449 = !{!450, !456, !465}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !448, file: !20, line: 996, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !452, line: 60, size: 64, elements: !453)
!452 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !452, line: 61, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !448, file: !20, line: 997, baseType: !457, size: 128, align: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !161, line: 232, size: 128, align: 64, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !161, line: 233, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !457, file: !161, line: 234, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !460}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !448, file: !20, line: 998, baseType: !13, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !445, file: !20, line: 1005, baseType: !212, size: 32, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !445, file: !20, line: 1006, baseType: !468, size: 32, offset: 160)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !161, line: 156, baseType: !13)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !445, file: !20, line: 1007, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !471, line: 13, baseType: !472)
!471 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !161, line: 181, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 179, size: 64, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !473, file: !161, line: 180, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !241, line: 22, baseType: !477)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !243, line: 30, baseType: !478)
!478 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !445, file: !20, line: 1008, baseType: !480, size: 256, offset: 256)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !481, line: 66, size: 256, elements: !482)
!481 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!482 = !{!483, !484, !486, !491}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !480, file: !481, line: 67, baseType: !470, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !480, file: !481, line: 68, baseType: !485, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !221, line: 23, baseType: !220)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !480, file: !481, line: 70, baseType: !487, size: 32, offset: 96)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !488, line: 15, size: 32, elements: !489)
!488 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !487, file: !488, line: 20, baseType: !232, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !480, file: !481, line: 72, baseType: !200, size: 128, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !445, file: !20, line: 1009, baseType: !493, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !161, line: 52, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !314, line: 88, baseType: !478)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !445, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !445, file: !20, line: 1011, baseType: !497, size: 256, offset: 640)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !498)
!498 = !{!499, !520, !564, !565, !566, !567}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !497, file: !20, line: 949, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !501, line: 34, baseType: !502)
!501 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !501, line: 25, size: 64, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !502, file: !501, line: 26, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !506, line: 27, baseType: !507)
!506 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !506, line: 13, size: 64, elements: !508)
!508 = !{!509, !519}
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !506, line: 14, baseType: !510, size: 32)
!510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !506, line: 14, size: 32, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !510, file: !506, line: 15, baseType: !232, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !506, line: 16, baseType: !514, size: 32)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !510, file: !506, line: 16, size: 32, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !514, file: !506, line: 18, baseType: !240, size: 8)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !514, file: !506, line: 19, baseType: !518, size: 24, offset: 8)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 24, elements: !282)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !507, file: !506, line: 26, baseType: !224, size: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !497, file: !20, line: 950, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !523)
!523 = !{!524, !530, !531, !532, !545, !546, !553, !554}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !522, file: !36, line: 61, baseType: !525, size: 32)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !526, line: 113, baseType: !527)
!526 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !526, line: 111, size: 32, elements: !528)
!528 = !{!529}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !527, file: !526, line: 112, baseType: !232, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !522, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !522, file: !36, line: 63, baseType: !212, size: 32, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !522, file: !36, line: 65, baseType: !533, size: 256, offset: 128)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 256, elements: !543)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !161, line: 194, size: 64, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !534, file: !161, line: 195, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !161, line: 198, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !161, line: 199, baseType: !537, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !538, file: !161, line: 199, baseType: !542, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!543 = !{!544}
!544 = !DISubrange(count: 4)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !522, file: !36, line: 66, baseType: !534, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !522, file: !36, line: 68, baseType: !547, size: 192, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !548, line: 41, baseType: !549)
!548 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !548, line: 37, size: 192, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !549, file: !548, line: 38, baseType: !212, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !549, file: !548, line: 39, baseType: !200, size: 128, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !522, file: !36, line: 69, baseType: !457, size: 128, align: 64, offset: 640)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !522, file: !36, line: 70, baseType: !555, offset: 768)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, elements: !562)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !557)
!557 = !{!558, !559}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !556, file: !36, line: 55, baseType: !115, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !556, file: !36, line: 56, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !36, line: 56, flags: DIFlagFwdDecl)
!562 = !{!563}
!563 = !DISubrange(count: -1)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !497, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !497, file: !20, line: 952, baseType: !375, size: 32, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !497, file: !20, line: 952, baseType: !375, size: 32, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !497, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !445, file: !20, line: 1012, baseType: !569, size: 64, offset: 896)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !572, line: 110, size: 1472, elements: !573)
!572 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !593, !594, !595, !596, !597, !598, !721, !722, !723, !724, !725, !756, !759, !763, !771}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !571, file: !572, line: 111, baseType: !470, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !571, file: !572, line: 112, baseType: !375, size: 32, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !571, file: !572, line: 113, baseType: !383, size: 32, offset: 96)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !571, file: !572, line: 114, baseType: !375, size: 32, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !571, file: !572, line: 115, baseType: !383, size: 32, offset: 160)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !571, file: !572, line: 116, baseType: !375, size: 32, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !571, file: !572, line: 117, baseType: !383, size: 32, offset: 224)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !571, file: !572, line: 118, baseType: !375, size: 32, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !571, file: !572, line: 119, baseType: !383, size: 32, offset: 288)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !571, file: !572, line: 120, baseType: !13, size: 32, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !571, file: !572, line: 121, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !586, line: 24, baseType: !587)
!586 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !586, line: 24, size: 64, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !587, file: !586, line: 24, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !241, line: 23, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !243, line: 31, baseType: !592)
!592 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !571, file: !572, line: 122, baseType: !585, size: 64, offset: 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !571, file: !572, line: 123, baseType: !585, size: 64, offset: 512)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !571, file: !572, line: 124, baseType: !585, size: 64, offset: 576)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !571, file: !572, line: 125, baseType: !585, size: 64, offset: 640)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !571, file: !572, line: 127, baseType: !244, size: 8, offset: 704)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !571, file: !572, line: 129, baseType: !599, size: 64, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !601, line: 195, size: 1728, elements: !602)
!601 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!602 = !{!603, !604, !609, !614, !623, !626, !627, !634, !635, !636, !637, !642, !643, !644, !646, !647, !685, !706}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !600, file: !601, line: 196, baseType: !525, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !600, file: !601, line: 197, baseType: !605, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !601, line: 28, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !161, line: 104, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !241, line: 20, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !243, line: 26, baseType: !115)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 198, baseType: !610, size: 192, offset: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 198, size: 192, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !610, file: !601, line: 199, baseType: !200, size: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !610, file: !601, line: 200, baseType: !399, size: 192, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !600, file: !601, line: 205, baseType: !615, size: 320, offset: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !616, line: 48, size: 320, elements: !617)
!616 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!617 = !{!618, !619, !620, !621, !622}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !615, file: !616, line: 49, baseType: !470, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !615, file: !616, line: 55, baseType: !470, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !615, file: !616, line: 57, baseType: !487, size: 32, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !615, file: !616, line: 59, baseType: !485, size: 32, offset: 160)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !615, file: !616, line: 60, baseType: !200, size: 128, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !600, file: !601, line: 206, baseType: !624, size: 64, offset: 576)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !601, line: 206, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !600, file: !601, line: 207, baseType: !159, size: 64, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 208, baseType: !628, size: 64, offset: 704)
!628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 208, size: 64, elements: !629)
!629 = !{!630, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !628, file: !601, line: 209, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !632, line: 8, baseType: !477)
!632 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !628, file: !601, line: 210, baseType: !631, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !600, file: !601, line: 212, baseType: !631, size: 64, offset: 768)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !600, file: !601, line: 213, baseType: !375, size: 32, offset: 832)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !600, file: !601, line: 214, baseType: !383, size: 32, offset: 864)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !600, file: !601, line: 215, baseType: !638, size: 32, offset: 896)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !601, line: 31, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !161, line: 110, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !241, line: 21, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !243, line: 27, baseType: !13)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !600, file: !601, line: 216, baseType: !193, size: 16, offset: 928)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !600, file: !601, line: 217, baseType: !193, size: 16, offset: 944)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !600, file: !601, line: 221, baseType: !645, size: 16, offset: 960)
!645 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !600, file: !601, line: 228, baseType: !329, size: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 245, baseType: !648, size: 320, offset: 1088)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 245, size: 320, elements: !649)
!649 = !{!650, !677}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !648, file: !601, line: 246, baseType: !651, size: 320)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !601, line: 114, size: 320, elements: !652)
!652 = !{!653, !654, !666, !669, !676}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !651, file: !601, line: 116, baseType: !329, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !601, line: 117, baseType: !655, size: 64, offset: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !601, line: 117, size: 64, elements: !656)
!656 = !{!657, !665}
!657 = !DIDerivedType(tag: DW_TAG_member, scope: !655, file: !601, line: 118, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !601, line: 118, size: 64, elements: !659)
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !658, file: !601, line: 120, baseType: !250, size: 16)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !658, file: !601, line: 121, baseType: !662, size: 48, offset: 16)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 6)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !655, file: !601, line: 127, baseType: !329, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !601, line: 129, baseType: !667, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !601, line: 102, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !651, file: !601, line: 130, baseType: !670, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !601, line: 108, size: 192, elements: !672)
!672 = !{!673, !674, !675}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !671, file: !601, line: 109, baseType: !457, size: 128, align: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !671, file: !601, line: 110, baseType: !525, size: 32, offset: 128)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !671, file: !601, line: 111, baseType: !344, size: 8, offset: 160)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !651, file: !601, line: 131, baseType: !170, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !601, line: 247, baseType: !678, size: 320)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !648, file: !601, line: 247, size: 320, elements: !679)
!679 = !{!680, !681, !682, !683, !684}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !678, file: !601, line: 248, baseType: !329, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !678, file: !601, line: 249, baseType: !329, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !678, file: !601, line: 250, baseType: !667, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !678, file: !601, line: 251, baseType: !670, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !678, file: !601, line: 252, baseType: !281, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !601, line: 260, baseType: !686, size: 256, offset: 1408)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !601, line: 260, size: 256, elements: !687)
!687 = !{!688, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !686, file: !601, line: 261, baseType: !689, size: 256)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !601, line: 134, size: 256, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !689, file: !601, line: 135, baseType: !159, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !689, file: !601, line: 136, baseType: !693, size: 256)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 256, elements: !543)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !686, file: !601, line: 262, baseType: !695, size: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !686, file: !601, line: 262, size: 256, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !695, file: !601, line: 264, baseType: !200, size: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !695, file: !601, line: 265, baseType: !699, size: 128, offset: 128)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !700, line: 22, size: 128, elements: !701)
!700 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!701 = !{!702, !705}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !699, file: !700, line: 23, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !700, line: 23, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !699, file: !700, line: 24, baseType: !329, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !600, file: !601, line: 280, baseType: !707, size: 64, offset: 1664)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !601, line: 176, size: 192, elements: !709)
!709 = !{!710, !719, !720}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !708, file: !601, line: 177, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !601, line: 171, baseType: !712)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!115, !599, !715, !717, !599}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !708, file: !601, line: 178, baseType: !599, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !708, file: !601, line: 179, baseType: !667, size: 64, offset: 128)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !571, file: !572, line: 130, baseType: !599, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !571, file: !572, line: 131, baseType: !599, size: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !571, file: !572, line: 132, baseType: !599, size: 64, offset: 960)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !571, file: !572, line: 135, baseType: !159, size: 64, offset: 1024)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !571, file: !572, line: 137, baseType: !726, size: 64, offset: 1088)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !728, line: 14, size: 1088, elements: !729)
!728 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!729 = !{!730, !731, !740, !741, !742, !743, !744, !745}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !727, file: !728, line: 15, baseType: !525, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !727, file: !728, line: 17, baseType: !732, size: 320, offset: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !733, line: 22, size: 320, elements: !734)
!733 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!734 = !{!735, !736, !737, !738}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !732, file: !733, line: 23, baseType: !485, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !733, line: 24, baseType: !476, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !732, file: !733, line: 26, baseType: !200, size: 128, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !732, file: !733, line: 28, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !727, file: !728, line: 19, baseType: !329, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !727, file: !728, line: 20, baseType: !470, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !727, file: !728, line: 23, baseType: !538, size: 128, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !727, file: !728, line: 24, baseType: !375, size: 32, offset: 640)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !727, file: !728, line: 29, baseType: !470, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !727, file: !728, line: 36, baseType: !746, size: 320, offset: 768)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !747, line: 15, size: 320, elements: !748)
!747 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!748 = !{!749, !750, !751, !752, !753, !754, !755}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !746, file: !747, line: 16, baseType: !485, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !746, file: !747, line: 18, baseType: !115, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !746, file: !747, line: 19, baseType: !115, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !746, file: !747, line: 20, baseType: !115, size: 32, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !746, file: !747, line: 21, baseType: !115, size: 32, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !746, file: !747, line: 22, baseType: !329, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !747, line: 23, baseType: !329, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !571, file: !572, line: 138, baseType: !757, size: 64, offset: 1152)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !44, line: 901, flags: DIFlagFwdDecl)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !571, file: !572, line: 139, baseType: !760, size: 64, offset: 1216)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !762, line: 16, flags: DIFlagFwdDecl)
!762 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!763 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !571, file: !572, line: 140, baseType: !764, size: 64, offset: 1280)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !572, line: 25, size: 64, elements: !766)
!766 = !{!767, !768, !769}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !765, file: !572, line: 26, baseType: !232, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !765, file: !572, line: 27, baseType: !115, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !765, file: !572, line: 28, baseType: !770, offset: 64)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, elements: !562)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !571, file: !572, line: 142, baseType: !772, size: 128, offset: 1344)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !571, file: !572, line: 142, size: 128, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !772, file: !572, line: 143, baseType: !115, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !772, file: !572, line: 144, baseType: !457, size: 128, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !445, file: !20, line: 1013, baseType: !777, size: 256, offset: 960)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !777, file: !20, line: 971, baseType: !329, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !777, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !777, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !777, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !777, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !777, file: !20, line: 976, baseType: !493, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !445, file: !20, line: 1014, baseType: !786, size: 128, offset: 1216)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !787, line: 8, size: 128, elements: !788)
!787 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!788 = !{!789, !4014}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !786, file: !787, line: 9, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !792, line: 70, size: 256, elements: !793)
!792 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!793 = !{!794, !4011, !4012, !4013}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !791, file: !792, line: 71, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !797, line: 82, size: 1536, elements: !798)
!797 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!798 = !{!799, !800, !810, !818, !819, !834, !3978, !3980, !3993, !3994, !3995, !3996, !3997, !4003, !4004, !4005}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !796, file: !797, line: 84, baseType: !13, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !796, file: !797, line: 85, baseType: !801, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !802, line: 275, baseType: !803)
!802 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !802, line: 275, size: 32, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !803, file: !802, line: 275, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !802, line: 69, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !802, line: 64, size: 32, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !807, file: !802, line: 65, baseType: !13, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !796, file: !797, line: 86, baseType: !811, size: 128, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !812, line: 38, size: 128, elements: !813)
!812 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!813 = !{!814, !816}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !812, line: 39, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !811, file: !812, line: 39, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !796, file: !797, line: 87, baseType: !795, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !796, file: !797, line: 88, baseType: !820, size: 128, offset: 256)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !797, line: 49, size: 128, elements: !821)
!821 = !{!822, !831}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !820, file: !797, line: 50, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !820, file: !797, line: 50, size: 64, elements: !824)
!824 = !{!825, !830}
!825 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !797, line: 51, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !797, line: 51, size: 64, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !826, file: !797, line: 52, baseType: !640, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !826, file: !797, line: 52, baseType: !640, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !823, file: !797, line: 54, baseType: !590, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !820, file: !797, line: 56, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !796, file: !797, line: 89, baseType: !835, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844, !847, !848, !1035, !3789, !3790, !3791, !3792, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3960, !3963, !3964, !3965, !3974, !3975, !3976, !3977}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !836, file: !20, line: 642, baseType: !192, size: 16)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !836, file: !20, line: 643, baseType: !193, size: 16, offset: 16)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !836, file: !20, line: 644, baseType: !375, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !836, file: !20, line: 645, baseType: !200, size: 128, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !836, file: !20, line: 646, baseType: !383, size: 32, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !836, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !836, file: !20, line: 650, baseType: !845, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !836, file: !20, line: 651, baseType: !845, size: 64, offset: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !836, file: !20, line: 654, baseType: !849, size: 64, offset: 384)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !852)
!852 = !{!853, !857, !867, !873, !877, !881, !885, !889, !893, !897, !901, !902, !908, !912, !949, !980, !984, !990, !994, !998, !1002, !1006, !1010, !1016, !1020}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !851, file: !20, line: 1967, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!795, !835, !795, !13}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !851, file: !20, line: 1968, baseType: !858, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!170, !795, !835, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !863, line: 10, size: 128, elements: !864)
!863 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !862, file: !863, line: 11, baseType: !363, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !862, file: !863, line: 12, baseType: !159, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !851, file: !20, line: 1969, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!115, !871, !835, !115}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !586, line: 42, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !851, file: !20, line: 1970, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!845, !835, !115, !344}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !851, file: !20, line: 1972, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!115, !795, !281, !115}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !851, file: !20, line: 1974, baseType: !882, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!115, !871, !835, !795, !192, !344}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !851, file: !20, line: 1976, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!115, !795, !835, !795}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !851, file: !20, line: 1977, baseType: !890, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!115, !835, !795}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !851, file: !20, line: 1978, baseType: !894, size: 64, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!115, !871, !835, !795, !170}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !851, file: !20, line: 1980, baseType: !898, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!115, !871, !835, !795, !192}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !851, file: !20, line: 1982, baseType: !890, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !851, file: !20, line: 1983, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!115, !871, !835, !795, !192, !906}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !161, line: 21, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !161, line: 18, baseType: !640)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !851, file: !20, line: 1985, baseType: !909, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!115, !871, !835, !795, !835, !795, !13}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !851, file: !20, line: 1987, baseType: !913, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!115, !871, !795, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !918)
!918 = !{!919, !920, !921, !931, !940, !941, !946, !947, !948}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !917, file: !20, line: 227, baseType: !13, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !917, file: !20, line: 228, baseType: !192, size: 16, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !20, line: 241, baseType: !922, size: 32, offset: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !20, line: 241, size: 32, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !922, file: !20, line: 242, baseType: !375, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !922, file: !20, line: 243, baseType: !926, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !927, line: 16, baseType: !928)
!927 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 14, size: 32, elements: !929)
!929 = !{!930}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !928, file: !927, line: 15, baseType: !380, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !917, file: !20, line: 245, baseType: !932, size: 32, offset: 96)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !917, file: !20, line: 245, size: 32, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !932, file: !20, line: 246, baseType: !383, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !932, file: !20, line: 247, baseType: !936, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !927, line: 20, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !927, line: 18, size: 32, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !937, file: !927, line: 19, baseType: !387, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !917, file: !20, line: 249, baseType: !493, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !917, file: !20, line: 250, baseType: !942, size: 128, offset: 192)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !632, line: 13, size: 128, elements: !943)
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !942, file: !632, line: 14, baseType: !631, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !942, file: !632, line: 15, baseType: !316, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !917, file: !20, line: 251, baseType: !942, size: 128, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !917, file: !20, line: 252, baseType: !942, size: 128, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !917, file: !20, line: 259, baseType: !444, size: 64, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !851, file: !20, line: 1988, baseType: !950, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!115, !871, !953, !955, !640, !13}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !957, line: 22, size: 1280, elements: !958)
!957 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !956, file: !957, line: 23, baseType: !640, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !956, file: !957, line: 24, baseType: !192, size: 16, offset: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !956, file: !957, line: 25, baseType: !13, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !956, file: !957, line: 26, baseType: !639, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !956, file: !957, line: 27, baseType: !590, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !956, file: !957, line: 28, baseType: !590, size: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !956, file: !957, line: 41, baseType: !590, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !956, file: !957, line: 42, baseType: !906, size: 32, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !956, file: !957, line: 43, baseType: !906, size: 32, offset: 352)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !956, file: !957, line: 44, baseType: !375, size: 32, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !956, file: !957, line: 45, baseType: !383, size: 32, offset: 416)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !956, file: !957, line: 46, baseType: !493, size: 64, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !956, file: !957, line: 47, baseType: !942, size: 128, offset: 512)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !956, file: !957, line: 48, baseType: !942, size: 128, offset: 640)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !956, file: !957, line: 49, baseType: !942, size: 128, offset: 768)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !956, file: !957, line: 50, baseType: !942, size: 128, offset: 896)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !956, file: !957, line: 51, baseType: !590, size: 64, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !956, file: !957, line: 52, baseType: !590, size: 64, offset: 1088)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !956, file: !957, line: 53, baseType: !640, size: 32, offset: 1152)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !956, file: !957, line: 54, baseType: !640, size: 32, offset: 1184)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !956, file: !957, line: 55, baseType: !590, size: 64, offset: 1216)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !851, file: !20, line: 1990, baseType: !981, size: 64, offset: 960)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!312, !795, !281, !326}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !851, file: !20, line: 1991, baseType: !985, size: 64, offset: 1024)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!115, !835, !988, !590, !590}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !851, file: !20, line: 1993, baseType: !991, size: 64, offset: 1088)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!115, !835, !115}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !851, file: !20, line: 1994, baseType: !995, size: 64, offset: 1152)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!115, !835, !795, !444, !13, !192}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !851, file: !20, line: 1997, baseType: !999, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!115, !871, !835, !444, !192}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !851, file: !20, line: 1999, baseType: !1003, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!845, !871, !795, !115}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !851, file: !20, line: 2001, baseType: !1007, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!115, !871, !795, !845, !115}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !851, file: !20, line: 2003, baseType: !1011, size: 64, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!115, !871, !795, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !851, file: !20, line: 2005, baseType: !1017, size: 64, offset: 1472)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!115, !795, !1014}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !851, file: !20, line: 2006, baseType: !1021, size: 64, offset: 1536)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024, !835}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !1026)
!1026 = !{!1027, !1034}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1025, file: !20, line: 3193, baseType: !1028, size: 128)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1029, line: 296, size: 128, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1030 = !{!1031, !1032, !1033}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1028, file: !1029, line: 297, baseType: !212, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1028, file: !1029, line: 299, baseType: !160, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1028, file: !1029, line: 300, baseType: !159, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1025, file: !20, line: 3194, baseType: !640, size: 32, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !836, file: !20, line: 655, baseType: !1036, size: 64, offset: 448)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1469, !1606, !1646, !1729, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1746, !1750, !1751, !1754, !1757, !1760, !1763, !1764, !1765, !1806, !3664, !3665, !3666, !3667, !3668, !3669, !3672, !3674, !3681, !3682, !3683, !3684, !3743, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1037, file: !20, line: 1191, baseType: !200, size: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1037, file: !20, line: 1192, baseType: !906, size: 32, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1037, file: !20, line: 1193, baseType: !244, size: 8, offset: 160)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1037, file: !20, line: 1194, baseType: !329, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1037, file: !20, line: 1195, baseType: !493, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1037, file: !20, line: 1196, baseType: !1045, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !1047)
!1047 = !{!1048, !1049, !1050, !1056, !1060, !1064, !1068, !1457, !1458, !1459, !1461, !1462, !1463, !1465, !1466, !1467, !1468}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1046, file: !20, line: 2367, baseType: !170, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1046, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1046, file: !20, line: 2376, baseType: !1051, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!115, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !792, line: 21, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1046, file: !20, line: 2377, baseType: !1057, size: 64, offset: 192)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1046, file: !20, line: 2378, baseType: !1061, size: 64, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!795, !1045, !115, !170, !159}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1046, file: !20, line: 2380, baseType: !1065, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1036}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1046, file: !20, line: 2381, baseType: !1069, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1078, !1099, !1125, !1126, !1127, !1128, !1132, !1135, !1136, !1137, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1205, !1209, !1229, !1249, !1250, !1251, !1252, !1261, !1284, !1285, !1288, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1302, !1303, !1415, !1423, !1424, !1425, !1427, !1431, !1432, !1436, !1437, !1438, !1439, !1441, !1442, !1443, !1450, !1451, !1452, !1456}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1070, file: !12, line: 403, baseType: !11, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1070, file: !12, line: 406, baseType: !200, size: 128, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1070, file: !12, line: 409, baseType: !1075, size: 448, offset: 192)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1076)
!1076 = !{!1077}
!1077 = !DISubrange(count: 56)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1070, file: !12, line: 417, baseType: !1079, size: 768, offset: 640)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1087}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1079, file: !12, line: 46, baseType: !195, size: 512)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1079, file: !12, line: 47, baseType: !1069, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1079, file: !12, line: 48, baseType: !194, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1079, file: !12, line: 49, baseType: !1085, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1079, file: !12, line: 50, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1090, line: 26, size: 256, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1089, file: !1090, line: 27, baseType: !13, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1089, file: !1090, line: 28, baseType: !1094, size: 192, offset: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1095, line: 43, size: 192, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1094, file: !1095, line: 44, baseType: !485, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1094, file: !1095, line: 45, baseType: !200, size: 128, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1070, file: !12, line: 418, baseType: !1100, size: 64, offset: 1408)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !1102)
!1102 = !{!1103, !1104, !1109, !1113, !1117, !1121}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1101, file: !12, line: 54, baseType: !318, size: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1101, file: !12, line: 55, baseType: !1105, size: 64, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!312, !1100, !1108, !281}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1101, file: !12, line: 57, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!312, !1100, !1108, !170, !326}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1101, file: !12, line: 59, baseType: !1114, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{null, !1069, !170}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1101, file: !12, line: 60, baseType: !1118, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!115, !1069}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1101, file: !12, line: 61, baseType: !1122, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1069}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1070, file: !12, line: 419, baseType: !170, size: 64, offset: 1472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1070, file: !12, line: 420, baseType: !170, size: 64, offset: 1536)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1070, file: !12, line: 421, baseType: !194, size: 64, offset: 1600)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1070, file: !12, line: 424, baseType: !1129, size: 64, offset: 1664)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1070, file: !12, line: 425, baseType: !1133, size: 64, offset: 1728)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1070, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1070, file: !12, line: 435, baseType: !480, size: 256, offset: 1856)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1070, file: !12, line: 437, baseType: !1138, size: 64, offset: 2112)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1140, line: 69, size: 320, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1141 = !{!1142, !1143, !1144, !1161, !1163, !1167, !1168}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1139, file: !1140, line: 70, baseType: !170, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1139, file: !1140, line: 71, baseType: !1069, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1139, file: !1140, line: 72, baseType: !1145, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1140, line: 47, size: 256, elements: !1148)
!1148 = !{!1149, !1150, !1156, !1160}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !1140, line: 49, baseType: !13, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1147, file: !1140, line: 51, baseType: !1151, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!115, !170, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1147, file: !1140, line: 53, baseType: !1157, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!115, !281, !1154}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1147, file: !1140, line: 55, baseType: !363, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1139, file: !1140, line: 73, baseType: !1162, size: 16, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1139, file: !1140, line: 74, baseType: !1164, size: 8, offset: 208)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !241, line: 16, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !243, line: 20, baseType: !1166)
!1166 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !1140, line: 75, baseType: !240, size: 8, offset: 216)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1139, file: !1140, line: 76, baseType: !1169, size: 64, offset: 256)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1139, file: !1140, line: 76, size: 64, elements: !1170)
!1170 = !{!1171, !1172, !1179}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1169, file: !1140, line: 77, baseType: !159, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1169, file: !1140, line: 78, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1140, line: 86, size: 128, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1175, file: !1140, line: 87, baseType: !13, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1175, file: !1140, line: 88, baseType: !281, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1169, file: !1140, line: 79, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1140, line: 92, size: 256, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1188, !1189}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1182, file: !1140, line: 94, baseType: !13, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1182, file: !1140, line: 95, baseType: !13, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1182, file: !1140, line: 96, baseType: !1187, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1182, file: !1140, line: 97, baseType: !1145, size: 64, offset: 128)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1182, file: !1140, line: 98, baseType: !159, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1070, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1070, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1070, file: !12, line: 442, baseType: !1129, size: 64, offset: 2240)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1070, file: !12, line: 443, baseType: !1133, size: 64, offset: 2304)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1070, file: !12, line: 444, baseType: !344, size: 8, offset: 2368)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1070, file: !12, line: 451, baseType: !344, size: 8, offset: 2376)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1070, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1070, file: !12, line: 455, baseType: !1198, size: 64, offset: 2432)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1200, line: 23, size: 96, elements: !1201)
!1200 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1201 = !{!1202, !1203, !1204}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1199, file: !1200, line: 24, baseType: !115, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1199, file: !1200, line: 24, baseType: !115, size: 32, offset: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1199, file: !1200, line: 24, baseType: !115, size: 32, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1070, file: !12, line: 458, baseType: !1206, size: 64, offset: 2496)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!115}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1070, file: !12, line: 460, baseType: !1210, size: 4032, align: 512, offset: 2560)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1211, size: 4032, elements: !1227)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !1212)
!1212 = !{!1213, !1214, !1215}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1211, file: !12, line: 363, baseType: !159, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1211, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1211, file: !12, line: 367, baseType: !1216, size: 448, offset: 128)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1216, file: !12, line: 320, baseType: !1069, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1216, file: !12, line: 321, baseType: !1220, size: 384, offset: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1221, line: 40, size: 384, elements: !1222)
!1221 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1220, file: !1221, line: 41, baseType: !1224, size: 384, align: 64)
!1224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 384, align: 64, elements: !1225)
!1225 = !{!1226}
!1226 = !DISubrange(count: 2)
!1227 = !{!1228}
!1228 = !DISubrange(count: 7)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1070, file: !12, line: 463, baseType: !1230, size: 192, offset: 6592)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1231, line: 8, size: 192, elements: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1232 = !{!1233, !1234, !1236}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1230, file: !1231, line: 10, baseType: !13, size: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1230, file: !1231, line: 11, baseType: !1235, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1230, file: !1231, line: 12, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1239, line: 59, size: 48, elements: !1240)
!1239 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1240 = !{!1241, !1244, !1245, !1246, !1247, !1248}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1238, file: !1239, line: 60, baseType: !1242, size: 16)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !241, line: 18, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !243, line: 23, baseType: !645)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1238, file: !1239, line: 61, baseType: !1242, size: 16, offset: 16)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1238, file: !1239, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1238, file: !1239, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1238, file: !1239, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1238, file: !1239, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1070, file: !12, line: 465, baseType: !329, size: 64, offset: 6784)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1070, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1070, file: !12, line: 470, baseType: !200, size: 128, offset: 6912)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1070, file: !12, line: 471, baseType: !1253, size: 64, offset: 7040)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1255, line: 33, size: 96, elements: !1256)
!1255 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1254, file: !1255, line: 37, baseType: !115, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1254, file: !1255, line: 43, baseType: !115, size: 32, offset: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1254, file: !1255, line: 45, baseType: !193, size: 16, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !1255, line: 47, baseType: !193, size: 16, offset: 80)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1070, file: !12, line: 476, baseType: !1262, size: 64, offset: 7104)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !1264)
!1264 = !{!1265, !1281, !1282, !1283}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1263, file: !12, line: 379, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1268, line: 204, baseType: !1269)
!1268 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1268, line: 197, size: 192, elements: !1270)
!1270 = !{!1271, !1273, !1274, !1275, !1277, !1279}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1269, file: !1268, line: 198, baseType: !1272, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1268, line: 21, baseType: !641)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1269, file: !1268, line: 199, baseType: !244, size: 8, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1269, file: !1268, line: 200, baseType: !244, size: 8, offset: 40)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1269, file: !1268, line: 201, baseType: !1276, size: 16, offset: 48)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1268, line: 17, baseType: !251)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1269, file: !1268, line: 202, baseType: !1278, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1268, line: 16, baseType: !591)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1269, file: !1268, line: 203, baseType: !1280, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1268, line: 22, baseType: !591)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1263, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1263, file: !12, line: 381, baseType: !281, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1263, file: !12, line: 382, baseType: !281, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1070, file: !12, line: 477, baseType: !1263, size: 256, offset: 7168)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1070, file: !12, line: 480, baseType: !1286, size: 64, offset: 7424)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1070, file: !12, line: 483, baseType: !1289, size: 64, offset: 7488)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1070, file: !12, line: 488, baseType: !281, size: 64, offset: 7552)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1070, file: !12, line: 492, baseType: !159, size: 64, offset: 7616)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1070, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1070, file: !12, line: 495, baseType: !159, size: 64, offset: 7744)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1070, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1070, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1070, file: !12, line: 500, baseType: !1298, size: 64, offset: 7872)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1300, line: 45, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1070, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1070, file: !12, line: 504, baseType: !1304, size: 64, offset: 8000)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1307, line: 96, size: 192, elements: !1308)
!1307 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1308 = !{!1309, !1310, !1375, !1379}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1306, file: !1307, line: 97, baseType: !13, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1306, file: !1307, line: 98, baseType: !1311, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1307, line: 24, size: 3072, elements: !1313)
!1313 = !{!1314, !1316, !1317, !1318, !1319, !1333, !1334, !1335, !1336, !1348, !1360, !1361, !1372, !1373, !1374}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1312, file: !1307, line: 26, baseType: !1315, size: 128)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 128, elements: !1225)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1312, file: !1307, line: 27, baseType: !1315, size: 128, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1312, file: !1307, line: 28, baseType: !115, size: 32, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1312, file: !1307, line: 31, baseType: !212, size: 32, align: 512, offset: 512)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1312, file: !1307, line: 32, baseType: !1320, size: 960, offset: 576)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1321, line: 206, size: 960, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1322 = !{!1323, !1324, !1327, !1329, !1330, !1332}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1320, file: !1321, line: 207, baseType: !460, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1320, file: !1321, line: 208, baseType: !1325, size: 256, offset: 64)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 256, elements: !543)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1320, file: !1321, line: 209, baseType: !1328, size: 256, offset: 320)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !543)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1320, file: !1321, line: 213, baseType: !316, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1320, file: !1321, line: 215, baseType: !1331, size: 256, offset: 640)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !543)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1320, file: !1321, line: 216, baseType: !240, size: 8, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1312, file: !1307, line: 33, baseType: !329, size: 64, offset: 1536)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1312, file: !1307, line: 34, baseType: !329, size: 64, offset: 1600)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1312, file: !1307, line: 35, baseType: !344, size: 8, offset: 1664)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1312, file: !1307, line: 36, baseType: !1337, size: 320, offset: 1728)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1338, line: 11, size: 320, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1339 = !{!1340, !1341, !1342, !1347}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1337, file: !1338, line: 16, baseType: !538, size: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1337, file: !1338, line: 17, baseType: !329, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1337, file: !1338, line: 18, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !1346}
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !1338, line: 19, baseType: !640, size: 32, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1312, file: !1307, line: 37, baseType: !1349, size: 256, offset: 2048)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1350, line: 98, size: 256, elements: !1351)
!1350 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1349, file: !1350, line: 99, baseType: !470, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1349, file: !1350, line: 100, baseType: !200, size: 128, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1349, file: !1350, line: 101, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1350, line: 21, baseType: !1356)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1312, file: !1307, line: 38, baseType: !457, size: 128, align: 64, offset: 2304)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1312, file: !1307, line: 39, baseType: !1362, size: 64, offset: 2432)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1307, line: 49, size: 768, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1363, file: !1307, line: 50, baseType: !212, size: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1363, file: !1307, line: 51, baseType: !1328, size: 256, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1363, file: !1307, line: 53, baseType: !1328, size: 256, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1363, file: !1307, line: 54, baseType: !329, size: 64, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1363, file: !1307, line: 55, baseType: !1362, size: 64, offset: 640)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1363, file: !1307, line: 56, baseType: !115, size: 32, offset: 704)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1363, file: !1307, line: 57, baseType: !115, size: 32, offset: 736)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1312, file: !1307, line: 40, baseType: !329, size: 64, offset: 2496)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1312, file: !1307, line: 42, baseType: !115, size: 32, offset: 2560)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1312, file: !1307, line: 43, baseType: !1305, size: 64, offset: 2624)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1306, file: !1307, line: 99, baseType: !1376, offset: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1377, line: 211, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1378 = !{}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1306, file: !1307, line: 100, baseType: !1380, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1307, line: 63, size: 3008, elements: !1382)
!1382 = !{!1383, !1384, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1414}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1381, file: !1307, line: 64, baseType: !1362, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1381, file: !1307, line: 65, baseType: !1385, size: 192, offset: 64)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1362, size: 192, elements: !282)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1381, file: !1307, line: 67, baseType: !115, size: 32, offset: 256)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1381, file: !1307, line: 68, baseType: !480, size: 256, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1381, file: !1307, line: 69, baseType: !212, size: 32, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1381, file: !1307, line: 70, baseType: !480, size: 256, offset: 640)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1381, file: !1307, line: 71, baseType: !329, size: 64, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1381, file: !1307, line: 72, baseType: !329, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1381, file: !1307, line: 73, baseType: !329, size: 64, offset: 1024)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1381, file: !1307, line: 74, baseType: !329, size: 64, offset: 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1381, file: !1307, line: 75, baseType: !329, size: 64, offset: 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1381, file: !1307, line: 76, baseType: !329, size: 64, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1381, file: !1307, line: 77, baseType: !329, size: 64, offset: 1280)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1381, file: !1307, line: 78, baseType: !329, size: 64, offset: 1344)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1381, file: !1307, line: 79, baseType: !344, size: 8, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1381, file: !1307, line: 80, baseType: !329, size: 64, offset: 1472)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1381, file: !1307, line: 81, baseType: !480, size: 256, offset: 1536)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1381, file: !1307, line: 82, baseType: !1089, size: 256, offset: 1792)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1381, file: !1307, line: 84, baseType: !232, size: 32, offset: 2048)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1381, file: !1307, line: 87, baseType: !329, size: 64, offset: 2112)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1381, file: !1307, line: 88, baseType: !329, size: 64, offset: 2176)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1381, file: !1307, line: 89, baseType: !1406, size: 704, offset: 2240)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1350, line: 111, size: 704, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1413}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1406, file: !1350, line: 112, baseType: !1349, size: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1406, file: !1350, line: 113, baseType: !1337, size: 320, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1406, file: !1350, line: 116, baseType: !1411, size: 64, offset: 576)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1350, line: 18, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1406, file: !1350, line: 117, baseType: !115, size: 32, offset: 640)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1381, file: !1307, line: 90, baseType: !1305, size: 64, offset: 2944)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1070, file: !12, line: 515, baseType: !1416, size: 64, offset: 8064)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1418, line: 117, size: 128, elements: !1419)
!1418 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1419 = !{!1420, !1421, !1422}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1417, file: !1418, line: 118, baseType: !607, size: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1417, file: !1418, line: 119, baseType: !607, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1417, file: !1418, line: 120, baseType: !316, size: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1070, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1070, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1070, file: !12, line: 520, baseType: !1426, size: 64, offset: 8192)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1070, file: !12, line: 523, baseType: !1428, size: 64, offset: 8256)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1070, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1070, file: !12, line: 525, baseType: !1433, size: 64, offset: 8384)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1070, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1070, file: !12, line: 533, baseType: !159, size: 64, offset: 8512)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1070, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1070, file: !12, line: 535, baseType: !1440, size: 64, offset: 8640)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1070, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1070, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1070, file: !12, line: 540, baseType: !1444, size: 64, offset: 8768)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1446, line: 32, size: 64, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1445, file: !1446, line: 33, baseType: !607, size: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1445, file: !1446, line: 34, baseType: !607, size: 32, offset: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1070, file: !12, line: 563, baseType: !200, size: 128, offset: 8832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1070, file: !12, line: 565, baseType: !200, size: 128, offset: 8960)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1070, file: !12, line: 568, baseType: !1453, size: 64, offset: 9088)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1070, file: !12, line: 570, baseType: !232, size: 32, offset: 9152)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1046, file: !20, line: 2382, baseType: !1045, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1046, file: !20, line: 2383, baseType: !534, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1046, file: !20, line: 2385, baseType: !1460, offset: 576)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1377, line: 206, elements: !1378)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1046, file: !20, line: 2386, baseType: !1460, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1046, file: !20, line: 2387, baseType: !1460, offset: 576)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1046, file: !20, line: 2388, baseType: !1464, offset: 576)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, elements: !282)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1046, file: !20, line: 2390, baseType: !1460, offset: 576)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1046, file: !20, line: 2391, baseType: !1460, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1046, file: !20, line: 2392, baseType: !1460, offset: 576)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1046, file: !20, line: 2393, baseType: !1460, offset: 576)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1037, file: !20, line: 1197, baseType: !1470, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1472)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1473)
!1473 = !{!1474, !1478, !1482, !1483, !1487, !1493, !1497, !1498, !1499, !1503, !1507, !1511, !1512, !1513, !1519, !1523, !1524, !1531, !1532, !1533, !1534, !1538, !1542, !1589, !1604, !1605}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1472, file: !20, line: 2058, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!835, !1036}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1472, file: !20, line: 2059, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !835}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1472, file: !20, line: 2060, baseType: !1479, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1472, file: !20, line: 2062, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !835, !115}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1472, file: !20, line: 2063, baseType: !1488, size: 64, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!115, !835, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1472, file: !20, line: 2064, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!115, !835}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1472, file: !20, line: 2065, baseType: !1479, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1472, file: !20, line: 2066, baseType: !1065, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1472, file: !20, line: 2067, baseType: !1500, size: 64, offset: 512)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{!115, !1036, !115}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1472, file: !20, line: 2068, baseType: !1504, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!115, !1036, !19}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1472, file: !20, line: 2069, baseType: !1508, size: 64, offset: 640)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!115, !1036}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1472, file: !20, line: 2070, baseType: !1504, size: 64, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1472, file: !20, line: 2071, baseType: !1508, size: 64, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1472, file: !20, line: 2072, baseType: !1514, size: 64, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!115, !795, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1472, file: !20, line: 2073, baseType: !1520, size: 64, offset: 896)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!115, !1036, !1235, !281}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1472, file: !20, line: 2074, baseType: !1065, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1472, file: !20, line: 2076, baseType: !1525, size: 64, offset: 1024)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!115, !1528, !795}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1530, line: 66, flags: DIFlagFwdDecl)
!1530 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1472, file: !20, line: 2077, baseType: !1525, size: 64, offset: 1088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1472, file: !20, line: 2078, baseType: !1525, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1472, file: !20, line: 2079, baseType: !1525, size: 64, offset: 1216)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1472, file: !20, line: 2081, baseType: !1535, size: 64, offset: 1280)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!312, !1036, !115, !281, !326, !493}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1472, file: !20, line: 2082, baseType: !1539, size: 64, offset: 1344)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!312, !1036, !115, !170, !326, !493}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1472, file: !20, line: 2083, baseType: !1543, size: 64, offset: 1408)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1546, !835}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !1549)
!1549 = !{!1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1574, !1575, !1576}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1548, file: !25, line: 297, baseType: !538, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1548, file: !25, line: 298, baseType: !200, size: 128, offset: 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1548, file: !25, line: 299, baseType: !200, size: 128, offset: 256)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1548, file: !25, line: 300, baseType: !200, size: 128, offset: 384)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1548, file: !25, line: 301, baseType: !480, size: 256, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1548, file: !25, line: 302, baseType: !212, size: 32, offset: 768)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1548, file: !25, line: 303, baseType: !232, size: 32, offset: 800)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1548, file: !25, line: 304, baseType: !1036, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1548, file: !25, line: 305, baseType: !1559, size: 64, offset: 896)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !1560)
!1560 = !{!1561, !1573}
!1561 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !25, line: 69, baseType: !1562, size: 32)
!1562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !25, line: 69, size: 32, elements: !1563)
!1563 = !{!1564, !1565, !1566}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1562, file: !25, line: 70, baseType: !375, size: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1562, file: !25, line: 71, baseType: !383, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1562, file: !25, line: 72, baseType: !1567, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1568, line: 24, baseType: !1569)
!1568 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1568, line: 22, size: 32, elements: !1570)
!1570 = !{!1571}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1569, file: !1568, line: 23, baseType: !1572, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1568, line: 20, baseType: !381)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1559, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1548, file: !25, line: 306, baseType: !493, size: 64, offset: 960)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1548, file: !25, line: 307, baseType: !329, size: 64, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1548, file: !25, line: 308, baseType: !1577, size: 576, offset: 1088)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !1578)
!1578 = !{!1579, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1577, file: !25, line: 206, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !478)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1577, file: !25, line: 207, baseType: !1580, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1577, file: !25, line: 208, baseType: !1580, size: 64, offset: 128)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1577, file: !25, line: 209, baseType: !1580, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1577, file: !25, line: 210, baseType: !1580, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1577, file: !25, line: 211, baseType: !1580, size: 64, offset: 320)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1577, file: !25, line: 212, baseType: !1580, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1577, file: !25, line: 213, baseType: !631, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1577, file: !25, line: 214, baseType: !631, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1472, file: !20, line: 2085, baseType: !1590, size: 64, offset: 1472)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!316, !1036, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1595, line: 15, size: 256, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1596 = !{!1597, !1598, !1599, !1600, !1601}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1594, file: !1595, line: 16, baseType: !160, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1594, file: !1595, line: 19, baseType: !115, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1594, file: !1595, line: 26, baseType: !329, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1594, file: !1595, line: 33, baseType: !329, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1594, file: !1595, line: 36, baseType: !1602, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1472, file: !20, line: 2087, baseType: !1590, size: 64, offset: 1536)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1472, file: !20, line: 2089, baseType: !1065, size: 64, offset: 1600)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1037, file: !20, line: 1198, baseType: !1607, size: 64, offset: 448)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1609)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !1610)
!1610 = !{!1611, !1615, !1619, !1623, !1624, !1625, !1626, !1627, !1632, !1637, !1641}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1609, file: !25, line: 325, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!115, !1547}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1609, file: !25, line: 326, baseType: !1616, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1547, !1036, !115}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1609, file: !25, line: 327, baseType: !1620, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1547}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1609, file: !25, line: 328, baseType: !1612, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1609, file: !25, line: 329, baseType: !1612, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1609, file: !25, line: 330, baseType: !1612, size: 64, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1609, file: !25, line: 331, baseType: !1500, size: 64, offset: 384)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1609, file: !25, line: 334, baseType: !1628, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1631, !835}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1609, file: !25, line: 335, baseType: !1633, size: 64, offset: 512)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!115, !835, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1609, file: !25, line: 337, baseType: !1638, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!115, !835, !1631}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1609, file: !25, line: 339, baseType: !1642, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!115, !1036, !1645}
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1037, file: !20, line: 1199, baseType: !1647, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !1650)
!1650 = !{!1651, !1655, !1656, !1660, !1661, !1662, !1677, !1700, !1704, !1705, !1728}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1649, file: !25, line: 431, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!115, !1036, !115, !115, !953}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1649, file: !25, line: 432, baseType: !1500, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1649, file: !25, line: 433, baseType: !1657, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!115, !1036, !13}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1649, file: !25, line: 434, baseType: !1657, size: 64, offset: 192)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1649, file: !25, line: 435, baseType: !1500, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1649, file: !25, line: 436, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!115, !1036, !115, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !1668)
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1667, file: !25, line: 418, baseType: !115, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1667, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1667, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1667, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1667, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1667, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1667, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1667, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1649, file: !25, line: 437, baseType: !1678, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!115, !1036, !1559, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !1683)
!1683 = !{!1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1682, file: !25, line: 346, baseType: !115, size: 32)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1682, file: !25, line: 347, baseType: !590, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1682, file: !25, line: 348, baseType: !590, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1682, file: !25, line: 349, baseType: !590, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1682, file: !25, line: 350, baseType: !590, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1682, file: !25, line: 351, baseType: !590, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1682, file: !25, line: 352, baseType: !590, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1682, file: !25, line: 353, baseType: !476, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1682, file: !25, line: 355, baseType: !476, size: 64, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1682, file: !25, line: 356, baseType: !115, size: 32, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1682, file: !25, line: 357, baseType: !115, size: 32, offset: 608)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1682, file: !25, line: 358, baseType: !590, size: 64, offset: 640)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1682, file: !25, line: 359, baseType: !590, size: 64, offset: 704)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1682, file: !25, line: 360, baseType: !590, size: 64, offset: 768)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1682, file: !25, line: 361, baseType: !476, size: 64, offset: 832)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1682, file: !25, line: 362, baseType: !115, size: 32, offset: 896)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1649, file: !25, line: 438, baseType: !1701, size: 64, offset: 448)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!115, !1036, !1645, !1681}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1649, file: !25, line: 440, baseType: !1678, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1649, file: !25, line: 441, baseType: !1706, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!115, !1036, !1709}
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !1711)
!1711 = !{!1712, !1713}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1710, file: !25, line: 412, baseType: !13, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1710, file: !25, line: 413, baseType: !1714, size: 1344, offset: 64)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1715, size: 1344, elements: !282)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !1716)
!1716 = !{!1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1727}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1715, file: !25, line: 398, baseType: !13, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1715, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1715, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1715, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1715, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1715, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1715, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1715, file: !25, line: 406, baseType: !592, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1715, file: !25, line: 407, baseType: !1726, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !161, line: 132, baseType: !590)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1715, file: !25, line: 408, baseType: !1726, size: 64, offset: 384)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1649, file: !25, line: 442, baseType: !1657, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1037, file: !20, line: 1200, baseType: !1730, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1037, file: !20, line: 1201, baseType: !329, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1037, file: !20, line: 1202, baseType: !329, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1037, file: !20, line: 1203, baseType: !329, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1037, file: !20, line: 1204, baseType: !795, size: 64, offset: 832)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1037, file: !20, line: 1205, baseType: !615, size: 320, offset: 896)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1037, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1037, file: !20, line: 1207, baseType: !232, size: 32, offset: 1248)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1037, file: !20, line: 1209, baseType: !159, size: 64, offset: 1280)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1037, file: !20, line: 1211, baseType: !1742, size: 64, offset: 1344)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1037, file: !20, line: 1223, baseType: !1747, size: 64, offset: 1408)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !812, line: 34, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1747, file: !812, line: 35, baseType: !815, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1037, file: !20, line: 1224, baseType: !200, size: 128, offset: 1472)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1037, file: !20, line: 1225, baseType: !1752, size: 64, offset: 1600)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1037, file: !20, line: 1226, baseType: !1755, size: 64, offset: 1664)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1037, file: !20, line: 1227, baseType: !1758, size: 64, offset: 1728)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1037, file: !20, line: 1228, baseType: !1761, size: 64, offset: 1792)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1037, file: !20, line: 1229, baseType: !538, size: 128, offset: 1856)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1037, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1037, file: !20, line: 1231, baseType: !1766, size: 2496, offset: 2048)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1772, !1804}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1766, file: !25, line: 522, baseType: !13, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1766, file: !25, line: 523, baseType: !615, size: 320, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1766, file: !25, line: 524, baseType: !1771, size: 192, offset: 384)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 192, elements: !282)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1766, file: !25, line: 525, baseType: !1773, size: 1728, offset: 576)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1774, size: 1728, elements: !282)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !1775)
!1775 = !{!1776, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1774, file: !25, line: 223, baseType: !1777, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !1779)
!1779 = !{!1780, !1781, !1794, !1795}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1778, file: !25, line: 446, baseType: !115, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1778, file: !25, line: 447, baseType: !1782, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1784, file: !25, line: 313, baseType: !1500, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1784, file: !25, line: 314, baseType: !1500, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1784, file: !25, line: 315, baseType: !1500, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1784, file: !25, line: 316, baseType: !1500, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1784, file: !25, line: 317, baseType: !1612, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1784, file: !25, line: 318, baseType: !1612, size: 64, offset: 320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1784, file: !25, line: 319, baseType: !1612, size: 64, offset: 384)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1784, file: !25, line: 320, baseType: !1642, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1778, file: !25, line: 448, baseType: !1069, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1778, file: !25, line: 449, baseType: !1777, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1774, file: !25, line: 224, baseType: !115, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1774, file: !25, line: 226, baseType: !200, size: 128, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1774, file: !25, line: 227, baseType: !329, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1774, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1774, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1774, file: !25, line: 230, baseType: !1580, size: 64, offset: 384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1774, file: !25, line: 231, baseType: !1580, size: 64, offset: 448)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1774, file: !25, line: 232, baseType: !159, size: 64, offset: 512)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1766, file: !25, line: 526, baseType: !1805, size: 192, offset: 2304)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1782, size: 192, elements: !282)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1037, file: !20, line: 1233, baseType: !1807, size: 2368, offset: 4544)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !1808)
!1808 = !{!1809, !1810, !1811}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1807, file: !20, line: 1185, baseType: !193, size: 16)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1807, file: !20, line: 1186, baseType: !193, size: 16, offset: 16)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1807, file: !20, line: 1187, baseType: !1812, size: 2304, offset: 64)
!1812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1813, size: 2304, elements: !282)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1814, line: 12, size: 768, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1815 = !{!1816, !1824, !1825, !3662, !3663}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1813, file: !1814, line: 13, baseType: !1817, size: 384)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1818, line: 17, size: 384, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1819 = !{!1820, !1821, !1822, !1823}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1817, file: !1818, line: 18, baseType: !115, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1817, file: !1818, line: 19, baseType: !115, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1817, file: !1818, line: 20, baseType: !547, size: 192, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1817, file: !1818, line: 22, baseType: !457, size: 128, align: 64, offset: 256)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1813, file: !1814, line: 14, baseType: !1187, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1813, file: !1814, line: 15, baseType: !1826, size: 64, offset: 448)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1827, line: 16, size: 64, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1828 = !{!1829}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1826, file: !1827, line: 17, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1530, line: 746, size: 58368, elements: !1832)
!1832 = !{!1833, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1913, !1924, !2016, !2020, !2023, !2054, !2055, !2056, !2057, !2068, !2070, !2071, !2072, !2073, !2074, !2075, !2086, !2087, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2104, !2105, !2112, !2113, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2345, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2393, !2399, !2400, !2401, !2402, !2403, !2407, !2410, !2417, !2422, !2425, !2428, !2431, !2434, !2572, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2610, !2611, !2612, !2621, !2629, !2630, !2631, !2632, !2633, !2638, !2639, !2640, !2643, !2644, !2647, !2650, !2653, !2661, !2664, !2665, !2751, !2752, !2753, !2754, !2755, !2761, !2762, !2763, !2764, !2767, !2768, !2771, !2774, !2775, !2778, !2779, !2780, !2783, !2784, !2785, !2788, !2789, !2790, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2822, !2825, !3317, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3329, !3401, !3403, !3404, !3405, !3406, !3407, !3408, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3437, !3438, !3439}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1831, file: !1530, line: 752, baseType: !1834, size: 192)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1835, line: 56, size: 192, elements: !1836)
!1835 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1836 = !{!1837, !1838, !1839, !1840}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1834, file: !1835, line: 57, baseType: !329, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1834, file: !1835, line: 58, baseType: !329, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1834, file: !1835, line: 59, baseType: !640, size: 32, offset: 128)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1834, file: !1835, line: 61, baseType: !640, size: 32, offset: 160)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1831, file: !1530, line: 754, baseType: !13, size: 32, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1831, file: !1530, line: 767, baseType: !159, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1831, file: !1530, line: 768, baseType: !525, size: 32, offset: 320)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !1530, line: 770, baseType: !13, size: 32, offset: 352)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1831, file: !1530, line: 771, baseType: !13, size: 32, offset: 384)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1831, file: !1530, line: 774, baseType: !115, size: 32, offset: 416)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1831, file: !1530, line: 775, baseType: !1848, size: 128, offset: 448)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1849, line: 58, size: 128, elements: !1850)
!1849 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1850 = !{!1851, !1852, !1857, !1858}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1848, file: !1849, line: 59, baseType: !451, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1849, line: 60, baseType: !1853, size: 32, offset: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1848, file: !1849, line: 60, size: 32, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1853, file: !1849, line: 61, baseType: !13, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1853, file: !1849, line: 62, baseType: !232, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1848, file: !1849, line: 65, baseType: !250, size: 16, offset: 96)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1848, file: !1849, line: 65, baseType: !250, size: 16, offset: 112)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1831, file: !1530, line: 776, baseType: !13, size: 32, offset: 576)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1831, file: !1530, line: 777, baseType: !329, size: 64, offset: 640)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1831, file: !1530, line: 778, baseType: !1830, size: 64, offset: 704)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1831, file: !1530, line: 787, baseType: !115, size: 32, offset: 768)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1831, file: !1530, line: 788, baseType: !115, size: 32, offset: 800)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1831, file: !1530, line: 790, baseType: !115, size: 32, offset: 832)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1831, file: !1530, line: 792, baseType: !115, size: 32, offset: 864)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1831, file: !1530, line: 793, baseType: !115, size: 32, offset: 896)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1831, file: !1530, line: 794, baseType: !115, size: 32, offset: 928)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1831, file: !1530, line: 795, baseType: !13, size: 32, offset: 960)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1831, file: !1530, line: 797, baseType: !1870, size: 2048, offset: 1024)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1530, line: 551, size: 2048, elements: !1871)
!1871 = !{!1872, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1892, !1895, !1896, !1897}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1870, file: !1530, line: 553, baseType: !1873, size: 128)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1530, line: 411, size: 128, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1873, file: !1530, line: 412, baseType: !329, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1873, file: !1530, line: 413, baseType: !640, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1870, file: !1530, line: 554, baseType: !399, size: 192, align: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1870, file: !1530, line: 555, baseType: !590, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1870, file: !1530, line: 556, baseType: !590, size: 64, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1870, file: !1530, line: 558, baseType: !200, size: 128, offset: 448)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1870, file: !1530, line: 559, baseType: !13, size: 32, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1870, file: !1530, line: 561, baseType: !590, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1870, file: !1530, line: 562, baseType: !590, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1870, file: !1530, line: 563, baseType: !590, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1870, file: !1530, line: 564, baseType: !590, size: 64, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1870, file: !1530, line: 565, baseType: !476, size: 64, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1870, file: !1530, line: 566, baseType: !590, size: 64, offset: 960)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1870, file: !1530, line: 568, baseType: !590, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1870, file: !1530, line: 571, baseType: !115, size: 32, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1870, file: !1530, line: 572, baseType: !1891, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1870, file: !1530, line: 574, baseType: !1893, size: 64, offset: 1216)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1530, line: 49, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1870, file: !1530, line: 576, baseType: !1893, size: 64, offset: 1280)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1870, file: !1530, line: 578, baseType: !329, size: 64, offset: 1344)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1870, file: !1530, line: 588, baseType: !1898, size: 512, align: 512, offset: 1536)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1530, line: 497, size: 512, align: 512, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1898, file: !1530, line: 498, baseType: !590, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1898, file: !1530, line: 499, baseType: !590, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1898, file: !1530, line: 500, baseType: !590, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1898, file: !1530, line: 501, baseType: !640, size: 32, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1898, file: !1530, line: 502, baseType: !640, size: 32, offset: 224)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1898, file: !1530, line: 503, baseType: !329, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1898, file: !1530, line: 504, baseType: !329, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1898, file: !1530, line: 505, baseType: !329, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1898, file: !1530, line: 506, baseType: !1909, size: 64, align: 64, offset: 448)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1530, line: 445, size: 64, align: 64, elements: !1910)
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1909, file: !1530, line: 446, baseType: !13, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1909, file: !1530, line: 447, baseType: !13, size: 32, offset: 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1831, file: !1530, line: 798, baseType: !1914, size: 384, offset: 3072)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1530, line: 592, size: 384, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1914, file: !1530, line: 593, baseType: !200, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1914, file: !1530, line: 594, baseType: !329, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1914, file: !1530, line: 595, baseType: !329, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1914, file: !1530, line: 596, baseType: !13, size: 32, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1914, file: !1530, line: 597, baseType: !193, size: 16, offset: 288)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1914, file: !1530, line: 598, baseType: !193, size: 16, offset: 304)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1914, file: !1530, line: 600, baseType: !1923, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1831, file: !1530, line: 799, baseType: !1925, size: 1792, offset: 3456)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1530, line: 610, size: 1792, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !2013, !2014}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1925, file: !1530, line: 611, baseType: !399, size: 192, align: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1925, file: !1530, line: 618, baseType: !590, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1925, file: !1530, line: 619, baseType: !590, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1925, file: !1530, line: 620, baseType: !590, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1925, file: !1530, line: 621, baseType: !590, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1925, file: !1530, line: 622, baseType: !590, size: 64, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1925, file: !1530, line: 629, baseType: !476, size: 64, offset: 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1925, file: !1530, line: 630, baseType: !590, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1925, file: !1530, line: 631, baseType: !13, size: 32, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1925, file: !1530, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1925, file: !1530, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1925, file: !1530, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1925, file: !1530, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1925, file: !1530, line: 662, baseType: !1941, size: 512, offset: 704)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1942)
!1942 = !{!1943, !1951, !1952, !1957, !2009, !2010, !2011, !2012}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1941, file: !31, line: 119, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1945, line: 9, size: 256, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1946 = !{!1947, !1948}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1944, file: !1945, line: 10, baseType: !399, size: 192, align: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1944, file: !1945, line: 11, baseType: !1949, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1950, line: 29, baseType: !476)
!1950 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1941, file: !31, line: 120, baseType: !1949, size: 64, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1941, file: !31, line: 121, baseType: !1953, size: 64, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!30, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1941, file: !31, line: 122, baseType: !1958, size: 64, offset: 384)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1960)
!1960 = !{!1961, !1986, !1987, !1990, !1995, !1996, !2004, !2008}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1959, file: !31, line: 160, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !31, line: 216, baseType: !485, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1963, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1963, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1963, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1963, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1963, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1963, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1963, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1963, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1963, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1963, file: !31, line: 227, baseType: !193, size: 16, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1963, file: !31, line: 228, baseType: !193, size: 16, offset: 208)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1963, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1963, file: !31, line: 235, baseType: !1949, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1963, file: !31, line: 236, baseType: !1956, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1963, file: !31, line: 237, baseType: !1949, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1963, file: !31, line: 238, baseType: !1956, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1963, file: !31, line: 239, baseType: !1983, size: 4096, align: 512, offset: 512)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1959, size: 4096, align: 512, elements: !1984)
!1984 = !{!1985}
!1985 = !DISubrange(count: 8)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1959, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1959, file: !31, line: 162, baseType: !1988, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !161, line: 32, baseType: !1989)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !314, line: 96, baseType: !115)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1959, file: !31, line: 163, baseType: !1991, size: 32, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !802, line: 274, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !802, line: 274, size: 32, elements: !1993)
!1993 = !{!1994}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1992, file: !802, line: 274, baseType: !806, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1959, file: !31, line: 164, baseType: !1956, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1959, file: !31, line: 165, baseType: !1997, size: 128, offset: 256)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1945, line: 14, size: 128, elements: !1998)
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1997, file: !1945, line: 15, baseType: !2000, size: 128)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !400, line: 26, size: 128, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2000, file: !400, line: 27, baseType: !416, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2000, file: !400, line: 28, baseType: !404, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1959, file: !31, line: 166, baseType: !2005, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1949}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1959, file: !31, line: 167, baseType: !1949, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1941, file: !31, line: 123, baseType: !240, size: 8, offset: 448)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1941, file: !31, line: 124, baseType: !240, size: 8, offset: 456)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1941, file: !31, line: 125, baseType: !240, size: 8, offset: 464)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1941, file: !31, line: 126, baseType: !240, size: 8, offset: 472)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1925, file: !1530, line: 671, baseType: !1941, size: 512, offset: 1216)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1925, file: !1530, line: 679, baseType: !2015, size: 64, offset: 1728)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1831, file: !1530, line: 800, baseType: !2017, size: 64, offset: 5248)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1530, line: 800, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1831, file: !1530, line: 809, baseType: !2021, size: 64, offset: 5312)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1530, line: 70, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1831, file: !1530, line: 825, baseType: !2024, size: 2048, align: 512, offset: 5632)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1530, line: 509, size: 2048, align: 512, elements: !2025)
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2024, file: !1530, line: 511, baseType: !590, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2024, file: !1530, line: 512, baseType: !590, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2024, file: !1530, line: 513, baseType: !590, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2024, file: !1530, line: 514, baseType: !590, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2024, file: !1530, line: 515, baseType: !590, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2024, file: !1530, line: 516, baseType: !590, size: 64, offset: 320)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2024, file: !1530, line: 518, baseType: !590, size: 64, offset: 384)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2024, file: !1530, line: 519, baseType: !590, size: 64, offset: 448)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2024, file: !1530, line: 520, baseType: !476, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2024, file: !1530, line: 522, baseType: !590, size: 64, offset: 576)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2024, file: !1530, line: 523, baseType: !590, size: 64, offset: 640)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2024, file: !1530, line: 524, baseType: !476, size: 64, offset: 704)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2024, file: !1530, line: 526, baseType: !476, size: 64, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2024, file: !1530, line: 527, baseType: !590, size: 64, offset: 832)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2024, file: !1530, line: 529, baseType: !590, size: 64, offset: 896)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2024, file: !1530, line: 530, baseType: !590, size: 64, offset: 960)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2024, file: !1530, line: 531, baseType: !590, size: 64, offset: 1024)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2024, file: !1530, line: 532, baseType: !590, size: 64, offset: 1088)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2024, file: !1530, line: 533, baseType: !590, size: 64, offset: 1152)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2024, file: !1530, line: 535, baseType: !590, size: 64, offset: 1216)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2024, file: !1530, line: 536, baseType: !590, size: 64, offset: 1280)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2024, file: !1530, line: 537, baseType: !590, size: 64, offset: 1344)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2024, file: !1530, line: 538, baseType: !590, size: 64, offset: 1408)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2024, file: !1530, line: 539, baseType: !590, size: 64, offset: 1472)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2024, file: !1530, line: 540, baseType: !590, size: 64, offset: 1536)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2024, file: !1530, line: 541, baseType: !590, size: 64, offset: 1600)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2024, file: !1530, line: 542, baseType: !590, size: 64, offset: 1664)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2024, file: !1530, line: 543, baseType: !590, size: 64, offset: 1728)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1831, file: !1530, line: 833, baseType: !13, size: 32, offset: 7680)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1831, file: !1530, line: 836, baseType: !13, size: 32, offset: 7712)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1831, file: !1530, line: 837, baseType: !115, size: 32, offset: 7744)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1831, file: !1530, line: 838, baseType: !2058, size: 64, offset: 7808)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2060)
!2060 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2061, line: 19, baseType: !2062)
!2061 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2061, line: 19, size: 64, elements: !2063)
!2063 = !{!2064}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2062, file: !2061, line: 19, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !2066)
!2066 = !{!2067}
!2067 = !DISubrange(count: 1)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1831, file: !1530, line: 839, baseType: !2069, size: 64, offset: 7872)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1831, file: !1530, line: 840, baseType: !2060, size: 64, offset: 7936)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1831, file: !1530, line: 841, baseType: !159, size: 64, offset: 8000)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1831, file: !1530, line: 843, baseType: !193, size: 16, offset: 8064)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1831, file: !1530, line: 845, baseType: !193, size: 16, offset: 8080)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1831, file: !1530, line: 848, baseType: !115, size: 32, offset: 8096)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1831, file: !1530, line: 849, baseType: !2076, size: 32, offset: 8128)
!2076 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1530, line: 718, size: 32, elements: !2077)
!2077 = !{!2078, !2085}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2076, file: !1530, line: 724, baseType: !2079, size: 32)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !1530, line: 719, size: 32, elements: !2080)
!2080 = !{!2081, !2082, !2083, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2079, file: !1530, line: 720, baseType: !240, size: 8)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2079, file: !1530, line: 721, baseType: !240, size: 8, offset: 8)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2079, file: !1530, line: 722, baseType: !240, size: 8, offset: 16)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2079, file: !1530, line: 723, baseType: !240, size: 8, offset: 24)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2076, file: !1530, line: 725, baseType: !640, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1831, file: !1530, line: 850, baseType: !200, size: 128, offset: 8192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1831, file: !1530, line: 851, baseType: !2088, size: 64, offset: 8320)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1530, line: 60, flags: DIFlagFwdDecl)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1831, file: !1530, line: 855, baseType: !329, size: 64, offset: 8384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1831, file: !1530, line: 856, baseType: !240, size: 8, offset: 8448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1831, file: !1530, line: 857, baseType: !240, size: 8, offset: 8456)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1831, file: !1530, line: 858, baseType: !115, size: 32, offset: 8480)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1831, file: !1530, line: 859, baseType: !200, size: 128, offset: 8512)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1831, file: !1530, line: 860, baseType: !115, size: 32, offset: 8640)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1831, file: !1530, line: 861, baseType: !200, size: 128, offset: 8704)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1831, file: !1530, line: 873, baseType: !2098, size: 256, offset: 8832)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1530, line: 376, size: 256, elements: !2099)
!2099 = !{!2100, !2101, !2102, !2103}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2098, file: !1530, line: 381, baseType: !329, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2098, file: !1530, line: 384, baseType: !592, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2098, file: !1530, line: 389, baseType: !592, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2098, file: !1530, line: 392, baseType: !592, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1831, file: !1530, line: 875, baseType: !200, size: 128, offset: 9088)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1831, file: !1530, line: 877, baseType: !2106, size: 320, offset: 9216)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2107, line: 86, size: 320, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2108 = !{!2109, !2110, !2111}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2106, file: !2107, line: 87, baseType: !115, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2106, file: !2107, line: 88, baseType: !200, size: 128, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2106, file: !2107, line: 89, baseType: !200, size: 128, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1831, file: !1530, line: 878, baseType: !399, size: 192, align: 64, offset: 9536)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1831, file: !1530, line: 881, baseType: !2114, size: 64, offset: 9728)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !2116)
!2116 = !{!2117, !2264}
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !44, line: 734, baseType: !2118, size: 10240)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !44, line: 734, size: 10240, elements: !2119)
!2119 = !{!2120, !2124, !2137, !2141, !2142, !2143, !2144, !2145, !2146, !2155, !2156, !2157, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2196, !2198, !2201, !2244, !2245, !2246, !2249, !2250, !2251, !2254, !2255, !2256, !2262, !2263}
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2118, file: !44, line: 739, baseType: !2121, size: 512, align: 512)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2118, file: !44, line: 739, size: 512, align: 512, elements: !2122)
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2121, file: !44, line: 747, baseType: !232, size: 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2118, file: !44, line: 750, baseType: !2125, size: 128, offset: 512)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2126, line: 218, size: 128, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2127 = !{!2128, !2135, !2136}
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2126, line: 219, baseType: !2129, size: 32)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2126, line: 219, size: 32, elements: !2130)
!2130 = !{!2131, !2132}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2129, file: !2126, line: 220, baseType: !212, size: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2129, file: !2126, line: 221, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2126, line: 197, baseType: !2134)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2126, line: 197, elements: !1378)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2125, file: !2126, line: 223, baseType: !13, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2125, file: !2126, line: 224, baseType: !159, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2118, file: !44, line: 752, baseType: !2138, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!329, !444, !329, !329, !329, !329}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2118, file: !44, line: 756, baseType: !329, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2118, file: !44, line: 757, baseType: !329, size: 64, offset: 768)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2118, file: !44, line: 760, baseType: !329, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2118, file: !44, line: 761, baseType: !329, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2118, file: !44, line: 763, baseType: !329, size: 64, offset: 960)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2118, file: !44, line: 764, baseType: !2147, size: 64, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2149, line: 299, baseType: !2150)
!2149 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 299, size: 64, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2150, file: !2149, line: 299, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2154, line: 18, baseType: !329)
!2154 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2118, file: !44, line: 773, baseType: !232, size: 32, offset: 1088)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2118, file: !44, line: 785, baseType: !232, size: 32, offset: 1120)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2118, file: !44, line: 795, baseType: !2158, size: 64, offset: 1152)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2160)
!2160 = !{!2161, !2162}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2159, file: !44, line: 727, baseType: !590, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2159, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2118, file: !44, line: 801, baseType: !329, size: 64, offset: 1216)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2118, file: !44, line: 804, baseType: !470, size: 64, offset: 1280)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2118, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2118, file: !44, line: 808, baseType: !212, size: 32, offset: 1376)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2118, file: !44, line: 823, baseType: !615, size: 320, offset: 1408)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2118, file: !44, line: 825, baseType: !200, size: 128, offset: 1728)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2118, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2118, file: !44, line: 849, baseType: !329, size: 64, offset: 1920)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2118, file: !44, line: 850, baseType: !329, size: 64, offset: 1984)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2118, file: !44, line: 852, baseType: !329, size: 64, offset: 2048)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2118, file: !44, line: 853, baseType: !329, size: 64, offset: 2112)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2118, file: !44, line: 854, baseType: !472, size: 64, offset: 2176)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2118, file: !44, line: 855, baseType: !329, size: 64, offset: 2240)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2118, file: !44, line: 856, baseType: !329, size: 64, offset: 2304)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2118, file: !44, line: 857, baseType: !329, size: 64, offset: 2368)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2118, file: !44, line: 858, baseType: !329, size: 64, offset: 2432)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2118, file: !44, line: 865, baseType: !806, size: 32, offset: 2496)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2118, file: !44, line: 867, baseType: !212, size: 32, offset: 2528)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2118, file: !44, line: 869, baseType: !329, size: 64, offset: 2560)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2118, file: !44, line: 869, baseType: !329, size: 64, offset: 2624)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2118, file: !44, line: 869, baseType: !329, size: 64, offset: 2688)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2118, file: !44, line: 869, baseType: !329, size: 64, offset: 2752)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2118, file: !44, line: 870, baseType: !329, size: 64, offset: 2816)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2118, file: !44, line: 870, baseType: !329, size: 64, offset: 2880)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2118, file: !44, line: 870, baseType: !329, size: 64, offset: 2944)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2118, file: !44, line: 871, baseType: !329, size: 64, offset: 3008)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2118, file: !44, line: 871, baseType: !329, size: 64, offset: 3072)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2118, file: !44, line: 871, baseType: !329, size: 64, offset: 3136)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2118, file: !44, line: 871, baseType: !329, size: 64, offset: 3200)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2118, file: !44, line: 873, baseType: !2193, size: 3328, offset: 3264)
!2193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 3328, elements: !2194)
!2194 = !{!2195}
!2195 = !DISubrange(count: 52)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2118, file: !44, line: 875, baseType: !2197, size: 1280, offset: 6592)
!2197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !732, size: 1280, elements: !543)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2118, file: !44, line: 877, baseType: !2199, size: 64, offset: 7872)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2118, file: !44, line: 880, baseType: !2202, size: 1088, offset: 7936)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2203, line: 72, baseType: !2204)
!2203 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2203, line: 23, size: 1088, elements: !2205)
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2213, !2214, !2215, !2216, !2241, !2242, !2243}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2204, file: !2203, line: 28, baseType: !590, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2204, file: !2203, line: 38, baseType: !472, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2204, file: !2203, line: 40, baseType: !329, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2204, file: !2203, line: 43, baseType: !615, size: 320, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2204, file: !2203, line: 44, baseType: !2211, size: 64, offset: 512)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2203, line: 44, flags: DIFlagFwdDecl)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2204, file: !2203, line: 48, baseType: !329, size: 64, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !2203, line: 59, baseType: !480, size: 256, offset: 640)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2204, file: !2203, line: 60, baseType: !159, size: 64, offset: 896)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2204, file: !2203, line: 61, baseType: !2217, size: 64, offset: 960)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2220, line: 13, size: 1216, elements: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2221 = !{!2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2219, file: !2220, line: 14, baseType: !159, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2219, file: !2220, line: 15, baseType: !329, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2219, file: !2220, line: 17, baseType: !329, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2219, file: !2220, line: 17, baseType: !329, size: 64, offset: 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2219, file: !2220, line: 18, baseType: !329, size: 64, offset: 256)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2219, file: !2220, line: 18, baseType: !329, size: 64, offset: 320)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2219, file: !2220, line: 19, baseType: !354, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2219, file: !2220, line: 21, baseType: !316, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2219, file: !2220, line: 23, baseType: !316, size: 64, offset: 512)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2219, file: !2220, line: 24, baseType: !316, size: 64, offset: 576)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2219, file: !2220, line: 25, baseType: !316, size: 64, offset: 640)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2219, file: !2220, line: 26, baseType: !316, size: 64, offset: 704)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2219, file: !2220, line: 27, baseType: !316, size: 64, offset: 768)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2219, file: !2220, line: 28, baseType: !316, size: 64, offset: 832)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2219, file: !2220, line: 29, baseType: !316, size: 64, offset: 896)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2219, file: !2220, line: 30, baseType: !316, size: 64, offset: 960)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2219, file: !2220, line: 31, baseType: !316, size: 64, offset: 1024)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2219, file: !2220, line: 32, baseType: !316, size: 64, offset: 1088)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2219, file: !2220, line: 33, baseType: !316, size: 64, offset: 1152)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2204, file: !2203, line: 63, baseType: !232, size: 32, offset: 1024)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2204, file: !2203, line: 69, baseType: !250, size: 16, offset: 1056)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2204, file: !2203, line: 70, baseType: !1242, size: 16, offset: 1072)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !44, line: 882, baseType: !329, size: 64, offset: 9024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2118, file: !44, line: 885, baseType: !212, size: 32, offset: 9088)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2118, file: !44, line: 886, baseType: !2247, size: 64, offset: 9152)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2118, file: !44, line: 901, baseType: !757, size: 64, offset: 9216)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2118, file: !44, line: 904, baseType: !444, size: 64, offset: 9280)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2118, file: !44, line: 906, baseType: !2252, size: 64, offset: 9344)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2118, file: !44, line: 930, baseType: !232, size: 32, offset: 9408)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2118, file: !44, line: 933, baseType: !232, size: 32, offset: 9440)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2118, file: !44, line: 935, baseType: !2257, size: 64, offset: 9472)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2258)
!2258 = !{!2259}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2257, file: !74, line: 104, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2118, file: !44, line: 940, baseType: !470, size: 64, offset: 9536)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2118, file: !44, line: 942, baseType: !1349, size: 256, offset: 9600)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2115, file: !44, line: 986, baseType: !2265, offset: 10240)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !562)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1831, file: !1530, line: 882, baseType: !2114, size: 64, offset: 9792)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1831, file: !1530, line: 884, baseType: !115, size: 32, offset: 9856)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1831, file: !1530, line: 885, baseType: !115, size: 32, offset: 9888)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1831, file: !1530, line: 886, baseType: !115, size: 32, offset: 9920)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1831, file: !1530, line: 888, baseType: !115, size: 32, offset: 9952)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1831, file: !1530, line: 890, baseType: !329, size: 64, offset: 9984)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1831, file: !1530, line: 893, baseType: !13, size: 32, offset: 10048)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1831, file: !1530, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1831, file: !1530, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1831, file: !1530, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1831, file: !1530, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1831, file: !1530, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1831, file: !1530, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1831, file: !1530, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1831, file: !1530, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1831, file: !1530, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1831, file: !1530, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1831, file: !1530, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1831, file: !1530, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1831, file: !1530, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1831, file: !1530, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1831, file: !1530, line: 969, baseType: !329, size: 64, offset: 10176)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1831, file: !1530, line: 971, baseType: !2289, size: 448, offset: 10240)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2290)
!2290 = !{!2291, !2292, !2297}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2289, file: !68, line: 26, baseType: !329, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2289, file: !68, line: 27, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!316, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !68, line: 28, baseType: !2298, size: 320, offset: 128)
!2298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !68, line: 28, size: 320, elements: !2299)
!2299 = !{!2300, !2310, !2335}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2298, file: !68, line: 37, baseType: !2301, size: 320)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !68, line: 30, size: 320, elements: !2302)
!2302 = !{!2303, !2305, !2306, !2307, !2308, !2309}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2301, file: !68, line: 31, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2301, file: !68, line: 32, baseType: !640, size: 32, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2301, file: !68, line: 33, baseType: !640, size: 32, offset: 96)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2301, file: !68, line: 34, baseType: !640, size: 32, offset: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2301, file: !68, line: 35, baseType: !590, size: 64, offset: 192)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2301, file: !68, line: 36, baseType: !2304, size: 64, offset: 256)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2298, file: !68, line: 47, baseType: !2311, size: 192)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !68, line: 39, size: 192, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2334}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2311, file: !68, line: 40, baseType: !1988, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2311, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, scope: !2311, file: !68, line: 42, baseType: !2316, size: 64, offset: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2311, file: !68, line: 42, size: 64, elements: !2317)
!2317 = !{!2318, !2326}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2316, file: !68, line: 43, baseType: !2319, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2321, line: 7, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2322 = !{!2323, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2320, file: !2321, line: 8, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !314, line: 93, baseType: !478)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2320, file: !2321, line: 9, baseType: !478, size: 64, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2316, file: !68, line: 44, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2329, line: 7, size: 64, elements: !2330)
!2329 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2330 = !{!2331, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2328, file: !2329, line: 8, baseType: !2332, size: 32)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2329, line: 5, baseType: !607)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2328, file: !2329, line: 9, baseType: !607, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2311, file: !68, line: 46, baseType: !590, size: 64, offset: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2298, file: !68, line: 55, baseType: !2336, size: 256)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !68, line: 49, size: 256, elements: !2337)
!2337 = !{!2338, !2341, !2342, !2343, !2344}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2336, file: !68, line: 50, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2336, file: !68, line: 51, baseType: !115, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2336, file: !68, line: 52, baseType: !115, size: 32, offset: 96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2336, file: !68, line: 53, baseType: !329, size: 64, offset: 128)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2336, file: !68, line: 54, baseType: !329, size: 64, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1831, file: !1530, line: 973, baseType: !2346, size: 32, offset: 10688)
!2346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !161, line: 27, baseType: !2347)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !314, line: 28, baseType: !115)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1831, file: !1530, line: 974, baseType: !2346, size: 32, offset: 10720)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1831, file: !1530, line: 978, baseType: !329, size: 64, offset: 10752)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1831, file: !1530, line: 987, baseType: !1830, size: 64, offset: 10816)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1831, file: !1530, line: 990, baseType: !1830, size: 64, offset: 10880)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1831, file: !1530, line: 995, baseType: !200, size: 128, offset: 10944)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1831, file: !1530, line: 996, baseType: !200, size: 128, offset: 11072)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1831, file: !1530, line: 997, baseType: !1830, size: 64, offset: 11200)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1831, file: !1530, line: 1005, baseType: !200, size: 128, offset: 11264)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1831, file: !1530, line: 1006, baseType: !200, size: 128, offset: 11392)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1831, file: !1530, line: 1009, baseType: !521, size: 64, offset: 11520)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1831, file: !1530, line: 1010, baseType: !2359, size: 512, offset: 11584)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 512, elements: !543)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1831, file: !1530, line: 1011, baseType: !200, size: 128, offset: 12096)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1831, file: !1530, line: 1012, baseType: !200, size: 128, offset: 12224)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1831, file: !1530, line: 1014, baseType: !1088, size: 64, offset: 12352)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1831, file: !1530, line: 1017, baseType: !1235, size: 64, offset: 12416)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1831, file: !1530, line: 1020, baseType: !1235, size: 64, offset: 12480)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1831, file: !1530, line: 1023, baseType: !159, size: 64, offset: 12544)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1831, file: !1530, line: 1025, baseType: !590, size: 64, offset: 12608)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1831, file: !1530, line: 1026, baseType: !590, size: 64, offset: 12672)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1831, file: !1530, line: 1031, baseType: !590, size: 64, offset: 12736)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1831, file: !1530, line: 1032, baseType: !2370, size: 192, offset: 12800)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1530, line: 324, size: 192, elements: !2371)
!2371 = !{!2372, !2373, !2374}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2370, file: !1530, line: 326, baseType: !590, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2370, file: !1530, line: 327, baseType: !590, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2370, file: !1530, line: 328, baseType: !485, size: 32, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1831, file: !1530, line: 1041, baseType: !329, size: 64, offset: 12992)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1831, file: !1530, line: 1042, baseType: !329, size: 64, offset: 13056)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1831, file: !1530, line: 1045, baseType: !590, size: 64, offset: 13120)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1831, file: !1530, line: 1048, baseType: !590, size: 64, offset: 13184)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1831, file: !1530, line: 1051, baseType: !329, size: 64, offset: 13248)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1831, file: !1530, line: 1052, baseType: !329, size: 64, offset: 13312)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1831, file: !1530, line: 1055, baseType: !2382, size: 640, offset: 13376)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2383, line: 132, size: 640, elements: !2384)
!2383 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2384 = !{!2385, !2391, !2392}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2382, file: !2383, line: 133, baseType: !2386, size: 576)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2387, size: 576, elements: !282)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2383, line: 117, size: 192, elements: !2388)
!2388 = !{!2389, !2390}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2387, file: !2383, line: 118, baseType: !590, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2387, file: !2383, line: 119, baseType: !1997, size: 128, offset: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2382, file: !2383, line: 134, baseType: !13, size: 32, offset: 576)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2382, file: !2383, line: 135, baseType: !13, size: 32, offset: 608)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1831, file: !1530, line: 1058, baseType: !2394, size: 448, offset: 14016)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2383, line: 144, size: 448, elements: !2395)
!2395 = !{!2396, !2397, !2398}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2394, file: !2383, line: 145, baseType: !457, size: 128, align: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2394, file: !2383, line: 146, baseType: !480, size: 256, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2394, file: !2383, line: 147, baseType: !13, size: 32, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1831, file: !1530, line: 1064, baseType: !569, size: 64, offset: 14464)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1831, file: !1530, line: 1067, baseType: !569, size: 64, offset: 14528)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1831, file: !1530, line: 1070, baseType: !569, size: 64, offset: 14592)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1831, file: !1530, line: 1074, baseType: !599, size: 64, offset: 14656)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1831, file: !1530, line: 1084, baseType: !2404, size: 128, offset: 14720)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2405)
!2405 = !{!2406}
!2406 = !DISubrange(count: 16)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1831, file: !1530, line: 1086, baseType: !2408, size: 64, offset: 14848)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1530, line: 55, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1831, file: !1530, line: 1089, baseType: !2411, size: 64, offset: 14912)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2412, line: 12, size: 64, elements: !2413)
!2412 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2411, file: !2412, line: 13, baseType: !2415, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2412, line: 8, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1831, file: !1530, line: 1090, baseType: !2418, size: 128, offset: 14976)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2419, line: 13, size: 128, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2418, file: !2419, line: 14, baseType: !200, size: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1831, file: !1530, line: 1097, baseType: !2423, size: 64, offset: 15104)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1530, line: 50, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1831, file: !1530, line: 1100, baseType: !2426, size: 64, offset: 15168)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1530, line: 1100, flags: DIFlagFwdDecl)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1831, file: !1530, line: 1103, baseType: !2429, size: 64, offset: 15232)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1530, line: 53, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1831, file: !1530, line: 1107, baseType: !2432, size: 64, offset: 15296)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1530, line: 56, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1831, file: !1530, line: 1110, baseType: !2435, size: 64, offset: 15360)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2437, line: 93, size: 8768, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2486, !2495, !2496, !2498, !2499, !2500, !2503, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2541, !2542, !2549, !2559, !2562, !2563, !2566, !2567, !2568, !2569, !2570, !2571}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2436, file: !2437, line: 94, baseType: !525, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2436, file: !2437, line: 95, baseType: !232, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2436, file: !2437, line: 96, baseType: !115, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2436, file: !2437, line: 97, baseType: !115, size: 32, offset: 96)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2436, file: !2437, line: 98, baseType: !200, size: 128, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2436, file: !2437, line: 100, baseType: !547, size: 192, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2436, file: !2437, line: 103, baseType: !1830, size: 64, offset: 448)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2436, file: !2437, line: 106, baseType: !2447, size: 192, offset: 512)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !762, line: 32, size: 192, elements: !2448)
!2448 = !{!2449, !2450}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2447, file: !762, line: 33, baseType: !200, size: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2447, file: !762, line: 34, baseType: !2451, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2452, line: 25, baseType: !2453)
!2452 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2452, line: 23, size: 64, elements: !2454)
!2454 = !{!2455}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2453, file: !2452, line: 24, baseType: !2065, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2436, file: !2437, line: 109, baseType: !534, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2436, file: !2437, line: 112, baseType: !115, size: 32, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2436, file: !2437, line: 114, baseType: !115, size: 32, offset: 800)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2436, file: !2437, line: 115, baseType: !1830, size: 64, offset: 832)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2436, file: !2437, line: 118, baseType: !115, size: 32, offset: 896)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2436, file: !2437, line: 119, baseType: !13, size: 32, offset: 928)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2436, file: !2437, line: 121, baseType: !2463, size: 64, offset: 960)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2437, line: 80, size: 448, elements: !2465)
!2465 = !{!2466, !2467, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2464, file: !2437, line: 81, baseType: !232, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2464, file: !2437, line: 82, baseType: !2468, size: 128, offset: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2437, line: 75, size: 128, elements: !2469)
!2469 = !{!2470, !2471}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2468, file: !2437, line: 76, baseType: !1830, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2468, file: !2437, line: 77, baseType: !2472, size: 64, offset: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2464, file: !2437, line: 83, baseType: !1089, size: 256, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2436, file: !2437, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2436, file: !2437, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2436, file: !2437, line: 138, baseType: !13, size: 32, offset: 1056)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2436, file: !2437, line: 139, baseType: !200, size: 128, offset: 1088)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2436, file: !2437, line: 142, baseType: !1941, size: 512, offset: 1216)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2436, file: !2437, line: 143, baseType: !1949, size: 64, offset: 1728)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2436, file: !2437, line: 150, baseType: !2481, size: 256, offset: 1792)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2482, size: 256, elements: !1225)
!2482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2437, line: 38, size: 128, elements: !2483)
!2483 = !{!2484, !2485}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2482, file: !2437, line: 39, baseType: !590, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2482, file: !2437, line: 40, baseType: !590, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2436, file: !2437, line: 156, baseType: !2487, size: 192, offset: 2048)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2437, line: 66, size: 192, elements: !2488)
!2488 = !{!2489}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2487, file: !2437, line: 67, baseType: !2490, size: 192)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2437, line: 47, size: 192, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2490, file: !2437, line: 48, baseType: !472, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2490, file: !2437, line: 49, baseType: !472, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2490, file: !2437, line: 50, baseType: !472, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2436, file: !2437, line: 160, baseType: !2382, size: 640, offset: 2240)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2436, file: !2437, line: 163, baseType: !2497, size: 256, offset: 2880)
!2497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !521, size: 256, elements: !543)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2436, file: !2437, line: 169, baseType: !521, size: 64, offset: 3136)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2436, file: !2437, line: 172, baseType: !115, size: 32, offset: 3200)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2436, file: !2437, line: 174, baseType: !2501, size: 64, offset: 3264)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2437, line: 174, flags: DIFlagFwdDecl)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2436, file: !2437, line: 185, baseType: !2504, size: 64, offset: 3328)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !802, line: 860, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !802, line: 853, size: 64, elements: !2506)
!2506 = !{!2507, !2508}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2505, file: !802, line: 858, baseType: !801, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2505, file: !802, line: 859, baseType: !212, size: 32, offset: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2436, file: !2437, line: 186, baseType: !590, size: 64, offset: 3392)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2436, file: !2437, line: 186, baseType: !590, size: 64, offset: 3456)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2436, file: !2437, line: 186, baseType: !590, size: 64, offset: 3520)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2436, file: !2437, line: 186, baseType: !590, size: 64, offset: 3584)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2436, file: !2437, line: 187, baseType: !590, size: 64, offset: 3648)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2436, file: !2437, line: 188, baseType: !590, size: 64, offset: 3712)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2436, file: !2437, line: 189, baseType: !2370, size: 192, offset: 3776)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2436, file: !2437, line: 190, baseType: !329, size: 64, offset: 3968)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2436, file: !2437, line: 190, baseType: !329, size: 64, offset: 4032)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2436, file: !2437, line: 190, baseType: !329, size: 64, offset: 4096)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2436, file: !2437, line: 190, baseType: !329, size: 64, offset: 4160)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2436, file: !2437, line: 191, baseType: !329, size: 64, offset: 4224)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2436, file: !2437, line: 191, baseType: !329, size: 64, offset: 4288)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2436, file: !2437, line: 191, baseType: !329, size: 64, offset: 4352)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2436, file: !2437, line: 191, baseType: !329, size: 64, offset: 4416)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2436, file: !2437, line: 192, baseType: !329, size: 64, offset: 4480)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2436, file: !2437, line: 192, baseType: !329, size: 64, offset: 4544)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2436, file: !2437, line: 192, baseType: !329, size: 64, offset: 4608)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2436, file: !2437, line: 192, baseType: !329, size: 64, offset: 4672)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2436, file: !2437, line: 193, baseType: !329, size: 64, offset: 4736)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2436, file: !2437, line: 193, baseType: !329, size: 64, offset: 4800)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2436, file: !2437, line: 194, baseType: !2531, size: 448, offset: 4864)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2532, line: 12, size: 448, elements: !2533)
!2532 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2533 = !{!2534, !2535, !2536, !2537, !2538, !2539, !2540}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2531, file: !2532, line: 15, baseType: !590, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2531, file: !2532, line: 17, baseType: !590, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2531, file: !2532, line: 19, baseType: !590, size: 64, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2531, file: !2532, line: 21, baseType: !590, size: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2531, file: !2532, line: 29, baseType: !590, size: 64, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2531, file: !2532, line: 35, baseType: !590, size: 64, offset: 320)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2531, file: !2532, line: 44, baseType: !590, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2436, file: !2437, line: 202, baseType: !592, size: 64, offset: 5312)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2436, file: !2437, line: 213, baseType: !2543, size: 2048, offset: 5376)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2544, size: 2048, elements: !2405)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2545, line: 43, size: 128, elements: !2546)
!2545 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2544, file: !2545, line: 44, baseType: !328, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2544, file: !2545, line: 45, baseType: !328, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2436, file: !2437, line: 216, baseType: !2550, size: 448, offset: 7424)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2437, line: 30, size: 448, elements: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2550, file: !2437, line: 31, baseType: !115, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2550, file: !2437, line: 32, baseType: !316, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2550, file: !2437, line: 33, baseType: !329, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2550, file: !2437, line: 34, baseType: !590, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2550, file: !2437, line: 34, baseType: !590, size: 64, offset: 256)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2550, file: !2437, line: 35, baseType: !329, size: 64, offset: 320)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2550, file: !2437, line: 35, baseType: !329, size: 64, offset: 384)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2436, file: !2437, line: 219, baseType: !2560, size: 64, offset: 7872)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2437, line: 219, flags: DIFlagFwdDecl)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2436, file: !2437, line: 222, baseType: !13, size: 32, offset: 7936)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2436, file: !2437, line: 223, baseType: !2564, size: 64, offset: 8000)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2437, line: 223, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2436, file: !2437, line: 230, baseType: !344, size: 8, offset: 8064)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2436, file: !2437, line: 231, baseType: !645, size: 16, offset: 8080)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2436, file: !2437, line: 232, baseType: !645, size: 16, offset: 8096)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2436, file: !2437, line: 234, baseType: !2114, size: 64, offset: 8128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2436, file: !2437, line: 237, baseType: !480, size: 256, offset: 8192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2436, file: !2437, line: 243, baseType: !615, size: 320, offset: 8448)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1831, file: !1530, line: 1111, baseType: !2573, size: 64, offset: 15424)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2437, line: 20, size: 16640, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2574, file: !2437, line: 21, baseType: !212, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2574, file: !2437, line: 22, baseType: !525, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2574, file: !2437, line: 23, baseType: !547, size: 192, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2574, file: !2437, line: 24, baseType: !2580, size: 16384, offset: 256)
!2580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2581, size: 16384, elements: !286)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !762, line: 51, size: 256, elements: !2582)
!2582 = !{!2583}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2581, file: !762, line: 52, baseType: !2584, size: 256)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !762, line: 37, size: 256, elements: !2585)
!2585 = !{!2586, !2593, !2594, !2598}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2584, file: !762, line: 39, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2588, line: 83, baseType: !2589)
!2588 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2588, line: 82, baseType: !2591)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{null, !115}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2584, file: !762, line: 40, baseType: !329, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2584, file: !762, line: 46, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2588, line: 86, baseType: !2596)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2588, line: 85, baseType: !1454)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2584, file: !762, line: 48, baseType: !2451, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1831, file: !1530, line: 1112, baseType: !2451, size: 64, offset: 15488)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1831, file: !1530, line: 1113, baseType: !2451, size: 64, offset: 15552)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1831, file: !1530, line: 1115, baseType: !2451, size: 64, offset: 15616)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1831, file: !1530, line: 1116, baseType: !2447, size: 192, offset: 15680)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1831, file: !1530, line: 1117, baseType: !329, size: 64, offset: 15872)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1831, file: !1530, line: 1118, baseType: !326, size: 64, offset: 15936)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1831, file: !1530, line: 1119, baseType: !13, size: 32, offset: 16000)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1831, file: !1530, line: 1121, baseType: !460, size: 64, offset: 16064)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1831, file: !1530, line: 1125, baseType: !2608, size: 64, offset: 16128)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1530, line: 43, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1831, file: !1530, line: 1127, baseType: !375, size: 32, offset: 16192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1831, file: !1530, line: 1128, baseType: !13, size: 32, offset: 16224)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1831, file: !1530, line: 1130, baseType: !2613, size: 128, offset: 16256)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2614, line: 37, size: 128, elements: !2615)
!2614 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2615 = !{!2616, !2617, !2618}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2613, file: !2614, line: 38, baseType: !115, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2613, file: !2614, line: 39, baseType: !232, size: 32, offset: 32)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2613, file: !2614, line: 40, baseType: !2619, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2614, line: 24, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1831, file: !1530, line: 1131, baseType: !2622, size: 256, offset: 16384)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2623, line: 12, size: 256, elements: !2624)
!2623 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2624 = !{!2625, !2626, !2627, !2628}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2622, file: !2623, line: 13, baseType: !281, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2622, file: !2623, line: 14, baseType: !329, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2622, file: !2623, line: 15, baseType: !329, size: 64, offset: 128)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2622, file: !2623, line: 16, baseType: !344, size: 8, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1831, file: !1530, line: 1134, baseType: !590, size: 64, offset: 16640)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1831, file: !1530, line: 1135, baseType: !590, size: 64, offset: 16704)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1831, file: !1530, line: 1138, baseType: !212, size: 32, offset: 16768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1831, file: !1530, line: 1141, baseType: !485, size: 32, offset: 16800)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1831, file: !1530, line: 1143, baseType: !2634, size: 64, offset: 16832)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1530, line: 735, size: 64, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2634, file: !1530, line: 736, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1831, file: !1530, line: 1147, baseType: !2000, size: 128, offset: 16896)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1831, file: !1530, line: 1149, baseType: !1830, size: 64, offset: 17024)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1831, file: !1530, line: 1151, baseType: !2641, size: 64, offset: 17088)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1530, line: 1151, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1831, file: !1530, line: 1188, baseType: !159, size: 64, offset: 17152)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1831, file: !1530, line: 1191, baseType: !2645, size: 64, offset: 17216)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1530, line: 44, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1831, file: !1530, line: 1194, baseType: !2648, size: 64, offset: 17280)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1530, line: 45, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1831, file: !1530, line: 1197, baseType: !2651, size: 64, offset: 17344)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1530, line: 61, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1831, file: !1530, line: 1199, baseType: !2654, size: 64, offset: 17408)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2656, line: 99, size: 128, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2657 = !{!2658, !2659, !2660}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2655, file: !2656, line: 100, baseType: !470, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2655, file: !2656, line: 101, baseType: !232, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2655, file: !2656, line: 103, baseType: !193, size: 16, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1831, file: !1530, line: 1202, baseType: !2662, size: 64, offset: 17472)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1530, line: 48, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1831, file: !1530, line: 1205, baseType: !329, size: 64, offset: 17536)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1831, file: !1530, line: 1206, baseType: !2666, size: 64, offset: 17600)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !762, line: 14, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !762, line: 12, size: 384, elements: !2669)
!2669 = !{!2670}
!2670 = !DIDerivedType(tag: DW_TAG_member, scope: !2668, file: !762, line: 13, baseType: !2671, size: 384)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2668, file: !762, line: 13, size: 384, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2671, file: !762, line: 13, baseType: !115, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2671, file: !762, line: 13, baseType: !115, size: 32, offset: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2671, file: !762, line: 13, baseType: !115, size: 32, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2671, file: !762, line: 13, baseType: !2677, size: 256, offset: 128)
!2677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2678, line: 37, size: 256, elements: !2679)
!2678 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2679 = !{!2680, !2685, !2698, !2704, !2713, !2740, !2745}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2677, file: !2678, line: 42, baseType: !2681, size: 64)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 39, size: 64, elements: !2682)
!2682 = !{!2683, !2684}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2681, file: !2678, line: 40, baseType: !2347, size: 32)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2681, file: !2678, line: 41, baseType: !381, size: 32, offset: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2677, file: !2678, line: 50, baseType: !2686, size: 192)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 45, size: 192, elements: !2687)
!2687 = !{!2688, !2690, !2691, !2697}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2686, file: !2678, line: 46, baseType: !2689, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !314, line: 95, baseType: !115)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2686, file: !2678, line: 47, baseType: !115, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2686, file: !2678, line: 48, baseType: !2692, size: 64, offset: 64)
!2692 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2678, line: 11, baseType: !2693)
!2693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2678, line: 8, size: 64, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2693, file: !2678, line: 9, baseType: !115, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2693, file: !2678, line: 10, baseType: !159, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2686, file: !2678, line: 49, baseType: !115, size: 32, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2677, file: !2678, line: 57, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 53, size: 128, elements: !2700)
!2700 = !{!2701, !2702, !2703}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2699, file: !2678, line: 54, baseType: !2347, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2699, file: !2678, line: 55, baseType: !381, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2699, file: !2678, line: 56, baseType: !2692, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2677, file: !2678, line: 66, baseType: !2705, size: 256)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 60, size: 256, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2710, !2712}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2705, file: !2678, line: 61, baseType: !2347, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2705, file: !2678, line: 62, baseType: !381, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2705, file: !2678, line: 63, baseType: !115, size: 32, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2705, file: !2678, line: 64, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !314, line: 94, baseType: !315)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2705, file: !2678, line: 65, baseType: !2711, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2677, file: !2678, line: 105, baseType: !2714, size: 256)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 69, size: 256, elements: !2715)
!2715 = !{!2716, !2717}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2714, file: !2678, line: 70, baseType: !159, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, scope: !2714, file: !2678, line: 79, baseType: !2718, size: 192, offset: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2714, file: !2678, line: 79, size: 192, elements: !2719)
!2719 = !{!2720, !2721, !2722, !2729, !2734}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2718, file: !2678, line: 81, baseType: !115, size: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2718, file: !2678, line: 86, baseType: !645, size: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2718, file: !2678, line: 92, baseType: !2723, size: 192)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !2678, line: 88, size: 192, elements: !2724)
!2724 = !{!2725, !2727, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2723, file: !2678, line: 89, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1984)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2723, file: !2678, line: 90, baseType: !159, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2723, file: !2678, line: 91, baseType: !159, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2718, file: !2678, line: 97, baseType: !2730, size: 96)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !2678, line: 94, size: 96, elements: !2731)
!2731 = !{!2732, !2733}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2730, file: !2678, line: 95, baseType: !2726, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2730, file: !2678, line: 96, baseType: !641, size: 32, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2718, file: !2678, line: 103, baseType: !2735, size: 128)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2718, file: !2678, line: 99, size: 128, elements: !2736)
!2736 = !{!2737, !2738, !2739}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2735, file: !2678, line: 100, baseType: !329, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2735, file: !2678, line: 101, baseType: !641, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2735, file: !2678, line: 102, baseType: !641, size: 32, offset: 96)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2677, file: !2678, line: 111, baseType: !2741, size: 128)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 108, size: 128, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2741, file: !2678, line: 109, baseType: !316, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2741, file: !2678, line: 110, baseType: !115, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2677, file: !2678, line: 118, baseType: !2746, size: 128)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2677, file: !2678, line: 114, size: 128, elements: !2747)
!2747 = !{!2748, !2749, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2746, file: !2678, line: 115, baseType: !159, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2746, file: !2678, line: 116, baseType: !115, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2746, file: !2678, line: 117, baseType: !13, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1831, file: !1530, line: 1208, baseType: !2531, size: 448, offset: 17664)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1831, file: !1530, line: 1215, baseType: !590, size: 64, offset: 18112)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1831, file: !1530, line: 1217, baseType: !590, size: 64, offset: 18176)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1831, file: !1530, line: 1219, baseType: !590, size: 64, offset: 18240)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1831, file: !1530, line: 1223, baseType: !2756, size: 64, offset: 18304)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2757, line: 99, baseType: !2758)
!2757 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2757, line: 99, size: 64, elements: !2759)
!2759 = !{!2760}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2758, file: !2757, line: 99, baseType: !2065, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1831, file: !1530, line: 1225, baseType: !801, size: 32, offset: 18368)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1831, file: !1530, line: 1226, baseType: !115, size: 32, offset: 18400)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1831, file: !1530, line: 1227, baseType: !115, size: 32, offset: 18432)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1831, file: !1530, line: 1231, baseType: !2765, size: 64, offset: 18496)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1530, line: 1231, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1831, file: !1530, line: 1233, baseType: !200, size: 128, offset: 18560)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1831, file: !1530, line: 1240, baseType: !2769, size: 64, offset: 18688)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1530, line: 62, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1831, file: !1530, line: 1242, baseType: !2772, size: 64, offset: 18752)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1530, line: 1242, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1831, file: !1530, line: 1244, baseType: !200, size: 128, offset: 18816)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1831, file: !1530, line: 1245, baseType: !2776, size: 64, offset: 18944)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1530, line: 51, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1831, file: !1530, line: 1246, baseType: !480, size: 256, offset: 19008)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1831, file: !1530, line: 1247, baseType: !13, size: 32, offset: 19264)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1831, file: !1530, line: 1250, baseType: !2781, size: 64, offset: 19328)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1530, line: 57, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1831, file: !1530, line: 1251, baseType: !480, size: 256, offset: 19392)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1831, file: !1530, line: 1252, baseType: !200, size: 128, offset: 19648)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1831, file: !1530, line: 1259, baseType: !2786, size: 64, offset: 19776)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1831, file: !1530, line: 1260, baseType: !645, size: 16, offset: 19840)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1831, file: !1530, line: 1261, baseType: !645, size: 16, offset: 19856)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1831, file: !1530, line: 1314, baseType: !2791, size: 64, offset: 19904)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2793, line: 62, size: 256, align: 256, elements: !2794)
!2793 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2794 = !{!2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2792, file: !2793, line: 75, baseType: !641, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2792, file: !2793, line: 90, baseType: !641, size: 32, offset: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2792, file: !2793, line: 112, baseType: !591, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2792, file: !2793, line: 132, baseType: !641, size: 32, offset: 128)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2792, file: !2793, line: 140, baseType: !641, size: 32, offset: 160)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2792, file: !2793, line: 149, baseType: !641, size: 32, offset: 192)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2792, file: !2793, line: 154, baseType: !2802, offset: 224)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !562)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1831, file: !1530, line: 1315, baseType: !640, size: 32, offset: 19968)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1831, file: !1530, line: 1316, baseType: !640, size: 32, offset: 20000)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1831, file: !1530, line: 1321, baseType: !329, size: 64, offset: 20032)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1831, file: !1530, line: 1325, baseType: !115, size: 32, offset: 20096)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1831, file: !1530, line: 1326, baseType: !115, size: 32, offset: 20128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1831, file: !1530, line: 1327, baseType: !115, size: 32, offset: 20160)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1831, file: !1530, line: 1328, baseType: !115, size: 32, offset: 20192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1831, file: !1530, line: 1329, baseType: !457, size: 128, align: 64, offset: 20224)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1831, file: !1530, line: 1332, baseType: !2812, size: 128, offset: 20352)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2813, line: 51, size: 128, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2814 = !{!2815, !2820, !2821}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2812, file: !2813, line: 60, baseType: !2816, size: 64)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2817, line: 7, size: 64, elements: !2818)
!2817 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2818 = !{!2819}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2816, file: !2817, line: 12, baseType: !2062, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2812, file: !2813, line: 63, baseType: !344, size: 8, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2812, file: !2813, line: 70, baseType: !344, size: 8, offset: 72)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1831, file: !1530, line: 1335, baseType: !2823, size: 64, offset: 20480)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1530, line: 59, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1831, file: !1530, line: 1337, baseType: !2826, size: 128, offset: 20544)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2813, line: 39, size: 128, elements: !2827)
!2827 = !{!2828, !3315, !3316}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2826, file: !2813, line: 40, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2831)
!2831 = !{!2832, !2833, !3309, !3314}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2830, file: !44, line: 75, baseType: !329, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !44, line: 83, baseType: !2834, size: 320, offset: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !44, line: 83, size: 320, elements: !2835)
!2835 = !{!2836, !3060, !3074, !3078, !3308}
!2836 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !44, line: 84, baseType: !2837, size: 320)
!2837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !44, line: 84, size: 320, elements: !2838)
!2838 = !{!2839, !2850, !3054, !3059}
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !44, line: 90, baseType: !2840, size: 128)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !44, line: 90, size: 128, elements: !2841)
!2841 = !{!2842, !2843, !2848, !2849}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2840, file: !44, line: 91, baseType: !200, size: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, scope: !2840, file: !44, line: 94, baseType: !2844, size: 128)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !44, line: 94, size: 128, elements: !2845)
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2844, file: !44, line: 96, baseType: !159, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2844, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2840, file: !44, line: 102, baseType: !200, size: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2840, file: !44, line: 103, baseType: !200, size: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2837, file: !44, line: 106, baseType: !2851, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !2853)
!2853 = !{!2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !3046, !3047, !3048, !3051, !3052, !3053}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2852, file: !20, line: 473, baseType: !835, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2852, file: !20, line: 474, baseType: !1028, size: 128, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2852, file: !20, line: 475, baseType: !615, size: 320, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2852, file: !20, line: 476, baseType: !160, size: 32, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2852, file: !20, line: 477, baseType: !232, size: 32, offset: 544)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2852, file: !20, line: 482, baseType: !2000, size: 128, offset: 576)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2852, file: !20, line: 483, baseType: !329, size: 64, offset: 704)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2852, file: !20, line: 484, baseType: !329, size: 64, offset: 768)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2852, file: !20, line: 485, baseType: !2863, size: 64, offset: 832)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !2866)
!2866 = !{!2867, !2871, !2941, !2945, !2949, !2955, !2961, !2965, !2970, !2974, !2978, !2982, !3010, !3014, !3018, !3022, !3027, !3031, !3038, !3042}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2865, file: !20, line: 405, baseType: !2868, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!115, !2829, !1491}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !2865, file: !20, line: 406, baseType: !2872, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!115, !444, !2875}
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !2877)
!2877 = !{!2878, !2908, !2922}
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !44, line: 295, baseType: !2879, size: 512)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2876, file: !44, line: 295, size: 512, elements: !2880)
!2880 = !{!2881, !2907}
!2881 = !DIDerivedType(tag: DW_TAG_member, scope: !2879, file: !44, line: 296, baseType: !2882, size: 448)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2879, file: !44, line: 296, size: 448, elements: !2883)
!2883 = !{!2884, !2885, !2894, !2895, !2896, !2905, !2906}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2882, file: !44, line: 298, baseType: !329, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !44, line: 299, baseType: !2886, size: 128, offset: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2882, file: !44, line: 299, size: 128, elements: !2887)
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2886, file: !44, line: 300, baseType: !200, size: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2886, file: !44, line: 302, baseType: !2890, size: 128)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2886, file: !44, line: 302, size: 128, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2890, file: !44, line: 303, baseType: !159, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2890, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2882, file: !44, line: 310, baseType: !2851, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2882, file: !44, line: 311, baseType: !329, size: 64, offset: 256)
!2896 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !44, line: 312, baseType: !2897, size: 64, offset: 320)
!2897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2882, file: !44, line: 312, size: 64, elements: !2898)
!2898 = !{!2899, !2900}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2897, file: !44, line: 313, baseType: !159, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2897, file: !44, line: 314, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !2902)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !2903)
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2902, file: !44, line: 256, baseType: !329, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2882, file: !44, line: 316, baseType: !232, size: 32, offset: 384)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2882, file: !44, line: 317, baseType: !232, size: 32, offset: 416)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2879, file: !44, line: 323, baseType: !2830, size: 512, align: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !44, line: 325, baseType: !2909, size: 512, offset: 512)
!2909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2876, file: !44, line: 325, size: 512, elements: !2910)
!2910 = !{!2911, !2921}
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2909, file: !44, line: 326, baseType: !2912, size: 320)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2909, file: !44, line: 326, size: 320, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2912, file: !44, line: 327, baseType: !329, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2912, file: !44, line: 328, baseType: !329, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2912, file: !44, line: 329, baseType: !329, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2912, file: !44, line: 331, baseType: !232, size: 32, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2912, file: !44, line: 332, baseType: !232, size: 32, offset: 224)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2912, file: !44, line: 333, baseType: !232, size: 32, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2912, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2909, file: !44, line: 339, baseType: !2830, size: 512, align: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2876, file: !44, line: 341, baseType: !2923, size: 512, offset: 1024)
!2923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2876, file: !44, line: 341, size: 512, elements: !2924)
!2924 = !{!2925, !2934, !2940}
!2925 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !44, line: 342, baseType: !2926, size: 384)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2923, file: !44, line: 342, size: 384, elements: !2927)
!2927 = !{!2928, !2929, !2930, !2931, !2932, !2933}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2926, file: !44, line: 343, baseType: !329, size: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2926, file: !44, line: 344, baseType: !329, size: 64, offset: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2926, file: !44, line: 346, baseType: !159, size: 64, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2926, file: !44, line: 347, baseType: !159, size: 64, offset: 192)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2926, file: !44, line: 348, baseType: !159, size: 64, offset: 256)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2926, file: !44, line: 349, baseType: !159, size: 64, offset: 320)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2923, file: !44, line: 352, baseType: !2935, size: 256)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2923, file: !44, line: 352, size: 256, elements: !2936)
!2936 = !{!2937, !2938, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2935, file: !44, line: 353, baseType: !329, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2935, file: !44, line: 354, baseType: !329, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2935, file: !44, line: 356, baseType: !200, size: 128, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2923, file: !44, line: 359, baseType: !2830, size: 512, align: 128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2865, file: !20, line: 409, baseType: !2942, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!115, !2851, !1491}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !2865, file: !20, line: 412, baseType: !2946, size: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!344, !2851, !2875}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2865, file: !20, line: 414, baseType: !2950, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{null, !2953}
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2865, file: !20, line: 416, baseType: !2956, size: 64, offset: 320)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!115, !444, !2851, !493, !13, !2959, !2960}
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2865, file: !20, line: 419, baseType: !2962, size: 64, offset: 384)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!115, !444, !2851, !493, !13, !13, !2829, !159}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2865, file: !20, line: 424, baseType: !2966, size: 64, offset: 448)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!2969, !2851, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !161, line: 131, baseType: !590)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !2865, file: !20, line: 425, baseType: !2971, size: 64, offset: 512)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{null, !2875, !326, !326}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !2865, file: !20, line: 426, baseType: !2975, size: 64, offset: 576)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!344, !2875, !160}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !2865, file: !20, line: 427, baseType: !2979, size: 64, offset: 640)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !2875}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2865, file: !20, line: 428, baseType: !2983, size: 64, offset: 704)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!312, !2986, !3008}
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2995, !2996, !2997, !2998}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2987, file: !20, line: 374, baseType: !444, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2987, file: !20, line: 375, baseType: !493, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2987, file: !20, line: 376, baseType: !2992, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !2986, !316}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2987, file: !20, line: 377, baseType: !159, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2987, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2987, file: !20, line: 379, baseType: !250, size: 16, offset: 288)
!2998 = !DIDerivedType(tag: DW_TAG_member, scope: !2987, file: !20, line: 380, baseType: !2999, size: 64, offset: 320)
!2999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2987, file: !20, line: 380, size: 64, elements: !3000)
!3000 = !{!3001, !3004}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2999, file: !20, line: 386, baseType: !3002, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2999, file: !20, line: 395, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!312, !159}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !2865, file: !20, line: 433, baseType: !3011, size: 64, offset: 768)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!115, !2851, !2875, !2875, !80}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !2865, file: !20, line: 435, baseType: !3015, size: 64, offset: 832)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!115, !2875}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2865, file: !20, line: 436, baseType: !3019, size: 64, offset: 896)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!344, !2875, !326, !326}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2865, file: !20, line: 438, baseType: !3023, size: 64, offset: 960)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{null, !2875, !3026, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2865, file: !20, line: 439, baseType: !3028, size: 64, offset: 1024)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!115, !2851, !2829}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2865, file: !20, line: 442, baseType: !3032, size: 64, offset: 1088)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!115, !3035, !444, !3037}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2865, file: !20, line: 444, baseType: !3039, size: 64, offset: 1152)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{null, !444}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !2865, file: !20, line: 445, baseType: !3043, size: 64, offset: 1216)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!115, !2986, !3008}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2852, file: !20, line: 486, baseType: !329, size: 64, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2852, file: !20, line: 487, baseType: !615, size: 320, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2852, file: !20, line: 488, baseType: !3049, size: 32, offset: 1280)
!3049 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3050, line: 8, baseType: !640)
!3050 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2852, file: !20, line: 489, baseType: !212, size: 32, offset: 1312)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2852, file: !20, line: 490, baseType: !200, size: 128, offset: 1344)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2852, file: !20, line: 491, baseType: !159, size: 64, offset: 1472)
!3054 = !DIDerivedType(tag: DW_TAG_member, scope: !2837, file: !44, line: 107, baseType: !3055, size: 64, offset: 192)
!3055 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2837, file: !44, line: 107, size: 64, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3055, file: !44, line: 108, baseType: !329, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3055, file: !44, line: 109, baseType: !329, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2837, file: !44, line: 117, baseType: !329, size: 64, offset: 256)
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !44, line: 119, baseType: !3061, size: 320)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !44, line: 119, size: 320, elements: !3062)
!3062 = !{!3063, !3064, !3067, !3068, !3069}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3061, file: !44, line: 124, baseType: !329, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3061, file: !44, line: 125, baseType: !3065, size: 64, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3061, file: !44, line: 126, baseType: !329, size: 64, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3061, file: !44, line: 127, baseType: !329, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3061, file: !44, line: 128, baseType: !3070, size: 64, offset: 256)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3061, file: !44, line: 128, size: 64, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3070, file: !44, line: 133, baseType: !329, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3070, file: !44, line: 138, baseType: !470, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !44, line: 141, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !44, line: 141, size: 64, elements: !3076)
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3075, file: !44, line: 142, baseType: !329, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !2834, file: !44, line: 144, baseType: !3079, size: 128)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2834, file: !44, line: 144, size: 128, elements: !3080)
!3080 = !{!3081, !3307}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3079, file: !44, line: 146, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !3084)
!3084 = !{!3085, !3095, !3116, !3117, !3118, !3119, !3120, !3289, !3290, !3291}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3083, file: !60, line: 127, baseType: !3086, size: 384)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !3087)
!3087 = !{!3088, !3089, !3091, !3092, !3093, !3094}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3086, file: !60, line: 22, baseType: !329, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3086, file: !60, line: 23, baseType: !3090, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3086, file: !60, line: 24, baseType: !3090, size: 64, offset: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3086, file: !60, line: 25, baseType: !329, size: 64, offset: 192)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3086, file: !60, line: 26, baseType: !329, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3086, file: !60, line: 27, baseType: !329, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3083, file: !60, line: 128, baseType: !3096, size: 128, offset: 384)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3097, line: 105, size: 128, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3098 = !{!3099, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3096, file: !3097, line: 110, baseType: !329, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3096, file: !3097, line: 118, baseType: !3101, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3097, line: 95, size: 448, elements: !3103)
!3103 = !{!3104, !3105, !3111, !3112, !3113, !3114, !3115}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3102, file: !3097, line: 96, baseType: !470, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3102, file: !3097, line: 97, baseType: !3106, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3097, line: 60, baseType: !3108)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !3110}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3102, file: !3097, line: 98, baseType: !3106, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3102, file: !3097, line: 99, baseType: !344, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3102, file: !3097, line: 100, baseType: !344, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3102, file: !3097, line: 101, baseType: !457, size: 128, align: 64, offset: 256)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3102, file: !3097, line: 102, baseType: !3110, size: 64, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3083, file: !60, line: 129, baseType: !1089, size: 256, offset: 512)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3083, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3083, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3083, file: !60, line: 132, baseType: !329, size: 64, offset: 832)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3083, file: !60, line: 133, baseType: !3121, size: 64, offset: 896)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !3124)
!3124 = !{!3125, !3129, !3285}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3123, file: !60, line: 83, baseType: !3126, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{null, !2829}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3123, file: !60, line: 89, baseType: !3130, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3136, line: 512, size: 896, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3137 = !{!3138, !3252, !3253, !3260, !3267, !3277, !3278, !3279, !3281, !3283}
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3136, line: 513, baseType: !3139, size: 320)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3135, file: !3136, line: 513, size: 320, elements: !3140)
!3140 = !{!3141, !3248, !3249, !3250, !3251}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3139, file: !3136, line: 514, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !3144)
!3144 = !{!3145, !3154, !3155, !3161, !3168, !3169, !3174, !3175, !3180, !3181, !3184, !3241, !3242, !3243, !3244, !3245, !3246}
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3143, file: !44, line: 628, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3143, file: !44, line: 628, size: 128, elements: !3147)
!3147 = !{!3148, !3153}
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !44, line: 629, baseType: !3149, size: 128)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !44, line: 629, size: 128, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3149, file: !44, line: 631, baseType: !329, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3149, file: !44, line: 632, baseType: !329, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3146, file: !44, line: 635, baseType: !457, size: 128, align: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3143, file: !44, line: 639, baseType: !2114, size: 64, offset: 128)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3143, file: !44, line: 640, baseType: !3156, size: 64, offset: 192)
!3156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2149, line: 297, baseType: !3157)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2149, line: 297, size: 64, elements: !3158)
!3158 = !{!3159}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3157, file: !2149, line: 297, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2154, line: 19, baseType: !329)
!3161 = !DIDerivedType(tag: DW_TAG_member, scope: !3143, file: !44, line: 646, baseType: !3162, size: 64, offset: 256)
!3162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3143, file: !44, line: 646, size: 64, elements: !3163)
!3163 = !{!3164, !3167}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3162, file: !44, line: 647, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !329)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3162, file: !44, line: 648, baseType: !3166, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3143, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3143, file: !44, line: 667, baseType: !3170, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3171, file: !44, line: 580, baseType: !615, size: 320)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3143, file: !44, line: 670, baseType: !344, size: 8, offset: 448)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3143, file: !44, line: 681, baseType: !3176, size: 256, offset: 512)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3143, file: !44, line: 678, size: 256, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3176, file: !44, line: 679, baseType: !399, size: 192, align: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3176, file: !44, line: 680, baseType: !329, size: 64, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3143, file: !44, line: 689, baseType: !200, size: 128, offset: 768)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3143, file: !44, line: 691, baseType: !3182, size: 64, offset: 896)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3143, file: !44, line: 694, baseType: !3185, size: 64, offset: 960)
!3185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3187)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3136, line: 563, size: 1024, elements: !3188)
!3188 = !{!3189, !3193, !3194, !3198, !3202, !3206, !3207, !3211, !3215, !3219, !3220, !3221, !3225, !3229, !3233, !3237}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3187, file: !3136, line: 564, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{null, !3142}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3187, file: !3136, line: 569, baseType: !3190, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3187, file: !3136, line: 571, baseType: !3195, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!115, !3142, !329}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3187, file: !3136, line: 572, baseType: !3199, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!115, !3142}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3187, file: !3136, line: 578, baseType: !3203, size: 64, offset: 256)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!115, !3142, !329, !329, !329}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3187, file: !3136, line: 580, baseType: !3130, size: 64, offset: 320)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3187, file: !3136, line: 581, baseType: !3208, size: 64, offset: 384)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!3133, !3134, !13}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3187, file: !3136, line: 582, baseType: !3212, size: 64, offset: 448)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3133, !3134, !329, !329}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3187, file: !3136, line: 584, baseType: !3216, size: 64, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!329, !3142}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3187, file: !3136, line: 588, baseType: !3130, size: 64, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3187, file: !3136, line: 591, baseType: !3130, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3187, file: !3136, line: 597, baseType: !3222, size: 64, offset: 704)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!115, !3142, !329, !159, !115, !115}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3187, file: !3136, line: 603, baseType: !3226, size: 64, offset: 768)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!170, !3142}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3187, file: !3136, line: 613, baseType: !3230, size: 64, offset: 832)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!115, !3142, !2786}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3187, file: !3136, line: 625, baseType: !3234, size: 64, offset: 896)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!2786, !3142, !329}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3187, file: !3136, line: 633, baseType: !3238, size: 64, offset: 960)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!2829, !3142, !329}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3143, file: !44, line: 697, baseType: !329, size: 64, offset: 1024)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3143, file: !44, line: 699, baseType: !444, size: 64, offset: 1088)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3143, file: !44, line: 700, baseType: !159, size: 64, offset: 1152)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3143, file: !44, line: 711, baseType: !470, size: 64, offset: 1216)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3143, file: !44, line: 717, baseType: !2786, size: 64, offset: 1280)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3143, file: !44, line: 722, baseType: !3247, offset: 1344)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1378)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3139, file: !3136, line: 515, baseType: !160, size: 32, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3139, file: !3136, line: 516, baseType: !329, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3139, file: !3136, line: 517, baseType: !329, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3139, file: !3136, line: 518, baseType: !329, size: 64, offset: 256)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3135, file: !3136, line: 520, baseType: !43, size: 32, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3135, file: !3136, line: 522, baseType: !3254, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2154, line: 22, baseType: !3256)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2154, line: 22, size: 64, elements: !3257)
!3257 = !{!3258}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3256, file: !2154, line: 22, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2154, line: 15, baseType: !329)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3135, file: !3136, line: 524, baseType: !3261, size: 64, offset: 448)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2149, line: 372, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 372, size: 64, elements: !3264)
!3264 = !{!3265}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3263, file: !2149, line: 372, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2154, line: 16, baseType: !329)
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !3135, file: !3136, line: 527, baseType: !3268, size: 64, offset: 512)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3135, file: !3136, line: 527, size: 64, elements: !3269)
!3269 = !{!3270, !3276}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3268, file: !3136, line: 528, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2154, line: 21, baseType: !3272)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2154, line: 21, size: 64, elements: !3273)
!3273 = !{!3274}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3272, file: !2154, line: 21, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2154, line: 14, baseType: !329)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3268, file: !3136, line: 529, baseType: !3255, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3135, file: !3136, line: 534, baseType: !2829, size: 64, offset: 576)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3135, file: !3136, line: 535, baseType: !2829, size: 64, offset: 640)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3135, file: !3136, line: 541, baseType: !3280, size: 64, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3135, file: !3136, line: 545, baseType: !3282, size: 64, offset: 768)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3135, file: !3136, line: 549, baseType: !3284, size: 64, offset: 832)
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2149, line: 520, baseType: !2829)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3123, file: !60, line: 100, baseType: !3286, size: 64, offset: 128)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!115, !3082, !329, !329, !115}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3083, file: !60, line: 134, baseType: !159, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3083, file: !60, line: 135, baseType: !115, size: 32, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !60, line: 136, baseType: !3292, size: 128, offset: 1088)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3083, file: !60, line: 136, size: 128, elements: !3293)
!3293 = !{!3294, !3300}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3292, file: !60, line: 137, baseType: !3295, size: 128)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3296, line: 6, size: 128, elements: !3297)
!3296 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3297 = !{!3298, !3299}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3295, file: !3296, line: 7, baseType: !590, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3295, file: !3296, line: 8, baseType: !590, size: 64, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, scope: !3292, file: !60, line: 138, baseType: !3301)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3292, file: !60, line: 138, elements: !3302)
!3302 = !{!3303, !3305}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3301, file: !60, line: 138, baseType: !3304)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3301, file: !60, line: 138, elements: !1378)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3301, file: !60, line: 138, baseType: !3306)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3295, elements: !562)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3079, file: !44, line: 147, baseType: !159, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2834, file: !44, line: 161, baseType: !457, size: 128, align: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, scope: !2830, file: !44, line: 164, baseType: !3310, size: 32, offset: 384)
!3310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2830, file: !44, line: 164, size: 32, elements: !3311)
!3311 = !{!3312, !3313}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3310, file: !44, line: 169, baseType: !232, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3310, file: !44, line: 177, baseType: !13, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2830, file: !44, line: 181, baseType: !232, size: 32, offset: 416)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2826, file: !2813, line: 42, baseType: !641, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2826, file: !2813, line: 43, baseType: !641, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1831, file: !1530, line: 1340, baseType: !3318, size: 64, offset: 20672)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1530, line: 69, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1831, file: !1530, line: 1351, baseType: !115, size: 32, offset: 20736)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1831, file: !1530, line: 1352, baseType: !115, size: 32, offset: 20768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1831, file: !1530, line: 1354, baseType: !329, size: 64, offset: 20800)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1831, file: !1530, line: 1364, baseType: !590, size: 64, offset: 20864)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1831, file: !1530, line: 1365, baseType: !590, size: 64, offset: 20928)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1831, file: !1530, line: 1412, baseType: !329, size: 64, offset: 20992)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1831, file: !1530, line: 1453, baseType: !3327, size: 64, offset: 21056)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1530, line: 1453, flags: DIFlagFwdDecl)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1831, file: !1530, line: 1457, baseType: !3330, size: 64, offset: 21120)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !3332)
!3332 = !{!3333, !3334, !3353, !3356, !3357, !3390, !3400}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3331, file: !74, line: 62, baseType: !73, size: 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, scope: !3331, file: !74, line: 64, baseType: !3335, size: 192, offset: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3331, file: !74, line: 64, size: 192, elements: !3336)
!3336 = !{!3337, !3348}
!3337 = !DIDerivedType(tag: DW_TAG_member, scope: !3335, file: !74, line: 65, baseType: !3338, size: 192)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3335, file: !74, line: 65, size: 192, elements: !3339)
!3339 = !{!3340, !3347}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3338, file: !74, line: 66, baseType: !3341, size: 128)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3342, line: 50, size: 128, elements: !3343)
!3342 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3341, file: !3342, line: 52, baseType: !329, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3341, file: !3342, line: 54, baseType: !13, size: 32, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3341, file: !3342, line: 55, baseType: !13, size: 32, offset: 96)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3338, file: !74, line: 67, baseType: !329, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, scope: !3335, file: !74, line: 70, baseType: !3349, size: 192)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3335, file: !74, line: 70, size: 192, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3349, file: !74, line: 71, baseType: !457, size: 128, align: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3349, file: !74, line: 72, baseType: !329, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3331, file: !74, line: 76, baseType: !3354, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3331, file: !74, line: 77, baseType: !329, size: 64, offset: 320)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3331, file: !74, line: 79, baseType: !3358, size: 64, offset: 384)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3342, line: 25, size: 256, elements: !3360)
!3360 = !{!3361, !3367, !3371}
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3359, file: !3342, line: 26, baseType: !3362, size: 128)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3359, file: !3342, line: 26, size: 128, elements: !3363)
!3363 = !{!3364, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3362, file: !3342, line: 27, baseType: !3365, size: 128)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 128, elements: !2405)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3362, file: !3342, line: 28, baseType: !3365, size: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3359, file: !3342, line: 31, baseType: !3368, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3370)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3342, line: 23, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3359, file: !3342, line: 33, baseType: !3372, size: 64, offset: 192)
!3372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3359, file: !3342, line: 33, size: 64, elements: !3373)
!3373 = !{!3374, !3380, !3385}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3372, file: !3342, line: 38, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3372, file: !3342, line: 34, size: 64, elements: !3376)
!3376 = !{!3377, !3378, !3379}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3375, file: !3342, line: 35, baseType: !607, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3375, file: !3342, line: 36, baseType: !240, size: 8, offset: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3375, file: !3342, line: 37, baseType: !240, size: 8, offset: 40)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3372, file: !3342, line: 42, baseType: !3381, size: 16)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3372, file: !3342, line: 39, size: 16, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3381, file: !3342, line: 40, baseType: !240, size: 8)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3381, file: !3342, line: 41, baseType: !240, size: 8, offset: 8)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3372, file: !3342, line: 46, baseType: !3386, size: 16)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3372, file: !3342, line: 43, size: 16, elements: !3387)
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3386, file: !3342, line: 44, baseType: !240, size: 8)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3386, file: !3342, line: 45, baseType: !240, size: 8, offset: 8)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3331, file: !74, line: 81, baseType: !3391, size: 64, offset: 448)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !3393)
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3392, file: !74, line: 86, baseType: !3354, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3392, file: !74, line: 87, baseType: !329, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3392, file: !74, line: 88, baseType: !329, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3392, file: !74, line: 89, baseType: !329, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3392, file: !74, line: 90, baseType: !344, size: 8, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3392, file: !74, line: 92, baseType: !3391, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3331, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1831, file: !1530, line: 1463, baseType: !3402, offset: 21184)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1530, line: 739, elements: !1378)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1831, file: !1530, line: 1470, baseType: !457, size: 128, align: 64, offset: 21184)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1831, file: !1530, line: 1471, baseType: !525, size: 32, offset: 21312)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1831, file: !1530, line: 1472, baseType: !115, size: 32, offset: 21344)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1831, file: !1530, line: 1474, baseType: !1830, size: 64, offset: 21376)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1831, file: !1530, line: 1475, baseType: !1337, size: 320, offset: 21440)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1831, file: !1530, line: 1478, baseType: !3409, size: 64, offset: 21760)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3411, line: 49, size: 512, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3422}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3410, file: !3411, line: 50, baseType: !3409, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3410, file: !3411, line: 51, baseType: !159, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3410, file: !3411, line: 52, baseType: !329, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3410, file: !3411, line: 53, baseType: !329, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3410, file: !3411, line: 54, baseType: !2959, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3410, file: !3411, line: 56, baseType: !13, size: 32, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3410, file: !3411, line: 58, baseType: !13, size: 32, offset: 352)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3410, file: !3411, line: 59, baseType: !3421, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !161, line: 159, baseType: !590)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3410, file: !3411, line: 60, baseType: !354, size: 64, offset: 448)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1831, file: !1530, line: 1482, baseType: !525, size: 32, offset: 21824)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1831, file: !1530, line: 1489, baseType: !159, size: 64, offset: 21888)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1831, file: !1530, line: 1504, baseType: !159, size: 64, offset: 21952)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1831, file: !1530, line: 1505, baseType: !591, size: 64, offset: 22016)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1831, file: !1530, line: 1506, baseType: !590, size: 64, offset: 22080)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1831, file: !1530, line: 1507, baseType: !591, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1831, file: !1530, line: 1508, baseType: !591, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1831, file: !1530, line: 1509, baseType: !591, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1831, file: !1530, line: 1510, baseType: !457, size: 128, align: 64, offset: 22208)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1831, file: !1530, line: 1511, baseType: !115, size: 32, offset: 22336)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1831, file: !1530, line: 1515, baseType: !3434, size: 64, offset: 22400)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !452, line: 56, size: 64, elements: !3435)
!3435 = !{!3436}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3434, file: !452, line: 57, baseType: !455, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1831, file: !1530, line: 1518, baseType: !3434, size: 64, offset: 22464)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1831, file: !1530, line: 1528, baseType: !457, size: 128, align: 64, offset: 22528)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1831, file: !1530, line: 1552, baseType: !3440, size: 35328, offset: 23040)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3441, line: 430, size: 35328, elements: !3442)
!3441 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3442 = !{!3443, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3472, !3473, !3474, !3475, !3476, !3477, !3480, !3481, !3482, !3483}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3440, file: !3441, line: 432, baseType: !3444, size: 192)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3445, size: 192, elements: !282)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3446, line: 16, size: 64, elements: !3447)
!3446 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3445, file: !3446, line: 17, baseType: !250, size: 16)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3445, file: !3446, line: 18, baseType: !250, size: 16, offset: 16)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3445, file: !3446, line: 19, baseType: !250, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3445, file: !3446, line: 19, baseType: !250, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3445, file: !3446, line: 19, baseType: !250, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3445, file: !3446, line: 19, baseType: !250, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3445, file: !3446, line: 19, baseType: !250, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3445, file: !3446, line: 20, baseType: !250, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3445, file: !3446, line: 20, baseType: !250, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3445, file: !3446, line: 20, baseType: !250, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3445, file: !3446, line: 20, baseType: !250, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3445, file: !3446, line: 20, baseType: !250, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3445, file: !3446, line: 20, baseType: !250, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3440, file: !3441, line: 436, baseType: !329, size: 64, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3440, file: !3441, line: 440, baseType: !193, size: 16, offset: 256)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3440, file: !3441, line: 441, baseType: !193, size: 16, offset: 272)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3440, file: !3441, line: 442, baseType: !193, size: 16, offset: 288)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3440, file: !3441, line: 443, baseType: !193, size: 16, offset: 304)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3440, file: !3441, line: 447, baseType: !329, size: 64, offset: 320)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3440, file: !3441, line: 448, baseType: !329, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3440, file: !3441, line: 459, baseType: !3469, size: 256, offset: 448)
!3469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3470, size: 256, elements: !543)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3441, line: 428, flags: DIFlagFwdDecl)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3440, file: !3441, line: 461, baseType: !329, size: 64, offset: 704)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3440, file: !3441, line: 463, baseType: !329, size: 64, offset: 768)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3440, file: !3441, line: 465, baseType: !329, size: 64, offset: 832)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3440, file: !3441, line: 466, baseType: !329, size: 64, offset: 896)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3440, file: !3441, line: 467, baseType: !329, size: 64, offset: 960)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3440, file: !3441, line: 473, baseType: !3478, size: 64, offset: 1024)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3441, line: 10, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3440, file: !3441, line: 480, baseType: !329, size: 64, offset: 1088)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3440, file: !3441, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3440, file: !3441, line: 491, baseType: !640, size: 32, offset: 1184)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3440, file: !3441, line: 501, baseType: !3484, size: 33792, offset: 1536)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3485, line: 448, size: 33792, elements: !3486)
!3485 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3486 = !{!3487, !3488, !3489, !3653, !3654, !3660, !3661}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3484, file: !3485, line: 461, baseType: !13, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3484, file: !3485, line: 468, baseType: !329, size: 64, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3484, file: !3485, line: 476, baseType: !3490, size: 64, offset: 128)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3485, line: 356, size: 33280, align: 512, elements: !3492)
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3491, file: !3485, line: 358, baseType: !13, size: 32)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3491, file: !3485, line: 361, baseType: !13, size: 32, offset: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3491, file: !3485, line: 364, baseType: !590, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3491, file: !3485, line: 367, baseType: !590, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3491, file: !3485, line: 370, baseType: !590, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3491, file: !3485, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3491, file: !3485, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3491, file: !3485, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3491, file: !3485, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3491, file: !3485, line: 397, baseType: !3503, size: 32768, offset: 512)
!3503 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3485, line: 348, size: 32768, elements: !3504)
!3504 = !{!3505, !3520, !3559, !3636, !3649}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3503, file: !3485, line: 349, baseType: !3506, size: 896)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3485, line: 12, size: 896, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3519}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3506, file: !3485, line: 13, baseType: !640, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3506, file: !3485, line: 14, baseType: !640, size: 32, offset: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3506, file: !3485, line: 15, baseType: !640, size: 32, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3506, file: !3485, line: 16, baseType: !640, size: 32, offset: 96)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3506, file: !3485, line: 17, baseType: !640, size: 32, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3506, file: !3485, line: 18, baseType: !640, size: 32, offset: 160)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3506, file: !3485, line: 19, baseType: !640, size: 32, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3506, file: !3485, line: 22, baseType: !3516, size: 640, offset: 224)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 640, elements: !3517)
!3517 = !{!3518}
!3518 = !DISubrange(count: 20)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3506, file: !3485, line: 25, baseType: !640, size: 32, offset: 864)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3503, file: !3485, line: 350, baseType: !3521, size: 4096, align: 128)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3485, line: 34, size: 4096, align: 128, elements: !3522)
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3542, !3543, !3544, !3548, !3550, !3554}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3521, file: !3485, line: 35, baseType: !250, size: 16)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3521, file: !3485, line: 36, baseType: !250, size: 16, offset: 16)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3521, file: !3485, line: 37, baseType: !250, size: 16, offset: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3521, file: !3485, line: 38, baseType: !250, size: 16, offset: 48)
!3527 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !3485, line: 39, baseType: !3528, size: 128, offset: 64)
!3528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !3485, line: 39, size: 128, elements: !3529)
!3529 = !{!3530, !3535}
!3530 = !DIDerivedType(tag: DW_TAG_member, scope: !3528, file: !3485, line: 40, baseType: !3531, size: 128)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3528, file: !3485, line: 40, size: 128, elements: !3532)
!3532 = !{!3533, !3534}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3531, file: !3485, line: 41, baseType: !590, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3531, file: !3485, line: 42, baseType: !590, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3528, file: !3485, line: 44, baseType: !3536, size: 128)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3528, file: !3485, line: 44, size: 128, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3536, file: !3485, line: 45, baseType: !640, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3536, file: !3485, line: 46, baseType: !640, size: 32, offset: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3536, file: !3485, line: 47, baseType: !640, size: 32, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3536, file: !3485, line: 48, baseType: !640, size: 32, offset: 96)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3521, file: !3485, line: 51, baseType: !640, size: 32, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3521, file: !3485, line: 52, baseType: !640, size: 32, offset: 224)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3521, file: !3485, line: 55, baseType: !3545, size: 1024, offset: 256)
!3545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 1024, elements: !3546)
!3546 = !{!3547}
!3547 = !DISubrange(count: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3521, file: !3485, line: 58, baseType: !3549, size: 2048, offset: 1280)
!3549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 2048, elements: !286)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3521, file: !3485, line: 60, baseType: !3551, size: 384, offset: 3328)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 384, elements: !3552)
!3552 = !{!3553}
!3553 = !DISubrange(count: 12)
!3554 = !DIDerivedType(tag: DW_TAG_member, scope: !3521, file: !3485, line: 62, baseType: !3555, size: 384, offset: 3712)
!3555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3521, file: !3485, line: 62, size: 384, elements: !3556)
!3556 = !{!3557, !3558}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3555, file: !3485, line: 63, baseType: !3551, size: 384)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3555, file: !3485, line: 64, baseType: !3551, size: 384)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3503, file: !3485, line: 351, baseType: !3560, size: 1088)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3485, line: 79, size: 1088, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3635}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3560, file: !3485, line: 80, baseType: !640, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3560, file: !3485, line: 81, baseType: !640, size: 32, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3560, file: !3485, line: 82, baseType: !640, size: 32, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3560, file: !3485, line: 83, baseType: !640, size: 32, offset: 96)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3560, file: !3485, line: 84, baseType: !640, size: 32, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3560, file: !3485, line: 85, baseType: !640, size: 32, offset: 160)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3560, file: !3485, line: 86, baseType: !640, size: 32, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3560, file: !3485, line: 88, baseType: !3516, size: 640, offset: 224)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3560, file: !3485, line: 89, baseType: !240, size: 8, offset: 864)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3560, file: !3485, line: 90, baseType: !240, size: 8, offset: 872)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3560, file: !3485, line: 91, baseType: !240, size: 8, offset: 880)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3560, file: !3485, line: 92, baseType: !240, size: 8, offset: 888)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3560, file: !3485, line: 93, baseType: !240, size: 8, offset: 896)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3560, file: !3485, line: 94, baseType: !240, size: 8, offset: 904)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3560, file: !3485, line: 95, baseType: !3577, size: 64, offset: 960)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3579, line: 11, size: 128, elements: !3580)
!3579 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3580 = !{!3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3578, file: !3579, line: 12, baseType: !316, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3578, file: !3579, line: 13, baseType: !3583, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3585, line: 103, size: 1344, elements: !3586)
!3585 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3615, !3616, !3617}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3584, file: !3585, line: 109, baseType: !329, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3584, file: !3585, line: 110, baseType: !329, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3584, file: !3585, line: 111, baseType: !329, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3584, file: !3585, line: 112, baseType: !329, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3584, file: !3585, line: 113, baseType: !329, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3584, file: !3585, line: 114, baseType: !329, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3584, file: !3585, line: 117, baseType: !329, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3584, file: !3585, line: 118, baseType: !329, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3584, file: !3585, line: 119, baseType: !329, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3584, file: !3585, line: 120, baseType: !329, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3584, file: !3585, line: 121, baseType: !329, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3584, file: !3585, line: 122, baseType: !329, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3584, file: !3585, line: 123, baseType: !329, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3584, file: !3585, line: 124, baseType: !329, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3584, file: !3585, line: 125, baseType: !329, size: 64, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3584, file: !3585, line: 139, baseType: !329, size: 64, offset: 960)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3584, file: !3585, line: 142, baseType: !329, size: 64, offset: 1024)
!3604 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !3585, line: 144, baseType: !3605, size: 64, offset: 1088)
!3605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !3585, line: 144, size: 64, elements: !3606)
!3606 = !{!3607, !3608, !3609}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3605, file: !3585, line: 146, baseType: !250, size: 16)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3605, file: !3585, line: 148, baseType: !590, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3605, file: !3585, line: 150, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3585, line: 59, size: 64, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3610, file: !3585, line: 61, baseType: !590, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3610, file: !3585, line: 63, baseType: !590, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3610, file: !3585, line: 65, baseType: !590, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3584, file: !3585, line: 153, baseType: !329, size: 64, offset: 1152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3584, file: !3585, line: 154, baseType: !329, size: 64, offset: 1216)
!3617 = !DIDerivedType(tag: DW_TAG_member, scope: !3584, file: !3585, line: 156, baseType: !3618, size: 64, offset: 1280)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3584, file: !3585, line: 156, size: 64, elements: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3618, file: !3585, line: 158, baseType: !250, size: 16)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3618, file: !3585, line: 160, baseType: !590, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3618, file: !3585, line: 162, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3585, line: 69, size: 64, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3623, file: !3585, line: 71, baseType: !590, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3623, file: !3585, line: 73, baseType: !590, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3623, file: !3585, line: 75, baseType: !590, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3623, file: !3585, line: 77, baseType: !590, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3623, file: !3585, line: 80, baseType: !590, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3623, file: !3585, line: 83, baseType: !590, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3623, file: !3585, line: 86, baseType: !590, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3623, file: !3585, line: 88, baseType: !590, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3623, file: !3585, line: 93, baseType: !590, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3623, file: !3585, line: 100, baseType: !590, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3560, file: !3485, line: 96, baseType: !640, size: 32, offset: 1024)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3503, file: !3485, line: 352, baseType: !3637, size: 4608, align: 512)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3485, line: 333, size: 4608, align: 512, elements: !3638)
!3638 = !{!3639, !3640, !3647}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3637, file: !3485, line: 334, baseType: !3521, size: 4096, align: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3637, file: !3485, line: 335, baseType: !3641, size: 512, offset: 4096)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3485, line: 312, size: 512, elements: !3642)
!3642 = !{!3643, !3644, !3645}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3641, file: !3485, line: 313, baseType: !590, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3641, file: !3485, line: 314, baseType: !590, size: 64, offset: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3641, file: !3485, line: 315, baseType: !3646, size: 384, offset: 128)
!3646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 384, elements: !663)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3637, file: !3485, line: 336, baseType: !3648, offset: 4608)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, elements: !562)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3503, file: !3485, line: 353, baseType: !3650, size: 32768)
!3650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 32768, elements: !3651)
!3651 = !{!3652}
!3652 = !DISubrange(count: 4096)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3484, file: !3485, line: 484, baseType: !3490, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3484, file: !3485, line: 491, baseType: !3655, size: 128, offset: 256)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3485, line: 404, size: 128, elements: !3656)
!3656 = !{!3657, !3658, !3659}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3655, file: !3485, line: 424, baseType: !590, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3655, file: !3485, line: 432, baseType: !13, size: 32, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3655, file: !3485, line: 440, baseType: !13, size: 32, offset: 96)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3484, file: !3485, line: 498, baseType: !3655, size: 128, offset: 384)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3484, file: !3485, line: 508, baseType: !3491, size: 33280, align: 512, offset: 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1813, file: !1814, line: 16, baseType: !547, size: 192, offset: 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1813, file: !1814, line: 17, baseType: !232, size: 32, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1037, file: !20, line: 1240, baseType: !159, size: 64, offset: 6912)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1037, file: !20, line: 1243, baseType: !640, size: 32, offset: 6976)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1037, file: !20, line: 1245, baseType: !631, size: 64, offset: 7040)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1037, file: !20, line: 1246, baseType: !631, size: 64, offset: 7104)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1037, file: !20, line: 1248, baseType: !641, size: 32, offset: 7168)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1037, file: !20, line: 1249, baseType: !3670, size: 64, offset: 7232)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1037, file: !20, line: 1252, baseType: !3673, size: 256, offset: 7296)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !3546)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1037, file: !20, line: 1253, baseType: !3675, size: 128, offset: 7552)
!3675 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3676, line: 21, baseType: !3677)
!3676 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3676, line: 19, size: 128, elements: !3678)
!3678 = !{!3679}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3677, file: !3676, line: 20, baseType: !3680, size: 128)
!3680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !2405)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1037, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1037, file: !20, line: 1261, baseType: !480, size: 256, offset: 7744)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1037, file: !20, line: 1267, baseType: !170, size: 64, offset: 8000)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1037, file: !20, line: 1269, baseType: !3685, size: 64, offset: 8064)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3687)
!3687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !797, line: 128, size: 1024, align: 512, elements: !3688)
!3688 = !{!3689, !3693, !3694, !3701, !3707, !3711, !3715, !3719, !3720, !3724, !3728, !3733, !3737}
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3687, file: !797, line: 129, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!115, !795, !13}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3687, file: !797, line: 130, baseType: !3690, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3687, file: !797, line: 131, baseType: !3695, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!115, !3698, !3700}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3687, file: !797, line: 132, baseType: !3702, size: 64, offset: 192)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!115, !3698, !13, !170, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3687, file: !797, line: 134, baseType: !3708, size: 64, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!115, !3698}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3687, file: !797, line: 135, baseType: !3712, size: 64, offset: 320)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!115, !795}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3687, file: !797, line: 136, baseType: !3716, size: 64, offset: 384)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{null, !795}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3687, file: !797, line: 137, baseType: !3716, size: 64, offset: 448)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3687, file: !797, line: 138, baseType: !3721, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !795, !835}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3687, file: !797, line: 139, baseType: !3725, size: 64, offset: 576)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!281, !795, !281, !115}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3687, file: !797, line: 140, baseType: !3729, size: 64, offset: 640)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!790, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3687, file: !797, line: 141, baseType: !3734, size: 64, offset: 704)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!115, !953, !344}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3687, file: !797, line: 142, baseType: !3738, size: 64, offset: 768)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!795, !795, !3741}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1037, file: !20, line: 1271, baseType: !3744, size: 448, offset: 8128)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1595, line: 63, size: 448, elements: !3745)
!3745 = !{!3746, !3751, !3752, !3753, !3754, !3755, !3756}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3744, file: !1595, line: 64, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!329, !3750, !1593}
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3744, file: !1595, line: 66, baseType: !3747, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3744, file: !1595, line: 69, baseType: !316, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3744, file: !1595, line: 70, baseType: !115, size: 32, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3744, file: !1595, line: 71, baseType: !13, size: 32, offset: 224)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3744, file: !1595, line: 74, baseType: !200, size: 128, offset: 256)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3744, file: !1595, line: 85, baseType: !3757, size: 64, offset: 384)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1037, file: !20, line: 1274, baseType: !470, size: 64, offset: 8576)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1037, file: !20, line: 1280, baseType: !470, size: 64, offset: 8640)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1037, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1037, file: !20, line: 1286, baseType: !3049, size: 32, offset: 8736)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1037, file: !20, line: 1289, baseType: !1411, size: 64, offset: 8768)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1037, file: !20, line: 1290, baseType: !534, size: 64, offset: 8832)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1037, file: !20, line: 1297, baseType: !757, size: 64, offset: 8896)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1037, file: !20, line: 1304, baseType: !3766, size: 64, offset: 8960)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3767, line: 49, size: 64, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3768 = !{!3769}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3766, file: !3767, line: 50, baseType: !3770, size: 64)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3767, line: 41, size: 512, align: 512, elements: !3772)
!3772 = !{!3773, !3774, !3779}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3771, file: !3767, line: 43, baseType: !212, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3771, file: !3767, line: 45, baseType: !3775, size: 192, offset: 64)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3767, line: 29, size: 192, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3775, file: !3767, line: 30, baseType: !200, size: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3775, file: !3767, line: 32, baseType: !316, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3771, file: !3767, line: 46, baseType: !316, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1037, file: !20, line: 1305, baseType: !3766, size: 64, offset: 9024)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1037, file: !20, line: 1306, baseType: !457, size: 128, align: 64, offset: 9088)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1037, file: !20, line: 1307, baseType: !1349, size: 256, offset: 9216)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1037, file: !20, line: 1309, baseType: !480, size: 256, offset: 9472)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1037, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1037, file: !20, line: 1317, baseType: !212, size: 32, align: 512, offset: 10240)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1037, file: !20, line: 1318, baseType: !200, size: 128, offset: 10304)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1037, file: !20, line: 1320, baseType: !212, size: 32, offset: 10432)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1037, file: !20, line: 1321, baseType: !200, size: 128, offset: 10496)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !836, file: !20, line: 656, baseType: !2851, size: 64, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !836, file: !20, line: 659, baseType: !159, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !836, file: !20, line: 663, baseType: !329, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !20, line: 671, baseType: !3793, size: 32, offset: 704)
!3793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !20, line: 671, size: 32, elements: !3794)
!3794 = !{!3795, !3797}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3793, file: !20, line: 672, baseType: !3796, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3793, file: !20, line: 673, baseType: !13, size: 32)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !836, file: !20, line: 675, baseType: !906, size: 32, offset: 736)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !836, file: !20, line: 676, baseType: !493, size: 64, offset: 768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !836, file: !20, line: 677, baseType: !942, size: 128, offset: 832)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !836, file: !20, line: 678, baseType: !942, size: 128, offset: 960)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !836, file: !20, line: 679, baseType: !942, size: 128, offset: 1088)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !836, file: !20, line: 680, baseType: !212, size: 32, offset: 1216)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !836, file: !20, line: 681, baseType: !193, size: 16, offset: 1248)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !836, file: !20, line: 682, baseType: !240, size: 8, offset: 1264)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !836, file: !20, line: 683, baseType: !240, size: 8, offset: 1272)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !836, file: !20, line: 684, baseType: !1726, size: 64, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !836, file: !20, line: 691, baseType: !329, size: 64, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !836, file: !20, line: 692, baseType: !615, size: 320, offset: 1408)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !836, file: !20, line: 694, baseType: !329, size: 64, offset: 1728)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !836, file: !20, line: 695, baseType: !329, size: 64, offset: 1792)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !836, file: !20, line: 697, baseType: !538, size: 128, offset: 1856)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !836, file: !20, line: 698, baseType: !200, size: 128, offset: 1984)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !836, file: !20, line: 707, baseType: !200, size: 128, offset: 2112)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !836, file: !20, line: 708, baseType: !200, size: 128, offset: 2240)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !20, line: 709, baseType: !3817, size: 128, offset: 2368)
!3817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !20, line: 709, size: 128, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3817, file: !20, line: 710, baseType: !534, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3817, file: !20, line: 711, baseType: !457, size: 128, align: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !836, file: !20, line: 713, baseType: !472, size: 64, offset: 2496)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !836, file: !20, line: 714, baseType: !472, size: 64, offset: 2560)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !836, file: !20, line: 715, baseType: !232, size: 32, offset: 2624)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !836, file: !20, line: 716, baseType: !232, size: 32, offset: 2656)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !836, file: !20, line: 717, baseType: !232, size: 32, offset: 2688)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !836, file: !20, line: 719, baseType: !232, size: 32, offset: 2720)
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !20, line: 721, baseType: !3828, size: 64, offset: 2752)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !20, line: 721, size: 64, elements: !3829)
!3829 = !{!3830, !3959}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3828, file: !20, line: 722, baseType: !3831, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3833)
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !3834)
!3834 = !{!3835, !3836, !3840, !3845, !3849, !3850, !3851, !3857, !3870, !3878, !3882, !3883, !3887, !3888, !3892, !3897, !3898, !3902, !3906, !3912, !3913, !3917, !3918, !3922, !3926, !3927, !3932, !3936, !3940, !3944, !3948, !3949, !3955}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3833, file: !20, line: 1915, baseType: !1069, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3833, file: !20, line: 1916, baseType: !3837, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!493, !444, !493, !115}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3833, file: !20, line: 1917, baseType: !3841, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!312, !444, !281, !326, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3833, file: !20, line: 1918, baseType: !3846, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!312, !444, !170, !326, !3844}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3833, file: !20, line: 1919, baseType: !2983, size: 64, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3833, file: !20, line: 1920, baseType: !2983, size: 64, offset: 320)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3833, file: !20, line: 1921, baseType: !3852, size: 64, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!115, !2986, !3855, !13}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3833, file: !20, line: 1923, baseType: !3858, size: 64, offset: 448)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!115, !444, !3861}
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !3863)
!3863 = !{!3864, !3869}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3862, file: !20, line: 1859, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !3866)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!344, !3861, !170, !115, !493, !590, !13}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3862, file: !20, line: 1860, baseType: !493, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3833, file: !20, line: 1924, baseType: !3871, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!3874, !444, !3876}
!3874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3875, line: 59, baseType: !13)
!3875 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !20, line: 61, flags: DIFlagFwdDecl)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3833, file: !20, line: 1925, baseType: !3879, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!316, !444, !13, !329}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3833, file: !20, line: 1926, baseType: !3879, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3833, file: !20, line: 1927, baseType: !3884, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!115, !444, !3142}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3833, file: !20, line: 1928, baseType: !329, size: 64, offset: 768)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3833, file: !20, line: 1929, baseType: !3889, size: 64, offset: 832)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!115, !835, !444}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3833, file: !20, line: 1930, baseType: !3893, size: 64, offset: 896)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!115, !444, !3896}
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !159)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3833, file: !20, line: 1931, baseType: !3889, size: 64, offset: 960)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3833, file: !20, line: 1932, baseType: !3899, size: 64, offset: 1024)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!115, !444, !493, !493, !115}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3833, file: !20, line: 1933, baseType: !3903, size: 64, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!115, !115, !444, !115}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3833, file: !20, line: 1934, baseType: !3907, size: 64, offset: 1152)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!115, !444, !115, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3833, file: !20, line: 1935, baseType: !2138, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3833, file: !20, line: 1936, baseType: !3914, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!115, !115}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3833, file: !20, line: 1937, baseType: !3907, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3833, file: !20, line: 1938, baseType: !3919, size: 64, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!312, !2823, !444, !3844, !326, !13}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3833, file: !20, line: 1939, baseType: !3923, size: 64, offset: 1472)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!312, !444, !3844, !2823, !326, !13}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3833, file: !20, line: 1940, baseType: !3039, size: 64, offset: 1536)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3833, file: !20, line: 1941, baseType: !3928, size: 64, offset: 1600)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!115, !444, !115, !3931, !2960}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3833, file: !20, line: 1942, baseType: !3933, size: 64, offset: 1664)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!316, !444, !115, !493, !493}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3833, file: !20, line: 1944, baseType: !3937, size: 64, offset: 1728)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !1528, !444}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3833, file: !20, line: 1948, baseType: !3941, size: 64, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!312, !444, !493, !444, !493, !326, !13}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3833, file: !20, line: 1950, baseType: !3945, size: 64, offset: 1856)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!493, !444, !493, !444, !493, !493, !13}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3833, file: !20, line: 1953, baseType: !3899, size: 64, offset: 1920)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3833, file: !20, line: 1954, baseType: !3950, size: 64, offset: 1984)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!115, !3953, !13}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3833, file: !20, line: 1955, baseType: !3956, size: 64, offset: 2048)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!115, !3953, !3855, !13}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3828, file: !20, line: 723, baseType: !1479, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !836, file: !20, line: 725, baseType: !3961, size: 64, offset: 2816)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !836, file: !20, line: 726, baseType: !2852, size: 1536, align: 64, offset: 2880)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !836, file: !20, line: 727, baseType: !200, size: 128, offset: 4416)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !20, line: 728, baseType: !3966, size: 64, offset: 4544)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !20, line: 728, size: 64, elements: !3967)
!3967 = !{!3968, !3969, !3972, !3973}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3966, file: !20, line: 729, baseType: !2823, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3966, file: !20, line: 730, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3966, file: !20, line: 731, baseType: !281, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3966, file: !20, line: 732, baseType: !13, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !836, file: !20, line: 735, baseType: !641, size: 32, offset: 4608)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !836, file: !20, line: 738, baseType: !641, size: 32, offset: 4640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !836, file: !20, line: 739, baseType: !3670, size: 64, offset: 4672)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !836, file: !20, line: 750, baseType: !159, size: 64, offset: 4736)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !796, file: !797, line: 91, baseType: !3979, size: 256, offset: 448)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 256, elements: !3546)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !796, file: !797, line: 94, baseType: !3981, size: 64, offset: 704)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3982, line: 25, size: 64, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3983 = !{!3984}
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3981, file: !3982, line: 26, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3981, file: !3982, line: 26, size: 64, elements: !3986)
!3986 = !{!3987, !3988}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3985, file: !3982, line: 28, baseType: !591, size: 64, align: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, scope: !3985, file: !3982, line: 30, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3985, file: !3982, line: 30, size: 64, elements: !3990)
!3990 = !{!3991, !3992}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3989, file: !3982, line: 31, baseType: !212, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3989, file: !3982, line: 32, baseType: !115, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !796, file: !797, line: 95, baseType: !3685, size: 64, offset: 768)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !796, file: !797, line: 96, baseType: !1036, size: 64, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !796, file: !797, line: 97, baseType: !329, size: 64, offset: 896)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !796, file: !797, line: 98, baseType: !159, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !796, file: !797, line: 100, baseType: !3998, size: 128, offset: 1024)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 100, size: 128, elements: !3999)
!3999 = !{!4000, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3998, file: !797, line: 101, baseType: !200, size: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3998, file: !797, line: 102, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !796, file: !797, line: 104, baseType: !200, size: 128, offset: 1152)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !796, file: !797, line: 105, baseType: !200, size: 128, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !796, file: !797, line: 113, baseType: !4006, size: 128, offset: 1408)
!4006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !796, file: !797, line: 109, size: 128, elements: !4007)
!4007 = !{!4008, !4009, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4006, file: !797, line: 110, baseType: !538, size: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4006, file: !797, line: 111, baseType: !811, size: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4006, file: !797, line: 112, baseType: !457, size: 128, align: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !791, file: !792, line: 72, baseType: !1036, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !791, file: !792, line: 73, baseType: !115, size: 32, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !791, file: !792, line: 74, baseType: !871, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !786, file: !787, line: 10, baseType: !795, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !445, file: !20, line: 1015, baseType: !835, size: 64, offset: 1344)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !445, file: !20, line: 1016, baseType: !3831, size: 64, offset: 1408)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !445, file: !20, line: 1018, baseType: !590, size: 64, offset: 1472)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !445, file: !20, line: 1020, baseType: !159, size: 64, offset: 1536)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !445, file: !20, line: 1023, baseType: !159, size: 64, offset: 1600)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !445, file: !20, line: 1027, baseType: !4021, size: 64, offset: 1664)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !445, file: !20, line: 1029, baseType: !2851, size: 64, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !445, file: !20, line: 1030, baseType: !3049, size: 32, offset: 1792)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !445, file: !20, line: 1031, baseType: !3049, size: 32, offset: 1824)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !440, file: !392, line: 255, baseType: !1528, size: 64, offset: 128)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !440, file: !392, line: 256, baseType: !159, size: 64, offset: 192)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !440, file: !392, line: 259, baseType: !480, size: 256, offset: 256)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !440, file: !392, line: 260, baseType: !480, size: 256, offset: 512)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !440, file: !392, line: 261, baseType: !115, size: 32, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !440, file: !392, line: 262, baseType: !200, size: 128, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !440, file: !392, line: 263, baseType: !281, size: 64, offset: 960)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !440, file: !392, line: 265, baseType: !326, size: 64, offset: 1024)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !440, file: !392, line: 266, baseType: !344, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !440, file: !392, line: 267, baseType: !344, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !440, file: !392, line: 268, baseType: !3185, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !433, file: !392, line: 277, baseType: !4037, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !439}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !433, file: !392, line: 290, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!115, !1528, !159}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !433, file: !392, line: 292, baseType: !4045, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!159, !1528, !3844}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !433, file: !392, line: 293, baseType: !4049, size: 64, offset: 256)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!159, !1528, !159, !3844}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !433, file: !392, line: 294, baseType: !4053, size: 64, offset: 320)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !1528, !159}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !433, file: !392, line: 296, baseType: !4057, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!312, !439, !281, !326, !493}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !433, file: !392, line: 306, baseType: !326, size: 64, offset: 448)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !433, file: !392, line: 313, baseType: !344, size: 8, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !433, file: !392, line: 314, baseType: !4057, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !433, file: !392, line: 317, baseType: !4064, size: 64, offset: 640)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!3874, !439, !3876}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !433, file: !392, line: 320, baseType: !4068, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!115, !439, !3142}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !428, file: !392, line: 176, baseType: !4072, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !392, line: 35, flags: DIFlagFwdDecl)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !428, file: !392, line: 177, baseType: !493, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !428, file: !392, line: 178, baseType: !390, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !391, file: !392, line: 215, baseType: !159, size: 64, offset: 768)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !391, file: !392, line: 221, baseType: !590, size: 64, offset: 832)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !392, line: 223, baseType: !193, size: 16, offset: 896)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !391, file: !392, line: 224, baseType: !192, size: 16, offset: 912)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !391, file: !392, line: 225, baseType: !4081, size: 64, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !392, line: 36, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !391, file: !392, line: 227, baseType: !457, size: 128, align: 64, offset: 1024)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !195, file: !196, line: 71, baseType: !4085, size: 32, offset: 448)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4086, line: 19, size: 32, elements: !4087)
!4086 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4087 = !{!4088}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4085, file: !4086, line: 20, baseType: !525, size: 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !195, file: !196, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !195, file: !196, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !195, file: !196, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !195, file: !196, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !195, file: !196, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !184, file: !185, line: 88, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!192, !194, !4098, !115}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !185, line: 175, size: 512, elements: !4100)
!4100 = !{!4101, !4102, !4103, !4104, !4108, !4112, !4113}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4099, file: !185, line: 176, baseType: !318, size: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4099, file: !185, line: 177, baseType: !326, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4099, file: !185, line: 178, baseType: !159, size: 64, offset: 192)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !4099, file: !185, line: 179, baseType: !4105, size: 64, offset: 256)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!2851}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4099, file: !185, line: 180, baseType: !4109, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!312, !444, !194, !4098, !281, !493, !326}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4099, file: !185, line: 182, baseType: !4109, size: 64, offset: 384)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4099, file: !185, line: 184, baseType: !4114, size: 64, offset: 448)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!115, !444, !194, !4098, !3142}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !184, file: !185, line: 90, baseType: !4118, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !184, file: !185, line: 91, baseType: !4120, size: 64, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !175, file: !176, line: 84, baseType: !181, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !175, file: !176, line: 85, baseType: !181, size: 64, offset: 256)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !175, file: !176, line: 87, baseType: !4124, size: 64, offset: 320)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!115, !4127, !4191}
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !4129)
!4129 = !{!4130, !4131, !4132, !4135, !4136, !4189, !4190, !4192, !4193, !4194, !4195, !4202, !4298, !4311, !4321, !4325, !4327, !4328, !4329, !4333, !4340, !4341, !4344, !4347, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4509, !4510, !4511, !4514, !4517, !4526, !4527, !4528, !4529, !4530, !4531}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4128, file: !100, line: 706, baseType: !195, size: 512)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4128, file: !100, line: 707, baseType: !4127, size: 64, offset: 512)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4128, file: !100, line: 709, baseType: !4133, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4128, file: !100, line: 711, baseType: !170, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4128, file: !100, line: 712, baseType: !4137, size: 64, offset: 704)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4139)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4140)
!4140 = !{!4141, !4142, !4143, !4149, !4154, !4158}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4139, file: !100, line: 90, baseType: !170, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4139, file: !100, line: 91, baseType: !181, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4139, file: !100, line: 92, baseType: !4144, size: 64, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!115, !4147, !276}
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4139, file: !100, line: 93, baseType: !4150, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!281, !4147, !4153, !374, !382}
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4139, file: !100, line: 95, baseType: !4155, size: 64, offset: 256)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{null, !4127}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4139, file: !100, line: 97, baseType: !4159, size: 64, offset: 320)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4161)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4162)
!4162 = !{!4163, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4161, file: !107, line: 287, baseType: !4164, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!115, !4127}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4161, file: !107, line: 288, baseType: !4155, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4161, file: !107, line: 289, baseType: !4164, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4161, file: !107, line: 290, baseType: !4164, size: 64, offset: 192)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4161, file: !107, line: 291, baseType: !4164, size: 64, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4161, file: !107, line: 292, baseType: !4164, size: 64, offset: 320)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4161, file: !107, line: 293, baseType: !4164, size: 64, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4161, file: !107, line: 294, baseType: !4164, size: 64, offset: 448)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4161, file: !107, line: 295, baseType: !4164, size: 64, offset: 512)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4161, file: !107, line: 296, baseType: !4164, size: 64, offset: 576)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4161, file: !107, line: 297, baseType: !4164, size: 64, offset: 640)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4161, file: !107, line: 298, baseType: !4164, size: 64, offset: 704)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4161, file: !107, line: 299, baseType: !4164, size: 64, offset: 768)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4161, file: !107, line: 300, baseType: !4164, size: 64, offset: 832)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4161, file: !107, line: 301, baseType: !4164, size: 64, offset: 896)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4161, file: !107, line: 302, baseType: !4164, size: 64, offset: 960)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4161, file: !107, line: 303, baseType: !4164, size: 64, offset: 1024)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4161, file: !107, line: 304, baseType: !4164, size: 64, offset: 1088)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4161, file: !107, line: 305, baseType: !4164, size: 64, offset: 1152)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4161, file: !107, line: 306, baseType: !4164, size: 64, offset: 1216)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4161, file: !107, line: 307, baseType: !4164, size: 64, offset: 1280)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4161, file: !107, line: 308, baseType: !4164, size: 64, offset: 1344)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4161, file: !107, line: 309, baseType: !4164, size: 64, offset: 1408)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4128, file: !100, line: 714, baseType: !173, size: 64, offset: 768)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4128, file: !100, line: 715, baseType: !4191, size: 64, offset: 832)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4128, file: !100, line: 717, baseType: !159, size: 64, offset: 896)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4128, file: !100, line: 719, baseType: !159, size: 64, offset: 960)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4128, file: !100, line: 721, baseType: !480, size: 256, offset: 1024)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4128, file: !100, line: 725, baseType: !4196, size: 448, offset: 1280)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4196, file: !100, line: 518, baseType: !200, size: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4196, file: !100, line: 519, baseType: !200, size: 128, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4196, file: !100, line: 520, baseType: !200, size: 128, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4196, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4128, file: !100, line: 726, baseType: !4203, size: 2496, offset: 1728)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4204)
!4204 = !{!4205, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4291, !4295}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4203, file: !107, line: 664, baseType: !4206, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4207)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4208)
!4208 = !{!4209}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4207, file: !107, line: 59, baseType: !115, size: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4203, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4203, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4203, file: !107, line: 667, baseType: !344, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4203, file: !107, line: 668, baseType: !344, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4203, file: !107, line: 669, baseType: !344, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4203, file: !107, line: 670, baseType: !344, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4203, file: !107, line: 671, baseType: !344, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4203, file: !107, line: 672, baseType: !344, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4203, file: !107, line: 673, baseType: !344, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4203, file: !107, line: 674, baseType: !344, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4203, file: !107, line: 675, baseType: !640, size: 32, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4203, file: !107, line: 676, baseType: !212, size: 32, offset: 96)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4203, file: !107, line: 678, baseType: !200, size: 128, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4203, file: !107, line: 679, baseType: !1089, size: 256, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4203, file: !107, line: 680, baseType: !4225, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4227, line: 43, size: 1536, elements: !4228)
!4227 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4226, file: !4227, line: 44, baseType: !170, size: 64)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4226, file: !4227, line: 45, baseType: !115, size: 32, offset: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4226, file: !4227, line: 46, baseType: !200, size: 128, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4226, file: !4227, line: 47, baseType: !212, size: 32, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4226, file: !4227, line: 48, baseType: !4234, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4226, file: !4227, line: 49, baseType: !1337, size: 320, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4226, file: !4227, line: 50, baseType: !329, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4226, file: !4227, line: 51, baseType: !1949, size: 64, offset: 768)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4226, file: !4227, line: 52, baseType: !1949, size: 64, offset: 832)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4226, file: !4227, line: 53, baseType: !1949, size: 64, offset: 896)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4226, file: !4227, line: 54, baseType: !1949, size: 64, offset: 960)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4226, file: !4227, line: 55, baseType: !1949, size: 64, offset: 1024)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4226, file: !4227, line: 56, baseType: !329, size: 64, offset: 1088)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4226, file: !4227, line: 57, baseType: !329, size: 64, offset: 1152)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4226, file: !4227, line: 58, baseType: !329, size: 64, offset: 1216)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4226, file: !4227, line: 59, baseType: !329, size: 64, offset: 1280)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4226, file: !4227, line: 60, baseType: !329, size: 64, offset: 1344)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4226, file: !4227, line: 61, baseType: !4127, size: 64, offset: 1408)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4226, file: !4227, line: 62, baseType: !344, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4226, file: !4227, line: 63, baseType: !344, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4203, file: !107, line: 681, baseType: !344, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4203, file: !107, line: 682, baseType: !344, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4203, file: !107, line: 683, baseType: !344, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4203, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4203, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4203, file: !107, line: 690, baseType: !1941, size: 512, offset: 640)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4203, file: !107, line: 691, baseType: !590, size: 64, offset: 1152)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4203, file: !107, line: 692, baseType: !1349, size: 256, offset: 1216)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4203, file: !107, line: 693, baseType: !547, size: 192, offset: 1472)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4203, file: !107, line: 694, baseType: !4234, size: 64, offset: 1664)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4203, file: !107, line: 695, baseType: !232, size: 32, offset: 1728)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4203, file: !107, line: 696, baseType: !232, size: 32, offset: 1760)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4203, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4203, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4203, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4203, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4203, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4203, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4203, file: !107, line: 703, baseType: !344, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4203, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4203, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4203, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4203, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4203, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4203, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4203, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4203, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4203, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4203, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4203, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4203, file: !107, line: 715, baseType: !590, size: 64, offset: 2048)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4203, file: !107, line: 716, baseType: !590, size: 64, offset: 2112)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4203, file: !107, line: 717, baseType: !590, size: 64, offset: 2176)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4203, file: !107, line: 718, baseType: !590, size: 64, offset: 2240)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4203, file: !107, line: 720, baseType: !4286, size: 64, offset: 2304)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4288)
!4288 = !{!4289, !4290}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4287, file: !107, line: 633, baseType: !212, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4287, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4203, file: !107, line: 721, baseType: !4292, size: 64, offset: 2368)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4127, !607}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4203, file: !107, line: 722, baseType: !4296, size: 64, offset: 2432)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4128, file: !100, line: 727, baseType: !4299, size: 64, offset: 4224)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4301)
!4301 = !{!4302, !4303, !4304, !4308, !4309, !4310}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4300, file: !107, line: 743, baseType: !4161, size: 1472)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4300, file: !107, line: 744, baseType: !4164, size: 64, offset: 1472)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4300, file: !107, line: 745, baseType: !4305, size: 64, offset: 1536)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{null, !4127, !344}
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4300, file: !107, line: 746, baseType: !4164, size: 64, offset: 1600)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4300, file: !107, line: 747, baseType: !4155, size: 64, offset: 1664)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4300, file: !107, line: 748, baseType: !4155, size: 64, offset: 1728)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4128, file: !100, line: 736, baseType: !4312, size: 128, offset: 4288)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4313)
!4313 = !{!4314, !4318}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4312, file: !100, line: 531, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4317, line: 13, flags: DIFlagFwdDecl)
!4317 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4312, file: !100, line: 532, baseType: !4319, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4128, file: !100, line: 738, baseType: !4322, size: 64, offset: 4416)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4324)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4128, file: !100, line: 740, baseType: !4326, size: 64, offset: 4480)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4128, file: !100, line: 741, baseType: !590, size: 64, offset: 4544)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4128, file: !100, line: 746, baseType: !590, size: 64, offset: 4608)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4128, file: !100, line: 747, baseType: !4330, size: 64, offset: 4672)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4332)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4128, file: !100, line: 749, baseType: !4334, size: 64, offset: 4736)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4336)
!4336 = !{!4337, !4338, !4339}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4335, file: !100, line: 433, baseType: !13, size: 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4335, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4335, file: !100, line: 435, baseType: !329, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4128, file: !100, line: 751, baseType: !200, size: 128, offset: 4800)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4128, file: !100, line: 762, baseType: !4342, size: 64, offset: 4928)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4128, file: !100, line: 770, baseType: !4345, offset: 4992)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4346, line: 5, elements: !1378)
!4346 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4128, file: !100, line: 772, baseType: !4348, size: 64, offset: 4992)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4350, line: 48, size: 1152, elements: !4351)
!4350 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4351 = !{!4352, !4353, !4355, !4356, !4459, !4467, !4468, !4469, !4470, !4471, !4472}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4349, file: !4350, line: 49, baseType: !170, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4349, file: !4350, line: 50, baseType: !4354, size: 32, offset: 64)
!4354 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4350, line: 25, baseType: !640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4349, file: !4350, line: 51, baseType: !170, size: 64, offset: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4349, file: !4350, line: 52, baseType: !4357, size: 512, offset: 192)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4358, line: 41, size: 512, elements: !4359)
!4358 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4359 = !{!4360, !4362, !4455, !4456, !4457, !4458}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4357, file: !4358, line: 42, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4357, file: !4358, line: 43, baseType: !4363, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4358, line: 125, size: 1408, elements: !4366)
!4366 = !{!4367, !4371, !4375, !4381, !4385, !4386, !4390, !4394, !4398, !4402, !4406, !4407, !4411, !4415, !4419, !4430, !4431, !4432, !4433, !4443, !4447, !4451}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4365, file: !4358, line: 126, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4369, size: 64)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!4361, !4361}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4365, file: !4358, line: 127, baseType: !4372, size: 64, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{null, !4361}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4365, file: !4358, line: 128, baseType: !4376, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{!344, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4357)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4365, file: !4358, line: 129, baseType: !4382, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!354, !4379, !4147}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4365, file: !4358, line: 131, baseType: !4376, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4365, file: !4358, line: 133, baseType: !4387, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{!122, !4379}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4365, file: !4358, line: 134, baseType: !4391, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!344, !4379, !170}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4365, file: !4358, line: 136, baseType: !4395, size: 64, offset: 448)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!115, !4379, !170, !13, !159, !326}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4365, file: !4358, line: 141, baseType: !4399, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!115, !4379, !170, !1426, !326}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4365, file: !4358, line: 144, baseType: !4403, size: 64, offset: 576)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!170, !4379}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4365, file: !4358, line: 145, baseType: !4403, size: 64, offset: 640)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4365, file: !4358, line: 146, baseType: !4408, size: 64, offset: 704)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!4361, !4379}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4365, file: !4358, line: 148, baseType: !4412, size: 64, offset: 768)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!4361, !4379, !4361}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4365, file: !4358, line: 151, baseType: !4416, size: 64, offset: 832)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!4361, !4379, !170}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4365, file: !4358, line: 153, baseType: !4420, size: 64, offset: 896)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!115, !4379, !170, !170, !13, !13, !4423}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4358, line: 94, size: 640, elements: !4425)
!4425 = !{!4426, !4427, !4428}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4424, file: !4358, line: 95, baseType: !4361, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4424, file: !4358, line: 96, baseType: !13, size: 32, offset: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4424, file: !4358, line: 97, baseType: !4429, size: 512, offset: 128)
!4429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 512, elements: !1984)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4365, file: !4358, line: 158, baseType: !4412, size: 64, offset: 960)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4365, file: !4358, line: 161, baseType: !4408, size: 64, offset: 1024)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4365, file: !4358, line: 163, baseType: !4368, size: 64, offset: 1088)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4365, file: !4358, line: 164, baseType: !4434, size: 64, offset: 1152)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!115, !4379, !4437}
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4358, line: 73, size: 128, elements: !4439)
!4439 = !{!4440, !4441, !4442}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4438, file: !4358, line: 74, baseType: !13, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4438, file: !4358, line: 75, baseType: !13, size: 32, offset: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4438, file: !4358, line: 76, baseType: !4379, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4365, file: !4358, line: 166, baseType: !4444, size: 64, offset: 1216)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!159, !4361, !115}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4365, file: !4358, line: 167, baseType: !4448, size: 64, offset: 1280)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!115, !4379, !13}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4365, file: !4358, line: 168, baseType: !4452, size: 64, offset: 1344)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!115, !4361}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4357, file: !4358, line: 44, baseType: !4127, size: 64, offset: 128)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4357, file: !4358, line: 45, baseType: !200, size: 128, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4357, file: !4358, line: 46, baseType: !200, size: 128, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4357, file: !4358, line: 47, baseType: !240, size: 8, offset: 448)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4349, file: !4350, line: 54, baseType: !4460, size: 64, offset: 704)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4350, line: 28, size: 256, elements: !4462)
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4461, file: !4350, line: 29, baseType: !281, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4461, file: !4350, line: 30, baseType: !115, size: 32, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4461, file: !4350, line: 31, baseType: !159, size: 64, offset: 128)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4461, file: !4350, line: 32, baseType: !4460, size: 64, offset: 192)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4349, file: !4350, line: 55, baseType: !4460, size: 64, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4349, file: !4350, line: 56, baseType: !4348, size: 64, offset: 832)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4349, file: !4350, line: 57, baseType: !4348, size: 64, offset: 896)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4349, file: !4350, line: 58, baseType: !4348, size: 64, offset: 960)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4349, file: !4350, line: 62, baseType: !329, size: 64, offset: 1024)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4349, file: !4350, line: 63, baseType: !159, size: 64, offset: 1088)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4128, file: !100, line: 773, baseType: !4361, size: 64, offset: 5056)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4128, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4128, file: !100, line: 778, baseType: !906, size: 32, offset: 5152)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4128, file: !100, line: 779, baseType: !640, size: 32, offset: 5184)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4128, file: !100, line: 781, baseType: !212, size: 32, offset: 5216)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4128, file: !100, line: 782, baseType: !200, size: 128, offset: 5248)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4128, file: !100, line: 784, baseType: !4480, size: 64, offset: 5376)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4482)
!4482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4483, line: 52, size: 768, elements: !4484)
!4483 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4493, !4497, !4498, !4499, !4500, !4504, !4508}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4482, file: !4483, line: 53, baseType: !170, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4482, file: !4483, line: 55, baseType: !181, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4482, file: !4483, line: 56, baseType: !181, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4482, file: !4483, line: 58, baseType: !4144, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4482, file: !4483, line: 59, baseType: !4490, size: 64, offset: 256)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!281, !4147, !4153}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4482, file: !4483, line: 61, baseType: !4494, size: 64, offset: 320)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{null, !4480}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4482, file: !4483, line: 62, baseType: !4155, size: 64, offset: 384)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4482, file: !4483, line: 64, baseType: !4164, size: 64, offset: 448)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4482, file: !4483, line: 66, baseType: !335, size: 64, offset: 512)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4482, file: !4483, line: 67, baseType: !4501, size: 64, offset: 576)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = !DISubroutineType(types: !4503)
!4503 = !{!354, !4147}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4482, file: !4483, line: 69, baseType: !4505, size: 64, offset: 640)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{null, !4147, !374, !382}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4482, file: !4483, line: 71, baseType: !4159, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4128, file: !100, line: 785, baseType: !181, size: 64, offset: 5440)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4128, file: !100, line: 787, baseType: !4155, size: 64, offset: 5504)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4128, file: !100, line: 788, baseType: !4512, size: 64, offset: 5568)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4128, file: !100, line: 789, baseType: !4515, size: 64, offset: 5632)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4128, file: !100, line: 791, baseType: !4518, size: 64, offset: 5696)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4524, !4525}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4519, file: !100, line: 598, baseType: !128, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4519, file: !100, line: 599, baseType: !137, size: 32, offset: 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4519, file: !100, line: 600, baseType: !142, size: 32, offset: 64)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4519, file: !100, line: 601, baseType: !344, size: 8, offset: 96)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4519, file: !100, line: 602, baseType: !344, size: 8, offset: 104)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4128, file: !100, line: 793, baseType: !147, size: 32, offset: 5760)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4128, file: !100, line: 795, baseType: !344, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4128, file: !100, line: 796, baseType: !344, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4128, file: !100, line: 797, baseType: !344, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4128, file: !100, line: 798, baseType: !344, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4128, file: !100, line: 799, baseType: !344, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !175, file: !176, line: 88, baseType: !4144, size: 64, offset: 384)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !175, file: !176, line: 89, baseType: !4164, size: 64, offset: 448)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !175, file: !176, line: 90, baseType: !4155, size: 64, offset: 512)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !175, file: !176, line: 91, baseType: !4155, size: 64, offset: 576)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !175, file: !176, line: 92, baseType: !4155, size: 64, offset: 640)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !175, file: !176, line: 94, baseType: !4164, size: 64, offset: 704)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !175, file: !176, line: 95, baseType: !4164, size: 64, offset: 768)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !175, file: !176, line: 97, baseType: !4540, size: 64, offset: 832)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!115, !4127, !4206}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !175, file: !176, line: 98, baseType: !4164, size: 64, offset: 896)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !175, file: !176, line: 100, baseType: !4164, size: 64, offset: 960)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !175, file: !176, line: 102, baseType: !4164, size: 64, offset: 1024)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !175, file: !176, line: 103, baseType: !4155, size: 64, offset: 1088)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !175, file: !176, line: 105, baseType: !4159, size: 64, offset: 1152)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !175, file: !176, line: 107, baseType: !4549, size: 64, offset: 1216)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !176, line: 107, flags: DIFlagFwdDecl)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !175, file: !176, line: 109, baseType: !344, size: 8, offset: 1280)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !167, file: !94, line: 100, baseType: !1069, size: 64, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !167, file: !94, line: 101, baseType: !170, size: 64, offset: 192)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !167, file: !94, line: 103, baseType: !344, size: 8, offset: 256)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !167, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !167, file: !94, line: 106, baseType: !4558, size: 64, offset: 320)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4560)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4561, line: 282, size: 1600, elements: !4562)
!4561 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4562 = !{!4563, !4564, !4565, !4569}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4560, file: !4561, line: 283, baseType: !3673, size: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4560, file: !4561, line: 284, baseType: !3673, size: 256, offset: 256)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4560, file: !4561, line: 285, baseType: !4566, size: 1024, offset: 512)
!4566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4567)
!4567 = !{!4568}
!4568 = !DISubrange(count: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4560, file: !4561, line: 286, baseType: !354, size: 64, offset: 1536)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !167, file: !94, line: 107, baseType: !4571, size: 64, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4573)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4561, line: 217, size: 256, elements: !4574)
!4574 = !{!4575, !4576, !4578, !4579}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4573, file: !4561, line: 218, baseType: !3680, size: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4573, file: !4561, line: 219, baseType: !4577, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4561, line: 15, baseType: !329)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4573, file: !4561, line: 220, baseType: !641, size: 32, offset: 192)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4573, file: !4561, line: 221, baseType: !641, size: 32, offset: 224)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !167, file: !94, line: 109, baseType: !4164, size: 64, offset: 448)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !167, file: !94, line: 110, baseType: !4155, size: 64, offset: 512)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !167, file: !94, line: 111, baseType: !4164, size: 64, offset: 576)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !167, file: !94, line: 112, baseType: !4155, size: 64, offset: 640)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !167, file: !94, line: 113, baseType: !4540, size: 64, offset: 704)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !167, file: !94, line: 114, baseType: !4164, size: 64, offset: 768)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !167, file: !94, line: 115, baseType: !181, size: 64, offset: 832)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !167, file: !94, line: 116, baseType: !181, size: 64, offset: 896)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !167, file: !94, line: 118, baseType: !4159, size: 64, offset: 960)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !167, file: !94, line: 119, baseType: !4155, size: 64, offset: 1024)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !167, file: !94, line: 121, baseType: !4591, size: 64, offset: 1088)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !163, file: !164, line: 184, baseType: !4594, size: 64, offset: 1152)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4596)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device_id", file: !4561, line: 449, size: 64, elements: !4597)
!4597 = !{!4598, !4599}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4596, file: !4561, line: 450, baseType: !641, size: 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4596, file: !4561, line: 451, baseType: !641, size: 32, offset: 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table", scope: !163, file: !164, line: 185, baseType: !4601, size: 64, offset: 1216)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table_size", scope: !163, file: !164, line: 186, baseType: !13, size: 32, offset: 1280)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table_legacy", scope: !163, file: !164, line: 187, baseType: !4601, size: 64, offset: 1344)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "feature_table_size_legacy", scope: !163, file: !164, line: 188, baseType: !13, size: 32, offset: 1408)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !163, file: !164, line: 189, baseType: !4606, size: 64, offset: 1472)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!115, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_device", file: !164, line: 122, size: 6400, elements: !4611)
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4714, !4718, !4719, !4720}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4610, file: !164, line: 123, baseType: !115, size: 32)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !4610, file: !164, line: 124, baseType: !344, size: 8, offset: 32)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "config_enabled", scope: !4610, file: !164, line: 125, baseType: !344, size: 8, offset: 40)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "config_change_pending", scope: !4610, file: !164, line: 126, baseType: !344, size: 8, offset: 48)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "config_lock", scope: !4610, file: !164, line: 127, baseType: !212, size: 32, offset: 64)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "vqs_list_lock", scope: !4610, file: !164, line: 128, baseType: !212, size: 32, offset: 96)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4610, file: !164, line: 129, baseType: !4128, size: 5824, offset: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4610, file: !164, line: 130, baseType: !4596, size: 64, offset: 5952)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4610, file: !164, line: 131, baseType: !4621, size: 64, offset: 6016)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4623)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_config_ops", file: !4624, line: 97, size: 1088, elements: !4625)
!4624 = !DIFile(filename: "./include/linux/virtio_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b12f5288db5f9b29a3869a2adb1ae6a1")
!4625 = !{!4626, !4630, !4634, !4638, !4642, !4646, !4650, !4679, !4680, !4681, !4685, !4686, !4690, !4696, !4700, !4709, !4713}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4623, file: !4624, line: 98, baseType: !4627, size: 64)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{null, !4609, !13, !159, !13}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4623, file: !4624, line: 100, baseType: !4631, size: 64, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{null, !4609, !13, !354, !13}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !4623, file: !4624, line: 102, baseType: !4635, size: 64, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!640, !4609}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4623, file: !4624, line: 103, baseType: !4639, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!240, !4609}
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "set_status", scope: !4623, file: !4624, line: 104, baseType: !4643, size: 64, offset: 256)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{null, !4609, !240}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4623, file: !4624, line: 105, baseType: !4647, size: 64, offset: 320)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !4609}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "find_vqs", scope: !4623, file: !4624, line: 106, baseType: !4651, size: 64, offset: 384)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!115, !4609, !13, !4654, !4670, !4673, !4675, !4677}
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtqueue", file: !164, line: 30, size: 512, elements: !4657)
!4657 = !{!4658, !4659, !4663, !4664, !4665, !4666, !4667, !4668, !4669}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4656, file: !164, line: 31, baseType: !200, size: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4656, file: !164, line: 32, baseType: !4660, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DISubroutineType(types: !4662)
!4662 = !{null, !4655}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4656, file: !164, line: 33, baseType: !170, size: 64, offset: 192)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "vdev", scope: !4656, file: !164, line: 34, baseType: !4609, size: 64, offset: 256)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4656, file: !164, line: 35, baseType: !13, size: 32, offset: 320)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "num_free", scope: !4656, file: !164, line: 36, baseType: !13, size: 32, offset: 352)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "num_max", scope: !4656, file: !164, line: 37, baseType: !13, size: 32, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4656, file: !164, line: 38, baseType: !344, size: 8, offset: 416)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4656, file: !164, line: 39, baseType: !159, size: 64, offset: 448)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vq_callback_t", file: !4624, line: 19, baseType: !4661)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!4677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4678, size: 64)
!4678 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity", file: !4624, line: 12, flags: DIFlagFwdDecl)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "del_vqs", scope: !4623, file: !4624, line: 110, baseType: !4647, size: 64, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize_cbs", scope: !4623, file: !4624, line: 111, baseType: !4647, size: 64, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !4623, file: !4624, line: 112, baseType: !4682, size: 64, offset: 576)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DISubroutineType(types: !4684)
!4684 = !{!590, !4609}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "finalize_features", scope: !4623, file: !4624, line: 113, baseType: !4606, size: 64, offset: 640)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !4623, file: !4624, line: 114, baseType: !4687, size: 64, offset: 704)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!170, !4609}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "set_vq_affinity", scope: !4623, file: !4624, line: 115, baseType: !4691, size: 64, offset: 768)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{!115, !4655, !4694}
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2062)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "get_vq_affinity", scope: !4623, file: !4624, line: 117, baseType: !4697, size: 64, offset: 832)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!4694, !4609, !115}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "get_shm_region", scope: !4623, file: !4624, line: 119, baseType: !4701, size: 64, offset: 896)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!344, !4609, !4704, !240}
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "virtio_shm_region", file: !4624, line: 14, size: 128, elements: !4706)
!4706 = !{!4707, !4708}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4705, file: !4624, line: 15, baseType: !590, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4705, file: !4624, line: 16, baseType: !590, size: 64, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vq_and_reset", scope: !4623, file: !4624, line: 121, baseType: !4710, size: 64, offset: 960)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!115, !4655}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vq_after_reset", scope: !4623, file: !4624, line: 122, baseType: !4710, size: 64, offset: 1024)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "vringh_config", scope: !4610, file: !164, line: 132, baseType: !4715, size: 64, offset: 6080)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4717)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "vringh_config_ops", file: !164, line: 132, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "vqs", scope: !4610, file: !164, line: 133, baseType: !200, size: 128, offset: 6144)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4610, file: !164, line: 134, baseType: !590, size: 64, offset: 6272)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4610, file: !164, line: 135, baseType: !159, size: 64, offset: 6336)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !163, file: !164, line: 190, baseType: !4606, size: 64, offset: 1536)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "scan", scope: !163, file: !164, line: 191, baseType: !4647, size: 64, offset: 1600)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !163, file: !164, line: 192, baseType: !4647, size: 64, offset: 1664)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "config_changed", scope: !163, file: !164, line: 193, baseType: !4647, size: 64, offset: 1728)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !163, file: !164, line: 194, baseType: !4606, size: 64, offset: 1792)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !163, file: !164, line: 195, baseType: !4606, size: 64, offset: 1856)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4610)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !203)
!4731 = !{!0, !7, !4732, !4734, !4736, !4738, !4740, !4742, !4747, !4749, !4751, !4753, !4755, !4757, !4759, !4763, !4768, !4773, !4777, !4780, !4782, !4785, !4787, !4790, !4792, !4806, !4808, !4810, !4812, !4814, !4816, !4818, !4820, !4822, !4825, !4827, !4829, !4832, !4835, !4840, !4845, !4851, !4853, !4858, !4863, !4868}
!4732 = !DIGlobalVariableExpression(var: !4733, expr: !DIExpression())
!4733 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_virtio_config_changed293", scope: !9, file: !2, line: 144, type: !159, isLocal: true, isDefinition: true)
!4734 = !DIGlobalVariableExpression(var: !4735, expr: !DIExpression())
!4735 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_virtio_add_status294", scope: !9, file: !2, line: 168, type: !159, isLocal: true, isDefinition: true)
!4736 = !DIGlobalVariableExpression(var: !4737, expr: !DIExpression())
!4737 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_virtio_reset_device295", scope: !9, file: !2, line: 235, type: !159, isLocal: true, isDefinition: true)
!4738 = !DIGlobalVariableExpression(var: !4739, expr: !DIExpression())
!4739 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_register_virtio_driver296", scope: !9, file: !2, line: 359, type: !159, isLocal: true, isDefinition: true)
!4740 = !DIGlobalVariableExpression(var: !4741, expr: !DIExpression())
!4741 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_virtio_driver297", scope: !9, file: !2, line: 365, type: !159, isLocal: true, isDefinition: true)
!4742 = !DIGlobalVariableExpression(var: !4743, expr: !DIExpression())
!4743 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !4744, isLocal: true, isDefinition: true)
!4744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !4745)
!4745 = !{!4746}
!4746 = !DISubrange(count: 9)
!4747 = !DIGlobalVariableExpression(var: !4748, expr: !DIExpression())
!4748 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_register_virtio_device298", scope: !9, file: !2, line: 471, type: !159, isLocal: true, isDefinition: true)
!4749 = !DIGlobalVariableExpression(var: !4750, expr: !DIExpression())
!4750 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_is_virtio_device299", scope: !9, file: !2, line: 477, type: !159, isLocal: true, isDefinition: true)
!4751 = !DIGlobalVariableExpression(var: !4752, expr: !DIExpression())
!4752 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_virtio_device300", scope: !9, file: !2, line: 486, type: !159, isLocal: true, isDefinition: true)
!4753 = !DIGlobalVariableExpression(var: !4754, expr: !DIExpression())
!4754 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_virtio_device_freeze301", scope: !9, file: !2, line: 508, type: !159, isLocal: true, isDefinition: true)
!4755 = !DIGlobalVariableExpression(var: !4756, expr: !DIExpression())
!4756 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_virtio_device_restore302", scope: !9, file: !2, line: 559, type: !159, isLocal: true, isDefinition: true)
!4757 = !DIGlobalVariableExpression(var: !4758, expr: !DIExpression())
!4758 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_virtio__303_574_virtio_init1304", scope: !9, file: !2, line: 574, type: !159, isLocal: true, isDefinition: true)
!4759 = !DIGlobalVariableExpression(var: !4760, expr: !DIExpression())
!4760 = distinct !DIGlobalVariable(name: "__exitcall_virtio_exit", scope: !9, file: !2, line: 575, type: !4761, isLocal: true, isDefinition: true)
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4762, line: 120, baseType: !1453)
!4762 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4763 = !DIGlobalVariableExpression(var: !4764, expr: !DIExpression())
!4764 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file305", scope: !9, file: !2, line: 577, type: !4765, isLocal: true, isDefinition: true, align: 8)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 272, elements: !4766)
!4766 = !{!4767}
!4767 = !DISubrange(count: 34)
!4768 = !DIGlobalVariableExpression(var: !4769, expr: !DIExpression())
!4769 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license306", scope: !9, file: !2, line: 577, type: !4770, isLocal: true, isDefinition: true, align: 8)
!4770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 152, elements: !4771)
!4771 = !{!4772}
!4772 = !DISubrange(count: 19)
!4773 = !DIGlobalVariableExpression(var: !4774, expr: !DIExpression())
!4774 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !4775, file: !4776, line: 112, type: !159, isLocal: true, isDefinition: true)
!4775 = distinct !DISubprogram(name: "might_resched", scope: !4776, file: !4776, line: 110, type: !1454, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4776 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4777 = !DIGlobalVariableExpression(var: !4778, expr: !DIExpression())
!4778 = distinct !DIGlobalVariable(scope: null, file: !2, line: 344, type: !4779, isLocal: true, isDefinition: true)
!4779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1227)
!4780 = !DIGlobalVariableExpression(var: !4781, expr: !DIExpression())
!4781 = distinct !DIGlobalVariable(name: "virtio_bus", scope: !9, file: !2, line: 343, type: !175, isLocal: true, isDefinition: true)
!4782 = !DIGlobalVariableExpression(var: !4783, expr: !DIExpression())
!4783 = distinct !DIGlobalVariable(name: "virtio_dev_groups", scope: !9, file: !2, line: 72, type: !4784, isLocal: true, isDefinition: true)
!4784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1225)
!4785 = !DIGlobalVariableExpression(var: !4786, expr: !DIExpression())
!4786 = distinct !DIGlobalVariable(name: "virtio_dev_group", scope: !9, file: !2, line: 72, type: !183, isLocal: true, isDefinition: true)
!4787 = !DIGlobalVariableExpression(var: !4788, expr: !DIExpression())
!4788 = distinct !DIGlobalVariable(name: "virtio_dev_attrs", scope: !9, file: !2, line: 64, type: !4789, isLocal: true, isDefinition: true)
!4789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 384, elements: !663)
!4790 = !DIGlobalVariableExpression(var: !4791, expr: !DIExpression())
!4791 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !4779, isLocal: true, isDefinition: true)
!4792 = !DIGlobalVariableExpression(var: !4793, expr: !DIExpression())
!4793 = distinct !DIGlobalVariable(name: "dev_attr_device", scope: !9, file: !2, line: 20, type: !4794, isLocal: true, isDefinition: true)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !100, line: 106, size: 256, elements: !4795)
!4795 = !{!4796, !4797, !4802}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4794, file: !100, line: 107, baseType: !318, size: 128)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4794, file: !100, line: 108, baseType: !4798, size: 64, offset: 128)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!312, !4127, !4801, !281}
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4794, file: !100, line: 110, baseType: !4803, size: 64, offset: 192)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DISubroutineType(types: !4805)
!4805 = !{!312, !4127, !4801, !170, !326}
!4806 = !DIGlobalVariableExpression(var: !4807, expr: !DIExpression())
!4807 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !2726, isLocal: true, isDefinition: true)
!4808 = !DIGlobalVariableExpression(var: !4809, expr: !DIExpression())
!4809 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !4779, isLocal: true, isDefinition: true)
!4810 = !DIGlobalVariableExpression(var: !4811, expr: !DIExpression())
!4811 = distinct !DIGlobalVariable(name: "dev_attr_vendor", scope: !9, file: !2, line: 28, type: !4794, isLocal: true, isDefinition: true)
!4812 = !DIGlobalVariableExpression(var: !4813, expr: !DIExpression())
!4813 = distinct !DIGlobalVariable(scope: null, file: !2, line: 36, type: !4779, isLocal: true, isDefinition: true)
!4814 = !DIGlobalVariableExpression(var: !4815, expr: !DIExpression())
!4815 = distinct !DIGlobalVariable(name: "dev_attr_status", scope: !9, file: !2, line: 36, type: !4794, isLocal: true, isDefinition: true)
!4816 = !DIGlobalVariableExpression(var: !4817, expr: !DIExpression())
!4817 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !2726, isLocal: true, isDefinition: true)
!4818 = !DIGlobalVariableExpression(var: !4819, expr: !DIExpression())
!4819 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !4744, isLocal: true, isDefinition: true)
!4820 = !DIGlobalVariableExpression(var: !4821, expr: !DIExpression())
!4821 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !9, file: !2, line: 45, type: !4794, isLocal: true, isDefinition: true)
!4822 = !DIGlobalVariableExpression(var: !4823, expr: !DIExpression())
!4823 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !4824, isLocal: true, isDefinition: true)
!4824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !4771)
!4825 = !DIGlobalVariableExpression(var: !4826, expr: !DIExpression())
!4826 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !4744, isLocal: true, isDefinition: true)
!4827 = !DIGlobalVariableExpression(var: !4828, expr: !DIExpression())
!4828 = distinct !DIGlobalVariable(name: "dev_attr_features", scope: !9, file: !2, line: 62, type: !4794, isLocal: true, isDefinition: true)
!4829 = !DIGlobalVariableExpression(var: !4830, expr: !DIExpression())
!4830 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !4831, isLocal: true, isDefinition: true)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !282)
!4832 = !DIGlobalVariableExpression(var: !4833, expr: !DIExpression())
!4833 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !4834, isLocal: true, isDefinition: true)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !1225)
!4835 = !DIGlobalVariableExpression(var: !4836, expr: !DIExpression())
!4836 = distinct !DIGlobalVariable(scope: null, file: !4624, line: 143, type: !4837, isLocal: true, isDefinition: true)
!4837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !4838)
!4838 = !{!4839}
!4839 = !DISubrange(count: 30)
!4840 = !DIGlobalVariableExpression(var: !4841, expr: !DIExpression())
!4841 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !4842, isLocal: true, isDefinition: true)
!4842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !4843)
!4843 = !{!4844}
!4844 = !DISubrange(count: 27)
!4845 = !DIGlobalVariableExpression(var: !4846, expr: !DIExpression())
!4846 = distinct !DIGlobalVariable(name: "virtio_index_ida", scope: !9, file: !2, line: 12, type: !4847, isLocal: true, isDefinition: true)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4848, line: 246, size: 128, elements: !4849)
!4848 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4849 = !{!4850}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4847, file: !4848, line: 247, baseType: !1028, size: 128)
!4851 = !DIGlobalVariableExpression(var: !4852, expr: !DIExpression())
!4852 = distinct !DIGlobalVariable(scope: null, file: !2, line: 388, type: !2404, isLocal: true, isDefinition: true)
!4853 = !DIGlobalVariableExpression(var: !4854, expr: !DIExpression())
!4854 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !4855, isLocal: true, isDefinition: true)
!4855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !4856)
!4856 = !{!4857}
!4857 = !DISubrange(count: 40)
!4858 = !DIGlobalVariableExpression(var: !4859, expr: !DIExpression())
!4859 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !4860, isLocal: true, isDefinition: true)
!4860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !4861)
!4861 = !{!4862}
!4862 = !DISubrange(count: 46)
!4863 = !DIGlobalVariableExpression(var: !4864, expr: !DIExpression())
!4864 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !4865, isLocal: true, isDefinition: true)
!4865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !4866)
!4866 = !{!4867}
!4867 = !DISubrange(count: 37)
!4868 = !DIGlobalVariableExpression(var: !4869, expr: !DIExpression())
!4869 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !4870, isLocal: true, isDefinition: true)
!4870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !4871)
!4871 = !{!4872}
!4872 = !DISubrange(count: 31)
!4873 = !{i32 7, !"Dwarf Version", i32 5}
!4874 = !{i32 2, !"Debug Info Version", i32 3}
!4875 = !{i32 1, !"wchar_size", i32 2}
!4876 = !{i32 8, !"cf-protection-branch", i32 1}
!4877 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4878 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4879 = !{i32 1, !"Code Model", i32 2}
!4880 = !{i32 1, !"override-stack-alignment", i32 8}
!4881 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4882 = distinct !DISubprogram(name: "virtio_check_driver_offered_feature", scope: !2, file: !2, line: 106, type: !4883, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4885)
!4883 = !DISubroutineType(types: !4884)
!4884 = !{null, !4727, !13}
!4885 = !{!4886, !4887, !4888, !4889}
!4886 = !DILocalVariable(name: "vdev", arg: 1, scope: !4882, file: !2, line: 106, type: !4727)
!4887 = !DILocalVariable(name: "fbit", arg: 2, scope: !4882, file: !2, line: 107, type: !13)
!4888 = !DILocalVariable(name: "i", scope: !4882, file: !2, line: 109, type: !13)
!4889 = !DILocalVariable(name: "drv", scope: !4882, file: !2, line: 110, type: !162)
!4890 = !DILocation(line: 106, column: 70, scope: !4882)
!4891 = !DILocation(line: 107, column: 20, scope: !4882)
!4892 = !DILocation(line: 109, column: 2, scope: !4882)
!4893 = !DILocation(line: 109, column: 15, scope: !4882)
!4894 = !DILocation(line: 110, column: 2, scope: !4882)
!4895 = !DILocation(line: 110, column: 24, scope: !4882)
!4896 = !DILocation(line: 110, column: 44, scope: !4882)
!4897 = !DILocation(line: 110, column: 50, scope: !4882)
!4898 = !DILocation(line: 110, column: 54, scope: !4882)
!4899 = !DILocation(line: 110, column: 30, scope: !4882)
!4900 = !DILocation(line: 112, column: 9, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4882, file: !2, line: 112, column: 2)
!4902 = !DILocation(line: 112, column: 7, scope: !4901)
!4903 = !DILocation(line: 112, column: 14, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4901, file: !2, line: 112, column: 2)
!4905 = !DILocation(line: 112, column: 18, scope: !4904)
!4906 = !DILocation(line: 112, column: 23, scope: !4904)
!4907 = !DILocation(line: 112, column: 16, scope: !4904)
!4908 = !DILocation(line: 112, column: 2, scope: !4901)
!4909 = !DILocation(line: 113, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4904, file: !2, line: 113, column: 7)
!4911 = !DILocation(line: 113, column: 12, scope: !4910)
!4912 = !DILocation(line: 113, column: 26, scope: !4910)
!4913 = !DILocation(line: 113, column: 32, scope: !4910)
!4914 = !DILocation(line: 113, column: 29, scope: !4910)
!4915 = !DILocation(line: 113, column: 7, scope: !4904)
!4916 = !DILocation(line: 114, column: 4, scope: !4910)
!4917 = !DILocation(line: 112, column: 44, scope: !4904)
!4918 = !DILocation(line: 112, column: 2, scope: !4904)
!4919 = distinct !{!4919, !4908, !4920, !4921, !4922}
!4920 = !DILocation(line: 114, column: 4, scope: !4901)
!4921 = !{!"llvm.loop.mustprogress"}
!4922 = !{!"llvm.loop.unroll.disable"}
!4923 = !DILocation(line: 116, column: 6, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4882, file: !2, line: 116, column: 6)
!4925 = !DILocation(line: 116, column: 11, scope: !4924)
!4926 = !DILocation(line: 116, column: 6, scope: !4882)
!4927 = !DILocation(line: 117, column: 10, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !2, line: 117, column: 3)
!4929 = distinct !DILexicalBlock(scope: !4924, file: !2, line: 116, column: 33)
!4930 = !DILocation(line: 117, column: 8, scope: !4928)
!4931 = !DILocation(line: 117, column: 15, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4928, file: !2, line: 117, column: 3)
!4933 = !DILocation(line: 117, column: 19, scope: !4932)
!4934 = !DILocation(line: 117, column: 24, scope: !4932)
!4935 = !DILocation(line: 117, column: 17, scope: !4932)
!4936 = !DILocation(line: 117, column: 3, scope: !4928)
!4937 = !DILocation(line: 118, column: 8, scope: !4938)
!4938 = distinct !DILexicalBlock(scope: !4932, file: !2, line: 118, column: 8)
!4939 = !DILocation(line: 118, column: 13, scope: !4938)
!4940 = !DILocation(line: 118, column: 34, scope: !4938)
!4941 = !DILocation(line: 118, column: 40, scope: !4938)
!4942 = !DILocation(line: 118, column: 37, scope: !4938)
!4943 = !DILocation(line: 118, column: 8, scope: !4932)
!4944 = !DILocation(line: 119, column: 5, scope: !4938)
!4945 = !DILocation(line: 117, column: 52, scope: !4932)
!4946 = !DILocation(line: 117, column: 3, scope: !4932)
!4947 = distinct !{!4947, !4936, !4948, !4921, !4922}
!4948 = !DILocation(line: 119, column: 5, scope: !4928)
!4949 = !DILocation(line: 120, column: 2, scope: !4929)
!4950 = !DILocation(line: 122, column: 2, scope: !4882)
!4951 = !DILocation(line: 122, column: 2, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4882, file: !2, line: 122, column: 2)
!4953 = !DILocation(line: 122, column: 2, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4952, file: !2, line: 122, column: 2)
!4955 = !DILocation(line: 122, column: 2, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4952, file: !2, line: 122, column: 2)
!4957 = !{i64 2154739616, i64 2154739645, i64 2154739691, i64 2154739749, i64 2154739803, i64 2154739857, i64 2154739912, i64 2154739943}
!4958 = !DILocation(line: 123, column: 1, scope: !4882)
!4959 = distinct !DISubprogram(name: "drv_to_virtio", scope: !164, file: !164, line: 198, type: !4960, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4962)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!162, !4191}
!4962 = !{!4963, !4964}
!4963 = !DILocalVariable(name: "drv", arg: 1, scope: !4959, file: !164, line: 198, type: !4191)
!4964 = !DILocalVariable(name: "__mptr", scope: !4965, file: !164, line: 200, type: !159)
!4965 = distinct !DILexicalBlock(scope: !4959, file: !164, line: 200, column: 9)
!4966 = !DILocation(line: 198, column: 73, scope: !4959)
!4967 = !DILocation(line: 200, column: 9, scope: !4965)
!4968 = !DILocation(line: 200, column: 9, scope: !4959)
!4969 = !DILocation(line: 200, column: 2, scope: !4959)
!4970 = distinct !DISubprogram(name: "virtio_config_changed", scope: !2, file: !2, line: 136, type: !4648, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4971)
!4971 = !{!4972, !4973, !4974, !4978}
!4972 = !DILocalVariable(name: "dev", arg: 1, scope: !4970, file: !2, line: 136, type: !4609)
!4973 = !DILocalVariable(name: "flags", scope: !4970, file: !2, line: 138, type: !329)
!4974 = !DILocalVariable(name: "__dummy", scope: !4975, file: !2, line: 140, type: !329)
!4975 = distinct !DILexicalBlock(scope: !4976, file: !2, line: 140, column: 2)
!4976 = distinct !DILexicalBlock(scope: !4977, file: !2, line: 140, column: 2)
!4977 = distinct !DILexicalBlock(scope: !4970, file: !2, line: 140, column: 2)
!4978 = !DILocalVariable(name: "__dummy2", scope: !4975, file: !2, line: 140, type: !329)
!4979 = !DILocation(line: 136, column: 50, scope: !4970)
!4980 = !DILocation(line: 138, column: 2, scope: !4970)
!4981 = !DILocation(line: 138, column: 16, scope: !4970)
!4982 = !DILocation(line: 140, column: 2, scope: !4970)
!4983 = !DILocation(line: 140, column: 2, scope: !4977)
!4984 = !DILocation(line: 140, column: 2, scope: !4975)
!4985 = !DILocation(line: 140, column: 2, scope: !4976)
!4986 = !DILocation(line: 141, column: 26, scope: !4970)
!4987 = !DILocation(line: 141, column: 2, scope: !4970)
!4988 = !DILocation(line: 142, column: 26, scope: !4970)
!4989 = !DILocation(line: 142, column: 31, scope: !4970)
!4990 = !DILocation(line: 142, column: 44, scope: !4970)
!4991 = !DILocation(line: 142, column: 2, scope: !4970)
!4992 = !DILocation(line: 143, column: 1, scope: !4970)
!4993 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4994, file: !4994, line: 32, type: !4995, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4994 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!329, !4997}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!4998 = distinct !DISubprogram(name: "spinlock_check", scope: !4999, file: !4999, line: 324, type: !5000, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5002)
!4999 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!4997, !3282}
!5002 = !{!5003}
!5003 = !DILocalVariable(name: "lock", arg: 1, scope: !4998, file: !4999, line: 324, type: !3282)
!5004 = !DILocation(line: 324, column: 67, scope: !4998)
!5005 = !DILocation(line: 326, column: 10, scope: !4998)
!5006 = !DILocation(line: 326, column: 16, scope: !4998)
!5007 = !DILocation(line: 326, column: 2, scope: !4998)
!5008 = distinct !DISubprogram(name: "__virtio_config_changed", scope: !2, file: !2, line: 126, type: !4648, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5009)
!5009 = !{!5010, !5011}
!5010 = !DILocalVariable(name: "dev", arg: 1, scope: !5008, file: !2, line: 126, type: !4609)
!5011 = !DILocalVariable(name: "drv", scope: !5008, file: !2, line: 128, type: !162)
!5012 = !DILocation(line: 126, column: 59, scope: !5008)
!5013 = !DILocation(line: 128, column: 2, scope: !5008)
!5014 = !DILocation(line: 128, column: 24, scope: !5008)
!5015 = !DILocation(line: 128, column: 44, scope: !5008)
!5016 = !DILocation(line: 128, column: 49, scope: !5008)
!5017 = !DILocation(line: 128, column: 53, scope: !5008)
!5018 = !DILocation(line: 128, column: 30, scope: !5008)
!5019 = !DILocation(line: 130, column: 7, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !5008, file: !2, line: 130, column: 6)
!5021 = !DILocation(line: 130, column: 12, scope: !5020)
!5022 = !{i8 0, i8 2}
!5023 = !DILocation(line: 130, column: 6, scope: !5008)
!5024 = !DILocation(line: 131, column: 3, scope: !5020)
!5025 = !DILocation(line: 131, column: 8, scope: !5020)
!5026 = !DILocation(line: 131, column: 30, scope: !5020)
!5027 = !DILocation(line: 132, column: 11, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5020, file: !2, line: 132, column: 11)
!5029 = !DILocation(line: 132, column: 15, scope: !5028)
!5030 = !DILocation(line: 132, column: 18, scope: !5028)
!5031 = !DILocation(line: 132, column: 23, scope: !5028)
!5032 = !DILocation(line: 132, column: 11, scope: !5020)
!5033 = !DILocation(line: 133, column: 3, scope: !5028)
!5034 = !DILocation(line: 133, column: 8, scope: !5028)
!5035 = !DILocation(line: 133, column: 23, scope: !5028)
!5036 = !DILocation(line: 134, column: 1, scope: !5008)
!5037 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4999, file: !4999, line: 404, type: !5038, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5040)
!5038 = !DISubroutineType(types: !5039)
!5039 = !{null, !3282, !329}
!5040 = !{!5041, !5042, !5043, !5046}
!5041 = !DILocalVariable(name: "lock", arg: 1, scope: !5037, file: !4999, line: 404, type: !3282)
!5042 = !DILocalVariable(name: "flags", arg: 2, scope: !5037, file: !4999, line: 404, type: !329)
!5043 = !DILocalVariable(name: "__dummy", scope: !5044, file: !4999, line: 406, type: !329)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !4999, line: 406, column: 2)
!5045 = distinct !DILexicalBlock(scope: !5037, file: !4999, line: 406, column: 2)
!5046 = !DILocalVariable(name: "__dummy2", scope: !5044, file: !4999, line: 406, type: !329)
!5047 = !DILocation(line: 404, column: 64, scope: !5037)
!5048 = !DILocation(line: 404, column: 84, scope: !5037)
!5049 = !DILocation(line: 406, column: 2, scope: !5037)
!5050 = !DILocation(line: 406, column: 2, scope: !5044)
!5051 = !DILocation(line: 406, column: 2, scope: !5045)
!5052 = !DILocation(line: 407, column: 1, scope: !5037)
!5053 = distinct !DISubprogram(name: "virtio_add_status", scope: !2, file: !2, line: 163, type: !5054, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5056)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !4609, !13}
!5056 = !{!5057, !5058}
!5057 = !DILocalVariable(name: "dev", arg: 1, scope: !5053, file: !2, line: 163, type: !4609)
!5058 = !DILocalVariable(name: "status", arg: 2, scope: !5053, file: !2, line: 163, type: !13)
!5059 = !DILocation(line: 163, column: 46, scope: !5053)
!5060 = !DILocation(line: 163, column: 64, scope: !5053)
!5061 = !DILocation(line: 165, column: 2, scope: !5053)
!5062 = !DILocation(line: 165, column: 2, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5053, file: !2, line: 165, column: 2)
!5064 = !DILocation(line: 166, column: 2, scope: !5053)
!5065 = !DILocation(line: 166, column: 7, scope: !5053)
!5066 = !DILocation(line: 166, column: 15, scope: !5053)
!5067 = !DILocation(line: 166, column: 26, scope: !5053)
!5068 = !DILocation(line: 166, column: 31, scope: !5053)
!5069 = !DILocation(line: 166, column: 36, scope: !5053)
!5070 = !DILocation(line: 166, column: 44, scope: !5053)
!5071 = !DILocation(line: 166, column: 55, scope: !5053)
!5072 = !DILocation(line: 166, column: 62, scope: !5053)
!5073 = !DILocation(line: 166, column: 60, scope: !5053)
!5074 = !DILocation(line: 167, column: 1, scope: !5053)
!5075 = !DILocation(line: 112, column: 2, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !4775, file: !4776, line: 112, column: 2)
!5077 = !DILocation(line: 112, column: 2, scope: !4775)
!5078 = !DILocation(line: 113, column: 1, scope: !4775)
!5079 = distinct !DISubprogram(name: "virtio_reset_device", scope: !2, file: !2, line: 220, type: !4648, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5080)
!5080 = !{!5081}
!5081 = !DILocalVariable(name: "dev", arg: 1, scope: !5079, file: !2, line: 220, type: !4609)
!5082 = !DILocation(line: 220, column: 48, scope: !5079)
!5083 = !DILocation(line: 233, column: 2, scope: !5079)
!5084 = !DILocation(line: 233, column: 7, scope: !5079)
!5085 = !DILocation(line: 233, column: 15, scope: !5079)
!5086 = !DILocation(line: 233, column: 21, scope: !5079)
!5087 = !DILocation(line: 234, column: 1, scope: !5079)
!5088 = distinct !DISubprogram(name: "register_virtio_driver", scope: !2, file: !2, line: 352, type: !5089, scopeLine: 353, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5091)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!115, !162}
!5091 = !{!5092}
!5092 = !DILocalVariable(name: "driver", arg: 1, scope: !5088, file: !2, line: 352, type: !162)
!5093 = !DILocation(line: 352, column: 50, scope: !5088)
!5094 = !DILocation(line: 355, column: 2, scope: !5088)
!5095 = !DILocation(line: 355, column: 2, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !2, line: 355, column: 2)
!5097 = distinct !DILexicalBlock(scope: !5088, file: !2, line: 355, column: 2)
!5098 = !DILocation(line: 0, scope: !5096)
!5099 = !DILocation(line: 355, column: 2, scope: !5097)
!5100 = !DILocation(line: 355, column: 2, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5096, file: !2, line: 355, column: 2)
!5102 = !DILocation(line: 355, column: 2, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5101, file: !2, line: 355, column: 2)
!5104 = !DILocation(line: 355, column: 2, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5101, file: !2, line: 355, column: 2)
!5106 = !{i64 2154763550, i64 2154763579, i64 2154763625, i64 2154763683, i64 2154763737, i64 2154763791, i64 2154763846, i64 2154763877}
!5107 = !DILocation(line: 356, column: 2, scope: !5088)
!5108 = !DILocation(line: 356, column: 10, scope: !5088)
!5109 = !DILocation(line: 356, column: 17, scope: !5088)
!5110 = !DILocation(line: 356, column: 21, scope: !5088)
!5111 = !DILocation(line: 357, column: 26, scope: !5088)
!5112 = !DILocation(line: 357, column: 34, scope: !5088)
!5113 = !DILocation(line: 357, column: 9, scope: !5088)
!5114 = !DILocation(line: 357, column: 2, scope: !5088)
!5115 = !DISubprogram(name: "driver_register", scope: !94, file: !94, line: 125, type: !5116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!115, !4191}
!5118 = distinct !DISubprogram(name: "unregister_virtio_driver", scope: !2, file: !2, line: 361, type: !5119, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5121)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{null, !162}
!5121 = !{!5122}
!5122 = !DILocalVariable(name: "driver", arg: 1, scope: !5118, file: !2, line: 361, type: !162)
!5123 = !DILocation(line: 361, column: 53, scope: !5118)
!5124 = !DILocation(line: 363, column: 21, scope: !5118)
!5125 = !DILocation(line: 363, column: 29, scope: !5118)
!5126 = !DILocation(line: 363, column: 2, scope: !5118)
!5127 = !DILocation(line: 364, column: 1, scope: !5118)
!5128 = !DISubprogram(name: "driver_unregister", scope: !94, file: !94, line: 126, type: !5129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5129 = !DISubroutineType(types: !5130)
!5130 = !{null, !4191}
!5131 = distinct !DISubprogram(name: "register_virtio_device", scope: !2, file: !2, line: 418, type: !4607, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5132)
!5132 = !{!5133, !5134, !5135, !5136, !5137}
!5133 = !DILocalVariable(name: "dev", arg: 1, scope: !5131, file: !2, line: 418, type: !4609)
!5134 = !DILocalVariable(name: "err", scope: !5131, file: !2, line: 420, type: !115)
!5135 = !DILabel(scope: !5131, name: "out_of_node_put", file: !2, line: 463)
!5136 = !DILabel(scope: !5131, name: "out_ida_remove", file: !2, line: 465)
!5137 = !DILabel(scope: !5131, name: "out", file: !2, line: 467)
!5138 = !DILocation(line: 418, column: 50, scope: !5131)
!5139 = !DILocation(line: 420, column: 2, scope: !5131)
!5140 = !DILocation(line: 420, column: 6, scope: !5131)
!5141 = !DILocation(line: 422, column: 2, scope: !5131)
!5142 = !DILocation(line: 422, column: 7, scope: !5131)
!5143 = !DILocation(line: 422, column: 11, scope: !5131)
!5144 = !DILocation(line: 422, column: 15, scope: !5131)
!5145 = !DILocation(line: 423, column: 21, scope: !5131)
!5146 = !DILocation(line: 423, column: 26, scope: !5131)
!5147 = !DILocation(line: 423, column: 2, scope: !5131)
!5148 = !DILocation(line: 426, column: 8, scope: !5131)
!5149 = !DILocation(line: 426, column: 6, scope: !5131)
!5150 = !DILocation(line: 427, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 427, column: 6)
!5152 = !DILocation(line: 427, column: 10, scope: !5151)
!5153 = !DILocation(line: 427, column: 6, scope: !5131)
!5154 = !DILocation(line: 428, column: 3, scope: !5151)
!5155 = !DILocation(line: 430, column: 15, scope: !5131)
!5156 = !DILocation(line: 430, column: 2, scope: !5131)
!5157 = !DILocation(line: 430, column: 7, scope: !5131)
!5158 = !DILocation(line: 430, column: 13, scope: !5131)
!5159 = !DILocation(line: 431, column: 22, scope: !5131)
!5160 = !DILocation(line: 431, column: 27, scope: !5131)
!5161 = !DILocation(line: 431, column: 44, scope: !5131)
!5162 = !DILocation(line: 431, column: 49, scope: !5131)
!5163 = !DILocation(line: 431, column: 8, scope: !5131)
!5164 = !DILocation(line: 431, column: 6, scope: !5131)
!5165 = !DILocation(line: 432, column: 6, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 432, column: 6)
!5167 = !DILocation(line: 432, column: 6, scope: !5131)
!5168 = !DILocation(line: 433, column: 3, scope: !5166)
!5169 = !DILocation(line: 435, column: 30, scope: !5131)
!5170 = !DILocation(line: 435, column: 8, scope: !5131)
!5171 = !DILocation(line: 435, column: 6, scope: !5131)
!5172 = !DILocation(line: 436, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 436, column: 6)
!5174 = !DILocation(line: 436, column: 6, scope: !5131)
!5175 = !DILocation(line: 437, column: 3, scope: !5173)
!5176 = !DILocation(line: 439, column: 2, scope: !5131)
!5177 = !DILocation(line: 439, column: 2, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 439, column: 2)
!5179 = !DILocation(line: 440, column: 2, scope: !5131)
!5180 = !DILocation(line: 440, column: 7, scope: !5131)
!5181 = !DILocation(line: 440, column: 22, scope: !5131)
!5182 = !DILocation(line: 441, column: 2, scope: !5131)
!5183 = !DILocation(line: 441, column: 7, scope: !5131)
!5184 = !DILocation(line: 441, column: 29, scope: !5131)
!5185 = !DILocation(line: 443, column: 18, scope: !5131)
!5186 = !DILocation(line: 443, column: 23, scope: !5131)
!5187 = !DILocation(line: 443, column: 2, scope: !5131)
!5188 = !DILocation(line: 444, column: 2, scope: !5131)
!5189 = !DILocation(line: 444, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 444, column: 2)
!5191 = !DILocation(line: 448, column: 22, scope: !5131)
!5192 = !DILocation(line: 448, column: 2, scope: !5131)
!5193 = !DILocation(line: 451, column: 20, scope: !5131)
!5194 = !DILocation(line: 451, column: 2, scope: !5131)
!5195 = !DILocation(line: 457, column: 20, scope: !5131)
!5196 = !DILocation(line: 457, column: 25, scope: !5131)
!5197 = !DILocation(line: 457, column: 8, scope: !5131)
!5198 = !DILocation(line: 457, column: 6, scope: !5131)
!5199 = !DILocation(line: 458, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5131, file: !2, line: 458, column: 6)
!5201 = !DILocation(line: 458, column: 6, scope: !5131)
!5202 = !DILocation(line: 459, column: 3, scope: !5200)
!5203 = !DILocation(line: 461, column: 2, scope: !5131)
!5204 = !DILocation(line: 463, column: 1, scope: !5131)
!5205 = !DILocation(line: 464, column: 14, scope: !5131)
!5206 = !DILocation(line: 464, column: 19, scope: !5131)
!5207 = !DILocation(line: 464, column: 23, scope: !5131)
!5208 = !DILocation(line: 464, column: 2, scope: !5131)
!5209 = !DILocation(line: 465, column: 1, scope: !5131)
!5210 = !DILocation(line: 466, column: 30, scope: !5131)
!5211 = !DILocation(line: 466, column: 35, scope: !5131)
!5212 = !DILocation(line: 466, column: 2, scope: !5131)
!5213 = !DILocation(line: 467, column: 1, scope: !5131)
!5214 = !DILocation(line: 468, column: 20, scope: !5131)
!5215 = !DILocation(line: 468, column: 2, scope: !5131)
!5216 = !DILocation(line: 469, column: 9, scope: !5131)
!5217 = !DILocation(line: 469, column: 2, scope: !5131)
!5218 = !DILocation(line: 470, column: 1, scope: !5131)
!5219 = !DISubprogram(name: "device_initialize", scope: !100, file: !100, line: 1056, type: !4156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5220 = distinct !DISubprogram(name: "ida_alloc", scope: !4848, file: !4848, line: 273, type: !5221, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5224)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!115, !5223, !160}
!5223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!5224 = !{!5225, !5226}
!5225 = !DILocalVariable(name: "ida", arg: 1, scope: !5220, file: !4848, line: 273, type: !5223)
!5226 = !DILocalVariable(name: "gfp", arg: 2, scope: !5220, file: !4848, line: 273, type: !160)
!5227 = !DILocation(line: 273, column: 41, scope: !5220)
!5228 = !DILocation(line: 273, column: 52, scope: !5220)
!5229 = !DILocation(line: 275, column: 25, scope: !5220)
!5230 = !DILocation(line: 275, column: 37, scope: !5220)
!5231 = !DILocation(line: 275, column: 9, scope: !5220)
!5232 = !DILocation(line: 275, column: 2, scope: !5220)
!5233 = !DISubprogram(name: "dev_set_name", scope: !100, file: !100, line: 879, type: !5234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!115, !4127, !170, null}
!5236 = distinct !DISubprogram(name: "virtio_device_of_init", scope: !2, file: !2, line: 367, type: !4607, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5237)
!5237 = !{!5238, !5239, !5240, !5241, !5245, !5246, !5247, !5250, !5253, !5256, !5259}
!5238 = !DILocalVariable(name: "dev", arg: 1, scope: !5236, file: !2, line: 367, type: !4609)
!5239 = !DILocalVariable(name: "np", scope: !5236, file: !2, line: 369, type: !4348)
!5240 = !DILocalVariable(name: "pnode", scope: !5236, file: !2, line: 369, type: !4348)
!5241 = !DILocalVariable(name: "compat", scope: !5236, file: !2, line: 370, type: !5242)
!5242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !5243)
!5243 = !{!5244}
!5244 = !DISubrange(count: 22)
!5245 = !DILocalVariable(name: "ret", scope: !5236, file: !2, line: 371, type: !115)
!5246 = !DILocalVariable(name: "count", scope: !5236, file: !2, line: 371, type: !115)
!5247 = !DILocalVariable(name: "__ret_warn_on", scope: !5248, file: !2, line: 381, type: !115)
!5248 = distinct !DILexicalBlock(scope: !5249, file: !2, line: 381, column: 6)
!5249 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 381, column: 6)
!5250 = !DILocalVariable(name: "__flags", scope: !5251, file: !2, line: 381, type: !115)
!5251 = distinct !DILexicalBlock(scope: !5252, file: !2, line: 381, column: 6)
!5252 = distinct !DILexicalBlock(scope: !5248, file: !2, line: 381, column: 6)
!5253 = !DILocalVariable(name: "__ret_warn_on", scope: !5254, file: !2, line: 385, type: !115)
!5254 = distinct !DILexicalBlock(scope: !5255, file: !2, line: 385, column: 6)
!5255 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 385, column: 6)
!5256 = !DILocalVariable(name: "__flags", scope: !5257, file: !2, line: 385, type: !115)
!5257 = distinct !DILexicalBlock(scope: !5258, file: !2, line: 385, column: 6)
!5258 = distinct !DILexicalBlock(scope: !5254, file: !2, line: 385, column: 6)
!5259 = !DILabel(scope: !5236, name: "out", file: !2, line: 404)
!5260 = !DILocation(line: 367, column: 56, scope: !5236)
!5261 = !DILocation(line: 369, column: 2, scope: !5236)
!5262 = !DILocation(line: 369, column: 22, scope: !5236)
!5263 = !DILocation(line: 369, column: 27, scope: !5236)
!5264 = !DILocation(line: 369, column: 47, scope: !5236)
!5265 = !DILocation(line: 369, column: 52, scope: !5236)
!5266 = !DILocation(line: 369, column: 56, scope: !5236)
!5267 = !DILocation(line: 369, column: 35, scope: !5236)
!5268 = !DILocation(line: 370, column: 2, scope: !5236)
!5269 = !DILocation(line: 370, column: 7, scope: !5236)
!5270 = !DILocation(line: 371, column: 2, scope: !5236)
!5271 = !DILocation(line: 371, column: 6, scope: !5236)
!5272 = !DILocation(line: 371, column: 11, scope: !5236)
!5273 = !DILocation(line: 373, column: 7, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 373, column: 6)
!5275 = !DILocation(line: 373, column: 6, scope: !5236)
!5276 = !DILocation(line: 374, column: 3, scope: !5274)
!5277 = !DILocation(line: 376, column: 39, scope: !5236)
!5278 = !DILocation(line: 376, column: 10, scope: !5236)
!5279 = !DILocation(line: 376, column: 8, scope: !5236)
!5280 = !DILocation(line: 377, column: 7, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 377, column: 6)
!5282 = !DILocation(line: 377, column: 6, scope: !5236)
!5283 = !DILocation(line: 378, column: 3, scope: !5281)
!5284 = !DILocation(line: 381, column: 6, scope: !5248)
!5285 = !DILocation(line: 381, column: 6, scope: !5252)
!5286 = !DILocation(line: 381, column: 6, scope: !5251)
!5287 = !DILocation(line: 381, column: 6, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 381, column: 6)
!5289 = !DILocation(line: 381, column: 6, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 381, column: 6)
!5291 = !{i64 2154768684, i64 2154768713, i64 2154768759, i64 2154768817, i64 2154768871, i64 2154768925, i64 2154768980, i64 2154769011, i64 2154769319, i64 2154769325, i64 2154769372, i64 2154769395, i64 2154769421}
!5292 = !DILocation(line: 381, column: 6, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5251, file: !2, line: 381, column: 6)
!5294 = !DILocation(line: 381, column: 6, scope: !5249)
!5295 = !DILocation(line: 381, column: 6, scope: !5236)
!5296 = !DILocation(line: 382, column: 3, scope: !5249)
!5297 = !DILocation(line: 384, column: 35, scope: !5236)
!5298 = !DILocation(line: 384, column: 7, scope: !5236)
!5299 = !DILocation(line: 384, column: 5, scope: !5236)
!5300 = !DILocation(line: 385, column: 6, scope: !5254)
!5301 = !DILocation(line: 385, column: 6, scope: !5258)
!5302 = !DILocation(line: 385, column: 6, scope: !5257)
!5303 = !DILocation(line: 385, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5257, file: !2, line: 385, column: 6)
!5305 = !DILocation(line: 385, column: 6, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5257, file: !2, line: 385, column: 6)
!5307 = !{i64 2154770189, i64 2154770218, i64 2154770264, i64 2154770322, i64 2154770376, i64 2154770430, i64 2154770485, i64 2154770516, i64 2154770824, i64 2154770830, i64 2154770877, i64 2154770900, i64 2154770926}
!5308 = !DILocation(line: 385, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5257, file: !2, line: 385, column: 6)
!5310 = !DILocation(line: 385, column: 6, scope: !5255)
!5311 = !DILocation(line: 385, column: 6, scope: !5236)
!5312 = !DILocation(line: 386, column: 3, scope: !5255)
!5313 = !DILocation(line: 388, column: 17, scope: !5236)
!5314 = !DILocation(line: 388, column: 60, scope: !5236)
!5315 = !DILocation(line: 388, column: 65, scope: !5236)
!5316 = !DILocation(line: 388, column: 68, scope: !5236)
!5317 = !DILocation(line: 388, column: 8, scope: !5236)
!5318 = !DILocation(line: 388, column: 6, scope: !5236)
!5319 = !DILocation(line: 389, column: 2, scope: !5236)
!5320 = !DILocation(line: 389, column: 2, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !2, line: 389, column: 2)
!5322 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 389, column: 2)
!5323 = !DILocation(line: 389, column: 2, scope: !5322)
!5324 = !DILocation(line: 389, column: 2, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5321, file: !2, line: 389, column: 2)
!5326 = !DILocation(line: 389, column: 2, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5325, file: !2, line: 389, column: 2)
!5328 = !DILocation(line: 389, column: 2, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5325, file: !2, line: 389, column: 2)
!5330 = !{i64 2154771470, i64 2154771499, i64 2154771545, i64 2154771603, i64 2154771657, i64 2154771711, i64 2154771766, i64 2154771797}
!5331 = !DILocation(line: 396, column: 31, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5236, file: !2, line: 396, column: 6)
!5333 = !DILocation(line: 396, column: 35, scope: !5332)
!5334 = !DILocation(line: 396, column: 7, scope: !5332)
!5335 = !DILocation(line: 396, column: 6, scope: !5236)
!5336 = !DILocation(line: 397, column: 7, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5332, file: !2, line: 396, column: 44)
!5338 = !DILocation(line: 398, column: 3, scope: !5337)
!5339 = !DILocation(line: 401, column: 21, scope: !5236)
!5340 = !DILocation(line: 401, column: 2, scope: !5236)
!5341 = !DILocation(line: 401, column: 7, scope: !5236)
!5342 = !DILocation(line: 401, column: 11, scope: !5236)
!5343 = !DILocation(line: 401, column: 19, scope: !5236)
!5344 = !DILocation(line: 402, column: 2, scope: !5236)
!5345 = !DILocation(line: 404, column: 1, scope: !5236)
!5346 = !DILocation(line: 405, column: 14, scope: !5236)
!5347 = !DILocation(line: 405, column: 2, scope: !5236)
!5348 = !DILocation(line: 406, column: 9, scope: !5236)
!5349 = !DILocation(line: 406, column: 2, scope: !5236)
!5350 = !DILocation(line: 407, column: 1, scope: !5236)
!5351 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5352, file: !5352, line: 35, type: !5353, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5355)
!5352 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5353 = !DISubroutineType(types: !5354)
!5354 = !{null, !203}
!5355 = !{!5356}
!5356 = !DILocalVariable(name: "list", arg: 1, scope: !5351, file: !5352, line: 35, type: !203)
!5357 = !DILocation(line: 35, column: 53, scope: !5351)
!5358 = !DILocation(line: 37, column: 2, scope: !5351)
!5359 = !DILocation(line: 37, column: 2, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5351, file: !5352, line: 37, column: 2)
!5361 = !DILocation(line: 37, column: 2, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5360, file: !5352, line: 37, column: 2)
!5363 = !DILocation(line: 37, column: 2, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5360, file: !5352, line: 37, column: 2)
!5365 = !DILocation(line: 38, column: 2, scope: !5351)
!5366 = !DILocation(line: 38, column: 2, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5351, file: !5352, line: 38, column: 2)
!5368 = !DILocation(line: 38, column: 2, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5367, file: !5352, line: 38, column: 2)
!5370 = !DILocation(line: 38, column: 2, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5367, file: !5352, line: 38, column: 2)
!5372 = !DILocation(line: 39, column: 1, scope: !5351)
!5373 = !DISubprogram(name: "device_add", scope: !100, file: !100, line: 1057, type: !4165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5374 = distinct !DISubprogram(name: "of_node_put", scope: !4350, file: !4350, line: 136, type: !5375, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5377)
!5375 = !DISubroutineType(types: !5376)
!5376 = !{null, !4348}
!5377 = !{!5378}
!5378 = !DILocalVariable(name: "node", arg: 1, scope: !5374, file: !4350, line: 136, type: !4348)
!5379 = !DILocation(line: 136, column: 52, scope: !5374)
!5380 = !DILocation(line: 136, column: 60, scope: !5374)
!5381 = !DISubprogram(name: "ida_free", scope: !4848, file: !4848, line: 258, type: !5382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{null, !5223, !13}
!5384 = distinct !DISubprogram(name: "is_virtio_device", scope: !2, file: !2, line: 473, type: !5385, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5387)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!344, !4127}
!5387 = !{!5388}
!5388 = !DILocalVariable(name: "dev", arg: 1, scope: !5384, file: !2, line: 473, type: !4127)
!5389 = !DILocation(line: 473, column: 38, scope: !5384)
!5390 = !DILocation(line: 475, column: 9, scope: !5384)
!5391 = !DILocation(line: 475, column: 14, scope: !5384)
!5392 = !DILocation(line: 475, column: 18, scope: !5384)
!5393 = !DILocation(line: 475, column: 2, scope: !5384)
!5394 = distinct !DISubprogram(name: "unregister_virtio_device", scope: !2, file: !2, line: 479, type: !4648, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5395)
!5395 = !{!5396, !5397}
!5396 = !DILocalVariable(name: "dev", arg: 1, scope: !5394, file: !2, line: 479, type: !4609)
!5397 = !DILocalVariable(name: "index", scope: !5394, file: !2, line: 481, type: !115)
!5398 = !DILocation(line: 479, column: 53, scope: !5394)
!5399 = !DILocation(line: 481, column: 2, scope: !5394)
!5400 = !DILocation(line: 481, column: 6, scope: !5394)
!5401 = !DILocation(line: 481, column: 14, scope: !5394)
!5402 = !DILocation(line: 481, column: 19, scope: !5394)
!5403 = !DILocation(line: 483, column: 21, scope: !5394)
!5404 = !DILocation(line: 483, column: 26, scope: !5394)
!5405 = !DILocation(line: 483, column: 2, scope: !5394)
!5406 = !DILocation(line: 484, column: 30, scope: !5394)
!5407 = !DILocation(line: 484, column: 2, scope: !5394)
!5408 = !DILocation(line: 485, column: 1, scope: !5394)
!5409 = !DISubprogram(name: "device_unregister", scope: !100, file: !100, line: 1055, type: !4156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5410 = distinct !DISubprogram(name: "virtio_device_freeze", scope: !2, file: !2, line: 489, type: !4607, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5411)
!5411 = !{!5412, !5413, !5414}
!5412 = !DILocalVariable(name: "dev", arg: 1, scope: !5410, file: !2, line: 489, type: !4609)
!5413 = !DILocalVariable(name: "drv", scope: !5410, file: !2, line: 491, type: !162)
!5414 = !DILocalVariable(name: "ret", scope: !5410, file: !2, line: 492, type: !115)
!5415 = !DILocation(line: 489, column: 48, scope: !5410)
!5416 = !DILocation(line: 491, column: 2, scope: !5410)
!5417 = !DILocation(line: 491, column: 24, scope: !5410)
!5418 = !DILocation(line: 491, column: 44, scope: !5410)
!5419 = !DILocation(line: 491, column: 49, scope: !5410)
!5420 = !DILocation(line: 491, column: 53, scope: !5410)
!5421 = !DILocation(line: 491, column: 30, scope: !5410)
!5422 = !DILocation(line: 492, column: 2, scope: !5410)
!5423 = !DILocation(line: 492, column: 6, scope: !5410)
!5424 = !DILocation(line: 494, column: 24, scope: !5410)
!5425 = !DILocation(line: 494, column: 2, scope: !5410)
!5426 = !DILocation(line: 496, column: 16, scope: !5410)
!5427 = !DILocation(line: 496, column: 21, scope: !5410)
!5428 = !DILocation(line: 496, column: 29, scope: !5410)
!5429 = !DILocation(line: 496, column: 40, scope: !5410)
!5430 = !DILocation(line: 496, column: 45, scope: !5410)
!5431 = !DILocation(line: 496, column: 2, scope: !5410)
!5432 = !DILocation(line: 496, column: 7, scope: !5410)
!5433 = !DILocation(line: 496, column: 14, scope: !5410)
!5434 = !DILocation(line: 498, column: 6, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5410, file: !2, line: 498, column: 6)
!5436 = !DILocation(line: 498, column: 10, scope: !5435)
!5437 = !DILocation(line: 498, column: 13, scope: !5435)
!5438 = !DILocation(line: 498, column: 18, scope: !5435)
!5439 = !DILocation(line: 498, column: 6, scope: !5410)
!5440 = !DILocation(line: 499, column: 9, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5435, file: !2, line: 498, column: 26)
!5442 = !DILocation(line: 499, column: 14, scope: !5441)
!5443 = !DILocation(line: 499, column: 21, scope: !5441)
!5444 = !DILocation(line: 499, column: 7, scope: !5441)
!5445 = !DILocation(line: 500, column: 7, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5441, file: !2, line: 500, column: 7)
!5447 = !DILocation(line: 500, column: 7, scope: !5441)
!5448 = !DILocation(line: 501, column: 25, scope: !5449)
!5449 = distinct !DILexicalBlock(scope: !5446, file: !2, line: 500, column: 12)
!5450 = !DILocation(line: 501, column: 4, scope: !5449)
!5451 = !DILocation(line: 502, column: 11, scope: !5449)
!5452 = !DILocation(line: 502, column: 4, scope: !5449)
!5453 = !DILocation(line: 504, column: 2, scope: !5441)
!5454 = !DILocation(line: 506, column: 2, scope: !5410)
!5455 = !DILocation(line: 507, column: 1, scope: !5410)
!5456 = distinct !DISubprogram(name: "virtio_config_disable", scope: !2, file: !2, line: 146, type: !4648, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5457)
!5457 = !{!5458}
!5458 = !DILocalVariable(name: "dev", arg: 1, scope: !5456, file: !2, line: 146, type: !4609)
!5459 = !DILocation(line: 146, column: 57, scope: !5456)
!5460 = !DILocation(line: 148, column: 17, scope: !5456)
!5461 = !DILocation(line: 148, column: 22, scope: !5456)
!5462 = !DILocation(line: 148, column: 2, scope: !5456)
!5463 = !DILocation(line: 149, column: 2, scope: !5456)
!5464 = !DILocation(line: 149, column: 7, scope: !5456)
!5465 = !DILocation(line: 149, column: 22, scope: !5456)
!5466 = !DILocation(line: 150, column: 19, scope: !5456)
!5467 = !DILocation(line: 150, column: 24, scope: !5456)
!5468 = !DILocation(line: 150, column: 2, scope: !5456)
!5469 = !DILocation(line: 151, column: 1, scope: !5456)
!5470 = distinct !DISubprogram(name: "virtio_config_enable", scope: !2, file: !2, line: 153, type: !4648, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5471)
!5471 = !{!5472}
!5472 = !DILocalVariable(name: "dev", arg: 1, scope: !5470, file: !2, line: 153, type: !4609)
!5473 = !DILocation(line: 153, column: 56, scope: !5470)
!5474 = !DILocation(line: 155, column: 17, scope: !5470)
!5475 = !DILocation(line: 155, column: 22, scope: !5470)
!5476 = !DILocation(line: 155, column: 2, scope: !5470)
!5477 = !DILocation(line: 156, column: 2, scope: !5470)
!5478 = !DILocation(line: 156, column: 7, scope: !5470)
!5479 = !DILocation(line: 156, column: 22, scope: !5470)
!5480 = !DILocation(line: 157, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5470, file: !2, line: 157, column: 6)
!5482 = !DILocation(line: 157, column: 11, scope: !5481)
!5483 = !DILocation(line: 157, column: 6, scope: !5470)
!5484 = !DILocation(line: 158, column: 27, scope: !5481)
!5485 = !DILocation(line: 158, column: 3, scope: !5481)
!5486 = !DILocation(line: 159, column: 2, scope: !5470)
!5487 = !DILocation(line: 159, column: 7, scope: !5470)
!5488 = !DILocation(line: 159, column: 29, scope: !5470)
!5489 = !DILocation(line: 160, column: 19, scope: !5470)
!5490 = !DILocation(line: 160, column: 24, scope: !5470)
!5491 = !DILocation(line: 160, column: 2, scope: !5470)
!5492 = !DILocation(line: 161, column: 1, scope: !5470)
!5493 = distinct !DISubprogram(name: "virtio_device_restore", scope: !2, file: !2, line: 510, type: !4607, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5494)
!5494 = !{!5495, !5496, !5497, !5498}
!5495 = !DILocalVariable(name: "dev", arg: 1, scope: !5493, file: !2, line: 510, type: !4609)
!5496 = !DILocalVariable(name: "drv", scope: !5493, file: !2, line: 512, type: !162)
!5497 = !DILocalVariable(name: "ret", scope: !5493, file: !2, line: 513, type: !115)
!5498 = !DILabel(scope: !5493, name: "err", file: !2, line: 555)
!5499 = !DILocation(line: 510, column: 49, scope: !5493)
!5500 = !DILocation(line: 512, column: 2, scope: !5493)
!5501 = !DILocation(line: 512, column: 24, scope: !5493)
!5502 = !DILocation(line: 512, column: 44, scope: !5493)
!5503 = !DILocation(line: 512, column: 49, scope: !5493)
!5504 = !DILocation(line: 512, column: 53, scope: !5493)
!5505 = !DILocation(line: 512, column: 30, scope: !5493)
!5506 = !DILocation(line: 513, column: 2, scope: !5493)
!5507 = !DILocation(line: 513, column: 6, scope: !5493)
!5508 = !DILocation(line: 517, column: 22, scope: !5493)
!5509 = !DILocation(line: 517, column: 2, scope: !5493)
!5510 = !DILocation(line: 520, column: 20, scope: !5493)
!5511 = !DILocation(line: 520, column: 2, scope: !5493)
!5512 = !DILocation(line: 524, column: 6, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 524, column: 6)
!5514 = !DILocation(line: 524, column: 11, scope: !5513)
!5515 = !DILocation(line: 524, column: 6, scope: !5493)
!5516 = !DILocation(line: 525, column: 21, scope: !5513)
!5517 = !DILocation(line: 525, column: 3, scope: !5513)
!5518 = !DILocation(line: 527, column: 7, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 527, column: 6)
!5520 = !DILocation(line: 527, column: 6, scope: !5493)
!5521 = !DILocation(line: 528, column: 3, scope: !5519)
!5522 = !DILocation(line: 531, column: 20, scope: !5493)
!5523 = !DILocation(line: 531, column: 2, scope: !5493)
!5524 = !DILocation(line: 533, column: 8, scope: !5493)
!5525 = !DILocation(line: 533, column: 13, scope: !5493)
!5526 = !DILocation(line: 533, column: 21, scope: !5493)
!5527 = !DILocation(line: 533, column: 39, scope: !5493)
!5528 = !DILocation(line: 533, column: 6, scope: !5493)
!5529 = !DILocation(line: 534, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 534, column: 6)
!5531 = !DILocation(line: 534, column: 6, scope: !5493)
!5532 = !DILocation(line: 535, column: 3, scope: !5530)
!5533 = !DILocation(line: 537, column: 27, scope: !5493)
!5534 = !DILocation(line: 537, column: 8, scope: !5493)
!5535 = !DILocation(line: 537, column: 6, scope: !5493)
!5536 = !DILocation(line: 538, column: 6, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 538, column: 6)
!5538 = !DILocation(line: 538, column: 6, scope: !5493)
!5539 = !DILocation(line: 539, column: 3, scope: !5537)
!5540 = !DILocation(line: 541, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 541, column: 6)
!5542 = !DILocation(line: 541, column: 11, scope: !5541)
!5543 = !DILocation(line: 541, column: 6, scope: !5493)
!5544 = !DILocation(line: 542, column: 9, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !2, line: 541, column: 20)
!5546 = !DILocation(line: 542, column: 14, scope: !5545)
!5547 = !DILocation(line: 542, column: 22, scope: !5545)
!5548 = !DILocation(line: 542, column: 7, scope: !5545)
!5549 = !DILocation(line: 543, column: 7, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5545, file: !2, line: 543, column: 7)
!5551 = !DILocation(line: 543, column: 7, scope: !5545)
!5552 = !DILocation(line: 544, column: 4, scope: !5550)
!5553 = !DILocation(line: 545, column: 2, scope: !5545)
!5554 = !DILocation(line: 548, column: 8, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5493, file: !2, line: 548, column: 6)
!5556 = !DILocation(line: 548, column: 13, scope: !5555)
!5557 = !DILocation(line: 548, column: 21, scope: !5555)
!5558 = !DILocation(line: 548, column: 32, scope: !5555)
!5559 = !DILocation(line: 548, column: 37, scope: !5555)
!5560 = !DILocation(line: 548, column: 6, scope: !5493)
!5561 = !DILocation(line: 549, column: 23, scope: !5555)
!5562 = !DILocation(line: 549, column: 3, scope: !5555)
!5563 = !DILocation(line: 551, column: 23, scope: !5493)
!5564 = !DILocation(line: 551, column: 2, scope: !5493)
!5565 = !DILocation(line: 553, column: 2, scope: !5493)
!5566 = !DILocation(line: 555, column: 1, scope: !5493)
!5567 = !DILocation(line: 556, column: 20, scope: !5493)
!5568 = !DILocation(line: 556, column: 2, scope: !5493)
!5569 = !DILocation(line: 557, column: 9, scope: !5493)
!5570 = !DILocation(line: 557, column: 2, scope: !5493)
!5571 = !DILocation(line: 558, column: 1, scope: !5493)
!5572 = distinct !DISubprogram(name: "virtio_features_ok", scope: !2, file: !2, line: 171, type: !4607, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5573)
!5573 = !{!5574, !5575}
!5574 = !DILocalVariable(name: "dev", arg: 1, scope: !5572, file: !2, line: 171, type: !4609)
!5575 = !DILocalVariable(name: "status", scope: !5572, file: !2, line: 173, type: !13)
!5576 = !DILocation(line: 171, column: 53, scope: !5572)
!5577 = !DILocation(line: 173, column: 2, scope: !5572)
!5578 = !DILocation(line: 173, column: 15, scope: !5572)
!5579 = !DILocation(line: 175, column: 2, scope: !5572)
!5580 = !DILocation(line: 175, column: 2, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5572, file: !2, line: 175, column: 2)
!5582 = !DILocation(line: 177, column: 6, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5572, file: !2, line: 177, column: 6)
!5584 = !DILocation(line: 177, column: 30, scope: !5583)
!5585 = !DILocation(line: 177, column: 6, scope: !5572)
!5586 = !DILocation(line: 178, column: 27, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 178, column: 7)
!5588 = distinct !DILexicalBlock(scope: !5583, file: !2, line: 177, column: 36)
!5589 = !DILocation(line: 178, column: 8, scope: !5587)
!5590 = !DILocation(line: 178, column: 7, scope: !5588)
!5591 = !DILocation(line: 179, column: 4, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5593, file: !2, line: 179, column: 4)
!5593 = distinct !DILexicalBlock(scope: !5587, file: !2, line: 178, column: 53)
!5594 = !DILocation(line: 179, column: 4, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5592, file: !2, line: 179, column: 4)
!5596 = !DILocation(line: 181, column: 4, scope: !5593)
!5597 = !DILocation(line: 184, column: 27, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5588, file: !2, line: 184, column: 7)
!5599 = !DILocation(line: 184, column: 8, scope: !5598)
!5600 = !DILocation(line: 184, column: 7, scope: !5588)
!5601 = !DILocation(line: 185, column: 4, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5603, file: !2, line: 185, column: 4)
!5603 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 184, column: 59)
!5604 = !DILocation(line: 185, column: 4, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 185, column: 4)
!5606 = !DILocation(line: 187, column: 4, scope: !5603)
!5607 = !DILocation(line: 189, column: 2, scope: !5588)
!5608 = !DILocation(line: 191, column: 26, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5572, file: !2, line: 191, column: 6)
!5610 = !DILocation(line: 191, column: 7, scope: !5609)
!5611 = !DILocation(line: 191, column: 6, scope: !5572)
!5612 = !DILocation(line: 192, column: 3, scope: !5609)
!5613 = !DILocation(line: 194, column: 20, scope: !5572)
!5614 = !DILocation(line: 194, column: 2, scope: !5572)
!5615 = !DILocation(line: 195, column: 11, scope: !5572)
!5616 = !DILocation(line: 195, column: 16, scope: !5572)
!5617 = !DILocation(line: 195, column: 24, scope: !5572)
!5618 = !DILocation(line: 195, column: 35, scope: !5572)
!5619 = !DILocation(line: 195, column: 9, scope: !5572)
!5620 = !DILocation(line: 196, column: 8, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5572, file: !2, line: 196, column: 6)
!5622 = !DILocation(line: 196, column: 15, scope: !5621)
!5623 = !DILocation(line: 196, column: 6, scope: !5572)
!5624 = !DILocation(line: 197, column: 3, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5626, file: !2, line: 197, column: 3)
!5626 = distinct !DILexicalBlock(scope: !5621, file: !2, line: 196, column: 47)
!5627 = !DILocation(line: 197, column: 3, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5625, file: !2, line: 197, column: 3)
!5629 = !DILocation(line: 199, column: 3, scope: !5626)
!5630 = !DILocation(line: 201, column: 2, scope: !5572)
!5631 = !DILocation(line: 202, column: 1, scope: !5572)
!5632 = distinct !DISubprogram(name: "virtio_device_ready", scope: !4624, file: !4624, line: 270, type: !4648, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5633)
!5633 = !{!5634, !5635, !5636, !5638}
!5634 = !DILocalVariable(name: "dev", arg: 1, scope: !5632, file: !4624, line: 270, type: !4609)
!5635 = !DILocalVariable(name: "status", scope: !5632, file: !4624, line: 272, type: !13)
!5636 = !DILocalVariable(name: "__ret_warn_on", scope: !5637, file: !4624, line: 274, type: !115)
!5637 = distinct !DILexicalBlock(scope: !5632, file: !4624, line: 274, column: 2)
!5638 = !DILocalVariable(name: "__flags", scope: !5639, file: !4624, line: 274, type: !115)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !4624, line: 274, column: 2)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !4624, line: 274, column: 2)
!5641 = !DILocation(line: 270, column: 48, scope: !5632)
!5642 = !DILocation(line: 272, column: 2, scope: !5632)
!5643 = !DILocation(line: 272, column: 11, scope: !5632)
!5644 = !DILocation(line: 272, column: 20, scope: !5632)
!5645 = !DILocation(line: 272, column: 25, scope: !5632)
!5646 = !DILocation(line: 272, column: 33, scope: !5632)
!5647 = !DILocation(line: 272, column: 44, scope: !5632)
!5648 = !DILocation(line: 274, column: 2, scope: !5637)
!5649 = !DILocation(line: 274, column: 2, scope: !5640)
!5650 = !DILocation(line: 274, column: 2, scope: !5639)
!5651 = !DILocation(line: 274, column: 2, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5639, file: !4624, line: 274, column: 2)
!5653 = !DILocation(line: 274, column: 2, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5639, file: !4624, line: 274, column: 2)
!5655 = !{i64 2154612304, i64 2154612333, i64 2154612379, i64 2154612437, i64 2154612491, i64 2154612545, i64 2154612600, i64 2154612631, i64 2154612939, i64 2154612945, i64 2154612992, i64 2154613015, i64 2154613041}
!5656 = !DILocation(line: 274, column: 2, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5639, file: !4624, line: 274, column: 2)
!5658 = !DILocation(line: 274, column: 2, scope: !5632)
!5659 = !DILocation(line: 297, column: 2, scope: !5632)
!5660 = !DILocation(line: 297, column: 7, scope: !5632)
!5661 = !DILocation(line: 297, column: 15, scope: !5632)
!5662 = !DILocation(line: 297, column: 26, scope: !5632)
!5663 = !DILocation(line: 297, column: 31, scope: !5632)
!5664 = !DILocation(line: 297, column: 38, scope: !5632)
!5665 = !DILocation(line: 298, column: 1, scope: !5632)
!5666 = distinct !DISubprogram(name: "virtio_exit", scope: !2, file: !2, line: 569, type: !1454, scopeLine: 570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5667 = !DILocation(line: 571, column: 2, scope: !5666)
!5668 = !DILocation(line: 572, column: 2, scope: !5666)
!5669 = !DILocation(line: 573, column: 1, scope: !5666)
!5670 = !DISubprogram(name: "bus_unregister", scope: !176, file: !176, line: 114, type: !5671, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{null, !173}
!5673 = !DISubprogram(name: "ida_destroy", scope: !4848, file: !4848, line: 259, type: !5674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{null, !5223}
!5676 = distinct !DISubprogram(name: "__initstub__kmod_virtio__303_574_virtio_init1", scope: !2, file: !2, line: 574, type: !1207, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5677 = !DILocation(line: 574, column: 1, scope: !5676)
!5678 = distinct !DISubprogram(name: "virtio_init", scope: !2, file: !2, line: 562, type: !1207, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!5679 = !DILocation(line: 564, column: 6, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5678, file: !2, line: 564, column: 6)
!5681 = !DILocation(line: 564, column: 32, scope: !5680)
!5682 = !DILocation(line: 564, column: 6, scope: !5678)
!5683 = !DILocation(line: 565, column: 3, scope: !5680)
!5684 = !DILocation(line: 566, column: 2, scope: !5678)
!5685 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4994, file: !4994, line: 43, type: !5686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{null, !4997, !329}
!5688 = distinct !DISubprogram(name: "virtio_dev_match", scope: !2, file: !2, line: 85, type: !4125, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5689)
!5689 = !{!5690, !5691, !5692, !5693, !5694, !5696}
!5690 = !DILocalVariable(name: "_dv", arg: 1, scope: !5688, file: !2, line: 85, type: !4127)
!5691 = !DILocalVariable(name: "_dr", arg: 2, scope: !5688, file: !2, line: 85, type: !4191)
!5692 = !DILocalVariable(name: "i", scope: !5688, file: !2, line: 87, type: !13)
!5693 = !DILocalVariable(name: "dev", scope: !5688, file: !2, line: 88, type: !4609)
!5694 = !DILocalVariable(name: "__mptr", scope: !5695, file: !2, line: 88, type: !159)
!5695 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 88, column: 30)
!5696 = !DILocalVariable(name: "ids", scope: !5688, file: !2, line: 89, type: !4594)
!5697 = !DILocation(line: 85, column: 44, scope: !5688)
!5698 = !DILocation(line: 85, column: 71, scope: !5688)
!5699 = !DILocation(line: 87, column: 2, scope: !5688)
!5700 = !DILocation(line: 87, column: 15, scope: !5688)
!5701 = !DILocation(line: 88, column: 2, scope: !5688)
!5702 = !DILocation(line: 88, column: 24, scope: !5688)
!5703 = !DILocation(line: 88, column: 30, scope: !5695)
!5704 = !DILocation(line: 88, column: 30, scope: !5688)
!5705 = !DILocation(line: 89, column: 2, scope: !5688)
!5706 = !DILocation(line: 89, column: 33, scope: !5688)
!5707 = !DILocation(line: 91, column: 22, scope: !5688)
!5708 = !DILocation(line: 91, column: 8, scope: !5688)
!5709 = !DILocation(line: 91, column: 28, scope: !5688)
!5710 = !DILocation(line: 91, column: 6, scope: !5688)
!5711 = !DILocation(line: 92, column: 9, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5688, file: !2, line: 92, column: 2)
!5713 = !DILocation(line: 92, column: 7, scope: !5712)
!5714 = !DILocation(line: 92, column: 14, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5712, file: !2, line: 92, column: 2)
!5716 = !DILocation(line: 92, column: 18, scope: !5715)
!5717 = !DILocation(line: 92, column: 21, scope: !5715)
!5718 = !DILocation(line: 92, column: 2, scope: !5712)
!5719 = !DILocation(line: 93, column: 23, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5715, file: !2, line: 93, column: 7)
!5721 = !DILocation(line: 93, column: 29, scope: !5720)
!5722 = !DILocation(line: 93, column: 33, scope: !5720)
!5723 = !DILocation(line: 93, column: 7, scope: !5720)
!5724 = !DILocation(line: 93, column: 7, scope: !5715)
!5725 = !DILocation(line: 94, column: 4, scope: !5720)
!5726 = !DILocation(line: 93, column: 35, scope: !5720)
!5727 = !DILocation(line: 92, column: 30, scope: !5715)
!5728 = !DILocation(line: 92, column: 2, scope: !5715)
!5729 = distinct !{!5729, !5718, !5730, !4921, !4922}
!5730 = !DILocation(line: 94, column: 11, scope: !5712)
!5731 = !DILocation(line: 95, column: 2, scope: !5688)
!5732 = !DILocation(line: 96, column: 1, scope: !5688)
!5733 = distinct !DISubprogram(name: "virtio_uevent", scope: !2, file: !2, line: 98, type: !4145, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5734)
!5734 = !{!5735, !5736, !5737, !5738}
!5735 = !DILocalVariable(name: "_dv", arg: 1, scope: !5733, file: !2, line: 98, type: !4147)
!5736 = !DILocalVariable(name: "env", arg: 2, scope: !5733, file: !2, line: 98, type: !276)
!5737 = !DILocalVariable(name: "dev", scope: !5733, file: !2, line: 100, type: !4727)
!5738 = !DILocalVariable(name: "__mptr", scope: !5739, file: !2, line: 100, type: !159)
!5739 = distinct !DILexicalBlock(scope: !5733, file: !2, line: 100, column: 36)
!5740 = !DILocation(line: 98, column: 47, scope: !5733)
!5741 = !DILocation(line: 98, column: 76, scope: !5733)
!5742 = !DILocation(line: 100, column: 2, scope: !5733)
!5743 = !DILocation(line: 100, column: 30, scope: !5733)
!5744 = !DILocation(line: 100, column: 36, scope: !5739)
!5745 = !DILocation(line: 100, column: 36, scope: !5733)
!5746 = !DILocation(line: 102, column: 24, scope: !5733)
!5747 = !DILocation(line: 103, column: 10, scope: !5733)
!5748 = !DILocation(line: 103, column: 15, scope: !5733)
!5749 = !DILocation(line: 103, column: 18, scope: !5733)
!5750 = !DILocation(line: 103, column: 26, scope: !5733)
!5751 = !DILocation(line: 103, column: 31, scope: !5733)
!5752 = !DILocation(line: 103, column: 34, scope: !5733)
!5753 = !DILocation(line: 102, column: 9, scope: !5733)
!5754 = !DILocation(line: 104, column: 1, scope: !5733)
!5755 = !DILocation(line: 102, column: 2, scope: !5733)
!5756 = distinct !DISubprogram(name: "virtio_dev_probe", scope: !2, file: !2, line: 237, type: !4165, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5757)
!5757 = !{!5758, !5759, !5760, !5761, !5762, !5764, !5765, !5766, !5767, !5768, !5772, !5778, !5781}
!5758 = !DILocalVariable(name: "_d", arg: 1, scope: !5756, file: !2, line: 237, type: !4127)
!5759 = !DILocalVariable(name: "err", scope: !5756, file: !2, line: 239, type: !115)
!5760 = !DILocalVariable(name: "i", scope: !5756, file: !2, line: 239, type: !115)
!5761 = !DILocalVariable(name: "dev", scope: !5756, file: !2, line: 240, type: !4609)
!5762 = !DILocalVariable(name: "__mptr", scope: !5763, file: !2, line: 240, type: !159)
!5763 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 240, column: 30)
!5764 = !DILocalVariable(name: "drv", scope: !5756, file: !2, line: 241, type: !162)
!5765 = !DILocalVariable(name: "device_features", scope: !5756, file: !2, line: 242, type: !590)
!5766 = !DILocalVariable(name: "driver_features", scope: !5756, file: !2, line: 243, type: !590)
!5767 = !DILocalVariable(name: "driver_features_legacy", scope: !5756, file: !2, line: 244, type: !590)
!5768 = !DILocalVariable(name: "f", scope: !5769, file: !2, line: 255, type: !13)
!5769 = distinct !DILexicalBlock(scope: !5770, file: !2, line: 254, column: 48)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !2, line: 254, column: 2)
!5771 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 254, column: 2)
!5772 = !DILocalVariable(name: "f", scope: !5773, file: !2, line: 264, type: !13)
!5773 = distinct !DILexicalBlock(scope: !5774, file: !2, line: 263, column: 56)
!5774 = distinct !DILexicalBlock(scope: !5775, file: !2, line: 263, column: 3)
!5775 = distinct !DILexicalBlock(scope: !5776, file: !2, line: 263, column: 3)
!5776 = distinct !DILexicalBlock(scope: !5777, file: !2, line: 261, column: 33)
!5777 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 261, column: 6)
!5778 = !DILocalVariable(name: "features", scope: !5779, file: !2, line: 287, type: !590)
!5779 = distinct !DILexicalBlock(scope: !5780, file: !2, line: 286, column: 21)
!5780 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 286, column: 6)
!5781 = !DILabel(scope: !5756, name: "err", file: !2, line: 319)
!5782 = !DILocation(line: 237, column: 44, scope: !5756)
!5783 = !DILocation(line: 239, column: 2, scope: !5756)
!5784 = !DILocation(line: 239, column: 6, scope: !5756)
!5785 = !DILocation(line: 239, column: 11, scope: !5756)
!5786 = !DILocation(line: 240, column: 2, scope: !5756)
!5787 = !DILocation(line: 240, column: 24, scope: !5756)
!5788 = !DILocation(line: 240, column: 30, scope: !5763)
!5789 = !DILocation(line: 240, column: 30, scope: !5756)
!5790 = !DILocation(line: 241, column: 2, scope: !5756)
!5791 = !DILocation(line: 241, column: 24, scope: !5756)
!5792 = !DILocation(line: 241, column: 44, scope: !5756)
!5793 = !DILocation(line: 241, column: 49, scope: !5756)
!5794 = !DILocation(line: 241, column: 53, scope: !5756)
!5795 = !DILocation(line: 241, column: 30, scope: !5756)
!5796 = !DILocation(line: 242, column: 2, scope: !5756)
!5797 = !DILocation(line: 242, column: 6, scope: !5756)
!5798 = !DILocation(line: 243, column: 2, scope: !5756)
!5799 = !DILocation(line: 243, column: 6, scope: !5756)
!5800 = !DILocation(line: 244, column: 2, scope: !5756)
!5801 = !DILocation(line: 244, column: 6, scope: !5756)
!5802 = !DILocation(line: 247, column: 20, scope: !5756)
!5803 = !DILocation(line: 247, column: 2, scope: !5756)
!5804 = !DILocation(line: 250, column: 20, scope: !5756)
!5805 = !DILocation(line: 250, column: 25, scope: !5756)
!5806 = !DILocation(line: 250, column: 33, scope: !5756)
!5807 = !DILocation(line: 250, column: 46, scope: !5756)
!5808 = !DILocation(line: 250, column: 18, scope: !5756)
!5809 = !DILocation(line: 253, column: 18, scope: !5756)
!5810 = !DILocation(line: 254, column: 9, scope: !5771)
!5811 = !DILocation(line: 254, column: 7, scope: !5771)
!5812 = !DILocation(line: 254, column: 14, scope: !5770)
!5813 = !DILocation(line: 254, column: 18, scope: !5770)
!5814 = !DILocation(line: 254, column: 23, scope: !5770)
!5815 = !DILocation(line: 254, column: 16, scope: !5770)
!5816 = !DILocation(line: 254, column: 2, scope: !5771)
!5817 = !DILocation(line: 255, column: 3, scope: !5769)
!5818 = !DILocation(line: 255, column: 16, scope: !5769)
!5819 = !DILocation(line: 255, column: 20, scope: !5769)
!5820 = !DILocation(line: 255, column: 25, scope: !5769)
!5821 = !DILocation(line: 255, column: 39, scope: !5769)
!5822 = !DILocation(line: 256, column: 3, scope: !5769)
!5823 = !DILocation(line: 256, column: 3, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5825, file: !2, line: 256, column: 3)
!5825 = distinct !DILexicalBlock(scope: !5769, file: !2, line: 256, column: 3)
!5826 = !DILocation(line: 256, column: 3, scope: !5825)
!5827 = !DILocation(line: 256, column: 3, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5824, file: !2, line: 256, column: 3)
!5829 = !DILocation(line: 256, column: 3, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5828, file: !2, line: 256, column: 3)
!5831 = !DILocation(line: 256, column: 3, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5828, file: !2, line: 256, column: 3)
!5833 = !{i64 2154757426, i64 2154757455, i64 2154757501, i64 2154757559, i64 2154757613, i64 2154757667, i64 2154757722, i64 2154757753}
!5834 = !DILocation(line: 257, column: 31, scope: !5769)
!5835 = !DILocation(line: 257, column: 28, scope: !5769)
!5836 = !DILocation(line: 257, column: 19, scope: !5769)
!5837 = !DILocation(line: 258, column: 2, scope: !5770)
!5838 = !DILocation(line: 258, column: 2, scope: !5769)
!5839 = !DILocation(line: 254, column: 44, scope: !5770)
!5840 = !DILocation(line: 254, column: 2, scope: !5770)
!5841 = distinct !{!5841, !5816, !5842, !4921, !4922}
!5842 = !DILocation(line: 258, column: 2, scope: !5771)
!5843 = !DILocation(line: 261, column: 6, scope: !5777)
!5844 = !DILocation(line: 261, column: 11, scope: !5777)
!5845 = !DILocation(line: 261, column: 6, scope: !5756)
!5846 = !DILocation(line: 262, column: 26, scope: !5776)
!5847 = !DILocation(line: 263, column: 10, scope: !5775)
!5848 = !DILocation(line: 263, column: 8, scope: !5775)
!5849 = !DILocation(line: 263, column: 15, scope: !5774)
!5850 = !DILocation(line: 263, column: 19, scope: !5774)
!5851 = !DILocation(line: 263, column: 24, scope: !5774)
!5852 = !DILocation(line: 263, column: 17, scope: !5774)
!5853 = !DILocation(line: 263, column: 3, scope: !5775)
!5854 = !DILocation(line: 264, column: 4, scope: !5773)
!5855 = !DILocation(line: 264, column: 17, scope: !5773)
!5856 = !DILocation(line: 264, column: 21, scope: !5773)
!5857 = !DILocation(line: 264, column: 26, scope: !5773)
!5858 = !DILocation(line: 264, column: 47, scope: !5773)
!5859 = !DILocation(line: 265, column: 4, scope: !5773)
!5860 = !DILocation(line: 265, column: 4, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5862, file: !2, line: 265, column: 4)
!5862 = distinct !DILexicalBlock(scope: !5773, file: !2, line: 265, column: 4)
!5863 = !DILocation(line: 265, column: 4, scope: !5862)
!5864 = !DILocation(line: 265, column: 4, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5861, file: !2, line: 265, column: 4)
!5866 = !DILocation(line: 265, column: 4, scope: !5867)
!5867 = distinct !DILexicalBlock(scope: !5865, file: !2, line: 265, column: 4)
!5868 = !DILocation(line: 265, column: 4, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5865, file: !2, line: 265, column: 4)
!5870 = !{i64 2154758402, i64 2154758431, i64 2154758477, i64 2154758535, i64 2154758589, i64 2154758643, i64 2154758698, i64 2154758729}
!5871 = !DILocation(line: 266, column: 39, scope: !5773)
!5872 = !DILocation(line: 266, column: 36, scope: !5773)
!5873 = !DILocation(line: 266, column: 27, scope: !5773)
!5874 = !DILocation(line: 267, column: 3, scope: !5774)
!5875 = !DILocation(line: 267, column: 3, scope: !5773)
!5876 = !DILocation(line: 263, column: 52, scope: !5774)
!5877 = !DILocation(line: 263, column: 3, scope: !5774)
!5878 = distinct !{!5878, !5853, !5879, !4921, !4922}
!5879 = !DILocation(line: 267, column: 3, scope: !5775)
!5880 = !DILocation(line: 268, column: 2, scope: !5776)
!5881 = !DILocation(line: 269, column: 28, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5777, file: !2, line: 268, column: 9)
!5883 = !DILocation(line: 269, column: 26, scope: !5882)
!5884 = !DILocation(line: 272, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 272, column: 6)
!5886 = !DILocation(line: 272, column: 22, scope: !5885)
!5887 = !DILocation(line: 272, column: 6, scope: !5756)
!5888 = !DILocation(line: 273, column: 19, scope: !5885)
!5889 = !DILocation(line: 273, column: 37, scope: !5885)
!5890 = !DILocation(line: 273, column: 35, scope: !5885)
!5891 = !DILocation(line: 273, column: 3, scope: !5885)
!5892 = !DILocation(line: 273, column: 8, scope: !5885)
!5893 = !DILocation(line: 273, column: 17, scope: !5885)
!5894 = !DILocation(line: 275, column: 19, scope: !5885)
!5895 = !DILocation(line: 275, column: 44, scope: !5885)
!5896 = !DILocation(line: 275, column: 42, scope: !5885)
!5897 = !DILocation(line: 275, column: 3, scope: !5885)
!5898 = !DILocation(line: 275, column: 8, scope: !5885)
!5899 = !DILocation(line: 275, column: 17, scope: !5885)
!5900 = !DILocation(line: 278, column: 9, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 278, column: 2)
!5902 = !DILocation(line: 278, column: 7, scope: !5901)
!5903 = !DILocation(line: 278, column: 37, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5901, file: !2, line: 278, column: 2)
!5905 = !DILocation(line: 278, column: 39, scope: !5904)
!5906 = !DILocation(line: 278, column: 2, scope: !5901)
!5907 = !DILocation(line: 279, column: 7, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5904, file: !2, line: 279, column: 7)
!5909 = !DILocation(line: 279, column: 34, scope: !5908)
!5910 = !DILocation(line: 279, column: 31, scope: !5908)
!5911 = !DILocation(line: 279, column: 23, scope: !5908)
!5912 = !DILocation(line: 279, column: 7, scope: !5904)
!5913 = !DILocation(line: 280, column: 21, scope: !5908)
!5914 = !DILocation(line: 280, column: 26, scope: !5908)
!5915 = !DILocation(line: 280, column: 4, scope: !5908)
!5916 = !DILocation(line: 279, column: 35, scope: !5908)
!5917 = !DILocation(line: 278, column: 66, scope: !5904)
!5918 = !DILocation(line: 278, column: 2, scope: !5904)
!5919 = distinct !{!5919, !5906, !5920, !4921, !4922}
!5920 = !DILocation(line: 280, column: 27, scope: !5901)
!5921 = !DILocation(line: 282, column: 8, scope: !5756)
!5922 = !DILocation(line: 282, column: 13, scope: !5756)
!5923 = !DILocation(line: 282, column: 21, scope: !5756)
!5924 = !DILocation(line: 282, column: 39, scope: !5756)
!5925 = !DILocation(line: 282, column: 6, scope: !5756)
!5926 = !DILocation(line: 283, column: 6, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 283, column: 6)
!5928 = !DILocation(line: 283, column: 6, scope: !5756)
!5929 = !DILocation(line: 284, column: 3, scope: !5927)
!5930 = !DILocation(line: 286, column: 6, scope: !5780)
!5931 = !DILocation(line: 286, column: 11, scope: !5780)
!5932 = !DILocation(line: 286, column: 6, scope: !5756)
!5933 = !DILocation(line: 287, column: 3, scope: !5779)
!5934 = !DILocation(line: 287, column: 7, scope: !5779)
!5935 = !DILocation(line: 287, column: 18, scope: !5779)
!5936 = !DILocation(line: 287, column: 23, scope: !5779)
!5937 = !DILocation(line: 289, column: 9, scope: !5779)
!5938 = !DILocation(line: 289, column: 14, scope: !5779)
!5939 = !DILocation(line: 289, column: 23, scope: !5779)
!5940 = !DILocation(line: 289, column: 7, scope: !5779)
!5941 = !DILocation(line: 290, column: 7, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5779, file: !2, line: 290, column: 7)
!5943 = !DILocation(line: 290, column: 7, scope: !5779)
!5944 = !DILocation(line: 291, column: 4, scope: !5942)
!5945 = !DILocation(line: 294, column: 7, scope: !5946)
!5946 = distinct !DILexicalBlock(scope: !5779, file: !2, line: 294, column: 7)
!5947 = !DILocation(line: 294, column: 19, scope: !5946)
!5948 = !DILocation(line: 294, column: 24, scope: !5946)
!5949 = !DILocation(line: 294, column: 16, scope: !5946)
!5950 = !DILocation(line: 294, column: 7, scope: !5779)
!5951 = !DILocation(line: 295, column: 10, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5946, file: !2, line: 294, column: 34)
!5953 = !DILocation(line: 295, column: 15, scope: !5952)
!5954 = !DILocation(line: 295, column: 23, scope: !5952)
!5955 = !DILocation(line: 295, column: 41, scope: !5952)
!5956 = !DILocation(line: 295, column: 8, scope: !5952)
!5957 = !DILocation(line: 296, column: 8, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5952, file: !2, line: 296, column: 8)
!5959 = !DILocation(line: 296, column: 8, scope: !5952)
!5960 = !DILocation(line: 297, column: 5, scope: !5958)
!5961 = !DILocation(line: 298, column: 3, scope: !5952)
!5962 = !DILocation(line: 299, column: 2, scope: !5780)
!5963 = !DILocation(line: 299, column: 2, scope: !5779)
!5964 = !DILocation(line: 301, column: 27, scope: !5756)
!5965 = !DILocation(line: 301, column: 8, scope: !5756)
!5966 = !DILocation(line: 301, column: 6, scope: !5756)
!5967 = !DILocation(line: 302, column: 6, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 302, column: 6)
!5969 = !DILocation(line: 302, column: 6, scope: !5756)
!5970 = !DILocation(line: 303, column: 3, scope: !5968)
!5971 = !DILocation(line: 305, column: 8, scope: !5756)
!5972 = !DILocation(line: 305, column: 13, scope: !5756)
!5973 = !DILocation(line: 305, column: 19, scope: !5756)
!5974 = !DILocation(line: 305, column: 6, scope: !5756)
!5975 = !DILocation(line: 306, column: 6, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 306, column: 6)
!5977 = !DILocation(line: 306, column: 6, scope: !5756)
!5978 = !DILocation(line: 307, column: 3, scope: !5976)
!5979 = !DILocation(line: 310, column: 8, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 310, column: 6)
!5981 = !DILocation(line: 310, column: 13, scope: !5980)
!5982 = !DILocation(line: 310, column: 21, scope: !5980)
!5983 = !DILocation(line: 310, column: 32, scope: !5980)
!5984 = !DILocation(line: 310, column: 37, scope: !5980)
!5985 = !DILocation(line: 310, column: 6, scope: !5756)
!5986 = !DILocation(line: 311, column: 23, scope: !5980)
!5987 = !DILocation(line: 311, column: 3, scope: !5980)
!5988 = !DILocation(line: 313, column: 6, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5756, file: !2, line: 313, column: 6)
!5990 = !DILocation(line: 313, column: 11, scope: !5989)
!5991 = !DILocation(line: 313, column: 6, scope: !5756)
!5992 = !DILocation(line: 314, column: 3, scope: !5989)
!5993 = !DILocation(line: 314, column: 8, scope: !5989)
!5994 = !DILocation(line: 314, column: 13, scope: !5989)
!5995 = !DILocation(line: 316, column: 23, scope: !5756)
!5996 = !DILocation(line: 316, column: 2, scope: !5756)
!5997 = !DILocation(line: 318, column: 2, scope: !5756)
!5998 = !DILocation(line: 319, column: 1, scope: !5756)
!5999 = !DILocation(line: 320, column: 20, scope: !5756)
!6000 = !DILocation(line: 320, column: 2, scope: !5756)
!6001 = !DILocation(line: 321, column: 9, scope: !5756)
!6002 = !DILocation(line: 321, column: 2, scope: !5756)
!6003 = !DILocation(line: 323, column: 1, scope: !5756)
!6004 = distinct !DISubprogram(name: "virtio_dev_remove", scope: !2, file: !2, line: 325, type: !4156, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6005)
!6005 = !{!6006, !6007, !6008, !6010, !6011, !6013}
!6006 = !DILocalVariable(name: "_d", arg: 1, scope: !6004, file: !2, line: 325, type: !4127)
!6007 = !DILocalVariable(name: "dev", scope: !6004, file: !2, line: 327, type: !4609)
!6008 = !DILocalVariable(name: "__mptr", scope: !6009, file: !2, line: 327, type: !159)
!6009 = distinct !DILexicalBlock(scope: !6004, file: !2, line: 327, column: 30)
!6010 = !DILocalVariable(name: "drv", scope: !6004, file: !2, line: 328, type: !162)
!6011 = !DILocalVariable(name: "__ret_warn_on", scope: !6012, file: !2, line: 335, type: !115)
!6012 = distinct !DILexicalBlock(scope: !6004, file: !2, line: 335, column: 2)
!6013 = !DILocalVariable(name: "__flags", scope: !6014, file: !2, line: 335, type: !115)
!6014 = distinct !DILexicalBlock(scope: !6015, file: !2, line: 335, column: 2)
!6015 = distinct !DILexicalBlock(scope: !6012, file: !2, line: 335, column: 2)
!6016 = !DILocation(line: 325, column: 46, scope: !6004)
!6017 = !DILocation(line: 327, column: 2, scope: !6004)
!6018 = !DILocation(line: 327, column: 24, scope: !6004)
!6019 = !DILocation(line: 327, column: 30, scope: !6009)
!6020 = !DILocation(line: 327, column: 30, scope: !6004)
!6021 = !DILocation(line: 328, column: 2, scope: !6004)
!6022 = !DILocation(line: 328, column: 24, scope: !6004)
!6023 = !DILocation(line: 328, column: 44, scope: !6004)
!6024 = !DILocation(line: 328, column: 49, scope: !6004)
!6025 = !DILocation(line: 328, column: 53, scope: !6004)
!6026 = !DILocation(line: 328, column: 30, scope: !6004)
!6027 = !DILocation(line: 330, column: 24, scope: !6004)
!6028 = !DILocation(line: 330, column: 2, scope: !6004)
!6029 = !DILocation(line: 332, column: 2, scope: !6004)
!6030 = !DILocation(line: 332, column: 7, scope: !6004)
!6031 = !DILocation(line: 332, column: 14, scope: !6004)
!6032 = !DILocation(line: 335, column: 2, scope: !6012)
!6033 = !DILocation(line: 335, column: 2, scope: !6015)
!6034 = !DILocation(line: 335, column: 2, scope: !6014)
!6035 = !DILocation(line: 335, column: 2, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6014, file: !2, line: 335, column: 2)
!6037 = !DILocation(line: 335, column: 2, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6014, file: !2, line: 335, column: 2)
!6039 = !{i64 2154762208, i64 2154762237, i64 2154762283, i64 2154762341, i64 2154762395, i64 2154762449, i64 2154762504, i64 2154762535, i64 2154762843, i64 2154762849, i64 2154762896, i64 2154762919, i64 2154762945}
!6040 = !DILocation(line: 335, column: 2, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6014, file: !2, line: 335, column: 2)
!6042 = !DILocation(line: 335, column: 2, scope: !6004)
!6043 = !DILocation(line: 338, column: 20, scope: !6004)
!6044 = !DILocation(line: 338, column: 2, scope: !6004)
!6045 = !DILocation(line: 340, column: 14, scope: !6004)
!6046 = !DILocation(line: 340, column: 19, scope: !6004)
!6047 = !DILocation(line: 340, column: 23, scope: !6004)
!6048 = !DILocation(line: 340, column: 2, scope: !6004)
!6049 = !DILocation(line: 341, column: 1, scope: !6004)
!6050 = distinct !DISubprogram(name: "device_show", scope: !2, file: !2, line: 14, type: !4799, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6051)
!6051 = !{!6052, !6053, !6054, !6055, !6056}
!6052 = !DILocalVariable(name: "_d", arg: 1, scope: !6050, file: !2, line: 14, type: !4127)
!6053 = !DILocalVariable(name: "attr", arg: 2, scope: !6050, file: !2, line: 15, type: !4801)
!6054 = !DILocalVariable(name: "buf", arg: 3, scope: !6050, file: !2, line: 15, type: !281)
!6055 = !DILocalVariable(name: "dev", scope: !6050, file: !2, line: 17, type: !4609)
!6056 = !DILocalVariable(name: "__mptr", scope: !6057, file: !2, line: 17, type: !159)
!6057 = distinct !DILexicalBlock(scope: !6050, file: !2, line: 17, column: 30)
!6058 = !DILocation(line: 14, column: 43, scope: !6050)
!6059 = !DILocation(line: 15, column: 32, scope: !6050)
!6060 = !DILocation(line: 15, column: 44, scope: !6050)
!6061 = !DILocation(line: 17, column: 2, scope: !6050)
!6062 = !DILocation(line: 17, column: 24, scope: !6050)
!6063 = !DILocation(line: 17, column: 30, scope: !6057)
!6064 = !DILocation(line: 17, column: 30, scope: !6050)
!6065 = !DILocation(line: 18, column: 20, scope: !6050)
!6066 = !DILocation(line: 18, column: 37, scope: !6050)
!6067 = !DILocation(line: 18, column: 42, scope: !6050)
!6068 = !DILocation(line: 18, column: 45, scope: !6050)
!6069 = !DILocation(line: 18, column: 9, scope: !6050)
!6070 = !DILocation(line: 19, column: 1, scope: !6050)
!6071 = !DILocation(line: 18, column: 2, scope: !6050)
!6072 = !DISubprogram(name: "sysfs_emit", scope: !185, file: !185, line: 357, type: !6073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!115, !281, !170, null}
!6075 = distinct !DISubprogram(name: "vendor_show", scope: !2, file: !2, line: 22, type: !4799, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6076)
!6076 = !{!6077, !6078, !6079, !6080, !6081}
!6077 = !DILocalVariable(name: "_d", arg: 1, scope: !6075, file: !2, line: 22, type: !4127)
!6078 = !DILocalVariable(name: "attr", arg: 2, scope: !6075, file: !2, line: 23, type: !4801)
!6079 = !DILocalVariable(name: "buf", arg: 3, scope: !6075, file: !2, line: 23, type: !281)
!6080 = !DILocalVariable(name: "dev", scope: !6075, file: !2, line: 25, type: !4609)
!6081 = !DILocalVariable(name: "__mptr", scope: !6082, file: !2, line: 25, type: !159)
!6082 = distinct !DILexicalBlock(scope: !6075, file: !2, line: 25, column: 30)
!6083 = !DILocation(line: 22, column: 43, scope: !6075)
!6084 = !DILocation(line: 23, column: 32, scope: !6075)
!6085 = !DILocation(line: 23, column: 44, scope: !6075)
!6086 = !DILocation(line: 25, column: 2, scope: !6075)
!6087 = !DILocation(line: 25, column: 24, scope: !6075)
!6088 = !DILocation(line: 25, column: 30, scope: !6082)
!6089 = !DILocation(line: 25, column: 30, scope: !6075)
!6090 = !DILocation(line: 26, column: 20, scope: !6075)
!6091 = !DILocation(line: 26, column: 37, scope: !6075)
!6092 = !DILocation(line: 26, column: 42, scope: !6075)
!6093 = !DILocation(line: 26, column: 45, scope: !6075)
!6094 = !DILocation(line: 26, column: 9, scope: !6075)
!6095 = !DILocation(line: 27, column: 1, scope: !6075)
!6096 = !DILocation(line: 26, column: 2, scope: !6075)
!6097 = distinct !DISubprogram(name: "status_show", scope: !2, file: !2, line: 30, type: !4799, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6098)
!6098 = !{!6099, !6100, !6101, !6102, !6103}
!6099 = !DILocalVariable(name: "_d", arg: 1, scope: !6097, file: !2, line: 30, type: !4127)
!6100 = !DILocalVariable(name: "attr", arg: 2, scope: !6097, file: !2, line: 31, type: !4801)
!6101 = !DILocalVariable(name: "buf", arg: 3, scope: !6097, file: !2, line: 31, type: !281)
!6102 = !DILocalVariable(name: "dev", scope: !6097, file: !2, line: 33, type: !4609)
!6103 = !DILocalVariable(name: "__mptr", scope: !6104, file: !2, line: 33, type: !159)
!6104 = distinct !DILexicalBlock(scope: !6097, file: !2, line: 33, column: 30)
!6105 = !DILocation(line: 30, column: 43, scope: !6097)
!6106 = !DILocation(line: 31, column: 32, scope: !6097)
!6107 = !DILocation(line: 31, column: 44, scope: !6097)
!6108 = !DILocation(line: 33, column: 2, scope: !6097)
!6109 = !DILocation(line: 33, column: 24, scope: !6097)
!6110 = !DILocation(line: 33, column: 30, scope: !6104)
!6111 = !DILocation(line: 33, column: 30, scope: !6097)
!6112 = !DILocation(line: 34, column: 20, scope: !6097)
!6113 = !DILocation(line: 34, column: 37, scope: !6097)
!6114 = !DILocation(line: 34, column: 42, scope: !6097)
!6115 = !DILocation(line: 34, column: 50, scope: !6097)
!6116 = !DILocation(line: 34, column: 61, scope: !6097)
!6117 = !DILocation(line: 34, column: 9, scope: !6097)
!6118 = !DILocation(line: 35, column: 1, scope: !6097)
!6119 = !DILocation(line: 34, column: 2, scope: !6097)
!6120 = distinct !DISubprogram(name: "modalias_show", scope: !2, file: !2, line: 38, type: !4799, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6121)
!6121 = !{!6122, !6123, !6124, !6125, !6126}
!6122 = !DILocalVariable(name: "_d", arg: 1, scope: !6120, file: !2, line: 38, type: !4127)
!6123 = !DILocalVariable(name: "attr", arg: 2, scope: !6120, file: !2, line: 39, type: !4801)
!6124 = !DILocalVariable(name: "buf", arg: 3, scope: !6120, file: !2, line: 39, type: !281)
!6125 = !DILocalVariable(name: "dev", scope: !6120, file: !2, line: 41, type: !4609)
!6126 = !DILocalVariable(name: "__mptr", scope: !6127, file: !2, line: 41, type: !159)
!6127 = distinct !DILexicalBlock(scope: !6120, file: !2, line: 41, column: 30)
!6128 = !DILocation(line: 38, column: 45, scope: !6120)
!6129 = !DILocation(line: 39, column: 34, scope: !6120)
!6130 = !DILocation(line: 39, column: 46, scope: !6120)
!6131 = !DILocation(line: 41, column: 2, scope: !6120)
!6132 = !DILocation(line: 41, column: 24, scope: !6120)
!6133 = !DILocation(line: 41, column: 30, scope: !6127)
!6134 = !DILocation(line: 41, column: 30, scope: !6120)
!6135 = !DILocation(line: 42, column: 20, scope: !6120)
!6136 = !DILocation(line: 43, column: 10, scope: !6120)
!6137 = !DILocation(line: 43, column: 15, scope: !6120)
!6138 = !DILocation(line: 43, column: 18, scope: !6120)
!6139 = !DILocation(line: 43, column: 26, scope: !6120)
!6140 = !DILocation(line: 43, column: 31, scope: !6120)
!6141 = !DILocation(line: 43, column: 34, scope: !6120)
!6142 = !DILocation(line: 42, column: 9, scope: !6120)
!6143 = !DILocation(line: 44, column: 1, scope: !6120)
!6144 = !DILocation(line: 42, column: 2, scope: !6120)
!6145 = distinct !DISubprogram(name: "features_show", scope: !2, file: !2, line: 47, type: !4799, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6146)
!6146 = !{!6147, !6148, !6149, !6150, !6151, !6153, !6154}
!6147 = !DILocalVariable(name: "_d", arg: 1, scope: !6145, file: !2, line: 47, type: !4127)
!6148 = !DILocalVariable(name: "attr", arg: 2, scope: !6145, file: !2, line: 48, type: !4801)
!6149 = !DILocalVariable(name: "buf", arg: 3, scope: !6145, file: !2, line: 48, type: !281)
!6150 = !DILocalVariable(name: "dev", scope: !6145, file: !2, line: 50, type: !4609)
!6151 = !DILocalVariable(name: "__mptr", scope: !6152, file: !2, line: 50, type: !159)
!6152 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 50, column: 30)
!6153 = !DILocalVariable(name: "i", scope: !6145, file: !2, line: 51, type: !13)
!6154 = !DILocalVariable(name: "len", scope: !6145, file: !2, line: 52, type: !312)
!6155 = !DILocation(line: 47, column: 45, scope: !6145)
!6156 = !DILocation(line: 48, column: 34, scope: !6145)
!6157 = !DILocation(line: 48, column: 46, scope: !6145)
!6158 = !DILocation(line: 50, column: 2, scope: !6145)
!6159 = !DILocation(line: 50, column: 24, scope: !6145)
!6160 = !DILocation(line: 50, column: 30, scope: !6152)
!6161 = !DILocation(line: 50, column: 30, scope: !6145)
!6162 = !DILocation(line: 51, column: 2, scope: !6145)
!6163 = !DILocation(line: 51, column: 15, scope: !6145)
!6164 = !DILocation(line: 52, column: 2, scope: !6145)
!6165 = !DILocation(line: 52, column: 10, scope: !6145)
!6166 = !DILocation(line: 56, column: 9, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6145, file: !2, line: 56, column: 2)
!6168 = !DILocation(line: 56, column: 7, scope: !6167)
!6169 = !DILocation(line: 56, column: 14, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6167, file: !2, line: 56, column: 2)
!6171 = !DILocation(line: 56, column: 16, scope: !6170)
!6172 = !DILocation(line: 56, column: 2, scope: !6167)
!6173 = !DILocation(line: 57, column: 24, scope: !6170)
!6174 = !DILocation(line: 57, column: 29, scope: !6170)
!6175 = !DILocation(line: 58, column: 29, scope: !6170)
!6176 = !DILocation(line: 58, column: 34, scope: !6170)
!6177 = !DILocation(line: 58, column: 11, scope: !6170)
!6178 = !DILocation(line: 57, column: 10, scope: !6170)
!6179 = !DILocation(line: 57, column: 7, scope: !6170)
!6180 = !DILocation(line: 57, column: 3, scope: !6170)
!6181 = !DILocation(line: 56, column: 44, scope: !6170)
!6182 = !DILocation(line: 56, column: 2, scope: !6170)
!6183 = distinct !{!6183, !6172, !6184, !4921, !4922}
!6184 = !DILocation(line: 58, column: 48, scope: !6167)
!6185 = !DILocation(line: 59, column: 23, scope: !6145)
!6186 = !DILocation(line: 59, column: 28, scope: !6145)
!6187 = !DILocation(line: 59, column: 9, scope: !6145)
!6188 = !DILocation(line: 59, column: 6, scope: !6145)
!6189 = !DILocation(line: 60, column: 9, scope: !6145)
!6190 = !DILocation(line: 61, column: 1, scope: !6145)
!6191 = !DILocation(line: 60, column: 2, scope: !6145)
!6192 = !DISubprogram(name: "sysfs_emit_at", scope: !185, file: !185, line: 359, type: !6193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6193 = !DISubroutineType(types: !6194)
!6194 = !{!115, !281, !115, !170, null}
!6195 = distinct !DISubprogram(name: "__virtio_test_bit", scope: !4624, file: !4624, line: 136, type: !6196, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6198)
!6196 = !DISubroutineType(types: !6197)
!6197 = !{!344, !4727, !13}
!6198 = !{!6199, !6200}
!6199 = !DILocalVariable(name: "vdev", arg: 1, scope: !6195, file: !4624, line: 136, type: !4727)
!6200 = !DILocalVariable(name: "fbit", arg: 2, scope: !6195, file: !4624, line: 137, type: !13)
!6201 = !DILocation(line: 136, column: 66, scope: !6195)
!6202 = !DILocation(line: 137, column: 23, scope: !6195)
!6203 = !DILocation(line: 140, column: 27, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !6195, file: !4624, line: 140, column: 6)
!6205 = !DILocation(line: 140, column: 6, scope: !6204)
!6206 = !DILocation(line: 140, column: 6, scope: !6195)
!6207 = !DILocation(line: 141, column: 3, scope: !6204)
!6208 = !DILocation(line: 141, column: 3, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6210, file: !4624, line: 141, column: 3)
!6210 = distinct !DILexicalBlock(scope: !6204, file: !4624, line: 141, column: 3)
!6211 = !DILocation(line: 141, column: 3, scope: !6210)
!6212 = !{i32 -2140362365}
!6213 = !DILocation(line: 143, column: 3, scope: !6204)
!6214 = !DILocation(line: 143, column: 3, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6216, file: !4624, line: 143, column: 3)
!6216 = distinct !DILexicalBlock(scope: !6204, file: !4624, line: 143, column: 3)
!6217 = !DILocation(line: 143, column: 3, scope: !6216)
!6218 = !DILocation(line: 143, column: 3, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6215, file: !4624, line: 143, column: 3)
!6220 = !DILocation(line: 143, column: 3, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6219, file: !4624, line: 143, column: 3)
!6222 = !DILocation(line: 143, column: 3, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6219, file: !4624, line: 143, column: 3)
!6224 = !{i64 2154605232, i64 2154605261, i64 2154605307, i64 2154605365, i64 2154605419, i64 2154605473, i64 2154605528, i64 2154605559}
!6225 = !DILocation(line: 145, column: 9, scope: !6195)
!6226 = !DILocation(line: 145, column: 15, scope: !6195)
!6227 = !DILocation(line: 145, column: 26, scope: !6195)
!6228 = !DILocation(line: 145, column: 24, scope: !6195)
!6229 = !DILocation(line: 145, column: 2, scope: !6195)
!6230 = !DISubprogram(name: "__compiletime_assert_289", scope: !4624, file: !4624, line: 141, type: !1454, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6231 = distinct !DISubprogram(name: "virtio_id_match", scope: !2, file: !2, line: 74, type: !6232, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6234)
!6232 = !DISubroutineType(types: !6233)
!6233 = !{!115, !4727, !4594}
!6234 = !{!6235, !6236}
!6235 = !DILocalVariable(name: "dev", arg: 1, scope: !6231, file: !2, line: 74, type: !4727)
!6236 = !DILocalVariable(name: "id", arg: 2, scope: !6231, file: !2, line: 75, type: !4594)
!6237 = !DILocation(line: 74, column: 63, scope: !6231)
!6238 = !DILocation(line: 75, column: 38, scope: !6231)
!6239 = !DILocation(line: 77, column: 6, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6231, file: !2, line: 77, column: 6)
!6241 = !DILocation(line: 77, column: 10, scope: !6240)
!6242 = !DILocation(line: 77, column: 20, scope: !6240)
!6243 = !DILocation(line: 77, column: 25, scope: !6240)
!6244 = !DILocation(line: 77, column: 28, scope: !6240)
!6245 = !DILocation(line: 77, column: 17, scope: !6240)
!6246 = !DILocation(line: 77, column: 35, scope: !6240)
!6247 = !DILocation(line: 77, column: 38, scope: !6240)
!6248 = !DILocation(line: 77, column: 42, scope: !6240)
!6249 = !DILocation(line: 77, column: 49, scope: !6240)
!6250 = !DILocation(line: 77, column: 6, scope: !6231)
!6251 = !DILocation(line: 78, column: 3, scope: !6240)
!6252 = !DILocation(line: 80, column: 9, scope: !6231)
!6253 = !DILocation(line: 80, column: 13, scope: !6231)
!6254 = !DILocation(line: 80, column: 20, scope: !6231)
!6255 = !DILocation(line: 80, column: 41, scope: !6231)
!6256 = !DILocation(line: 80, column: 44, scope: !6231)
!6257 = !DILocation(line: 80, column: 48, scope: !6231)
!6258 = !DILocation(line: 80, column: 58, scope: !6231)
!6259 = !DILocation(line: 80, column: 63, scope: !6231)
!6260 = !DILocation(line: 80, column: 66, scope: !6231)
!6261 = !DILocation(line: 80, column: 55, scope: !6231)
!6262 = !DILocation(line: 80, column: 2, scope: !6231)
!6263 = !DILocation(line: 81, column: 1, scope: !6231)
!6264 = !DISubprogram(name: "add_uevent_var", scope: !196, file: !196, line: 220, type: !6265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!115, !276, !170, null}
!6267 = distinct !DISubprogram(name: "__virtio_set_bit", scope: !4624, file: !4624, line: 153, type: !5054, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6268)
!6268 = !{!6269, !6270}
!6269 = !DILocalVariable(name: "vdev", arg: 1, scope: !6267, file: !4624, line: 153, type: !4609)
!6270 = !DILocalVariable(name: "fbit", arg: 2, scope: !6267, file: !4624, line: 154, type: !13)
!6271 = !DILocation(line: 153, column: 59, scope: !6267)
!6272 = !DILocation(line: 154, column: 22, scope: !6267)
!6273 = !DILocation(line: 157, column: 27, scope: !6274)
!6274 = distinct !DILexicalBlock(scope: !6267, file: !4624, line: 157, column: 6)
!6275 = !DILocation(line: 157, column: 6, scope: !6274)
!6276 = !DILocation(line: 157, column: 6, scope: !6267)
!6277 = !DILocation(line: 158, column: 3, scope: !6274)
!6278 = !DILocation(line: 158, column: 3, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6280, file: !4624, line: 158, column: 3)
!6280 = distinct !DILexicalBlock(scope: !6274, file: !4624, line: 158, column: 3)
!6281 = !DILocation(line: 158, column: 3, scope: !6280)
!6282 = !{i32 -2140360085}
!6283 = !DILocation(line: 160, column: 3, scope: !6274)
!6284 = !DILocation(line: 160, column: 3, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6286, file: !4624, line: 160, column: 3)
!6286 = distinct !DILexicalBlock(scope: !6274, file: !4624, line: 160, column: 3)
!6287 = !DILocation(line: 160, column: 3, scope: !6286)
!6288 = !DILocation(line: 160, column: 3, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6285, file: !4624, line: 160, column: 3)
!6290 = !DILocation(line: 160, column: 3, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6289, file: !4624, line: 160, column: 3)
!6292 = !DILocation(line: 160, column: 3, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6289, file: !4624, line: 160, column: 3)
!6294 = !{i64 2154607512, i64 2154607541, i64 2154607587, i64 2154607645, i64 2154607699, i64 2154607753, i64 2154607808, i64 2154607839}
!6295 = !DILocation(line: 162, column: 20, scope: !6267)
!6296 = !DILocation(line: 162, column: 2, scope: !6267)
!6297 = !DILocation(line: 162, column: 8, scope: !6267)
!6298 = !DILocation(line: 162, column: 17, scope: !6267)
!6299 = !DILocation(line: 163, column: 1, scope: !6267)
!6300 = !DISubprogram(name: "__compiletime_assert_290", scope: !4624, file: !4624, line: 158, type: !1454, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6301 = !DISubprogram(name: "ida_alloc_range", scope: !4848, file: !4848, line: 257, type: !6302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!115, !5223, !13, !13, !160}
!6304 = distinct !DISubprogram(name: "dev_of_node", scope: !100, file: !100, line: 1017, type: !6305, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6307)
!6305 = !DISubroutineType(types: !6306)
!6306 = !{!4348, !4127}
!6307 = !{!6308}
!6308 = !DILocalVariable(name: "dev", arg: 1, scope: !6304, file: !100, line: 1017, type: !4127)
!6309 = !DILocation(line: 1017, column: 62, scope: !6304)
!6310 = !DILocation(line: 1020, column: 3, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6304, file: !100, line: 1019, column: 6)
!6312 = distinct !DISubprogram(name: "of_get_available_child_count", scope: !4350, file: !4350, line: 1468, type: !6313, scopeLine: 1469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6317)
!6313 = !DISubroutineType(types: !6314)
!6314 = !{!115, !6315}
!6315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6316, size: 64)
!6316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4349)
!6317 = !{!6318, !6319, !6320}
!6318 = !DILocalVariable(name: "np", arg: 1, scope: !6312, file: !4350, line: 1468, type: !6315)
!6319 = !DILocalVariable(name: "child", scope: !6312, file: !4350, line: 1470, type: !4348)
!6320 = !DILocalVariable(name: "num", scope: !6312, file: !4350, line: 1471, type: !115)
!6321 = !DILocation(line: 1468, column: 74, scope: !6312)
!6322 = !DILocation(line: 1470, column: 2, scope: !6312)
!6323 = !DILocation(line: 1470, column: 22, scope: !6312)
!6324 = !DILocation(line: 1471, column: 2, scope: !6312)
!6325 = !DILocation(line: 1471, column: 6, scope: !6312)
!6326 = !DILocation(line: 1473, column: 2, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6312, file: !4350, line: 1473, column: 2)
!6328 = !DILocation(line: 1473, column: 2, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6327, file: !4350, line: 1473, column: 2)
!6330 = !DILocation(line: 1474, column: 6, scope: !6329)
!6331 = !DILocation(line: 1474, column: 3, scope: !6329)
!6332 = distinct !{!6332, !6326, !6333, !4921, !4922}
!6333 = !DILocation(line: 1474, column: 6, scope: !6327)
!6334 = !DILocation(line: 1476, column: 9, scope: !6312)
!6335 = !DILocation(line: 1477, column: 1, scope: !6312)
!6336 = !DILocation(line: 1476, column: 2, scope: !6312)
!6337 = distinct !DISubprogram(name: "of_get_next_available_child", scope: !4350, file: !4350, line: 538, type: !6338, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6340)
!6338 = !DISubroutineType(types: !6339)
!6339 = !{!4348, !6315, !4348}
!6340 = !{!6341, !6342}
!6341 = !DILocalVariable(name: "node", arg: 1, scope: !6337, file: !4350, line: 539, type: !6315)
!6342 = !DILocalVariable(name: "prev", arg: 2, scope: !6337, file: !4350, line: 539, type: !4348)
!6343 = !DILocation(line: 539, column: 28, scope: !6337)
!6344 = !DILocation(line: 539, column: 54, scope: !6337)
!6345 = !DILocation(line: 541, column: 2, scope: !6337)
!6346 = !DISubprogram(name: "snprintf", scope: !6347, file: !6347, line: 12, type: !6348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6347 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!115, !281, !326, !170, null}
!6350 = distinct !DISubprogram(name: "of_device_is_compatible", scope: !4350, file: !4350, line: 570, type: !6351, scopeLine: 572, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6353)
!6351 = !DISubroutineType(types: !6352)
!6352 = !{!115, !6315, !170}
!6353 = !{!6354, !6355}
!6354 = !DILocalVariable(name: "device", arg: 1, scope: !6350, file: !4350, line: 570, type: !6315)
!6355 = !DILocalVariable(name: "name", arg: 2, scope: !6350, file: !4350, line: 571, type: !170)
!6356 = !DILocation(line: 570, column: 69, scope: !6350)
!6357 = !DILocation(line: 571, column: 20, scope: !6350)
!6358 = !DILocation(line: 573, column: 2, scope: !6350)
!6359 = distinct !DISubprogram(name: "spin_lock_irq", scope: !4999, file: !4999, line: 374, type: !6360, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6362)
!6360 = !DISubroutineType(types: !6361)
!6361 = !{null, !3282}
!6362 = !{!6363}
!6363 = !DILocalVariable(name: "lock", arg: 1, scope: !6359, file: !4999, line: 374, type: !3282)
!6364 = !DILocation(line: 374, column: 55, scope: !6359)
!6365 = !DILocation(line: 376, column: 2, scope: !6359)
!6366 = !DILocation(line: 377, column: 1, scope: !6359)
!6367 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !4999, file: !4999, line: 399, type: !6360, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6368)
!6368 = !{!6369}
!6369 = !DILocalVariable(name: "lock", arg: 1, scope: !6367, file: !4999, line: 399, type: !3282)
!6370 = !DILocation(line: 399, column: 57, scope: !6367)
!6371 = !DILocation(line: 401, column: 2, scope: !6367)
!6372 = !DILocation(line: 402, column: 1, scope: !6367)
!6373 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !4994, file: !4994, line: 29, type: !6374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{null, !4997}
!6376 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !4994, file: !4994, line: 41, type: !6374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6377 = distinct !DISubprogram(name: "virtio_has_feature", scope: !4624, file: !4624, line: 187, type: !6196, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6378)
!6378 = !{!6379, !6380}
!6379 = !DILocalVariable(name: "vdev", arg: 1, scope: !6377, file: !4624, line: 187, type: !4727)
!6380 = !DILocalVariable(name: "fbit", arg: 2, scope: !6377, file: !4624, line: 188, type: !13)
!6381 = !DILocation(line: 187, column: 67, scope: !6377)
!6382 = !DILocation(line: 188, column: 24, scope: !6377)
!6383 = !DILocation(line: 190, column: 6, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6377, file: !4624, line: 190, column: 6)
!6385 = !DILocation(line: 190, column: 11, scope: !6384)
!6386 = !DILocation(line: 190, column: 6, scope: !6377)
!6387 = !DILocation(line: 191, column: 39, scope: !6384)
!6388 = !DILocation(line: 191, column: 45, scope: !6384)
!6389 = !DILocation(line: 191, column: 3, scope: !6384)
!6390 = !DILocation(line: 193, column: 27, scope: !6377)
!6391 = !DILocation(line: 193, column: 33, scope: !6377)
!6392 = !DILocation(line: 193, column: 9, scope: !6377)
!6393 = !DILocation(line: 193, column: 2, scope: !6377)
!6394 = !DISubprogram(name: "_dev_warn", scope: !6395, file: !6395, line: 52, type: !6396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6395 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6396 = !DISubroutineType(types: !6397)
!6397 = !{null, !4147, !170, null}
!6398 = !DISubprogram(name: "_dev_err", scope: !6395, file: !6395, line: 50, type: !6396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6399 = !DISubprogram(name: "bus_register", scope: !176, file: !176, line: 112, type: !6400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{!115, !173}
!6402 = !DISubprogram(name: "panic", scope: !6403, file: !6403, line: 12, type: !6404, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6403 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!6404 = !DISubroutineType(types: !6405)
!6405 = !{null, !170, null}
