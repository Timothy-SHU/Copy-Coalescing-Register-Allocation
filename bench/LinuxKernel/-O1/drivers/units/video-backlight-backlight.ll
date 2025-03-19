; ModuleID = 'drivers/video/backlight/backlight.c'
source_filename = "drivers/video/backlight/backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_device_set_brightness: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_device_set_brightness ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_force_update: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_force_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_device_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_device_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_device_get_by_type: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_device_get_by_type ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_device_get_by_name: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_device_get_by_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_device_unregister: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_device_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_register_notifier: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_register_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_backlight_unregister_notifier: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad backlight_unregister_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_backlight_device_register: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_backlight_device_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_backlight_device_unregister: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_backlight_device_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_of_find_backlight: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_of_find_backlight ; .previous"
module asm ".section\09\22.initcall2.init..kmod_backlight__361_774_backlight_class_init\22, \22a\22\09\09"
module asm "__initcall__kmod_backlight__361_774_backlight_class_init2:\09\09\09"
module asm ".long\09__initstub__kmod_backlight__361_774_backlight_class_init2 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable_backlight_device_set_brightness350 = internal global ptr @backlight_device_set_brightness, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [46 x i8] c"Could not update brightness from device: %pe\0A\00", align 1, !dbg !5816
@__UNIQUE_ID___addressable_backlight_force_update351 = internal global ptr @backlight_force_update, section ".discard.addressable", align 8, !dbg !5821
@backlight_device_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5823
@.str.1 = private unnamed_addr constant [21 x i8] c"&new_bd->update_lock\00", align 1, !dbg !5848
@backlight_device_register.__key.2 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5853
@.str.3 = private unnamed_addr constant [18 x i8] c"&new_bd->ops_lock\00", align 1, !dbg !5855
@backlight_class = internal global ptr null, align 8, !dbg !5937
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !5860
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: invalid backlight type\00", align 1, !dbg !5863
@.str.6 = private unnamed_addr constant [36 x i8] c"drivers/video/backlight/backlight.c\00", align 1, !dbg !5868
@backlight_dev_list_mutex = internal global %struct.mutex zeroinitializer, align 8, !dbg !5929
@backlight_dev_list = internal global %struct.list_head zeroinitializer, align 8, !dbg !5927
@backlight_notifier = internal global %struct.blocking_notifier_head zeroinitializer, align 8, !dbg !5931
@__UNIQUE_ID___addressable_backlight_device_register352 = internal global ptr @backlight_device_register, section ".discard.addressable", align 8, !dbg !5873
@__UNIQUE_ID___addressable_backlight_device_get_by_type353 = internal global ptr @backlight_device_get_by_type, section ".discard.addressable", align 8, !dbg !5875
@__UNIQUE_ID___addressable_backlight_device_get_by_name354 = internal global ptr @backlight_device_get_by_name, section ".discard.addressable", align 8, !dbg !5877
@__UNIQUE_ID___addressable_backlight_device_unregister355 = internal global ptr @backlight_device_unregister, section ".discard.addressable", align 8, !dbg !5879
@__UNIQUE_ID___addressable_backlight_register_notifier356 = internal global ptr @backlight_register_notifier, section ".discard.addressable", align 8, !dbg !5881
@__UNIQUE_ID___addressable_backlight_unregister_notifier357 = internal global ptr @backlight_unregister_notifier, section ".discard.addressable", align 8, !dbg !5883
@.str.7 = private unnamed_addr constant [30 x i8] c"devm_backlight_device_release\00", align 1, !dbg !5885
@__UNIQUE_ID___addressable_devm_backlight_device_register358 = internal global ptr @devm_backlight_device_register, section ".discard.addressable", align 8, !dbg !5890
@__UNIQUE_ID___addressable_devm_backlight_device_unregister359 = internal global ptr @devm_backlight_device_unregister, section ".discard.addressable", align 8, !dbg !5892
@.str.8 = private unnamed_addr constant [23 x i8] c"devm_backlight_release\00", align 1, !dbg !5894
@__UNIQUE_ID___addressable_devm_of_find_backlight360 = internal global ptr @devm_of_find_backlight, section ".discard.addressable", align 8, !dbg !5899
@__UNIQUE_ID___addressable___initstub__kmod_backlight__361_774_backlight_class_init2362 = internal global ptr @__initstub__kmod_backlight__361_774_backlight_class_init2, section ".discard.addressable", align 8, !dbg !5901
@__exitcall_backlight_class_exit = internal global ptr @backlight_class_exit, section ".exitcall.exit", align 8, !dbg !5903
@__UNIQUE_ID_file363 = internal constant [49 x i8] c"backlight.file=drivers/video/backlight/backlight\00", section ".modinfo", align 1, !dbg !5907
@__UNIQUE_ID_license364 = internal constant [22 x i8] c"backlight.license=GPL\00", section ".modinfo", align 1, !dbg !5912
@__UNIQUE_ID_author365 = internal constant [86 x i8] c"backlight.author=Jamey Hicks <jamey.hicks@hp.com>, Andrew Zabolotny <zap@homelink.ru>\00", section ".modinfo", align 1, !dbg !5917
@__UNIQUE_ID_description366 = internal constant [61 x i8] c"backlight.description=Backlight Lowlevel Control Abstraction\00", section ".modinfo", align 1, !dbg !5922
@.str.9 = private unnamed_addr constant [13 x i8] c"SOURCE=sysfs\00", align 1, !dbg !5940
@.str.10 = private unnamed_addr constant [14 x i8] c"SOURCE=hotkey\00", align 1, !dbg !5945
@.str.11 = private unnamed_addr constant [15 x i8] c"SOURCE=unknown\00", align 1, !dbg !5948
@.str.12 = private unnamed_addr constant [18 x i8] c"actual_brightness\00", align 1, !dbg !5953
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5955
@.str.14 = private unnamed_addr constant [10 x i8] c"backlight\00", align 1, !dbg !5957
@.str.15 = private unnamed_addr constant [60 x i8] c"\014backlight: Unable to create backlight class; errno = %ld\0A\00", align 1, !dbg !5960
@bl_device_groups = internal global [2 x ptr] [ptr @bl_device_group, ptr null], align 16, !dbg !5977
@backlight_class_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @backlight_suspend, ptr @backlight_resume, ptr @backlight_suspend, ptr @backlight_resume, ptr @backlight_suspend, ptr @backlight_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !6053
@backlight_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5965
@.str.16 = private unnamed_addr constant [26 x i8] c"&backlight_dev_list_mutex\00", align 1, !dbg !5968
@backlight_class_init.__key.17 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5973
@.str.18 = private unnamed_addr constant [30 x i8] c"&(&backlight_notifier)->rwsem\00", align 1, !dbg !5975
@bl_device_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bl_device_attrs, ptr null }, align 8, !dbg !5980
@bl_device_attrs = internal global [7 x ptr] [ptr @dev_attr_bl_power, ptr @dev_attr_brightness, ptr @dev_attr_actual_brightness, ptr @dev_attr_max_brightness, ptr @dev_attr_scale, ptr @dev_attr_type, ptr null], align 16, !dbg !5982
@dev_attr_bl_power = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420 }, ptr @bl_power_show, ptr @bl_power_store }, align 8, !dbg !5990
@dev_attr_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @brightness_show, ptr @brightness_store }, align 8, !dbg !6012
@dev_attr_actual_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @actual_brightness_show, ptr null }, align 8, !dbg !6014
@dev_attr_max_brightness = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @max_brightness_show, ptr null }, align 8, !dbg !6018
@dev_attr_scale = internal global %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292 }, ptr @scale_show, ptr null }, align 8, !dbg !6022
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !6042
@.str.19 = private unnamed_addr constant [9 x i8] c"bl_power\00", align 1, !dbg !5985
@.str.20 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !6004
@.str.21 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1, !dbg !6007
@.str.22 = private unnamed_addr constant [15 x i8] c"max_brightness\00", align 1, !dbg !6016
@.str.23 = private unnamed_addr constant [6 x i8] c"scale\00", align 1, !dbg !6020
@.str.24 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1, !dbg !6024
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !6026
@backlight_scale_types = internal constant [3 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28], align 16, !dbg !6035
@.str.26 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !6028
@.str.27 = private unnamed_addr constant [7 x i8] c"linear\00", align 1, !dbg !6030
@.str.28 = private unnamed_addr constant [11 x i8] c"non-linear\00", align 1, !dbg !6033
@.str.29 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !6039
@backlight_types = internal constant [4 x ptr] [ptr null, ptr @.str.30, ptr @.str.31, ptr @.str.32], align 16, !dbg !6050
@.str.30 = private unnamed_addr constant [4 x i8] c"raw\00", align 1, !dbg !6044
@.str.31 = private unnamed_addr constant [9 x i8] c"platform\00", align 1, !dbg !6046
@.str.32 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1, !dbg !6048
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID___addressable_backlight_device_set_brightness350, ptr @__UNIQUE_ID___addressable_backlight_force_update351, ptr @__UNIQUE_ID___addressable_backlight_device_register352, ptr @__UNIQUE_ID___addressable_backlight_device_get_by_type353, ptr @__UNIQUE_ID___addressable_backlight_device_get_by_name354, ptr @__UNIQUE_ID___addressable_backlight_device_unregister355, ptr @__UNIQUE_ID___addressable_backlight_register_notifier356, ptr @__UNIQUE_ID___addressable_backlight_unregister_notifier357, ptr @__UNIQUE_ID___addressable_devm_backlight_device_register358, ptr @__UNIQUE_ID___addressable_devm_backlight_device_unregister359, ptr @__UNIQUE_ID___addressable_devm_of_find_backlight360, ptr @backlight_class_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_backlight__361_774_backlight_class_init2362, ptr @__exitcall_backlight_class_exit, ptr @__UNIQUE_ID_file363, ptr @__UNIQUE_ID_license364, ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @backlight_device_set_brightness(ptr noundef %bd, i64 noundef %brightness) #0 align 16 !dbg !6064 {
entry:
  %bd.addr = alloca ptr, align 8
  %brightness.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6068, metadata !DIExpression()), !dbg !6071
  store i64 %brightness, ptr %brightness.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %brightness.addr, metadata !6069, metadata !DIExpression()), !dbg !6072
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !6073
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6070, metadata !DIExpression()), !dbg !6074
  store i32 -6, ptr %rc, align 4, !dbg !6074
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !6075
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 2, !dbg !6076
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !6077
  %1 = load ptr, ptr %bd.addr, align 8, !dbg !6078
  %ops = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 3, !dbg !6080
  %2 = load ptr, ptr %ops, align 8, !dbg !6080
  %tobool = icmp ne ptr %2, null, !dbg !6078
  br i1 %tobool, label %if.then, label %if.end6, !dbg !6081

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %brightness.addr, align 8, !dbg !6082
  %4 = load ptr, ptr %bd.addr, align 8, !dbg !6085
  %props = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 0, !dbg !6086
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1, !dbg !6087
  %5 = load i32, ptr %max_brightness, align 4, !dbg !6087
  %conv = sext i32 %5 to i64, !dbg !6085
  %cmp = icmp ugt i64 %3, %conv, !dbg !6088
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6089

if.then2:                                         ; preds = %if.then
  store i32 -22, ptr %rc, align 4, !dbg !6090
  br label %if.end, !dbg !6091

if.else:                                          ; preds = %if.then
  store i32 0, ptr %tmp, align 4, !dbg !6092
  %6 = load i32, ptr %tmp, align 4, !dbg !6096
  %7 = load i64, ptr %brightness.addr, align 8, !dbg !6097
  %conv3 = trunc i64 %7 to i32, !dbg !6097
  %8 = load ptr, ptr %bd.addr, align 8, !dbg !6098
  %props4 = getelementptr inbounds %struct.backlight_device, ptr %8, i32 0, i32 0, !dbg !6099
  %brightness5 = getelementptr inbounds %struct.backlight_properties, ptr %props4, i32 0, i32 0, !dbg !6100
  store i32 %conv3, ptr %brightness5, align 8, !dbg !6101
  %9 = load ptr, ptr %bd.addr, align 8, !dbg !6102
  %call = call i32 @backlight_update_status(ptr noundef %9) #17, !dbg !6103
  store i32 %call, ptr %rc, align 4, !dbg !6104
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end6, !dbg !6105

if.end6:                                          ; preds = %if.end, %entry
  %10 = load ptr, ptr %bd.addr, align 8, !dbg !6106
  %ops_lock7 = getelementptr inbounds %struct.backlight_device, ptr %10, i32 0, i32 2, !dbg !6107
  call void @mutex_unlock(ptr noundef %ops_lock7) #17, !dbg !6108
  %11 = load ptr, ptr %bd.addr, align 8, !dbg !6109
  call void @backlight_generate_event(ptr noundef %11, i32 noundef 1) #17, !dbg !6110
  %12 = load i32, ptr %rc, align 4, !dbg !6111
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !6112
  ret i32 %12, !dbg !6113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6114 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @backlight_update_status(ptr noundef %bd) #4 align 16 !dbg !6118 {
entry:
  %bd.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6120, metadata !DIExpression()), !dbg !6122
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6123
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6121, metadata !DIExpression()), !dbg !6124
  store i32 -2, ptr %ret, align 4, !dbg !6124
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !6125
  %update_lock = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 1, !dbg !6126
  call void @mutex_lock(ptr noundef %update_lock) #17, !dbg !6127
  %1 = load ptr, ptr %bd.addr, align 8, !dbg !6128
  %ops = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 3, !dbg !6130
  %2 = load ptr, ptr %ops, align 8, !dbg !6130
  %tobool = icmp ne ptr %2, null, !dbg !6128
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6131

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bd.addr, align 8, !dbg !6132
  %ops1 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3, !dbg !6133
  %4 = load ptr, ptr %ops1, align 8, !dbg !6133
  %update_status = getelementptr inbounds %struct.backlight_ops, ptr %4, i32 0, i32 1, !dbg !6134
  %5 = load ptr, ptr %update_status, align 8, !dbg !6134
  %tobool2 = icmp ne ptr %5, null, !dbg !6132
  br i1 %tobool2, label %if.then, label %if.end, !dbg !6135

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bd.addr, align 8, !dbg !6136
  %ops3 = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3, !dbg !6137
  %7 = load ptr, ptr %ops3, align 8, !dbg !6137
  %update_status4 = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 1, !dbg !6138
  %8 = load ptr, ptr %update_status4, align 8, !dbg !6138
  %9 = load ptr, ptr %bd.addr, align 8, !dbg !6139
  %call = call i32 %8(ptr noundef %9) #17, !dbg !6136
  store i32 %call, ptr %ret, align 4, !dbg !6140
  br label %if.end, !dbg !6141

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load ptr, ptr %bd.addr, align 8, !dbg !6142
  %update_lock5 = getelementptr inbounds %struct.backlight_device, ptr %10, i32 0, i32 1, !dbg !6143
  call void @mutex_unlock(ptr noundef %update_lock5) #17, !dbg !6144
  %11 = load i32, ptr %ret, align 4, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6146
  ret i32 %11, !dbg !6147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6148 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @backlight_generate_event(ptr noundef %bd, i32 noundef %reason) #0 align 16 !dbg !6149 {
entry:
  %bd.addr = alloca ptr, align 8
  %reason.addr = alloca i32, align 4
  %envp = alloca [2 x ptr], align 16
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6153, metadata !DIExpression()), !dbg !6157
  store i32 %reason, ptr %reason.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !6154, metadata !DIExpression()), !dbg !6158
  call void @llvm.lifetime.start.p0(i64 16, ptr %envp) #16, !dbg !6159
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !6155, metadata !DIExpression()), !dbg !6160
  %0 = load i32, ptr %reason.addr, align 4, !dbg !6161
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ], !dbg !6162

sw.bb:                                            ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !6163
  store ptr @.str.9, ptr %arrayidx, align 16, !dbg !6165
  br label %sw.epilog, !dbg !6166

sw.bb1:                                           ; preds = %entry
  %arrayidx2 = getelementptr [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !6167
  store ptr @.str.10, ptr %arrayidx2, align 16, !dbg !6168
  br label %sw.epilog, !dbg !6169

sw.default:                                       ; preds = %entry
  %arrayidx3 = getelementptr [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !6170
  store ptr @.str.11, ptr %arrayidx3, align 16, !dbg !6171
  br label %sw.epilog, !dbg !6172

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %arrayidx4 = getelementptr [2 x ptr], ptr %envp, i64 0, i64 1, !dbg !6173
  store ptr null, ptr %arrayidx4, align 8, !dbg !6174
  %1 = load ptr, ptr %bd.addr, align 8, !dbg !6175
  %dev = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, !dbg !6176
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !6177
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !6178
  %call = call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef 2, ptr noundef %arraydecay) #17, !dbg !6179
  %2 = load ptr, ptr %bd.addr, align 8, !dbg !6180
  %dev5 = getelementptr inbounds %struct.backlight_device, ptr %2, i32 0, i32 6, !dbg !6181
  %kobj6 = getelementptr inbounds %struct.device, ptr %dev5, i32 0, i32 0, !dbg !6182
  call void @sysfs_notify(ptr noundef %kobj6, ptr noundef null, ptr noundef @.str.12) #17, !dbg !6183
  call void @llvm.lifetime.end.p0(i64 16, ptr %envp) #16, !dbg !6184
  ret void, !dbg !6184
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @backlight_force_update(ptr noundef %bd, i32 noundef %reason) #0 align 16 !dbg !6185 {
entry:
  %bd.addr = alloca ptr, align 8
  %reason.addr = alloca i32, align 4
  %brightness = alloca i32, align 4
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6187, metadata !DIExpression()), !dbg !6190
  store i32 %reason, ptr %reason.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reason.addr, metadata !6188, metadata !DIExpression()), !dbg !6191
  call void @llvm.lifetime.start.p0(i64 4, ptr %brightness) #16, !dbg !6192
  call void @llvm.dbg.declare(metadata ptr %brightness, metadata !6189, metadata !DIExpression()), !dbg !6193
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !6194
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 2, !dbg !6195
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !6196
  %1 = load ptr, ptr %bd.addr, align 8, !dbg !6197
  %ops = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 3, !dbg !6199
  %2 = load ptr, ptr %ops, align 8, !dbg !6199
  %tobool = icmp ne ptr %2, null, !dbg !6197
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !6200

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %bd.addr, align 8, !dbg !6201
  %ops1 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 3, !dbg !6202
  %4 = load ptr, ptr %ops1, align 8, !dbg !6202
  %get_brightness = getelementptr inbounds %struct.backlight_ops, ptr %4, i32 0, i32 2, !dbg !6203
  %5 = load ptr, ptr %get_brightness, align 8, !dbg !6203
  %tobool2 = icmp ne ptr %5, null, !dbg !6201
  br i1 %tobool2, label %if.then, label %if.end8, !dbg !6204

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %bd.addr, align 8, !dbg !6205
  %ops3 = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3, !dbg !6207
  %7 = load ptr, ptr %ops3, align 8, !dbg !6207
  %get_brightness4 = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 2, !dbg !6208
  %8 = load ptr, ptr %get_brightness4, align 8, !dbg !6208
  %9 = load ptr, ptr %bd.addr, align 8, !dbg !6209
  %call = call i32 %8(ptr noundef %9) #17, !dbg !6205
  store i32 %call, ptr %brightness, align 4, !dbg !6210
  %10 = load i32, ptr %brightness, align 4, !dbg !6211
  %cmp = icmp sge i32 %10, 0, !dbg !6213
  br i1 %cmp, label %if.then5, label %if.else, !dbg !6214

if.then5:                                         ; preds = %if.then
  %11 = load i32, ptr %brightness, align 4, !dbg !6215
  %12 = load ptr, ptr %bd.addr, align 8, !dbg !6216
  %props = getelementptr inbounds %struct.backlight_device, ptr %12, i32 0, i32 0, !dbg !6217
  %brightness6 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 0, !dbg !6218
  store i32 %11, ptr %brightness6, align 8, !dbg !6219
  br label %if.end, !dbg !6216

if.else:                                          ; preds = %if.then
  br label %do.body, !dbg !6220

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !6222

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6222

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %bd.addr, align 8, !dbg !6220
  %dev = getelementptr inbounds %struct.backlight_device, ptr %13, i32 0, i32 6, !dbg !6220
  %14 = load i32, ptr %brightness, align 4, !dbg !6220
  %conv = sext i32 %14 to i64, !dbg !6220
  %call7 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !6220
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str, ptr noundef %call7) #18, !dbg !6220
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5
  br label %if.end8, !dbg !6224

if.end8:                                          ; preds = %if.end, %land.lhs.true, %entry
  %15 = load ptr, ptr %bd.addr, align 8, !dbg !6225
  %ops_lock9 = getelementptr inbounds %struct.backlight_device, ptr %15, i32 0, i32 2, !dbg !6226
  call void @mutex_unlock(ptr noundef %ops_lock9) #17, !dbg !6227
  %16 = load ptr, ptr %bd.addr, align 8, !dbg !6228
  %17 = load i32, ptr %reason.addr, align 4, !dbg !6229
  call void @backlight_generate_event(ptr noundef %16, i32 noundef %17) #17, !dbg !6230
  call void @llvm.lifetime.end.p0(i64 4, ptr %brightness) #16, !dbg !6231
  ret void, !dbg !6231
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6232 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6236 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6241, metadata !DIExpression()), !dbg !6242
  %0 = load i64, ptr %error.addr, align 8, !dbg !6243
  %1 = inttoptr i64 %0 to ptr, !dbg !6244
  ret ptr %1, !dbg !6245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @backlight_device_register(ptr noundef %name, ptr noundef %parent, ptr noundef %devdata, ptr noundef %ops, ptr noundef %props) #0 align 16 !dbg !5825 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %devdata.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %props.addr = alloca ptr, align 8
  %new_bd = alloca ptr, align 8
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp43 = alloca i64, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5831, metadata !DIExpression()), !dbg !6246
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5832, metadata !DIExpression()), !dbg !6247
  store ptr %devdata, ptr %devdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devdata.addr, metadata !5833, metadata !DIExpression()), !dbg !6248
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5834, metadata !DIExpression()), !dbg !6249
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !5835, metadata !DIExpression()), !dbg !6250
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_bd) #16, !dbg !6251
  call void @llvm.dbg.declare(metadata ptr %new_bd, metadata !5836, metadata !DIExpression()), !dbg !6252
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !6253
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5837, metadata !DIExpression()), !dbg !6254
  store i32 0, ptr %tmp, align 4, !dbg !6255
  %0 = load i32, ptr %tmp, align 4, !dbg !6258
  %call = call noalias ptr @kzalloc(i64 noundef 912, i32 noundef 3264) #19, !dbg !6259
  store ptr %call, ptr %new_bd, align 8, !dbg !6260
  %1 = load ptr, ptr %new_bd, align 8, !dbg !6261
  %tobool = icmp ne ptr %1, null, !dbg !6261
  br i1 %tobool, label %if.end, label %if.then, !dbg !6263

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !6264
  store ptr %call1, ptr %retval, align 8, !dbg !6265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6265

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !6266

do.body:                                          ; preds = %if.end
  %2 = load ptr, ptr %new_bd, align 8, !dbg !6267
  %update_lock = getelementptr inbounds %struct.backlight_device, ptr %2, i32 0, i32 1, !dbg !6267
  call void @__mutex_init(ptr noundef %update_lock, ptr noundef @.str.1, ptr noundef @backlight_device_register.__key) #17, !dbg !6267
  br label %do.cond, !dbg !6267

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6267

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !6269

do.body2:                                         ; preds = %do.end
  %3 = load ptr, ptr %new_bd, align 8, !dbg !6270
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 2, !dbg !6270
  call void @__mutex_init(ptr noundef %ops_lock, ptr noundef @.str.3, ptr noundef @backlight_device_register.__key.2) #17, !dbg !6270
  br label %do.cond3, !dbg !6270

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6270

do.end4:                                          ; preds = %do.cond3
  %4 = load ptr, ptr @backlight_class, align 8, !dbg !6272
  %5 = load ptr, ptr %new_bd, align 8, !dbg !6273
  %dev = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 6, !dbg !6274
  %class = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30, !dbg !6275
  store ptr %4, ptr %class, align 8, !dbg !6276
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !6277
  %7 = load ptr, ptr %new_bd, align 8, !dbg !6278
  %dev5 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, !dbg !6279
  %parent6 = getelementptr inbounds %struct.device, ptr %dev5, i32 0, i32 1, !dbg !6280
  store ptr %6, ptr %parent6, align 8, !dbg !6281
  %8 = load ptr, ptr %new_bd, align 8, !dbg !6282
  %dev7 = getelementptr inbounds %struct.backlight_device, ptr %8, i32 0, i32 6, !dbg !6283
  %release = getelementptr inbounds %struct.device, ptr %dev7, i32 0, i32 32, !dbg !6284
  store ptr @bl_device_release, ptr %release, align 8, !dbg !6285
  %9 = load ptr, ptr %new_bd, align 8, !dbg !6286
  %dev8 = getelementptr inbounds %struct.backlight_device, ptr %9, i32 0, i32 6, !dbg !6287
  %10 = load ptr, ptr %name.addr, align 8, !dbg !6288
  %call9 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev8, ptr noundef @.str.4, ptr noundef %10) #17, !dbg !6289
  %11 = load ptr, ptr %new_bd, align 8, !dbg !6290
  %dev10 = getelementptr inbounds %struct.backlight_device, ptr %11, i32 0, i32 6, !dbg !6291
  %12 = load ptr, ptr %devdata.addr, align 8, !dbg !6292
  call void @dev_set_drvdata(ptr noundef %dev10, ptr noundef %12) #17, !dbg !6293
  %13 = load ptr, ptr %props.addr, align 8, !dbg !6294
  %tobool11 = icmp ne ptr %13, null, !dbg !6294
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !6295

if.then12:                                        ; preds = %do.end4
  %14 = load ptr, ptr %new_bd, align 8, !dbg !6296
  %props13 = getelementptr inbounds %struct.backlight_device, ptr %14, i32 0, i32 0, !dbg !6297
  %15 = load ptr, ptr %props.addr, align 8, !dbg !6298
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %props13, ptr align 4 %15, i64 28, i1 false), !dbg !6299
  %16 = load ptr, ptr %props.addr, align 8, !dbg !6300
  %type = getelementptr inbounds %struct.backlight_properties, ptr %16, i32 0, i32 4, !dbg !6301
  %17 = load i32, ptr %type, align 4, !dbg !6301
  %cmp = icmp ule i32 %17, 0, !dbg !6302
  br i1 %cmp, label %if.then16, label %lor.lhs.false, !dbg !6303

lor.lhs.false:                                    ; preds = %if.then12
  %18 = load ptr, ptr %props.addr, align 8, !dbg !6304
  %type14 = getelementptr inbounds %struct.backlight_properties, ptr %18, i32 0, i32 4, !dbg !6305
  %19 = load i32, ptr %type14, align 4, !dbg !6305
  %cmp15 = icmp uge i32 %19, 4, !dbg !6306
  br i1 %cmp15, label %if.then16, label %if.end53, !dbg !6307

if.then16:                                        ; preds = %lor.lhs.false, %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6308
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5838, metadata !DIExpression()), !dbg !6308
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !6308
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !6309
  %tobool17 = icmp ne i32 %20, 0, !dbg !6309
  %lnot = xor i1 %tobool17, true, !dbg !6309
  %lnot18 = xor i1 %lnot, true, !dbg !6309
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !6309
  %conv = sext i32 %lnot.ext to i64, !dbg !6309
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6309
  %tobool19 = icmp ne i64 %expval, 0, !dbg !6309
  br i1 %tobool19, label %if.then20, label %if.end42, !dbg !6308

if.then20:                                        ; preds = %if.then16
  br label %do.body21, !dbg !6309

do.body21:                                        ; preds = %if.then20
  br label %do.body22, !dbg !6310

do.body22:                                        ; preds = %do.body21
  br label %do.cond23, !dbg !6311

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !6311

do.end24:                                         ; preds = %do.cond23
  %21 = load ptr, ptr %name.addr, align 8, !dbg !6310
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.5, ptr noundef %21) #17, !dbg !6310
  br label %do.body25, !dbg !6310

do.body25:                                        ; preds = %do.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6313
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5844, metadata !DIExpression()), !dbg !6313
  store i32 2313, ptr %__flags, align 4, !dbg !6313
  br label %do.body26, !dbg !6313

do.body26:                                        ; preds = %do.body25
  br label %do.cond27, !dbg !6314

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6314

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !6313

do.body29:                                        ; preds = %do.end28
  %22 = load i32, ptr %__flags, align 4, !dbg !6316
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 432, i32 %22, i64 12) #16, !dbg !6316, !srcloc !6318
  br label %do.cond30, !dbg !6316

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6316

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6313

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6319

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6319

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6310
  br label %do.cond35, !dbg !6313

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6313

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6310

do.body37:                                        ; preds = %do.end36
  br label %do.cond38, !dbg !6321

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !6321

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !6310

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !6310

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !6310

if.end42:                                         ; preds = %do.end41, %if.then16
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !6308
  %tobool44 = icmp ne i32 %23, 0, !dbg !6308
  %lnot45 = xor i1 %tobool44, true, !dbg !6308
  %lnot47 = xor i1 %lnot45, true, !dbg !6308
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !6308
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !6308
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !6308
  store i64 %expval50, ptr %tmp43, align 8, !dbg !6309
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6323
  %24 = load i64, ptr %tmp43, align 8, !dbg !6308
  %25 = load ptr, ptr %new_bd, align 8, !dbg !6324
  %props51 = getelementptr inbounds %struct.backlight_device, ptr %25, i32 0, i32 0, !dbg !6325
  %type52 = getelementptr inbounds %struct.backlight_properties, ptr %props51, i32 0, i32 4, !dbg !6326
  store i32 1, ptr %type52, align 8, !dbg !6327
  br label %if.end53, !dbg !6328

if.end53:                                         ; preds = %if.end42, %lor.lhs.false
  br label %if.end56, !dbg !6329

if.else:                                          ; preds = %do.end4
  %26 = load ptr, ptr %new_bd, align 8, !dbg !6330
  %props54 = getelementptr inbounds %struct.backlight_device, ptr %26, i32 0, i32 0, !dbg !6332
  %type55 = getelementptr inbounds %struct.backlight_properties, ptr %props54, i32 0, i32 4, !dbg !6333
  store i32 1, ptr %type55, align 8, !dbg !6334
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.end53
  %27 = load ptr, ptr %new_bd, align 8, !dbg !6335
  %dev57 = getelementptr inbounds %struct.backlight_device, ptr %27, i32 0, i32 6, !dbg !6336
  %call58 = call i32 @device_register(ptr noundef %dev57) #17, !dbg !6337
  store i32 %call58, ptr %rc, align 4, !dbg !6338
  %28 = load i32, ptr %rc, align 4, !dbg !6339
  %tobool59 = icmp ne i32 %28, 0, !dbg !6339
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !6341

if.then60:                                        ; preds = %if.end56
  %29 = load ptr, ptr %new_bd, align 8, !dbg !6342
  %dev61 = getelementptr inbounds %struct.backlight_device, ptr %29, i32 0, i32 6, !dbg !6344
  call void @put_device(ptr noundef %dev61) #17, !dbg !6345
  %30 = load i32, ptr %rc, align 4, !dbg !6346
  %conv62 = sext i32 %30 to i64, !dbg !6346
  %call63 = call ptr @ERR_PTR(i64 noundef %conv62) #17, !dbg !6347
  store ptr %call63, ptr %retval, align 8, !dbg !6348
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6348

if.end64:                                         ; preds = %if.end56
  %31 = load ptr, ptr %new_bd, align 8, !dbg !6349
  %call65 = call i32 @backlight_register_fb(ptr noundef %31) #17, !dbg !6350
  store i32 %call65, ptr %rc, align 4, !dbg !6351
  %32 = load i32, ptr %rc, align 4, !dbg !6352
  %tobool66 = icmp ne i32 %32, 0, !dbg !6352
  br i1 %tobool66, label %if.then67, label %if.end71, !dbg !6354

if.then67:                                        ; preds = %if.end64
  %33 = load ptr, ptr %new_bd, align 8, !dbg !6355
  %dev68 = getelementptr inbounds %struct.backlight_device, ptr %33, i32 0, i32 6, !dbg !6357
  call void @device_unregister(ptr noundef %dev68) #17, !dbg !6358
  %34 = load i32, ptr %rc, align 4, !dbg !6359
  %conv69 = sext i32 %34 to i64, !dbg !6359
  %call70 = call ptr @ERR_PTR(i64 noundef %conv69) #17, !dbg !6360
  store ptr %call70, ptr %retval, align 8, !dbg !6361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6361

if.end71:                                         ; preds = %if.end64
  %35 = load ptr, ptr %ops.addr, align 8, !dbg !6362
  %36 = load ptr, ptr %new_bd, align 8, !dbg !6363
  %ops72 = getelementptr inbounds %struct.backlight_device, ptr %36, i32 0, i32 3, !dbg !6364
  store ptr %35, ptr %ops72, align 8, !dbg !6365
  call void @mutex_lock(ptr noundef @backlight_dev_list_mutex) #17, !dbg !6366
  %37 = load ptr, ptr %new_bd, align 8, !dbg !6367
  %entry73 = getelementptr inbounds %struct.backlight_device, ptr %37, i32 0, i32 5, !dbg !6368
  call void @list_add(ptr noundef %entry73, ptr noundef @backlight_dev_list) #17, !dbg !6369
  call void @mutex_unlock(ptr noundef @backlight_dev_list_mutex) #17, !dbg !6370
  %38 = load ptr, ptr %new_bd, align 8, !dbg !6371
  %call74 = call i32 @blocking_notifier_call_chain(ptr noundef @backlight_notifier, i64 noundef 0, ptr noundef %38) #17, !dbg !6372
  %39 = load ptr, ptr %new_bd, align 8, !dbg !6373
  store ptr %39, ptr %retval, align 8, !dbg !6374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6374

cleanup:                                          ; preds = %if.end71, %if.then67, %if.then60, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !6375
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_bd) #16, !dbg !6375
  %40 = load ptr, ptr %retval, align 8, !dbg !6375
  ret ptr %40, !dbg !6375
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6376 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6380, metadata !DIExpression()), !dbg !6382
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6381, metadata !DIExpression()), !dbg !6383
  %0 = load i64, ptr %size.addr, align 8, !dbg !6384
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6385
  %or = or i32 %1, 256, !dbg !6386
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6387
  ret ptr %call, !dbg !6388
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6389 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bl_device_release(ptr noundef %dev) #0 align 16 !dbg !6393 {
entry:
  %dev.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6395, metadata !DIExpression()), !dbg !6399
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !6400
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !6396, metadata !DIExpression()), !dbg !6401
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6402
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6397, metadata !DIExpression()), !dbg !6402
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6402
  store ptr %0, ptr %__mptr, align 8, !dbg !6402
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6402
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !6402
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6403
  %2 = load ptr, ptr %tmp, align 8, !dbg !6402
  store ptr %2, ptr %bd, align 8, !dbg !6401
  %3 = load ptr, ptr %bd, align 8, !dbg !6404
  call void @kfree(ptr noundef %3) #17, !dbg !6405
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !6406
  ret void, !dbg !6406
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6407 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #4 align 16 !dbg !6410 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6414, metadata !DIExpression()), !dbg !6416
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6415, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6418
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6419
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !6420
  store ptr %0, ptr %driver_data, align 8, !dbg !6421
  ret void, !dbg !6422
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6423 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6426 dso_local i32 @device_register(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6427 dso_local void @put_device(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @backlight_register_fb(ptr noundef %bd) #4 align 16 !dbg !6428 {
entry:
  %bd.addr = alloca ptr, align 8
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  ret i32 0, !dbg !6432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6433 dso_local void @device_unregister(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6434 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6439, metadata !DIExpression()), !dbg !6441
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6440, metadata !DIExpression()), !dbg !6442
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6443
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6444
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6445
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6446
  %3 = load ptr, ptr %next, align 8, !dbg !6446
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !6447
  ret void, !dbg !6448
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6449 dso_local i32 @blocking_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @backlight_device_get_by_type(i32 noundef %type) #0 align 16 !dbg !6453 {
entry:
  %type.addr = alloca i32, align 4
  %found = alloca i8, align 1
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6457, metadata !DIExpression()), !dbg !6466
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #16, !dbg !6467
  call void @llvm.dbg.declare(metadata ptr %found, metadata !6458, metadata !DIExpression()), !dbg !6468
  store i8 0, ptr %found, align 1, !dbg !6468
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !6469
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !6459, metadata !DIExpression()), !dbg !6470
  call void @mutex_lock(ptr noundef @backlight_dev_list_mutex) #17, !dbg !6471
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6472
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6460, metadata !DIExpression()), !dbg !6472
  %0 = load ptr, ptr @backlight_dev_list, align 8, !dbg !6472
  store ptr %0, ptr %__mptr, align 8, !dbg !6472
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6472
  %add.ptr = getelementptr i8, ptr %1, i64 -128, !dbg !6472
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6473
  %2 = load ptr, ptr %tmp, align 8, !dbg !6472
  store ptr %2, ptr %bd, align 8, !dbg !6473
  br label %for.cond, !dbg !6473

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %bd, align 8, !dbg !6474
  %entry1 = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 5, !dbg !6474
  %cmp = icmp eq ptr %entry1, @backlight_dev_list, !dbg !6474
  %lnot = xor i1 %cmp, true, !dbg !6474
  br i1 %lnot, label %for.body, label %for.end, !dbg !6473

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %bd, align 8, !dbg !6475
  %props = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 0, !dbg !6478
  %type2 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4, !dbg !6479
  %5 = load i32, ptr %type2, align 8, !dbg !6479
  %6 = load i32, ptr %type.addr, align 4, !dbg !6480
  %cmp3 = icmp eq i32 %5, %6, !dbg !6481
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6482

if.then:                                          ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !6483
  br label %for.end, !dbg !6485

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6486

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #16, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !6463, metadata !DIExpression()), !dbg !6487
  %7 = load ptr, ptr %bd, align 8, !dbg !6487
  %entry5 = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 5, !dbg !6487
  %next = getelementptr inbounds %struct.list_head, ptr %entry5, i32 0, i32 0, !dbg !6487
  %8 = load ptr, ptr %next, align 8, !dbg !6487
  store ptr %8, ptr %__mptr4, align 8, !dbg !6487
  %9 = load ptr, ptr %__mptr4, align 8, !dbg !6487
  %add.ptr7 = getelementptr i8, ptr %9, i64 -128, !dbg !6487
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !6487
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #16, !dbg !6474
  %10 = load ptr, ptr %tmp6, align 8, !dbg !6487
  store ptr %10, ptr %bd, align 8, !dbg !6474
  br label %for.cond, !dbg !6474, !llvm.loop !6488

for.end:                                          ; preds = %if.then, %for.cond
  call void @mutex_unlock(ptr noundef @backlight_dev_list_mutex) #17, !dbg !6492
  %11 = load i8, ptr %found, align 1, !dbg !6493, !range !6494, !noundef !882
  %tobool = trunc i8 %11 to i1, !dbg !6493
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6493

cond.true:                                        ; preds = %for.end
  %12 = load ptr, ptr %bd, align 8, !dbg !6495
  br label %cond.end, !dbg !6493

cond.false:                                       ; preds = %for.end
  br label %cond.end, !dbg !6493

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ], !dbg !6493
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !6496
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #16, !dbg !6496
  ret ptr %cond, !dbg !6497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @backlight_device_get_by_name(ptr noundef %name) #0 align 16 !dbg !6498 {
entry:
  %name.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6502, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6503, metadata !DIExpression()), !dbg !6508
  %0 = load ptr, ptr @backlight_class, align 8, !dbg !6509
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6510
  %call = call ptr @class_find_device_by_name(ptr noundef %0, ptr noundef %1) #17, !dbg !6511
  store ptr %call, ptr %dev, align 8, !dbg !6512
  %2 = load ptr, ptr %dev, align 8, !dbg !6513
  %tobool = icmp ne ptr %2, null, !dbg !6513
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6513

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6514
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6504, metadata !DIExpression()), !dbg !6514
  %3 = load ptr, ptr %dev, align 8, !dbg !6514
  store ptr %3, ptr %__mptr, align 8, !dbg !6514
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6514
  %add.ptr = getelementptr i8, ptr %4, i64 -144, !dbg !6514
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6515
  %5 = load ptr, ptr %tmp, align 8, !dbg !6514
  br label %cond.end, !dbg !6513

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6513

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !6513
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !6516
  ret ptr %cond, !dbg !6517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @class_find_device_by_name(ptr noundef %class, ptr noundef %name) #4 align 16 !dbg !6518 {
entry:
  %class.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %class, ptr %class.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !6522, metadata !DIExpression()), !dbg !6524
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6523, metadata !DIExpression()), !dbg !6525
  %0 = load ptr, ptr %class.addr, align 8, !dbg !6526
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6527
  %call = call ptr @class_find_device(ptr noundef %0, ptr noundef null, ptr noundef %1, ptr noundef @device_match_name) #17, !dbg !6528
  ret ptr %call, !dbg !6529
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @backlight_device_unregister(ptr noundef %bd) #0 align 16 !dbg !6530 {
entry:
  %bd.addr = alloca ptr, align 8
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6534, metadata !DIExpression()), !dbg !6535
  %0 = load ptr, ptr %bd.addr, align 8, !dbg !6536
  %tobool = icmp ne ptr %0, null, !dbg !6536
  br i1 %tobool, label %if.end, label %if.then, !dbg !6538

if.then:                                          ; preds = %entry
  br label %return, !dbg !6539

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @backlight_dev_list_mutex) #17, !dbg !6540
  %1 = load ptr, ptr %bd.addr, align 8, !dbg !6541
  %entry1 = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 5, !dbg !6542
  call void @list_del(ptr noundef %entry1) #17, !dbg !6543
  call void @mutex_unlock(ptr noundef @backlight_dev_list_mutex) #17, !dbg !6544
  %2 = load ptr, ptr %bd.addr, align 8, !dbg !6545
  %call = call i32 @blocking_notifier_call_chain(ptr noundef @backlight_notifier, i64 noundef 1, ptr noundef %2) #17, !dbg !6546
  %3 = load ptr, ptr %bd.addr, align 8, !dbg !6547
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 2, !dbg !6548
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !6549
  %4 = load ptr, ptr %bd.addr, align 8, !dbg !6550
  %ops = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 3, !dbg !6551
  store ptr null, ptr %ops, align 8, !dbg !6552
  %5 = load ptr, ptr %bd.addr, align 8, !dbg !6553
  %ops_lock2 = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 2, !dbg !6554
  call void @mutex_unlock(ptr noundef %ops_lock2) #17, !dbg !6555
  %6 = load ptr, ptr %bd.addr, align 8, !dbg !6556
  call void @backlight_unregister_fb(ptr noundef %6) #17, !dbg !6557
  %7 = load ptr, ptr %bd.addr, align 8, !dbg !6558
  %dev = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 6, !dbg !6559
  call void @device_unregister(ptr noundef %dev) #17, !dbg !6560
  br label %return, !dbg !6561

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6561
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !6562 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6566, metadata !DIExpression()), !dbg !6567
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6568
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6569
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6570
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6571
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6572
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6573
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6574
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6575
  ret void, !dbg !6576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @backlight_unregister_fb(ptr noundef %bd) #4 align 16 !dbg !6577 {
entry:
  %bd.addr = alloca ptr, align 8
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6579, metadata !DIExpression()), !dbg !6580
  ret void, !dbg !6581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @backlight_register_notifier(ptr noundef %nb) #0 align 16 !dbg !6582 {
entry:
  %nb.addr = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !6586, metadata !DIExpression()), !dbg !6587
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !6588
  %call = call i32 @blocking_notifier_chain_register(ptr noundef @backlight_notifier, ptr noundef %0) #17, !dbg !6589
  ret i32 %call, !dbg !6590
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6591 dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @backlight_unregister_notifier(ptr noundef %nb) #0 align 16 !dbg !6594 {
entry:
  %nb.addr = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !6596, metadata !DIExpression()), !dbg !6597
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !6598
  %call = call i32 @blocking_notifier_chain_unregister(ptr noundef @backlight_notifier, ptr noundef %0) #17, !dbg !6599
  ret i32 %call, !dbg !6600
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6601 dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %name, ptr noundef %parent, ptr noundef %devdata, ptr noundef %ops, ptr noundef %props) #0 align 16 !dbg !6602 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %devdata.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %props.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %backlight = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6606, metadata !DIExpression()), !dbg !6614
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6607, metadata !DIExpression()), !dbg !6615
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !6608, metadata !DIExpression()), !dbg !6616
  store ptr %devdata, ptr %devdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devdata.addr, metadata !6609, metadata !DIExpression()), !dbg !6617
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !6610, metadata !DIExpression()), !dbg !6618
  store ptr %props, ptr %props.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %props.addr, metadata !6611, metadata !DIExpression()), !dbg !6619
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #16, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !6612, metadata !DIExpression()), !dbg !6621
  call void @llvm.lifetime.start.p0(i64 8, ptr %backlight) #16, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %backlight, metadata !6613, metadata !DIExpression()), !dbg !6622
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_backlight_device_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.7) #17, !dbg !6623
  store ptr %call, ptr %ptr, align 8, !dbg !6624
  %0 = load ptr, ptr %ptr, align 8, !dbg !6625
  %tobool = icmp ne ptr %0, null, !dbg !6625
  br i1 %tobool, label %if.end, label %if.then, !dbg !6627

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !6628
  store ptr %call1, ptr %retval, align 8, !dbg !6629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6629

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6630
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !6631
  %3 = load ptr, ptr %devdata.addr, align 8, !dbg !6632
  %4 = load ptr, ptr %ops.addr, align 8, !dbg !6633
  %5 = load ptr, ptr %props.addr, align 8, !dbg !6634
  %call2 = call ptr @backlight_device_register(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #17, !dbg !6635
  store ptr %call2, ptr %backlight, align 8, !dbg !6636
  %6 = load ptr, ptr %backlight, align 8, !dbg !6637
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %6) #17, !dbg !6639
  br i1 %call3, label %if.else, label %if.then4, !dbg !6640

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %backlight, align 8, !dbg !6641
  %8 = load ptr, ptr %ptr, align 8, !dbg !6643
  store ptr %7, ptr %8, align 8, !dbg !6644
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6645
  %10 = load ptr, ptr %ptr, align 8, !dbg !6646
  call void @devres_add(ptr noundef %9, ptr noundef %10) #17, !dbg !6647
  br label %if.end5, !dbg !6648

if.else:                                          ; preds = %if.end
  %11 = load ptr, ptr %ptr, align 8, !dbg !6649
  call void @devres_free(ptr noundef %11) #17, !dbg !6651
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %12 = load ptr, ptr %backlight, align 8, !dbg !6652
  store ptr %12, ptr %retval, align 8, !dbg !6653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6653

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %backlight) #16, !dbg !6654
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #16, !dbg !6654
  %13 = load ptr, ptr %retval, align 8, !dbg !6654
  ret ptr %13, !dbg !6654
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6655 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_backlight_device_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !6660 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %backlight = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6662, metadata !DIExpression()), !dbg !6665
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6663, metadata !DIExpression()), !dbg !6666
  call void @llvm.lifetime.start.p0(i64 8, ptr %backlight) #16, !dbg !6667
  call void @llvm.dbg.declare(metadata ptr %backlight, metadata !6664, metadata !DIExpression()), !dbg !6668
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6669
  %1 = load ptr, ptr %0, align 8, !dbg !6670
  store ptr %1, ptr %backlight, align 8, !dbg !6668
  %2 = load ptr, ptr %backlight, align 8, !dbg !6671
  call void @backlight_device_unregister(ptr noundef %2) #17, !dbg !6672
  call void @llvm.lifetime.end.p0(i64 8, ptr %backlight) #16, !dbg !6673
  ret void, !dbg !6673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !6674 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6678, metadata !DIExpression()), !dbg !6679
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6680
  %1 = ptrtoint ptr %0 to i64, !dbg !6680
  %2 = inttoptr i64 %1 to ptr, !dbg !6680
  %3 = ptrtoint ptr %2 to i64, !dbg !6680
  %cmp = icmp uge i64 %3, -4095, !dbg !6680
  %lnot = xor i1 %cmp, true, !dbg !6680
  %lnot1 = xor i1 %lnot, true, !dbg !6680
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6680
  %conv = sext i32 %lnot.ext to i64, !dbg !6680
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6680
  %tobool = icmp ne i64 %expval, 0, !dbg !6680
  ret i1 %tobool, !dbg !6681
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6682 dso_local void @devres_add(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6683 dso_local void @devres_free(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @devm_backlight_device_unregister(ptr noundef %dev, ptr noundef %bd) #0 align 16 !dbg !6684 {
entry:
  %dev.addr = alloca ptr, align 8
  %bd.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6688, metadata !DIExpression()), !dbg !6696
  store ptr %bd, ptr %bd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bd.addr, metadata !6689, metadata !DIExpression()), !dbg !6697
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !6698
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6690, metadata !DIExpression()), !dbg !6699
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6700
  %1 = load ptr, ptr %bd.addr, align 8, !dbg !6701
  %call = call i32 @devres_release(ptr noundef %0, ptr noundef @devm_backlight_device_release, ptr noundef @devm_backlight_device_match, ptr noundef %1) #17, !dbg !6702
  store i32 %call, ptr %rc, align 4, !dbg !6703
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6704
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6691, metadata !DIExpression()), !dbg !6704
  %2 = load i32, ptr %rc, align 4, !dbg !6704
  %tobool = icmp ne i32 %2, 0, !dbg !6704
  %lnot = xor i1 %tobool, true, !dbg !6704
  %lnot1 = xor i1 %lnot, true, !dbg !6704
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6704
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6704
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6705
  %tobool2 = icmp ne i32 %3, 0, !dbg !6705
  %lnot3 = xor i1 %tobool2, true, !dbg !6705
  %lnot5 = xor i1 %lnot3, true, !dbg !6705
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !6705
  %conv = sext i32 %lnot.ext6 to i64, !dbg !6705
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6705
  %tobool7 = icmp ne i64 %expval, 0, !dbg !6705
  br i1 %tobool7, label %if.then, label %if.end, !dbg !6704

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6705

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6706
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6693, metadata !DIExpression()), !dbg !6706
  store i32 2305, ptr %__flags, align 4, !dbg !6706
  br label %do.body8, !dbg !6706

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !6707

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6707

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6706

do.body9:                                         ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !6709
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 655, i32 %4, i64 12) #16, !dbg !6709, !srcloc !6711
  br label %do.cond10, !dbg !6709

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6709

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6706

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !6712

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6712

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6705
  br label %do.cond15, !dbg !6706

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6706

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !6706

if.end:                                           ; preds = %do.end16, %entry
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6704
  %tobool17 = icmp ne i32 %5, 0, !dbg !6704
  %lnot18 = xor i1 %tobool17, true, !dbg !6704
  %lnot20 = xor i1 %lnot18, true, !dbg !6704
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !6704
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !6704
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !6704
  store i64 %expval23, ptr %tmp, align 8, !dbg !6705
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6714
  %6 = load i64, ptr %tmp, align 8, !dbg !6704
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !6715
  ret void, !dbg !6715
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6716 dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @devm_backlight_device_match(ptr noundef %dev, ptr noundef %res, ptr noundef %data) #0 align 16 !dbg !6723 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6725, metadata !DIExpression()), !dbg !6729
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6726, metadata !DIExpression()), !dbg !6730
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6727, metadata !DIExpression()), !dbg !6731
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !6732
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6728, metadata !DIExpression()), !dbg !6733
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6734
  store ptr %0, ptr %r, align 8, !dbg !6733
  %1 = load ptr, ptr %r, align 8, !dbg !6735
  %2 = load ptr, ptr %1, align 8, !dbg !6736
  %3 = load ptr, ptr %data.addr, align 8, !dbg !6737
  %cmp = icmp eq ptr %2, %3, !dbg !6738
  %conv = zext i1 %cmp to i32, !dbg !6738
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !6739
  ret i32 %conv, !dbg !6740
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_of_find_backlight(ptr noundef %dev) #0 align 16 !dbg !6741 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6745, metadata !DIExpression()), !dbg !6748
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !6746, metadata !DIExpression()), !dbg !6750
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6747, metadata !DIExpression()), !dbg !6752
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6753
  %call = call ptr @of_find_backlight(ptr noundef %0) #17, !dbg !6754
  store ptr %call, ptr %bd, align 8, !dbg !6755
  %1 = load ptr, ptr %bd, align 8, !dbg !6756
  %call1 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %1) #17, !dbg !6758
  br i1 %call1, label %if.then, label %if.end, !dbg !6759

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bd, align 8, !dbg !6760
  store ptr %2, ptr %retval, align 8, !dbg !6761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6761

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6762
  %4 = load ptr, ptr %bd, align 8, !dbg !6762
  %call2 = call i32 @__devm_add_action_or_reset(ptr noundef %3, ptr noundef @devm_backlight_release, ptr noundef %4, ptr noundef @.str.8) #17, !dbg !6762
  store i32 %call2, ptr %ret, align 4, !dbg !6763
  %5 = load i32, ptr %ret, align 4, !dbg !6764
  %tobool = icmp ne i32 %5, 0, !dbg !6764
  br i1 %tobool, label %if.then3, label %if.end5, !dbg !6766

if.then3:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !6767
  %conv = sext i32 %6 to i64, !dbg !6767
  %call4 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !6768
  store ptr %call4, ptr %retval, align 8, !dbg !6769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6769

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %bd, align 8, !dbg !6770
  store ptr %7, ptr %retval, align 8, !dbg !6771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6771

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !6772
  %8 = load ptr, ptr %retval, align 8, !dbg !6772
  ret ptr %8, !dbg !6772
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @of_find_backlight(ptr noundef %dev) #0 align 16 !dbg !6773 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %np = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6775, metadata !DIExpression()), !dbg !6778
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !6779
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !6776, metadata !DIExpression()), !dbg !6780
  store ptr null, ptr %bd, align 8, !dbg !6780
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #16, !dbg !6781
  call void @llvm.dbg.declare(metadata ptr %np, metadata !6777, metadata !DIExpression()), !dbg !6782
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6783
  %tobool = icmp ne ptr %0, null, !dbg !6783
  br i1 %tobool, label %if.end, label %if.then, !dbg !6785

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6786

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bd, align 8, !dbg !6787
  store ptr %1, ptr %retval, align 8, !dbg !6788
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6788

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #16, !dbg !6789
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !6789
  %2 = load ptr, ptr %retval, align 8, !dbg !6789
  ret ptr %2, !dbg !6789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !6790 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6792, metadata !DIExpression()), !dbg !6793
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6794
  %tobool = icmp ne ptr %0, null, !dbg !6794
  %lnot = xor i1 %tobool, true, !dbg !6794
  %lnot1 = xor i1 %lnot, true, !dbg !6794
  %lnot2 = xor i1 %lnot1, true, !dbg !6794
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6794
  %conv = sext i32 %lnot.ext to i64, !dbg !6794
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6794
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6794
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !6795

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !6796
  %2 = ptrtoint ptr %1 to i64, !dbg !6796
  %3 = inttoptr i64 %2 to ptr, !dbg !6796
  %4 = ptrtoint ptr %3 to i64, !dbg !6796
  %cmp = icmp uge i64 %4, -4095, !dbg !6796
  %lnot5 = xor i1 %cmp, true, !dbg !6796
  %lnot7 = xor i1 %lnot5, true, !dbg !6796
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6796
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !6796
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !6796
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !6795
  br label %lor.end, !dbg !6795

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !6797
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__devm_add_action_or_reset(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name) #4 align 16 !dbg !6798 {
entry:
  %dev.addr = alloca ptr, align 8
  %action.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6802, metadata !DIExpression()), !dbg !6807
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !6803, metadata !DIExpression()), !dbg !6808
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6804, metadata !DIExpression()), !dbg !6809
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6805, metadata !DIExpression()), !dbg !6810
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6811
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6806, metadata !DIExpression()), !dbg !6812
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6813
  %1 = load ptr, ptr %action.addr, align 8, !dbg !6814
  %2 = load ptr, ptr %data.addr, align 8, !dbg !6815
  %3 = load ptr, ptr %name.addr, align 8, !dbg !6816
  %call = call i32 @__devm_add_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17, !dbg !6817
  store i32 %call, ptr %ret, align 4, !dbg !6818
  %4 = load i32, ptr %ret, align 4, !dbg !6819
  %tobool = icmp ne i32 %4, 0, !dbg !6819
  br i1 %tobool, label %if.then, label %if.end, !dbg !6821

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %action.addr, align 8, !dbg !6822
  %6 = load ptr, ptr %data.addr, align 8, !dbg !6823
  call void %5(ptr noundef %6) #17, !dbg !6822
  br label %if.end, !dbg !6822

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !6824
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6825
  ret i32 %7, !dbg !6826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_backlight_release(ptr noundef %data) #0 align 16 !dbg !6827 {
entry:
  %data.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6829, metadata !DIExpression()), !dbg !6831
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !6830, metadata !DIExpression()), !dbg !6833
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6834
  store ptr %0, ptr %bd, align 8, !dbg !6833
  %1 = load ptr, ptr %bd, align 8, !dbg !6835
  %dev = getelementptr inbounds %struct.backlight_device, ptr %1, i32 0, i32 6, !dbg !6836
  call void @put_device(ptr noundef %dev) #17, !dbg !6837
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !6838
  ret void, !dbg !6838
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @backlight_class_exit() #9 section ".exit.text" align 16 !dbg !6839 {
entry:
  %0 = load ptr, ptr @backlight_class, align 8, !dbg !6840
  call void @class_destroy(ptr noundef %0) #17, !dbg !6841
  ret void, !dbg !6842
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6843 dso_local void @class_destroy(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_backlight__361_774_backlight_class_init2() #9 section ".init.text" align 16 !dbg !6844 {
entry:
  %call = call i32 @backlight_class_init() #18, !dbg !6845
  ret i32 %call, !dbg !6845
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @backlight_class_init() #9 section ".init.text" align 16 !dbg !5967 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %call = call ptr @class_create(ptr noundef @.str.14) #17, !dbg !6846
  store ptr %call, ptr @backlight_class, align 8, !dbg !6847
  %0 = load ptr, ptr @backlight_class, align 8, !dbg !6848
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #17, !dbg !6850
  br i1 %call1, label %if.then, label %if.end, !dbg !6851

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6852

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !6855

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr @backlight_class, align 8, !dbg !6852
  %call2 = call i64 @PTR_ERR(ptr noundef %1) #17, !dbg !6852
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, i64 noundef %call2) #18, !dbg !6852
  store i32 %call3, ptr %tmp, align 4, !dbg !6855
  %2 = load i32, ptr %tmp, align 4, !dbg !6852
  %3 = load ptr, ptr @backlight_class, align 8, !dbg !6857
  %call4 = call i64 @PTR_ERR(ptr noundef %3) #17, !dbg !6858
  %conv = trunc i64 %call4 to i32, !dbg !6858
  store i32 %conv, ptr %retval, align 4, !dbg !6859
  br label %return, !dbg !6859

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @backlight_class, align 8, !dbg !6860
  %dev_groups = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 2, !dbg !6861
  store ptr @bl_device_groups, ptr %dev_groups, align 8, !dbg !6862
  %5 = load ptr, ptr @backlight_class, align 8, !dbg !6863
  %pm = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 11, !dbg !6864
  store ptr @backlight_class_dev_pm_ops, ptr %pm, align 8, !dbg !6865
  call void @INIT_LIST_HEAD(ptr noundef @backlight_dev_list) #17, !dbg !6866
  br label %do.body5, !dbg !6867

do.body5:                                         ; preds = %if.end
  call void @__mutex_init(ptr noundef @backlight_dev_list_mutex, ptr noundef @.str.16, ptr noundef @backlight_class_init.__key) #17, !dbg !6868
  br label %do.end6, !dbg !6868

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !6870

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !6871

do.body8:                                         ; preds = %do.body7
  call void @__init_rwsem(ptr noundef @backlight_notifier, ptr noundef @.str.18, ptr noundef @backlight_class_init.__key.17) #17, !dbg !6873
  br label %do.end9, !dbg !6873

do.end9:                                          ; preds = %do.body8
  store ptr null, ptr getelementptr inbounds (%struct.blocking_notifier_head, ptr @backlight_notifier, i32 0, i32 1), align 8, !dbg !6871
  br label %do.end10, !dbg !6871

do.end10:                                         ; preds = %do.end9
  store i32 0, ptr %retval, align 4, !dbg !6875
  br label %return, !dbg !6875

return:                                           ; preds = %do.end10, %do.end
  %6 = load i32, ptr %retval, align 4, !dbg !6876
  ret i32 %6, !dbg !6876
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6877 dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6881 dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6884 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6886, metadata !DIExpression()), !dbg !6891
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6887, metadata !DIExpression()), !dbg !6892
  %0 = load i64, ptr %size.addr, align 8, !dbg !6893
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6894
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6895

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6896
  %tobool = icmp ne i64 %2, 0, !dbg !6896
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6897

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6898
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6888, metadata !DIExpression()), !dbg !6899
  %3 = load i64, ptr %size.addr, align 8, !dbg !6900
  %cmp = icmp ugt i64 %3, 8192, !dbg !6902
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6903

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6904
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6905
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6906
  store ptr %call, ptr %retval, align 8, !dbg !6907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6907

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6908
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6908
  store i32 %call2, ptr %index, align 4, !dbg !6909
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6910
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6911
  %9 = ptrtoint ptr %8 to i64, !dbg !6911
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6912
  %idxprom = zext i32 %call3 to i64, !dbg !6913
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6913
  %10 = load i32, ptr %index, align 4, !dbg !6914
  %idxprom4 = zext i32 %10 to i64, !dbg !6913
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6913
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6913
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6915
  %13 = load i64, ptr %size.addr, align 8, !dbg !6916
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6917
  store ptr %call6, ptr %retval, align 8, !dbg !6918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6918

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6919
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6920
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6921
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6922
  store ptr %call8, ptr %retval, align 8, !dbg !6923
  br label %return, !dbg !6923

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6924
  ret ptr %16, !dbg !6924
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6925 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #13 align 16 !dbg !6926 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6930, metadata !DIExpression()), !dbg !6932
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6931, metadata !DIExpression()), !dbg !6933
  %0 = load i64, ptr %size.addr, align 8, !dbg !6934
  %tobool = icmp ne i64 %0, 0, !dbg !6934
  br i1 %tobool, label %if.end, label %if.then, !dbg !6936

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6937
  br label %return, !dbg !6937

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6938
  %cmp = icmp ule i64 %1, 8, !dbg !6940
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6941

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6942
  br label %return, !dbg !6942

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6943
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6945
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6946

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6947
  %cmp4 = icmp ule i64 %3, 96, !dbg !6948
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6949

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6950
  br label %return, !dbg !6950

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6951
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6953
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6954

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6955
  %cmp9 = icmp ule i64 %5, 192, !dbg !6956
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6957

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6958
  br label %return, !dbg !6958

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6959
  %cmp12 = icmp ule i64 %6, 8, !dbg !6961
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6962

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6963
  br label %return, !dbg !6963

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6964
  %cmp15 = icmp ule i64 %7, 16, !dbg !6966
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6967

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6968
  br label %return, !dbg !6968

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6969
  %cmp18 = icmp ule i64 %8, 32, !dbg !6971
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6972

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6973
  br label %return, !dbg !6973

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6974
  %cmp21 = icmp ule i64 %9, 64, !dbg !6976
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6977

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6978
  br label %return, !dbg !6978

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6979
  %cmp24 = icmp ule i64 %10, 128, !dbg !6981
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6982

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6983
  br label %return, !dbg !6983

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6984
  %cmp27 = icmp ule i64 %11, 256, !dbg !6986
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6987

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6988
  br label %return, !dbg !6988

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6989
  %cmp30 = icmp ule i64 %12, 512, !dbg !6991
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6992

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6993
  br label %return, !dbg !6993

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6994
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6996
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6997

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6998
  br label %return, !dbg !6998

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6999
  %cmp36 = icmp ule i64 %14, 2048, !dbg !7001
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !7002

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !7003
  br label %return, !dbg !7003

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !7004
  %cmp39 = icmp ule i64 %15, 4096, !dbg !7006
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !7007

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !7008
  br label %return, !dbg !7008

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !7009
  %cmp42 = icmp ule i64 %16, 8192, !dbg !7011
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !7012

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !7013
  br label %return, !dbg !7013

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !7014
  %cmp45 = icmp ule i64 %17, 16384, !dbg !7016
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !7017

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !7018
  br label %return, !dbg !7018

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !7019
  %cmp48 = icmp ule i64 %18, 32768, !dbg !7021
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !7022

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !7023
  br label %return, !dbg !7023

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !7024
  %cmp51 = icmp ule i64 %19, 65536, !dbg !7026
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !7027

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !7028
  br label %return, !dbg !7028

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !7029
  %cmp54 = icmp ule i64 %20, 131072, !dbg !7031
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !7032

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !7033
  br label %return, !dbg !7033

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !7034
  %cmp57 = icmp ule i64 %21, 262144, !dbg !7036
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !7037

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !7038
  br label %return, !dbg !7038

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !7039
  %cmp60 = icmp ule i64 %22, 524288, !dbg !7041
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !7042

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !7043
  br label %return, !dbg !7043

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !7044
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !7046
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !7047

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !7048
  br label %return, !dbg !7048

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !7049
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !7051
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !7052

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !7053
  br label %return, !dbg !7053

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !7054, !range !6494, !noundef !882
  %tobool69 = trunc i8 %25 to i1, !dbg !7054
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !7056

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !7057

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_231() #21, !dbg !7058, !srcloc !7061
  unreachable, !dbg !7058

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !7062

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !7063

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !7064

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !7066

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !7064

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.13, i32 480, i32 0, i64 12) #16, !dbg !7068, !srcloc !7070
  br label %do.end75, !dbg !7068

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !7064

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !7071
  br label %return, !dbg !7071

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !7072
  ret i32 %26, !dbg !7072
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !7073 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #13 align 16 !dbg !7076 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7080, metadata !DIExpression()), !dbg !7082
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !7081, metadata !DIExpression()), !dbg !7083
  %0 = load i32, ptr %flags.addr, align 4, !dbg !7084
  %and = and i32 %0, 17, !dbg !7084
  %cmp = icmp eq i32 %and, 0, !dbg !7084
  %lnot = xor i1 %cmp, true, !dbg !7084
  %lnot1 = xor i1 %lnot, true, !dbg !7084
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7084
  %conv = sext i32 %lnot.ext to i64, !dbg !7084
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !7084
  %tobool = icmp ne i64 %expval, 0, !dbg !7084
  br i1 %tobool, label %if.then, label %if.end, !dbg !7086

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7087
  br label %return, !dbg !7087

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7088
  %and2 = and i32 %1, 1, !dbg !7090
  %tobool3 = icmp ne i32 %and2, 0, !dbg !7090
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !7091

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !7092
  br label %return, !dbg !7092

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !7093
  br label %return, !dbg !7093

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !7095
  ret i32 %2, !dbg !7095
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !7096 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !7097 dso_local void @__compiletime_assert_231() #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7098 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !7101 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7105, metadata !DIExpression()), !dbg !7108
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7106, metadata !DIExpression()), !dbg !7109
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7107, metadata !DIExpression()), !dbg !7110
  %0 = load ptr, ptr %new.addr, align 8, !dbg !7111
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !7113
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7114
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !7115
  br i1 %call, label %if.end, label %if.then, !dbg !7116

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !7117

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !7118
  %4 = load ptr, ptr %next.addr, align 8, !dbg !7119
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !7120
  store ptr %3, ptr %prev1, align 8, !dbg !7121
  %5 = load ptr, ptr %next.addr, align 8, !dbg !7122
  %6 = load ptr, ptr %new.addr, align 8, !dbg !7123
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !7124
  store ptr %5, ptr %next2, align 8, !dbg !7125
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !7126
  %8 = load ptr, ptr %new.addr, align 8, !dbg !7127
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !7128
  store ptr %7, ptr %prev3, align 8, !dbg !7129
  br label %do.body, !dbg !7130

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !7131

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !7133

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !7131

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !7135
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !7135
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !7135
  store volatile ptr %9, ptr %next6, align 8, !dbg !7135
  br label %do.end7, !dbg !7135

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !7131

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !7137
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !7138 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !7142, metadata !DIExpression()), !dbg !7145
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7143, metadata !DIExpression()), !dbg !7146
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7144, metadata !DIExpression()), !dbg !7147
  ret i1 true, !dbg !7148
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7149 dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !7155 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7157, metadata !DIExpression()), !dbg !7158
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !7159
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !7161
  br i1 %call, label %if.end, label %if.then, !dbg !7162

if.then:                                          ; preds = %entry
  br label %return, !dbg !7163

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !7164
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7165
  %2 = load ptr, ptr %prev, align 8, !dbg !7165
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !7166
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7167
  %4 = load ptr, ptr %next, align 8, !dbg !7167
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !7168
  br label %return, !dbg !7169

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !7169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !7170 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !7174, metadata !DIExpression()), !dbg !7175
  ret i1 true, !dbg !7176
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !7177 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !7179, metadata !DIExpression()), !dbg !7181
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !7180, metadata !DIExpression()), !dbg !7182
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !7183
  %1 = load ptr, ptr %next.addr, align 8, !dbg !7184
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !7185
  store ptr %0, ptr %prev1, align 8, !dbg !7186
  br label %do.body, !dbg !7187

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !7188

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !7190

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !7188

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !7192
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !7192
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !7192
  store volatile ptr %2, ptr %next4, align 8, !dbg !7192
  br label %do.end5, !dbg !7192

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !7188

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !7194
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7195 dso_local i32 @__devm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7196 dso_local ptr @class_create(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7199 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !7203 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7207, metadata !DIExpression()), !dbg !7208
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7209
  %1 = ptrtoint ptr %0 to i64, !dbg !7210
  ret i64 %1, !dbg !7211
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !7212 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !7214, metadata !DIExpression()), !dbg !7215
  br label %do.body, !dbg !7216

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7217

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7219

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !7217

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !7221
  %1 = load ptr, ptr %list.addr, align 8, !dbg !7221
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !7221
  store volatile ptr %0, ptr %next, align 8, !dbg !7221
  br label %do.end3, !dbg !7221

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !7217

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !7223

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !7224

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !7226

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !7224

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !7228
  %3 = load ptr, ptr %list.addr, align 8, !dbg !7228
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !7228
  store volatile ptr %2, ptr %prev, align 8, !dbg !7228
  br label %do.end9, !dbg !7228

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !7224

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !7230
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7231 dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bl_power_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7235 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7237, metadata !DIExpression()), !dbg !7243
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7238, metadata !DIExpression()), !dbg !7244
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7239, metadata !DIExpression()), !dbg !7245
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7246
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7240, metadata !DIExpression()), !dbg !7247
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7248
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7241, metadata !DIExpression()), !dbg !7248
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7248
  store ptr %0, ptr %__mptr, align 8, !dbg !7248
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7248
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7248
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7248
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7249
  %2 = load ptr, ptr %tmp, align 8, !dbg !7248
  store ptr %2, ptr %bd, align 8, !dbg !7247
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7250
  %4 = load ptr, ptr %bd, align 8, !dbg !7251
  %props = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 0, !dbg !7252
  %power = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 2, !dbg !7253
  %5 = load i32, ptr %power, align 8, !dbg !7253
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.20, i32 noundef %5) #17, !dbg !7254
  %conv = sext i32 %call to i64, !dbg !7254
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7255
  ret i64 %conv, !dbg !7256
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bl_power_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !7257 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %power = alloca i64, align 8
  %old_power = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7259, metadata !DIExpression()), !dbg !7269
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7260, metadata !DIExpression()), !dbg !7270
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7261, metadata !DIExpression()), !dbg !7271
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7262, metadata !DIExpression()), !dbg !7272
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !7273
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !7263, metadata !DIExpression()), !dbg !7274
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7275
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7264, metadata !DIExpression()), !dbg !7276
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7277
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7265, metadata !DIExpression()), !dbg !7277
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7277
  store ptr %0, ptr %__mptr, align 8, !dbg !7277
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7277
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7277
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7277
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7278
  %2 = load ptr, ptr %tmp, align 8, !dbg !7277
  store ptr %2, ptr %bd, align 8, !dbg !7276
  call void @llvm.lifetime.start.p0(i64 8, ptr %power) #16, !dbg !7279
  call void @llvm.dbg.declare(metadata ptr %power, metadata !7267, metadata !DIExpression()), !dbg !7280
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_power) #16, !dbg !7279
  call void @llvm.dbg.declare(metadata ptr %old_power, metadata !7268, metadata !DIExpression()), !dbg !7281
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7282
  %call = call i32 @kstrtoul(ptr noundef %3, i32 noundef 0, ptr noundef %power) #17, !dbg !7283
  store i32 %call, ptr %rc, align 4, !dbg !7284
  %4 = load i32, ptr %rc, align 4, !dbg !7285
  %tobool = icmp ne i32 %4, 0, !dbg !7285
  br i1 %tobool, label %if.then, label %if.end, !dbg !7287

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4, !dbg !7288
  %conv = sext i32 %5 to i64, !dbg !7288
  store i64 %conv, ptr %retval, align 8, !dbg !7289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7289

if.end:                                           ; preds = %entry
  store i32 -6, ptr %rc, align 4, !dbg !7290
  %6 = load ptr, ptr %bd, align 8, !dbg !7291
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 2, !dbg !7292
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !7293
  %7 = load ptr, ptr %bd, align 8, !dbg !7294
  %ops = getelementptr inbounds %struct.backlight_device, ptr %7, i32 0, i32 3, !dbg !7296
  %8 = load ptr, ptr %ops, align 8, !dbg !7296
  %tobool1 = icmp ne ptr %8, null, !dbg !7294
  br i1 %tobool1, label %if.then2, label %if.end25, !dbg !7297

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %tmp3, align 4, !dbg !7298
  %9 = load i32, ptr %tmp3, align 4, !dbg !7302
  %10 = load ptr, ptr %bd, align 8, !dbg !7303
  %props = getelementptr inbounds %struct.backlight_device, ptr %10, i32 0, i32 0, !dbg !7305
  %power4 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 2, !dbg !7306
  %11 = load i32, ptr %power4, align 8, !dbg !7306
  %conv5 = sext i32 %11 to i64, !dbg !7303
  %12 = load i64, ptr %power, align 8, !dbg !7307
  %cmp = icmp ne i64 %conv5, %12, !dbg !7308
  br i1 %cmp, label %if.then7, label %if.else22, !dbg !7309

if.then7:                                         ; preds = %if.then2
  %13 = load ptr, ptr %bd, align 8, !dbg !7310
  %props8 = getelementptr inbounds %struct.backlight_device, ptr %13, i32 0, i32 0, !dbg !7312
  %power9 = getelementptr inbounds %struct.backlight_properties, ptr %props8, i32 0, i32 2, !dbg !7313
  %14 = load i32, ptr %power9, align 8, !dbg !7313
  %conv10 = sext i32 %14 to i64, !dbg !7310
  store i64 %conv10, ptr %old_power, align 8, !dbg !7314
  %15 = load i64, ptr %power, align 8, !dbg !7315
  %conv11 = trunc i64 %15 to i32, !dbg !7315
  %16 = load ptr, ptr %bd, align 8, !dbg !7316
  %props12 = getelementptr inbounds %struct.backlight_device, ptr %16, i32 0, i32 0, !dbg !7317
  %power13 = getelementptr inbounds %struct.backlight_properties, ptr %props12, i32 0, i32 2, !dbg !7318
  store i32 %conv11, ptr %power13, align 8, !dbg !7319
  %17 = load ptr, ptr %bd, align 8, !dbg !7320
  %call14 = call i32 @backlight_update_status(ptr noundef %17) #17, !dbg !7321
  store i32 %call14, ptr %rc, align 4, !dbg !7322
  %18 = load i32, ptr %rc, align 4, !dbg !7323
  %tobool15 = icmp ne i32 %18, 0, !dbg !7323
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !7325

if.then16:                                        ; preds = %if.then7
  %19 = load i64, ptr %old_power, align 8, !dbg !7326
  %conv17 = trunc i64 %19 to i32, !dbg !7326
  %20 = load ptr, ptr %bd, align 8, !dbg !7327
  %props18 = getelementptr inbounds %struct.backlight_device, ptr %20, i32 0, i32 0, !dbg !7328
  %power19 = getelementptr inbounds %struct.backlight_properties, ptr %props18, i32 0, i32 2, !dbg !7329
  store i32 %conv17, ptr %power19, align 8, !dbg !7330
  br label %if.end21, !dbg !7327

if.else:                                          ; preds = %if.then7
  %21 = load i64, ptr %count.addr, align 8, !dbg !7331
  %conv20 = trunc i64 %21 to i32, !dbg !7331
  store i32 %conv20, ptr %rc, align 4, !dbg !7332
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then16
  br label %if.end24, !dbg !7333

if.else22:                                        ; preds = %if.then2
  %22 = load i64, ptr %count.addr, align 8, !dbg !7334
  %conv23 = trunc i64 %22 to i32, !dbg !7334
  store i32 %conv23, ptr %rc, align 4, !dbg !7336
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.end21
  br label %if.end25, !dbg !7337

if.end25:                                         ; preds = %if.end24, %if.end
  %23 = load ptr, ptr %bd, align 8, !dbg !7338
  %ops_lock26 = getelementptr inbounds %struct.backlight_device, ptr %23, i32 0, i32 2, !dbg !7339
  call void @mutex_unlock(ptr noundef %ops_lock26) #17, !dbg !7340
  %24 = load i32, ptr %rc, align 4, !dbg !7341
  %conv27 = sext i32 %24 to i64, !dbg !7341
  store i64 %conv27, ptr %retval, align 8, !dbg !7342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7342

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_power) #16, !dbg !7343
  call void @llvm.lifetime.end.p0(i64 8, ptr %power) #16, !dbg !7343
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7343
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !7343
  %25 = load i64, ptr %retval, align 8, !dbg !7343
  ret i64 %25, !dbg !7343
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7344 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #4 align 16 !dbg !7348 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7353, metadata !DIExpression()), !dbg !7356
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !7354, metadata !DIExpression()), !dbg !7357
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7355, metadata !DIExpression()), !dbg !7358
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7359
  %1 = load i32, ptr %base.addr, align 4, !dbg !7361
  %2 = load ptr, ptr %res.addr, align 8, !dbg !7362
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #17, !dbg !7363
  ret i32 %call, !dbg !7364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7365 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @brightness_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7368 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7370, metadata !DIExpression()), !dbg !7376
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7371, metadata !DIExpression()), !dbg !7377
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7372, metadata !DIExpression()), !dbg !7378
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7379
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7373, metadata !DIExpression()), !dbg !7380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7381
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7374, metadata !DIExpression()), !dbg !7381
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7381
  store ptr %0, ptr %__mptr, align 8, !dbg !7381
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7381
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7381
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7382
  %2 = load ptr, ptr %tmp, align 8, !dbg !7381
  store ptr %2, ptr %bd, align 8, !dbg !7380
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7383
  %4 = load ptr, ptr %bd, align 8, !dbg !7384
  %props = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 0, !dbg !7385
  %brightness = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 0, !dbg !7386
  %5 = load i32, ptr %brightness, align 8, !dbg !7386
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.20, i32 noundef %5) #17, !dbg !7387
  %conv = sext i32 %call to i64, !dbg !7387
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7388
  ret i64 %conv, !dbg !7389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @brightness_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !7390 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %rc = alloca i32, align 4
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %brightness = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7392, metadata !DIExpression()), !dbg !7401
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7393, metadata !DIExpression()), !dbg !7402
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7394, metadata !DIExpression()), !dbg !7403
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7395, metadata !DIExpression()), !dbg !7404
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !7405
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !7396, metadata !DIExpression()), !dbg !7406
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7407
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7397, metadata !DIExpression()), !dbg !7408
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7409
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7398, metadata !DIExpression()), !dbg !7409
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7409
  store ptr %0, ptr %__mptr, align 8, !dbg !7409
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7409
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7409
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7409
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7410
  %2 = load ptr, ptr %tmp, align 8, !dbg !7409
  store ptr %2, ptr %bd, align 8, !dbg !7408
  call void @llvm.lifetime.start.p0(i64 8, ptr %brightness) #16, !dbg !7411
  call void @llvm.dbg.declare(metadata ptr %brightness, metadata !7400, metadata !DIExpression()), !dbg !7412
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7413
  %call = call i32 @kstrtoul(ptr noundef %3, i32 noundef 0, ptr noundef %brightness) #17, !dbg !7414
  store i32 %call, ptr %rc, align 4, !dbg !7415
  %4 = load i32, ptr %rc, align 4, !dbg !7416
  %tobool = icmp ne i32 %4, 0, !dbg !7416
  br i1 %tobool, label %if.then, label %if.end, !dbg !7418

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %rc, align 4, !dbg !7419
  %conv = sext i32 %5 to i64, !dbg !7419
  store i64 %conv, ptr %retval, align 8, !dbg !7420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7420

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %bd, align 8, !dbg !7421
  %7 = load i64, ptr %brightness, align 8, !dbg !7422
  %call1 = call i32 @backlight_device_set_brightness(ptr noundef %6, i64 noundef %7) #17, !dbg !7423
  store i32 %call1, ptr %rc, align 4, !dbg !7424
  %8 = load i32, ptr %rc, align 4, !dbg !7425
  %tobool2 = icmp ne i32 %8, 0, !dbg !7425
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !7425

cond.true:                                        ; preds = %if.end
  %9 = load i32, ptr %rc, align 4, !dbg !7426
  %conv3 = sext i32 %9 to i64, !dbg !7426
  br label %cond.end, !dbg !7425

cond.false:                                       ; preds = %if.end
  %10 = load i64, ptr %count.addr, align 8, !dbg !7427
  br label %cond.end, !dbg !7425

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv3, %cond.true ], [ %10, %cond.false ], !dbg !7425
  store i64 %cond, ptr %retval, align 8, !dbg !7428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7428

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %brightness) #16, !dbg !7429
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7429
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !7429
  %11 = load i64, ptr %retval, align 8, !dbg !7429
  ret i64 %11, !dbg !7429
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @actual_brightness_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7430 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7432, metadata !DIExpression()), !dbg !7439
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7433, metadata !DIExpression()), !dbg !7440
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7434, metadata !DIExpression()), !dbg !7441
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !7442
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !7435, metadata !DIExpression()), !dbg !7443
  store i32 -6, ptr %rc, align 4, !dbg !7443
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7444
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7436, metadata !DIExpression()), !dbg !7445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7446
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7437, metadata !DIExpression()), !dbg !7446
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7446
  store ptr %0, ptr %__mptr, align 8, !dbg !7446
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7446
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7446
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7447
  %2 = load ptr, ptr %tmp, align 8, !dbg !7446
  store ptr %2, ptr %bd, align 8, !dbg !7445
  %3 = load ptr, ptr %bd, align 8, !dbg !7448
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 2, !dbg !7449
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !7450
  %4 = load ptr, ptr %bd, align 8, !dbg !7451
  %ops = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 3, !dbg !7453
  %5 = load ptr, ptr %ops, align 8, !dbg !7453
  %tobool = icmp ne ptr %5, null, !dbg !7451
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !7454

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %bd, align 8, !dbg !7455
  %ops1 = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3, !dbg !7456
  %7 = load ptr, ptr %ops1, align 8, !dbg !7456
  %get_brightness = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 2, !dbg !7457
  %8 = load ptr, ptr %get_brightness, align 8, !dbg !7457
  %tobool2 = icmp ne ptr %8, null, !dbg !7455
  br i1 %tobool2, label %if.then, label %if.else, !dbg !7458

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %bd, align 8, !dbg !7459
  %ops3 = getelementptr inbounds %struct.backlight_device, ptr %9, i32 0, i32 3, !dbg !7461
  %10 = load ptr, ptr %ops3, align 8, !dbg !7461
  %get_brightness4 = getelementptr inbounds %struct.backlight_ops, ptr %10, i32 0, i32 2, !dbg !7462
  %11 = load ptr, ptr %get_brightness4, align 8, !dbg !7462
  %12 = load ptr, ptr %bd, align 8, !dbg !7463
  %call = call i32 %11(ptr noundef %12) #17, !dbg !7459
  store i32 %call, ptr %rc, align 4, !dbg !7464
  %13 = load i32, ptr %rc, align 4, !dbg !7465
  %cmp = icmp sge i32 %13, 0, !dbg !7467
  br i1 %cmp, label %if.then5, label %if.end, !dbg !7468

if.then5:                                         ; preds = %if.then
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !7469
  %15 = load i32, ptr %rc, align 4, !dbg !7470
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef @.str.20, i32 noundef %15) #17, !dbg !7471
  store i32 %call6, ptr %rc, align 4, !dbg !7472
  br label %if.end, !dbg !7473

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end8, !dbg !7474

if.else:                                          ; preds = %land.lhs.true, %entry
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !7475
  %17 = load ptr, ptr %bd, align 8, !dbg !7477
  %props = getelementptr inbounds %struct.backlight_device, ptr %17, i32 0, i32 0, !dbg !7478
  %brightness = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 0, !dbg !7479
  %18 = load i32, ptr %brightness, align 8, !dbg !7479
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef @.str.20, i32 noundef %18) #17, !dbg !7480
  store i32 %call7, ptr %rc, align 4, !dbg !7481
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  %19 = load ptr, ptr %bd, align 8, !dbg !7482
  %ops_lock9 = getelementptr inbounds %struct.backlight_device, ptr %19, i32 0, i32 2, !dbg !7483
  call void @mutex_unlock(ptr noundef %ops_lock9) #17, !dbg !7484
  %20 = load i32, ptr %rc, align 4, !dbg !7485
  %conv = sext i32 %20 to i64, !dbg !7485
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7486
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !7486
  ret i64 %conv, !dbg !7487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_brightness_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7488 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7490, metadata !DIExpression()), !dbg !7496
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7491, metadata !DIExpression()), !dbg !7497
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7492, metadata !DIExpression()), !dbg !7498
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7499
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7493, metadata !DIExpression()), !dbg !7500
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7501
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7494, metadata !DIExpression()), !dbg !7501
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7501
  store ptr %0, ptr %__mptr, align 8, !dbg !7501
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7501
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7501
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7501
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7502
  %2 = load ptr, ptr %tmp, align 8, !dbg !7501
  store ptr %2, ptr %bd, align 8, !dbg !7500
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7503
  %4 = load ptr, ptr %bd, align 8, !dbg !7504
  %props = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 0, !dbg !7505
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1, !dbg !7506
  %5 = load i32, ptr %max_brightness, align 4, !dbg !7506
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.20, i32 noundef %5) #17, !dbg !7507
  %conv = sext i32 %call to i64, !dbg !7507
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7508
  ret i64 %conv, !dbg !7509
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @scale_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7510 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp16 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7512, metadata !DIExpression()), !dbg !7524
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7513, metadata !DIExpression()), !dbg !7525
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7514, metadata !DIExpression()), !dbg !7526
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7527
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7515, metadata !DIExpression()), !dbg !7528
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7529
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7516, metadata !DIExpression()), !dbg !7529
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7529
  store ptr %0, ptr %__mptr, align 8, !dbg !7529
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7529
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7529
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7530
  %2 = load ptr, ptr %tmp, align 8, !dbg !7529
  store ptr %2, ptr %bd, align 8, !dbg !7528
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7531
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !7518, metadata !DIExpression()), !dbg !7531
  %3 = load ptr, ptr %bd, align 8, !dbg !7531
  %props = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 0, !dbg !7531
  %scale = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 6, !dbg !7531
  %4 = load i32, ptr %scale, align 8, !dbg !7531
  %cmp = icmp ugt i32 %4, 2, !dbg !7531
  %lnot = xor i1 %cmp, true, !dbg !7531
  %lnot1 = xor i1 %lnot, true, !dbg !7531
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7531
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !7531
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !7532
  %tobool = icmp ne i32 %5, 0, !dbg !7532
  %lnot2 = xor i1 %tobool, true, !dbg !7532
  %lnot4 = xor i1 %lnot2, true, !dbg !7532
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !7532
  %conv = sext i32 %lnot.ext5 to i64, !dbg !7532
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7532
  %tobool6 = icmp ne i64 %expval, 0, !dbg !7532
  br i1 %tobool6, label %if.then, label %if.end, !dbg !7531

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7532

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !7533
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !7521, metadata !DIExpression()), !dbg !7533
  store i32 2305, ptr %__flags, align 4, !dbg !7533
  br label %do.body7, !dbg !7533

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !7534

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !7534

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !7533

do.body8:                                         ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !7536
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 313, i32 %6, i64 12) #16, !dbg !7536, !srcloc !7538
  br label %do.cond9, !dbg !7536

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !7536

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !7533

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !7539

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7539

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !7532
  br label %do.cond14, !dbg !7533

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !7533

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !7533

if.end:                                           ; preds = %do.end15, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !7531
  %tobool17 = icmp ne i32 %7, 0, !dbg !7531
  %lnot18 = xor i1 %tobool17, true, !dbg !7531
  %lnot20 = xor i1 %lnot18, true, !dbg !7531
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !7531
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !7531
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !7531
  store i64 %expval23, ptr %tmp16, align 8, !dbg !7532
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !7541
  %8 = load i64, ptr %tmp16, align 8, !dbg !7531
  %tobool24 = icmp ne i64 %8, 0, !dbg !7541
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !7542

if.then25:                                        ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !7543
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %9, ptr noundef @.str.24) #17, !dbg !7544
  %conv26 = sext i32 %call to i64, !dbg !7544
  store i64 %conv26, ptr %retval, align 8, !dbg !7545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7545

if.end27:                                         ; preds = %if.end
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !7546
  %11 = load ptr, ptr %bd, align 8, !dbg !7547
  %props28 = getelementptr inbounds %struct.backlight_device, ptr %11, i32 0, i32 0, !dbg !7548
  %scale29 = getelementptr inbounds %struct.backlight_properties, ptr %props28, i32 0, i32 6, !dbg !7549
  %12 = load i32, ptr %scale29, align 8, !dbg !7549
  %idxprom = zext i32 %12 to i64, !dbg !7550
  %arrayidx = getelementptr [3 x ptr], ptr @backlight_scale_types, i64 0, i64 %idxprom, !dbg !7550
  %13 = load ptr, ptr %arrayidx, align 8, !dbg !7550
  %call30 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %10, ptr noundef @.str.25, ptr noundef %13) #17, !dbg !7551
  %conv31 = sext i32 %call30 to i64, !dbg !7551
  store i64 %conv31, ptr %retval, align 8, !dbg !7552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7552

cleanup:                                          ; preds = %if.end27, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7553
  %14 = load i64, ptr %retval, align 8, !dbg !7553
  ret i64 %14, !dbg !7553
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7554 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7556, metadata !DIExpression()), !dbg !7562
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7557, metadata !DIExpression()), !dbg !7563
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7558, metadata !DIExpression()), !dbg !7564
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7565
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7559, metadata !DIExpression()), !dbg !7566
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7567
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7560, metadata !DIExpression()), !dbg !7567
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7567
  store ptr %0, ptr %__mptr, align 8, !dbg !7567
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7567
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7567
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7568
  %2 = load ptr, ptr %tmp, align 8, !dbg !7567
  store ptr %2, ptr %bd, align 8, !dbg !7566
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7569
  %4 = load ptr, ptr %bd, align 8, !dbg !7570
  %props = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 0, !dbg !7571
  %type = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 4, !dbg !7572
  %5 = load i32, ptr %type, align 8, !dbg !7572
  %idxprom = zext i32 %5 to i64, !dbg !7573
  %arrayidx = getelementptr [4 x ptr], ptr @backlight_types, i64 0, i64 %idxprom, !dbg !7573
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !7573
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.25, ptr noundef %6) #17, !dbg !7574
  %conv = sext i32 %call to i64, !dbg !7574
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7575
  ret i64 %conv, !dbg !7576
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @backlight_suspend(ptr noundef %dev) #0 align 16 !dbg !7577 {
entry:
  %dev.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7579, metadata !DIExpression()), !dbg !7583
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7584
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7580, metadata !DIExpression()), !dbg !7585
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7586
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7581, metadata !DIExpression()), !dbg !7586
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7586
  store ptr %0, ptr %__mptr, align 8, !dbg !7586
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7586
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7586
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7587
  %2 = load ptr, ptr %tmp, align 8, !dbg !7586
  store ptr %2, ptr %bd, align 8, !dbg !7585
  %3 = load ptr, ptr %bd, align 8, !dbg !7588
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 2, !dbg !7589
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !7590
  %4 = load ptr, ptr %bd, align 8, !dbg !7591
  %ops = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 3, !dbg !7593
  %5 = load ptr, ptr %ops, align 8, !dbg !7593
  %tobool = icmp ne ptr %5, null, !dbg !7591
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7594

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %bd, align 8, !dbg !7595
  %ops1 = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3, !dbg !7596
  %7 = load ptr, ptr %ops1, align 8, !dbg !7596
  %options = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 0, !dbg !7597
  %8 = load i32, ptr %options, align 8, !dbg !7597
  %and = and i32 %8, 1, !dbg !7598
  %tobool2 = icmp ne i32 %and, 0, !dbg !7598
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7599

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %bd, align 8, !dbg !7600
  %props = getelementptr inbounds %struct.backlight_device, ptr %9, i32 0, i32 0, !dbg !7602
  %state = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 5, !dbg !7603
  %10 = load i32, ptr %state, align 4, !dbg !7604
  %or = or i32 %10, 1, !dbg !7604
  store i32 %or, ptr %state, align 4, !dbg !7604
  %11 = load ptr, ptr %bd, align 8, !dbg !7605
  %call = call i32 @backlight_update_status(ptr noundef %11) #17, !dbg !7606
  br label %if.end, !dbg !7607

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load ptr, ptr %bd, align 8, !dbg !7608
  %ops_lock3 = getelementptr inbounds %struct.backlight_device, ptr %12, i32 0, i32 2, !dbg !7609
  call void @mutex_unlock(ptr noundef %ops_lock3) #17, !dbg !7610
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7611
  ret i32 0, !dbg !7612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @backlight_resume(ptr noundef %dev) #0 align 16 !dbg !7613 {
entry:
  %dev.addr = alloca ptr, align 8
  %bd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7615, metadata !DIExpression()), !dbg !7619
  call void @llvm.lifetime.start.p0(i64 8, ptr %bd) #16, !dbg !7620
  call void @llvm.dbg.declare(metadata ptr %bd, metadata !7616, metadata !DIExpression()), !dbg !7621
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !7622
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !7617, metadata !DIExpression()), !dbg !7622
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7622
  store ptr %0, ptr %__mptr, align 8, !dbg !7622
  %1 = load ptr, ptr %__mptr, align 8, !dbg !7622
  %add.ptr = getelementptr i8, ptr %1, i64 -144, !dbg !7622
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !7622
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !7623
  %2 = load ptr, ptr %tmp, align 8, !dbg !7622
  store ptr %2, ptr %bd, align 8, !dbg !7621
  %3 = load ptr, ptr %bd, align 8, !dbg !7624
  %ops_lock = getelementptr inbounds %struct.backlight_device, ptr %3, i32 0, i32 2, !dbg !7625
  call void @mutex_lock(ptr noundef %ops_lock) #17, !dbg !7626
  %4 = load ptr, ptr %bd, align 8, !dbg !7627
  %ops = getelementptr inbounds %struct.backlight_device, ptr %4, i32 0, i32 3, !dbg !7629
  %5 = load ptr, ptr %ops, align 8, !dbg !7629
  %tobool = icmp ne ptr %5, null, !dbg !7627
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !7630

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %bd, align 8, !dbg !7631
  %ops1 = getelementptr inbounds %struct.backlight_device, ptr %6, i32 0, i32 3, !dbg !7632
  %7 = load ptr, ptr %ops1, align 8, !dbg !7632
  %options = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 0, !dbg !7633
  %8 = load i32, ptr %options, align 8, !dbg !7633
  %and = and i32 %8, 1, !dbg !7634
  %tobool2 = icmp ne i32 %and, 0, !dbg !7634
  br i1 %tobool2, label %if.then, label %if.end, !dbg !7635

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %bd, align 8, !dbg !7636
  %props = getelementptr inbounds %struct.backlight_device, ptr %9, i32 0, i32 0, !dbg !7638
  %state = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 5, !dbg !7639
  %10 = load i32, ptr %state, align 4, !dbg !7640
  %and3 = and i32 %10, -2, !dbg !7640
  store i32 %and3, ptr %state, align 4, !dbg !7640
  %11 = load ptr, ptr %bd, align 8, !dbg !7641
  %call = call i32 @backlight_update_status(ptr noundef %11) #17, !dbg !7642
  br label %if.end, !dbg !7643

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load ptr, ptr %bd, align 8, !dbg !7644
  %ops_lock4 = getelementptr inbounds %struct.backlight_device, ptr %12, i32 0, i32 2, !dbg !7645
  call void @mutex_unlock(ptr noundef %ops_lock4) #17, !dbg !7646
  call void @llvm.lifetime.end.p0(i64 8, ptr %bd) #16, !dbg !7647
  ret i32 0, !dbg !7648
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!6055, !6056, !6057, !6058, !6059, !6060, !6061, !6062}
!llvm.ident = !{!6063}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_device_set_brightness350", scope: !2, file: !3, line: 251, type: !49, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/video/backlight/.backlight.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/video/backlight/backlight\22 -D KBUILD_BASENAME=\22backlight\22 -D KBUILD_MODNAME=\22backlight\22 -D __KBUILD_MODNAME=kmod_backlight -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/video/backlight/backlight.ll drivers/video/backlight/backlight.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !324, globals: !5815, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/backlight/backlight.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc62a16727975a4ed2e3ea08d74e3f3d")
!4 = !{!5, !13, !18, !25, !30, !35, !40, !136, !142, !158, !166, !173, !181, !187, !193, !200, !208, !215, !221, !240, !246, !255, !260, !265, !271, !283, !290, !294, !298, !303, !314}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_type", file: !6, line: 40, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/backlight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f48373f96b435a9cf5a47d058c37da10")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "BACKLIGHT_RAW", value: 1)
!10 = !DIEnumerator(name: "BACKLIGHT_PLATFORM", value: 2)
!11 = !DIEnumerator(name: "BACKLIGHT_FIRMWARE", value: 3)
!12 = !DIEnumerator(name: "BACKLIGHT_TYPE_MAX", value: 4)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_scale", file: !6, line: 90, baseType: !7, size: 32, elements: !14)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "BACKLIGHT_SCALE_UNKNOWN", value: 0)
!16 = !DIEnumerator(name: "BACKLIGHT_SCALE_LINEAR", value: 1)
!17 = !DIEnumerator(name: "BACKLIGHT_SCALE_NON_LINEAR", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!22 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!23 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!24 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !26, line: 32, baseType: !7, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!27 = !{!28, !29}
!28 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!29 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !31, line: 2052, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!34 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !36, line: 65, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!37 = !{!38, !39}
!38 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!39 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !42, file: !41, line: 147, baseType: !7, size: 32, elements: !133)
!41 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !41, line: 135, size: 512, elements: !43)
!43 = !{!44, !48, !50, !52, !56, !57, !73, !131, !132}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !42, file: !41, line: 136, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !42, file: !41, line: 137, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !42, file: !41, line: 138, baseType: !51, size: 32, offset: 128)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !42, file: !41, line: 139, baseType: !53, size: 16, offset: 160)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !54, line: 24, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !42, file: !41, line: 150, baseType: !40, size: 32, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !42, file: !41, line: 151, baseType: !58, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !41, line: 64, baseType: !60)
!60 = !DISubroutineType(types: !61)
!61 = !{!51, !62, !51, !49, !63, !69}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !66, line: 72, baseType: !67)
!66 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !66, line: 16, baseType: !68)
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !54, line: 52, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !66, line: 88, baseType: !72)
!72 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !42, file: !41, line: 152, baseType: !74, size: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !41, line: 117, size: 256, elements: !76)
!76 = !{!77, !82}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !75, file: !41, line: 118, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !54, line: 174, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 172, size: 32, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !79, file: !54, line: 173, baseType: !51, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !75, file: !41, line: 119, baseType: !83, size: 192, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !84, line: 41, baseType: !85)
!84 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !84, line: 37, size: 192, elements: !86)
!86 = !{!87, !125}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !85, file: !84, line: 38, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !89, line: 29, baseType: !90)
!89 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !89, line: 17, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !89, line: 18, baseType: !93, size: 32)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !90, file: !89, line: 18, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !93, file: !89, line: 19, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !97, line: 14, size: 32, elements: !98)
!97 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !96, file: !97, line: 15, baseType: !100, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !101, line: 44, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !101, line: 14, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !101, line: 15, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !101, line: 15, size: 32, elements: !106)
!106 = !{!107, !108, !118}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !105, file: !101, line: 16, baseType: !78, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !101, line: 24, baseType: !109, size: 16)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !101, line: 24, size: 16, elements: !110)
!110 = !{!111, !117}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !109, file: !101, line: 25, baseType: !112, size: 8)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !113, line: 17, baseType: !114)
!113 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !115, line: 21, baseType: !116)
!115 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!116 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !109, file: !101, line: 26, baseType: !112, size: 8, offset: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !101, line: 28, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !105, file: !101, line: 28, size: 32, elements: !120)
!120 = !{!121, !124}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !119, file: !101, line: 29, baseType: !122, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !113, line: 19, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !115, line: 24, baseType: !55)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !119, file: !101, line: 30, baseType: !122, size: 16, offset: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !85, file: !84, line: 39, baseType: !126, size: 128, offset: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !54, line: 190, size: 128, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !54, line: 191, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !54, line: 191, baseType: !129, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !42, file: !41, line: 153, baseType: !49, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !42, file: !41, line: 154, baseType: !49, size: 64, offset: 448)
!133 = !{!134, !135}
!134 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!135 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !137, line: 16, baseType: !7, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!138 = !{!139, !140, !141}
!139 = !DIEnumerator(name: "TT_NONE", value: 0)
!140 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!141 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !143, line: 1325, baseType: !7, size: 32, elements: !144)
!143 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!145 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!146 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!147 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!148 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!149 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!150 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!151 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!152 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!153 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!154 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!155 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!156 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!157 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !159, line: 68, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!160 = !{!161, !162, !163, !164, !165}
!161 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!162 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!163 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!164 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!165 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !167, line: 51, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!168 = !{!169, !170, !171, !172}
!169 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!170 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!171 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!172 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !174, line: 9, baseType: !7, size: 32, elements: !175)
!174 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!175 = !{!176, !177, !178, !179, !180}
!176 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!177 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!178 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!179 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!180 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !182, line: 54, baseType: !7, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!183 = !{!184, !185, !186}
!184 = !DIEnumerator(name: "USRQUOTA", value: 0)
!185 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!186 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!187 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !188, line: 45, baseType: !7, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!189 = !{!190, !191, !192}
!190 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!191 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!192 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !194, line: 487, baseType: !7, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!195 = !{!196, !197, !198, !199}
!196 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!197 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!198 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!199 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !201, line: 620, baseType: !7, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!204 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!205 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!206 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!207 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!208 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !201, line: 597, baseType: !51, size: 32, elements: !209)
!209 = !{!210, !211, !212, !213, !214}
!210 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!211 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!212 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!213 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!214 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !216, line: 30, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!219 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!220 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !222, line: 12, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/irqdomain_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "168aa78cd6535dbcc4cf99c0f8004653")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!224 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0)
!225 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1)
!226 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2)
!227 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3)
!228 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4)
!229 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5)
!230 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6)
!231 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7)
!232 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8)
!233 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9)
!234 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10)
!235 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSI", value: 11)
!236 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_MSIX", value: 12)
!237 = !DIEnumerator(name: "DOMAIN_BUS_DMAR", value: 13)
!238 = !DIEnumerator(name: "DOMAIN_BUS_AMDVI", value: 14)
!239 = !DIEnumerator(name: "DOMAIN_BUS_PCI_DEVICE_IMS", value: 15)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !241, line: 26, baseType: !7, size: 32, elements: !242)
!241 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!242 = !{!243, !244, !245}
!243 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!244 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!245 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !194, line: 547, baseType: !7, size: 32, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254}
!248 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!249 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!250 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!251 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!252 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!253 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!254 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !194, line: 564, baseType: !7, size: 32, elements: !256)
!256 = !{!257, !258, !259}
!257 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!258 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!259 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !194, line: 577, baseType: !7, size: 32, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!263 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!264 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !194, line: 503, baseType: !7, size: 32, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!268 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!269 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!270 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !272, line: 44, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282}
!274 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!275 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!276 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!277 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!278 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!279 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!280 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!281 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!282 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !284, line: 15, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!287 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!288 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!289 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_update_reason", file: !6, line: 23, baseType: !7, size: 32, elements: !291)
!291 = !{!292, !293}
!292 = !DIEnumerator(name: "BACKLIGHT_UPDATE_HOTKEY", value: 0)
!293 = !DIEnumerator(name: "BACKLIGHT_UPDATE_SYSFS", value: 1)
!294 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "backlight_notification", file: !6, line: 74, baseType: !7, size: 32, elements: !295)
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "BACKLIGHT_REGISTERED", value: 0)
!297 = !DIEnumerator(name: "BACKLIGHT_UNREGISTERED", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 10, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!300 = !{!301, !302}
!301 = !DIEnumerator(name: "false", value: 0)
!302 = !DIEnumerator(name: "true", value: 1)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !304, line: 53, baseType: !7, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313}
!306 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!307 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!308 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!309 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!310 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!311 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!312 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!313 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !315, line: 364, baseType: !7, size: 32, elements: !316)
!315 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!316 = !{!317, !318, !319, !320, !321, !322, !323}
!317 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!318 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!319 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!320 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!321 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!322 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!323 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!324 = !{!49, !325, !326, !68, !5811, !5813, !644, !5814}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !54, line: 154, baseType: !7)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_device", file: !6, line: 280, size: 7296, elements: !328)
!328 = !{!329, !339, !360, !361, !5794, !5806, !5807, !5808, !5810}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "props", scope: !327, file: !6, line: 284, baseType: !330, size: 224)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_properties", file: !6, line: 182, size: 224, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !330, file: !6, line: 194, baseType: !51, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !330, file: !6, line: 203, baseType: !51, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !330, file: !6, line: 219, baseType: !51, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !330, file: !6, line: 238, baseType: !51, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !330, file: !6, line: 249, baseType: !5, size: 32, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !330, file: !6, line: 264, baseType: !7, size: 32, offset: 160)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !330, file: !6, line: 272, baseType: !13, size: 32, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "update_lock", scope: !327, file: !6, line: 294, baseType: !340, size: 256, offset: 256)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !341, line: 66, size: 256, elements: !342)
!341 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!342 = !{!343, !352, !354, !359}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !341, line: 67, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !345, line: 13, baseType: !346)
!345 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !54, line: 181, baseType: !347)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 179, size: 64, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !347, file: !54, line: 180, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !113, line: 22, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !115, line: 30, baseType: !72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !340, file: !341, line: 68, baseType: !353, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !97, line: 23, baseType: !96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !340, file: !341, line: 70, baseType: !355, size: 32, offset: 96)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !356, line: 15, size: 32, elements: !357)
!356 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !355, file: !356, line: 20, baseType: !78, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !340, file: !341, line: 72, baseType: !126, size: 128, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !327, file: !6, line: 303, baseType: !340, size: 256, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !327, file: !6, line: 312, baseType: !362, size: 64, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backlight_ops", file: !6, line: 120, size: 256, elements: !365)
!365 = !{!366, !367, !371, !372}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !364, file: !6, line: 128, baseType: !7, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "update_status", scope: !364, file: !6, line: 146, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!51, !326}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "get_brightness", scope: !364, file: !6, line: 160, baseType: !368, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "check_fb", scope: !364, file: !6, line: 174, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!51, !326, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_info", file: !378, line: 444, size: 5760, elements: !379)
!378 = !DIFile(filename: "./include/linux/fb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35476a417823480e34deccd659fc55f4")
!379 = !{!380, !386, !387, !388, !389, !390, !391, !433, !457, !519, !537, !538, !548, !549, !550, !5781, !5782, !5783, !5788, !5789, !5790, !5791, !5792, !5793}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !378, line: 445, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !382, line: 113, baseType: !383)
!382 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !382, line: 111, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !383, file: !382, line: 112, baseType: !78, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !377, file: !378, line: 446, baseType: !51, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !378, line: 447, baseType: !51, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_rotate_hint", scope: !377, file: !378, line: 452, baseType: !51, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !377, file: !378, line: 453, baseType: !340, size: 256, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock", scope: !377, file: !378, line: 454, baseType: !340, size: 256, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !377, file: !378, line: 455, baseType: !392, size: 1280, offset: 640)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_var_screeninfo", file: !393, line: 242, size: 1280, elements: !394)
!393 = !DIFile(filename: "./include/uapi/linux/fb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "badb6abc0146f9887f713433aab35d48")
!394 = !{!395, !397, !398, !399, !400, !401, !402, !403, !404, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !392, file: !393, line: 243, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !115, line: 27, baseType: !7)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !392, file: !393, line: 244, baseType: !396, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "xres_virtual", scope: !392, file: !393, line: 245, baseType: !396, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "yres_virtual", scope: !392, file: !393, line: 246, baseType: !396, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "xoffset", scope: !392, file: !393, line: 247, baseType: !396, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "yoffset", scope: !392, file: !393, line: 248, baseType: !396, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !392, file: !393, line: 250, baseType: !396, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "grayscale", scope: !392, file: !393, line: 251, baseType: !396, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !392, file: !393, line: 253, baseType: !405, size: 96, offset: 256)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_bitfield", file: !393, line: 188, size: 96, elements: !406)
!406 = !{!407, !408, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !405, file: !393, line: 189, baseType: !396, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !405, file: !393, line: 190, baseType: !396, size: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "msb_right", scope: !405, file: !393, line: 191, baseType: !396, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !392, file: !393, line: 254, baseType: !405, size: 96, offset: 352)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !392, file: !393, line: 255, baseType: !405, size: 96, offset: 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !392, file: !393, line: 256, baseType: !405, size: 96, offset: 544)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "nonstd", scope: !392, file: !393, line: 258, baseType: !396, size: 32, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !392, file: !393, line: 260, baseType: !396, size: 32, offset: 672)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !392, file: !393, line: 262, baseType: !396, size: 32, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !392, file: !393, line: 263, baseType: !396, size: 32, offset: 736)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "accel_flags", scope: !392, file: !393, line: 265, baseType: !396, size: 32, offset: 768)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !392, file: !393, line: 268, baseType: !396, size: 32, offset: 800)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !392, file: !393, line: 269, baseType: !396, size: 32, offset: 832)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !392, file: !393, line: 270, baseType: !396, size: 32, offset: 864)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !392, file: !393, line: 271, baseType: !396, size: 32, offset: 896)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !392, file: !393, line: 272, baseType: !396, size: 32, offset: 928)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !392, file: !393, line: 273, baseType: !396, size: 32, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !392, file: !393, line: 274, baseType: !396, size: 32, offset: 992)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !392, file: !393, line: 275, baseType: !396, size: 32, offset: 1024)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !392, file: !393, line: 276, baseType: !396, size: 32, offset: 1056)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rotate", scope: !392, file: !393, line: 277, baseType: !396, size: 32, offset: 1088)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !392, file: !393, line: 278, baseType: !396, size: 32, offset: 1120)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !392, file: !393, line: 279, baseType: !430, size: 128, offset: 1152)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 4)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fix", scope: !377, file: !378, line: 456, baseType: !434, size: 640, offset: 1920)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fix_screeninfo", file: !393, line: 157, size: 640, elements: !435)
!435 = !{!436, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !434, file: !393, line: 158, baseType: !437, size: 128)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 16)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "smem_start", scope: !434, file: !393, line: 159, baseType: !68, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "smem_len", scope: !434, file: !393, line: 161, baseType: !396, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !434, file: !393, line: 162, baseType: !396, size: 32, offset: 224)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "type_aux", scope: !434, file: !393, line: 163, baseType: !396, size: 32, offset: 256)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "visual", scope: !434, file: !393, line: 164, baseType: !396, size: 32, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "xpanstep", scope: !434, file: !393, line: 165, baseType: !123, size: 16, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ypanstep", scope: !434, file: !393, line: 166, baseType: !123, size: 16, offset: 336)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ywrapstep", scope: !434, file: !393, line: 167, baseType: !123, size: 16, offset: 352)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !434, file: !393, line: 168, baseType: !396, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_start", scope: !434, file: !393, line: 169, baseType: !68, size: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_len", scope: !434, file: !393, line: 171, baseType: !396, size: 32, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !434, file: !393, line: 172, baseType: !396, size: 32, offset: 544)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !434, file: !393, line: 174, baseType: !123, size: 16, offset: 576)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !434, file: !393, line: 175, baseType: !454, size: 32, offset: 592)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 32, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 2)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "monspecs", scope: !377, file: !378, line: 457, baseType: !458, size: 1152, offset: 2560)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_monspecs", file: !378, line: 65, size: 1152, elements: !459)
!459 = !{!460, !471, !490, !492, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "chroma", scope: !458, file: !378, line: 66, baseType: !461, size: 256)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_chroma", file: !378, line: 54, size: 256, elements: !462)
!462 = !{!463, !464, !465, !466, !467, !468, !469, !470}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "redx", scope: !461, file: !378, line: 55, baseType: !396, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "greenx", scope: !461, file: !378, line: 56, baseType: !396, size: 32, offset: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "bluex", scope: !461, file: !378, line: 57, baseType: !396, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "whitex", scope: !461, file: !378, line: 58, baseType: !396, size: 32, offset: 96)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "redy", scope: !461, file: !378, line: 59, baseType: !396, size: 32, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "greeny", scope: !461, file: !378, line: 60, baseType: !396, size: 32, offset: 160)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "bluey", scope: !461, file: !378, line: 61, baseType: !396, size: 32, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "whitey", scope: !461, file: !378, line: 62, baseType: !396, size: 32, offset: 224)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "modedb", scope: !458, file: !378, line: 67, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_videomode", file: !378, line: 812, size: 512, elements: !474)
!474 = !{!475, !476, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !473, file: !378, line: 813, baseType: !45, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !473, file: !378, line: 814, baseType: !477, size: 32, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !113, line: 21, baseType: !396)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !473, file: !378, line: 815, baseType: !477, size: 32, offset: 96)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !473, file: !378, line: 816, baseType: !477, size: 32, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pixclock", scope: !473, file: !378, line: 817, baseType: !477, size: 32, offset: 160)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "left_margin", scope: !473, file: !378, line: 818, baseType: !477, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "right_margin", scope: !473, file: !378, line: 819, baseType: !477, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "upper_margin", scope: !473, file: !378, line: 820, baseType: !477, size: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lower_margin", scope: !473, file: !378, line: 821, baseType: !477, size: 32, offset: 288)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_len", scope: !473, file: !378, line: 822, baseType: !477, size: 32, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_len", scope: !473, file: !378, line: 823, baseType: !477, size: 32, offset: 352)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !473, file: !378, line: 824, baseType: !477, size: 32, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vmode", scope: !473, file: !378, line: 825, baseType: !477, size: 32, offset: 416)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !473, file: !378, line: 826, baseType: !477, size: 32, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !458, file: !378, line: 68, baseType: !491, size: 32, offset: 320)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 32, elements: !431)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "monitor", scope: !458, file: !378, line: 69, baseType: !493, size: 112, offset: 352)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 112, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 14)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "serial_no", scope: !458, file: !378, line: 70, baseType: !493, size: 112, offset: 464)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !458, file: !378, line: 71, baseType: !493, size: 112, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "modedb_len", scope: !458, file: !378, line: 72, baseType: !396, size: 32, offset: 704)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !458, file: !378, line: 73, baseType: !396, size: 32, offset: 736)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !458, file: !378, line: 74, baseType: !396, size: 32, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !458, file: !378, line: 75, baseType: !396, size: 32, offset: 800)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "week", scope: !458, file: !378, line: 76, baseType: !396, size: 32, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "hfmin", scope: !458, file: !378, line: 77, baseType: !396, size: 32, offset: 864)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hfmax", scope: !458, file: !378, line: 78, baseType: !396, size: 32, offset: 896)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmin", scope: !458, file: !378, line: 79, baseType: !396, size: 32, offset: 928)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "dclkmax", scope: !458, file: !378, line: 80, baseType: !396, size: 32, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !458, file: !378, line: 81, baseType: !123, size: 16, offset: 992)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !458, file: !378, line: 82, baseType: !123, size: 16, offset: 1008)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !458, file: !378, line: 83, baseType: !123, size: 16, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vfmin", scope: !458, file: !378, line: 84, baseType: !123, size: 16, offset: 1040)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vfmax", scope: !458, file: !378, line: 85, baseType: !123, size: 16, offset: 1056)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !458, file: !378, line: 86, baseType: !123, size: 16, offset: 1072)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "gtf", scope: !458, file: !378, line: 87, baseType: !123, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !458, file: !378, line: 88, baseType: !123, size: 16, offset: 1104)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !458, file: !378, line: 89, baseType: !114, size: 8, offset: 1120)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !458, file: !378, line: 90, baseType: !114, size: 8, offset: 1128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "max_x", scope: !458, file: !378, line: 91, baseType: !114, size: 8, offset: 1136)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "max_y", scope: !458, file: !378, line: 92, baseType: !114, size: 8, offset: 1144)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pixmap", scope: !377, file: !378, line: 458, baseType: !520, size: 448, offset: 3712)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_pixmap", file: !378, line: 187, size: 448, elements: !521)
!521 = !{!522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !536}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !520, file: !378, line: 188, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !520, file: !378, line: 189, baseType: !477, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !520, file: !378, line: 190, baseType: !477, size: 32, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !520, file: !378, line: 191, baseType: !477, size: 32, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "scan_align", scope: !520, file: !378, line: 192, baseType: !477, size: 32, offset: 160)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "access_align", scope: !520, file: !378, line: 193, baseType: !477, size: 32, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !520, file: !378, line: 194, baseType: !477, size: 32, offset: 224)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "blit_x", scope: !520, file: !378, line: 195, baseType: !477, size: 32, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "blit_y", scope: !520, file: !378, line: 196, baseType: !477, size: 32, offset: 288)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "writeio", scope: !520, file: !378, line: 200, baseType: !533, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !376, !49, !49, !7}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "readio", scope: !520, file: !378, line: 201, baseType: !533, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sprite", scope: !377, file: !378, line: 459, baseType: !520, size: 448, offset: 4160)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !377, file: !378, line: 460, baseType: !539, size: 320, offset: 4608)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cmap", file: !393, line: 282, size: 320, elements: !540)
!540 = !{!541, !542, !543, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !539, file: !393, line: 283, baseType: !396, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !539, file: !393, line: 284, baseType: !396, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !539, file: !393, line: 285, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !539, file: !393, line: 286, baseType: !544, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !539, file: !393, line: 287, baseType: !544, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "transp", scope: !539, file: !393, line: 288, baseType: !544, size: 64, offset: 256)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "modelist", scope: !377, file: !378, line: 461, baseType: !126, size: 128, offset: 4928)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !377, file: !378, line: 462, baseType: !472, size: 64, offset: 5056)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "fbops", scope: !377, file: !378, line: 481, baseType: !551, size: 64, offset: 5120)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_ops", file: !378, line: 238, size: 1472, elements: !554)
!554 = !{!555, !5656, !5660, !5661, !5665, !5669, !5674, !5678, !5682, !5687, !5691, !5692, !5706, !5720, !5737, !5754, !5755, !5759, !5760, !5764, !5775, !5779, !5780}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !553, file: !378, line: 240, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !558)
!558 = !{!559, !560, !561, !565, !5343, !5369, !5370, !5371, !5372, !5376, !5379, !5380, !5381, !5432, !5433, !5434, !5435, !5436, !5437, !5438, !5439, !5447, !5451, !5469, !5486, !5487, !5488, !5489, !5498, !5521, !5522, !5525, !5528, !5529, !5530, !5531, !5532, !5533, !5534, !5539, !5540, !5619, !5627, !5628, !5629, !5630, !5634, !5635, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5652, !5653, !5654, !5655}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !557, file: !19, line: 403, baseType: !18, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !557, file: !19, line: 406, baseType: !126, size: 128, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !557, file: !19, line: 409, baseType: !562, size: 448, offset: 192)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 448, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 56)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !557, file: !19, line: 417, baseType: !566, size: 768, offset: 640)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !567)
!567 = !{!568, !5337, !5338, !5339, !5342}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !566, file: !19, line: 46, baseType: !569, size: 512)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !304, line: 64, size: 512, elements: !570)
!570 = !{!571, !572, !573, !575, !622, !5330, !5331, !5332, !5333, !5334, !5335, !5336}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !569, file: !304, line: 65, baseType: !45, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !569, file: !304, line: 66, baseType: !126, size: 128, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !569, file: !304, line: 67, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !569, file: !304, line: 68, baseType: !576, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !304, line: 168, size: 768, elements: !578)
!578 = !{!579, !580, !581, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !577, file: !304, line: 169, baseType: !126, size: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !577, file: !304, line: 170, baseType: !88, size: 32, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !577, file: !304, line: 171, baseType: !569, size: 512, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !577, file: !304, line: 172, baseType: !583, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !304, line: 133, size: 192, elements: !586)
!586 = !{!587, !594, !599}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !585, file: !304, line: 134, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!51, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !585, file: !304, line: 135, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!45, !592}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !585, file: !304, line: 136, baseType: !600, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!51, !592, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !304, line: 125, size: 20736, elements: !606)
!606 = !{!607, !612, !616, !617, !621}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !605, file: !304, line: 126, baseType: !608, size: 192)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 192, elements: !610)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!610 = !{!611}
!611 = !DISubrange(count: 3)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !605, file: !304, line: 127, baseType: !613, size: 4096, offset: 192)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 4096, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !605, file: !304, line: 128, baseType: !51, size: 32, offset: 4288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !605, file: !304, line: 129, baseType: !618, size: 16384, offset: 4320)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 16384, elements: !619)
!619 = !{!620}
!620 = !DISubrange(count: 2048)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !605, file: !304, line: 130, baseType: !51, size: 32, offset: 20704)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !569, file: !304, line: 69, baseType: !623, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !304, line: 116, size: 384, elements: !626)
!626 = !{!627, !631, !654, !5318, !5322, !5326}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !625, file: !304, line: 117, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !574}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !625, file: !304, line: 118, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !635, line: 254, size: 128, elements: !636)
!635 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!636 = !{!637, !650}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !634, file: !635, line: 255, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!641, !574, !645, !609}
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !54, line: 66, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !66, line: 73, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !66, line: 15, baseType: !644)
!644 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !635, line: 30, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !635, line: 31, baseType: !45, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !646, file: !635, line: 32, baseType: !53, size: 16, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !634, file: !635, line: 256, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!641, !574, !645, !45, !64}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !625, file: !304, line: 119, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !635, line: 84, size: 320, elements: !659)
!659 = !{!660, !661, !665, !5314, !5316}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !635, line: 85, baseType: !45, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !658, file: !635, line: 86, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!53, !574, !645, !51}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !658, file: !635, line: 88, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!53, !574, !669, !51}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !635, line: 175, size: 512, elements: !671)
!671 = !{!672, !673, !674, !675, !5305, !5309, !5310}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !670, file: !635, line: 176, baseType: !646, size: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !670, file: !635, line: 177, baseType: !64, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !670, file: !635, line: 178, baseType: !49, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !670, file: !635, line: 179, baseType: !676, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 472, size: 1536, align: 64, elements: !681)
!681 = !{!682, !5151, !5152, !5153, !5154, !5155, !5156, !5157, !5158, !5299, !5300, !5301, !5302, !5303, !5304}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !680, file: !31, line: 473, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 641, size: 4800, elements: !685)
!685 = !{!686, !687, !688, !696, !697, !704, !705, !708, !709, !5089, !5090, !5091, !5092, !5093, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5133, !5136, !5137, !5138, !5147, !5148, !5149, !5150}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !684, file: !31, line: 642, baseType: !53, size: 16)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !684, file: !31, line: 643, baseType: !55, size: 16, offset: 16)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !684, file: !31, line: 644, baseType: !689, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !690, line: 23, baseType: !691)
!690 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !690, line: 21, size: 32, elements: !692)
!692 = !{!693}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !691, file: !690, line: 22, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !54, line: 37, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !66, line: 49, baseType: !7)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !684, file: !31, line: 645, baseType: !126, size: 128, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !684, file: !31, line: 646, baseType: !698, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !690, line: 28, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !690, line: 26, size: 32, elements: !700)
!700 = !{!701}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !699, file: !690, line: 27, baseType: !702, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !54, line: 38, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !66, line: 50, baseType: !7)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !684, file: !31, line: 647, baseType: !7, size: 32, offset: 224)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !684, file: !31, line: 650, baseType: !706, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 607, flags: DIFlagFwdDecl)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !684, file: !31, line: 651, baseType: !706, size: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !684, file: !31, line: 654, baseType: !710, size: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1966, size: 2048, align: 512, elements: !713)
!713 = !{!714, !4923, !4933, !4937, !4941, !4945, !4949, !4953, !4957, !4961, !4965, !4966, !4970, !4974, !5011, !5040, !5044, !5050, !5054, !5058, !5062, !5066, !5070, !5076, !5080}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !712, file: !31, line: 1967, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!718, !683, !718, !7}
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !720, line: 82, size: 1536, elements: !721)
!720 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!721 = !{!722, !723, !733, !741, !742, !760, !761, !765, !778, !4906, !4907, !4908, !4909, !4915, !4916, !4917}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !719, file: !720, line: 84, baseType: !7, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !719, file: !720, line: 85, baseType: !724, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !725, line: 275, baseType: !726)
!725 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !725, line: 275, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !726, file: !725, line: 275, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !725, line: 69, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !725, line: 64, size: 32, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !730, file: !725, line: 65, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !719, file: !720, line: 86, baseType: !734, size: 128, offset: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !735, line: 38, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !735, line: 39, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !735, line: 39, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !719, file: !720, line: 87, baseType: !718, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !719, file: !720, line: 88, baseType: !743, size: 128, offset: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !720, line: 49, size: 128, elements: !744)
!744 = !{!745, !757}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !720, line: 50, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !720, line: 50, size: 64, elements: !747)
!747 = !{!748, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !720, line: 51, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !720, line: 51, size: 64, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !749, file: !720, line: 52, baseType: !477, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !749, file: !720, line: 52, baseType: !477, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !746, file: !720, line: 54, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !113, line: 23, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !115, line: 31, baseType: !756)
!756 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !743, file: !720, line: 56, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !719, file: !720, line: 89, baseType: !683, size: 64, offset: 384)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !719, file: !720, line: 91, baseType: !762, size: 256, offset: 448)
!762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !763)
!763 = !{!764}
!764 = !DISubrange(count: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !719, file: !720, line: 94, baseType: !766, size: 64, offset: 704)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !767, line: 25, size: 64, elements: !768)
!767 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !767, line: 26, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !767, line: 26, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !770, file: !767, line: 28, baseType: !755, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !767, line: 30, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !767, line: 30, size: 64, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !774, file: !767, line: 31, baseType: !88, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !774, file: !767, line: 32, baseType: !51, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !719, file: !720, line: 95, baseType: !779, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !720, line: 128, size: 1024, align: 512, elements: !782)
!782 = !{!783, !787, !788, !795, !801, !805, !809, !813, !814, !818, !822, !4896, !4900}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !781, file: !720, line: 129, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DISubroutineType(types: !786)
!786 = !{!51, !718, !7}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !781, file: !720, line: 130, baseType: !784, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !781, file: !720, line: 131, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!51, !792, !794}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !781, file: !720, line: 132, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!51, !792, !7, !45, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !781, file: !720, line: 134, baseType: !802, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!51, !792}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !781, file: !720, line: 135, baseType: !806, size: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!51, !718}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !781, file: !720, line: 136, baseType: !810, size: 64, offset: 384)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !718}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !781, file: !720, line: 137, baseType: !810, size: 64, offset: 448)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !781, file: !720, line: 138, baseType: !815, size: 64, offset: 512)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !718, !683}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !781, file: !720, line: 139, baseType: !819, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!609, !718, !609, !51}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !781, file: !720, line: 140, baseType: !823, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!826, !4895}
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !828, line: 70, size: 256, elements: !829)
!828 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!829 = !{!830, !831, !4891, !4892}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !827, file: !828, line: 71, baseType: !718, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !827, file: !828, line: 72, baseType: !832, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1190, size: 10752, elements: !834)
!834 = !{!835, !836, !839, !840, !841, !842, !891, !3898, !3938, !4023, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4040, !4044, !4045, !4684, !4687, !4754, !4757, !4758, !4759, !4800, !4826, !4827, !4828, !4829, !4830, !4831, !4834, !4835, !4841, !4842, !4843, !4844, !4845, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !833, file: !31, line: 1191, baseType: !126, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !833, file: !31, line: 1192, baseType: !837, size: 32, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !54, line: 21, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !54, line: 18, baseType: !477)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !833, file: !31, line: 1193, baseType: !116, size: 8, offset: 160)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !833, file: !31, line: 1194, baseType: !68, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !833, file: !31, line: 1195, baseType: !70, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !833, file: !31, line: 1196, baseType: !843, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2366, size: 576, elements: !845)
!845 = !{!846, !847, !848, !855, !859, !863, !867, !868, !869, !879, !883, !884, !885, !887, !888, !889, !890}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !844, file: !31, line: 2367, baseType: !45, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !844, file: !31, line: 2368, baseType: !51, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !844, file: !31, line: 2376, baseType: !849, size: 64, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!51, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !854, line: 32, flags: DIFlagFwdDecl)
!854 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!855 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !844, file: !31, line: 2377, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 75, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !844, file: !31, line: 2378, baseType: !860, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!718, !843, !51, !45, !49}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !844, file: !31, line: 2380, baseType: !864, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !832}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !844, file: !31, line: 2381, baseType: !556, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !844, file: !31, line: 2382, baseType: !843, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !844, file: !31, line: 2383, baseType: !870, size: 64, offset: 512)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !54, line: 194, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !870, file: !54, line: 195, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !54, line: 198, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !874, file: !54, line: 199, baseType: !873, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !874, file: !54, line: 199, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !844, file: !31, line: 2385, baseType: !880, offset: 576)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !881, line: 206, elements: !882)
!881 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!882 = !{}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !844, file: !31, line: 2386, baseType: !880, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !844, file: !31, line: 2387, baseType: !880, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !844, file: !31, line: 2388, baseType: !886, offset: 576)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, elements: !610)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !844, file: !31, line: 2390, baseType: !880, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !844, file: !31, line: 2391, baseType: !880, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !844, file: !31, line: 2392, baseType: !880, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !844, file: !31, line: 2393, baseType: !880, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !833, file: !31, line: 1197, baseType: !892, size: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 2057, size: 1664, elements: !895)
!895 = !{!896, !900, !904, !905, !909, !933, !937, !938, !939, !943, !947, !951, !952, !953, !959, !964, !965, !3823, !3824, !3825, !3826, !3830, !3834, !3881, !3896, !3897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !894, file: !31, line: 2058, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!683, !832}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !894, file: !31, line: 2059, baseType: !901, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !683}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !894, file: !31, line: 2060, baseType: !901, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !894, file: !31, line: 2062, baseType: !906, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{null, !683, !51}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !894, file: !31, line: 2063, baseType: !910, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!51, !683, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !26, line: 42, size: 384, elements: !915)
!915 = !{!916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !914, file: !26, line: 43, baseType: !644, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !914, file: !26, line: 45, baseType: !644, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !914, file: !26, line: 52, baseType: !70, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !914, file: !26, line: 53, baseType: !70, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !914, file: !26, line: 55, baseType: !25, size: 32, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !914, file: !26, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !914, file: !26, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !914, file: !26, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !914, file: !26, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !914, file: !26, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !914, file: !26, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !914, file: !26, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !914, file: !26, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !914, file: !26, line: 78, baseType: !930, size: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !26, line: 78, flags: DIFlagFwdDecl)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !894, file: !31, line: 2064, baseType: !934, size: 64, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!51, !683}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !894, file: !31, line: 2065, baseType: !901, size: 64, offset: 384)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !894, file: !31, line: 2066, baseType: !864, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !894, file: !31, line: 2067, baseType: !940, size: 64, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!51, !832, !51}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !894, file: !31, line: 2068, baseType: !944, size: 64, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!51, !832, !30}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !894, file: !31, line: 2069, baseType: !948, size: 64, offset: 640)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!51, !832}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !894, file: !31, line: 2070, baseType: !944, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !894, file: !31, line: 2071, baseType: !948, size: 64, offset: 768)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !894, file: !31, line: 2072, baseType: !954, size: 64, offset: 832)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!51, !718, !957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 62, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !894, file: !31, line: 2073, baseType: !960, size: 64, offset: 896)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!51, !832, !963, !609}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !894, file: !31, line: 2074, baseType: !864, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !894, file: !31, line: 2076, baseType: !966, size: 64, offset: 1024)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!51, !969, !718}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !971, line: 17, size: 960, elements: !972)
!971 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!972 = !{!973, !974, !975, !976, !977, !978, !979, !980, !981, !1002, !1003, !3822}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !970, file: !971, line: 18, baseType: !609, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !970, file: !971, line: 19, baseType: !64, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !970, file: !971, line: 20, baseType: !64, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !970, file: !971, line: 21, baseType: !64, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !970, file: !971, line: 22, baseType: !64, size: 64, offset: 256)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !970, file: !971, line: 23, baseType: !70, size: 64, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !970, file: !971, line: 24, baseType: !70, size: 64, offset: 384)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !970, file: !971, line: 25, baseType: !340, size: 256, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !970, file: !971, line: 26, baseType: !982, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !971, line: 32, size: 256, elements: !985)
!985 = !{!986, !990, !994, !998}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !984, file: !971, line: 33, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!49, !969, !69}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !984, file: !971, line: 34, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !969, !49}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !971, line: 35, baseType: !995, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!49, !969, !49, !69}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !984, file: !971, line: 36, baseType: !999, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!51, !969, !49}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !970, file: !971, line: 27, baseType: !51, size: 32, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !970, file: !971, line: 28, baseType: !1004, size: 64, offset: 832)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 994, size: 1856, align: 64, elements: !1007)
!1007 = !{!1008, !1027, !1028, !1030, !1031, !1032, !1033, !1034, !3557, !3558, !3567, !3573, !3574, !3812, !3813, !3814, !3815, !3817, !3818, !3821}
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !31, line: 995, baseType: !1009, size: 128)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !31, line: 995, size: 128, elements: !1010)
!1010 = !{!1011, !1017, !1026}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1009, file: !31, line: 996, baseType: !1012, size: 64)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1013, line: 60, size: 64, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1014 = !{!1015}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1012, file: !1013, line: 61, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1009, file: !31, line: 997, baseType: !1018, size: 128, align: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !54, line: 232, size: 128, align: 64, elements: !1019)
!1019 = !{!1020, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1018, file: !54, line: 233, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1018, file: !54, line: 234, baseType: !1023, size: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !1021}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1009, file: !31, line: 998, baseType: !7, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1006, file: !31, line: 1005, baseType: !88, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1006, file: !31, line: 1006, baseType: !1029, size: 32, offset: 160)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !54, line: 156, baseType: !7)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1006, file: !31, line: 1007, baseType: !344, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1006, file: !31, line: 1008, baseType: !340, size: 256, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1006, file: !31, line: 1009, baseType: !70, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1006, file: !31, line: 1010, baseType: !7, size: 32, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1006, file: !31, line: 1011, baseType: !1035, size: 256, offset: 640)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 948, size: 256, elements: !1036)
!1036 = !{!1037, !1058, !3553, !3554, !3555, !3556}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1035, file: !31, line: 949, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1039, line: 34, baseType: !1040)
!1039 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 25, size: 64, elements: !1041)
!1041 = !{!1042}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1040, file: !1039, line: 26, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1044, line: 27, baseType: !1045)
!1044 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1044, line: 13, size: 64, elements: !1046)
!1046 = !{!1047, !1057}
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1044, line: 14, baseType: !1048, size: 32)
!1048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1045, file: !1044, line: 14, size: 32, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1048, file: !1044, line: 15, baseType: !78, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1048, file: !1044, line: 16, baseType: !1052, size: 32)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1048, file: !1044, line: 16, size: 32, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1052, file: !1044, line: 18, baseType: !112, size: 8)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1052, file: !1044, line: 19, baseType: !1056, size: 24, offset: 8)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 24, elements: !610)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1045, file: !1044, line: 26, baseType: !100, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1035, file: !31, line: 950, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !174, line: 59, size: 768, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1067, !1068, !1069, !1070}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1060, file: !174, line: 61, baseType: !381, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1060, file: !174, line: 62, baseType: !7, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1060, file: !174, line: 63, baseType: !88, size: 32, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1060, file: !174, line: 65, baseType: !1066, size: 256, offset: 128)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 256, elements: !431)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1060, file: !174, line: 66, baseType: !870, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1060, file: !174, line: 68, baseType: !83, size: 192, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1060, file: !174, line: 69, baseType: !1018, size: 128, align: 64, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1060, file: !174, line: 70, baseType: !1071, offset: 768)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1072, elements: !1827)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !174, line: 54, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1072, file: !174, line: 55, baseType: !51, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1072, file: !174, line: 56, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1078, line: 26, size: 1152, elements: !1079)
!1078 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1079 = !{!1080, !1093, !1094, !1095, !3539, !3543, !3544, !3545, !3548, !3549, !3550, !3551, !3552}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1077, file: !1078, line: 27, baseType: !1081, size: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1082, line: 19, size: 192, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1083 = !{!1084, !1091, !1092}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1081, file: !1082, line: 20, baseType: !1085, size: 128)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1086, line: 296, size: 128, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1087 = !{!1088, !1089, !1090}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1085, file: !1086, line: 297, baseType: !88, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1085, file: !1086, line: 299, baseType: !325, size: 32, offset: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1085, file: !1086, line: 300, baseType: !49, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1081, file: !1082, line: 21, baseType: !7, size: 32, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1081, file: !1082, line: 22, baseType: !7, size: 32, offset: 160)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1077, file: !1078, line: 28, baseType: !1018, size: 128, align: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1077, file: !1078, line: 29, baseType: !7, size: 32, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1077, file: !1078, line: 30, baseType: !1096, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1098, line: 746, size: 58368, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1099 = !{!1100, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1187, !1198, !1293, !1297, !1300, !1331, !1332, !1333, !1334, !1345, !1347, !1348, !1349, !1350, !1351, !1352, !1363, !1364, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1381, !1382, !1389, !1390, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1908, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1956, !1962, !2032, !2033, !2034, !2035, !2036, !2039, !2046, !2051, !2054, !2057, !2060, !2740, !2939, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2977, !2978, !2979, !2988, !2996, !2997, !2998, !2999, !3000, !3005, !3006, !3007, !3010, !3011, !3014, !3017, !3023, !3031, !3034, !3035, !3121, !3122, !3123, !3124, !3125, !3131, !3132, !3133, !3134, !3135, !3136, !3139, !3142, !3143, !3146, !3147, !3148, !3151, !3152, !3153, !3154, !3155, !3156, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3188, !3191, !3197, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3209, !3281, !3283, !3284, !3285, !3286, !3287, !3288, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3318, !3319, !3320}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1097, file: !1098, line: 752, baseType: !1101, size: 192)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1102, line: 56, size: 192, elements: !1103)
!1102 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1102, line: 57, baseType: !68, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1101, file: !1102, line: 58, baseType: !68, size: 64, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1101, file: !1102, line: 59, baseType: !477, size: 32, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1101, file: !1102, line: 61, baseType: !477, size: 32, offset: 160)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1097, file: !1098, line: 754, baseType: !7, size: 32, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1097, file: !1098, line: 767, baseType: !49, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1097, file: !1098, line: 768, baseType: !381, size: 32, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1097, file: !1098, line: 770, baseType: !7, size: 32, offset: 352)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1097, file: !1098, line: 771, baseType: !7, size: 32, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1097, file: !1098, line: 774, baseType: !51, size: 32, offset: 416)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1097, file: !1098, line: 775, baseType: !1115, size: 128, offset: 448)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1116, line: 58, size: 128, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1117 = !{!1118, !1119, !1124, !1125}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1115, file: !1116, line: 59, baseType: !1012, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !1116, line: 60, baseType: !1120, size: 32, offset: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !1116, line: 60, size: 32, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1120, file: !1116, line: 61, baseType: !7, size: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1120, file: !1116, line: 62, baseType: !78, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1115, file: !1116, line: 65, baseType: !122, size: 16, offset: 96)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1115, file: !1116, line: 65, baseType: !122, size: 16, offset: 112)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1097, file: !1098, line: 776, baseType: !7, size: 32, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1097, file: !1098, line: 777, baseType: !68, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1097, file: !1098, line: 778, baseType: !1096, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1097, file: !1098, line: 787, baseType: !51, size: 32, offset: 768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1097, file: !1098, line: 788, baseType: !51, size: 32, offset: 800)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1097, file: !1098, line: 790, baseType: !51, size: 32, offset: 832)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1097, file: !1098, line: 792, baseType: !51, size: 32, offset: 864)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1097, file: !1098, line: 793, baseType: !51, size: 32, offset: 896)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1097, file: !1098, line: 794, baseType: !51, size: 32, offset: 928)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1097, file: !1098, line: 795, baseType: !7, size: 32, offset: 960)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1097, file: !1098, line: 797, baseType: !1137, size: 2048, offset: 1024)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1098, line: 551, size: 2048, elements: !1138)
!1138 = !{!1139, !1144, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1166, !1169, !1170, !1171}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1137, file: !1098, line: 553, baseType: !1140, size: 128)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1098, line: 411, size: 128, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1140, file: !1098, line: 412, baseType: !68, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1140, file: !1098, line: 413, baseType: !477, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1137, file: !1098, line: 554, baseType: !1145, size: 192, align: 64, offset: 128)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1146, line: 5, size: 192, align: 64, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1147 = !{!1148, !1149, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1145, file: !1146, line: 6, baseType: !68, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1145, file: !1146, line: 7, baseType: !1150, size: 64, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1145, file: !1146, line: 8, baseType: !1150, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1137, file: !1098, line: 555, baseType: !754, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1137, file: !1098, line: 556, baseType: !754, size: 64, offset: 384)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1137, file: !1098, line: 558, baseType: !126, size: 128, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1137, file: !1098, line: 559, baseType: !7, size: 32, offset: 576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1137, file: !1098, line: 561, baseType: !754, size: 64, offset: 640)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1137, file: !1098, line: 562, baseType: !754, size: 64, offset: 704)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1137, file: !1098, line: 563, baseType: !754, size: 64, offset: 768)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1137, file: !1098, line: 564, baseType: !754, size: 64, offset: 832)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1137, file: !1098, line: 565, baseType: !350, size: 64, offset: 896)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1137, file: !1098, line: 566, baseType: !754, size: 64, offset: 960)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1137, file: !1098, line: 568, baseType: !754, size: 64, offset: 1024)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1137, file: !1098, line: 571, baseType: !51, size: 32, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1137, file: !1098, line: 572, baseType: !1165, size: 64, offset: 1152)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1137, file: !1098, line: 574, baseType: !1167, size: 64, offset: 1216)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1098, line: 49, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1137, file: !1098, line: 576, baseType: !1167, size: 64, offset: 1280)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1137, file: !1098, line: 578, baseType: !68, size: 64, offset: 1344)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1137, file: !1098, line: 588, baseType: !1172, size: 512, align: 512, offset: 1536)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1098, line: 497, size: 512, align: 512, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1172, file: !1098, line: 498, baseType: !754, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1172, file: !1098, line: 499, baseType: !754, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1172, file: !1098, line: 500, baseType: !754, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1172, file: !1098, line: 501, baseType: !477, size: 32, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1172, file: !1098, line: 502, baseType: !477, size: 32, offset: 224)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1172, file: !1098, line: 503, baseType: !68, size: 64, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1172, file: !1098, line: 504, baseType: !68, size: 64, offset: 320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1172, file: !1098, line: 505, baseType: !68, size: 64, offset: 384)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1172, file: !1098, line: 506, baseType: !1183, size: 64, align: 64, offset: 448)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1098, line: 445, size: 64, align: 64, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1183, file: !1098, line: 446, baseType: !7, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1183, file: !1098, line: 447, baseType: !7, size: 32, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1097, file: !1098, line: 798, baseType: !1188, size: 384, offset: 3072)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1098, line: 592, size: 384, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1188, file: !1098, line: 593, baseType: !126, size: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1188, file: !1098, line: 594, baseType: !68, size: 64, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1188, file: !1098, line: 595, baseType: !68, size: 64, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1188, file: !1098, line: 596, baseType: !7, size: 32, offset: 256)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1188, file: !1098, line: 597, baseType: !55, size: 16, offset: 288)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1188, file: !1098, line: 598, baseType: !55, size: 16, offset: 304)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1188, file: !1098, line: 600, baseType: !1197, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1097, file: !1098, line: 799, baseType: !1199, size: 1792, offset: 3456)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1098, line: 610, size: 1792, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1290, !1291}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1199, file: !1098, line: 611, baseType: !1145, size: 192, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1199, file: !1098, line: 618, baseType: !754, size: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1199, file: !1098, line: 619, baseType: !754, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1199, file: !1098, line: 620, baseType: !754, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1199, file: !1098, line: 621, baseType: !754, size: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1199, file: !1098, line: 622, baseType: !754, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1199, file: !1098, line: 629, baseType: !350, size: 64, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1199, file: !1098, line: 630, baseType: !754, size: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1199, file: !1098, line: 631, baseType: !7, size: 32, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1199, file: !1098, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1199, file: !1098, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1199, file: !1098, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1199, file: !1098, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1199, file: !1098, line: 662, baseType: !1215, size: 512, offset: 704)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !36, line: 118, size: 512, elements: !1216)
!1216 = !{!1217, !1225, !1226, !1231, !1286, !1287, !1288, !1289}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1215, file: !36, line: 119, baseType: !1218, size: 256)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1219, line: 9, size: 256, elements: !1220)
!1219 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1218, file: !1219, line: 10, baseType: !1145, size: 192, align: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1218, file: !1219, line: 11, baseType: !1223, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1224, line: 29, baseType: !350)
!1224 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1215, file: !36, line: 120, baseType: !1223, size: 64, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1215, file: !36, line: 121, baseType: !1227, size: 64, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!35, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1215, file: !36, line: 122, baseType: !1232, size: 64, offset: 384)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !36, line: 159, size: 512, align: 512, elements: !1234)
!1234 = !{!1235, !1260, !1261, !1264, !1269, !1270, !1281, !1285}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1233, file: !36, line: 160, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !36, line: 215, size: 4608, align: 512, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1237, file: !36, line: 216, baseType: !353, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1237, file: !36, line: 217, baseType: !7, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1237, file: !36, line: 218, baseType: !7, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1237, file: !36, line: 219, baseType: !7, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1237, file: !36, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1237, file: !36, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1237, file: !36, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1237, file: !36, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1237, file: !36, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1237, file: !36, line: 226, baseType: !7, size: 32, offset: 160)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1237, file: !36, line: 227, baseType: !55, size: 16, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1237, file: !36, line: 228, baseType: !55, size: 16, offset: 208)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1237, file: !36, line: 229, baseType: !7, size: 32, offset: 224)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1237, file: !36, line: 235, baseType: !1223, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1237, file: !36, line: 236, baseType: !1230, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1237, file: !36, line: 237, baseType: !1223, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1237, file: !36, line: 238, baseType: !1230, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1237, file: !36, line: 239, baseType: !1257, size: 4096, align: 512, offset: 512)
!1257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1233, size: 4096, align: 512, elements: !1258)
!1258 = !{!1259}
!1259 = !DISubrange(count: 8)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1233, file: !36, line: 161, baseType: !7, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1233, file: !36, line: 162, baseType: !1262, size: 32, offset: 96)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !54, line: 32, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !66, line: 96, baseType: !51)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1233, file: !36, line: 163, baseType: !1265, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !725, line: 274, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !725, line: 274, size: 32, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1266, file: !725, line: 274, baseType: !729, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1233, file: !36, line: 164, baseType: !1230, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1233, file: !36, line: 165, baseType: !1271, size: 128, offset: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1219, line: 14, size: 128, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1271, file: !1219, line: 15, baseType: !1274, size: 128)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1146, line: 26, size: 128, elements: !1275)
!1275 = !{!1276, !1280}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1274, file: !1146, line: 27, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1146, line: 12, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1277, file: !1146, line: 13, baseType: !1150, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1274, file: !1146, line: 28, baseType: !1150, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1233, file: !36, line: 166, baseType: !1282, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!1223}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1233, file: !36, line: 167, baseType: !1223, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1215, file: !36, line: 123, baseType: !112, size: 8, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1215, file: !36, line: 124, baseType: !112, size: 8, offset: 456)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1215, file: !36, line: 125, baseType: !112, size: 8, offset: 464)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1215, file: !36, line: 126, baseType: !112, size: 8, offset: 472)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1199, file: !1098, line: 671, baseType: !1215, size: 512, offset: 1216)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1199, file: !1098, line: 679, baseType: !1292, size: 64, offset: 1728)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1097, file: !1098, line: 800, baseType: !1294, size: 64, offset: 5248)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1296)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1098, line: 800, flags: DIFlagFwdDecl)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1097, file: !1098, line: 809, baseType: !1298, size: 64, offset: 5312)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1098, line: 70, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1097, file: !1098, line: 825, baseType: !1301, size: 2048, align: 512, offset: 5632)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1098, line: 509, size: 2048, align: 512, elements: !1302)
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1301, file: !1098, line: 511, baseType: !754, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1301, file: !1098, line: 512, baseType: !754, size: 64, offset: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1301, file: !1098, line: 513, baseType: !754, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1301, file: !1098, line: 514, baseType: !754, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1301, file: !1098, line: 515, baseType: !754, size: 64, offset: 256)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1301, file: !1098, line: 516, baseType: !754, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1301, file: !1098, line: 518, baseType: !754, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1301, file: !1098, line: 519, baseType: !754, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1301, file: !1098, line: 520, baseType: !350, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1301, file: !1098, line: 522, baseType: !754, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1301, file: !1098, line: 523, baseType: !754, size: 64, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1301, file: !1098, line: 524, baseType: !350, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1301, file: !1098, line: 526, baseType: !350, size: 64, offset: 768)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1301, file: !1098, line: 527, baseType: !754, size: 64, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1301, file: !1098, line: 529, baseType: !754, size: 64, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1301, file: !1098, line: 530, baseType: !754, size: 64, offset: 960)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1301, file: !1098, line: 531, baseType: !754, size: 64, offset: 1024)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1301, file: !1098, line: 532, baseType: !754, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1301, file: !1098, line: 533, baseType: !754, size: 64, offset: 1152)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1301, file: !1098, line: 535, baseType: !754, size: 64, offset: 1216)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1301, file: !1098, line: 536, baseType: !754, size: 64, offset: 1280)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1301, file: !1098, line: 537, baseType: !754, size: 64, offset: 1344)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1301, file: !1098, line: 538, baseType: !754, size: 64, offset: 1408)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1301, file: !1098, line: 539, baseType: !754, size: 64, offset: 1472)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1301, file: !1098, line: 540, baseType: !754, size: 64, offset: 1536)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1301, file: !1098, line: 541, baseType: !754, size: 64, offset: 1600)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1301, file: !1098, line: 542, baseType: !754, size: 64, offset: 1664)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1301, file: !1098, line: 543, baseType: !754, size: 64, offset: 1728)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1097, file: !1098, line: 833, baseType: !7, size: 32, offset: 7680)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1097, file: !1098, line: 836, baseType: !7, size: 32, offset: 7712)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1097, file: !1098, line: 837, baseType: !51, size: 32, offset: 7744)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1097, file: !1098, line: 838, baseType: !1335, size: 64, offset: 7808)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1338, line: 19, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1338, line: 19, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1339, file: !1338, line: 19, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !1343)
!1343 = !{!1344}
!1344 = !DISubrange(count: 1)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1097, file: !1098, line: 839, baseType: !1346, size: 64, offset: 7872)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1097, file: !1098, line: 840, baseType: !1337, size: 64, offset: 7936)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1097, file: !1098, line: 841, baseType: !49, size: 64, offset: 8000)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1097, file: !1098, line: 843, baseType: !55, size: 16, offset: 8064)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1097, file: !1098, line: 845, baseType: !55, size: 16, offset: 8080)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1097, file: !1098, line: 848, baseType: !51, size: 32, offset: 8096)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1097, file: !1098, line: 849, baseType: !1353, size: 32, offset: 8128)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1098, line: 718, size: 32, elements: !1354)
!1354 = !{!1355, !1362}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1353, file: !1098, line: 724, baseType: !1356, size: 32)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1353, file: !1098, line: 719, size: 32, elements: !1357)
!1357 = !{!1358, !1359, !1360, !1361}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1356, file: !1098, line: 720, baseType: !112, size: 8)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1356, file: !1098, line: 721, baseType: !112, size: 8, offset: 8)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1356, file: !1098, line: 722, baseType: !112, size: 8, offset: 16)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1356, file: !1098, line: 723, baseType: !112, size: 8, offset: 24)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1353, file: !1098, line: 725, baseType: !477, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1097, file: !1098, line: 850, baseType: !126, size: 128, offset: 8192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1097, file: !1098, line: 851, baseType: !1365, size: 64, offset: 8320)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1098, line: 60, flags: DIFlagFwdDecl)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1097, file: !1098, line: 855, baseType: !68, size: 64, offset: 8384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1097, file: !1098, line: 856, baseType: !112, size: 8, offset: 8448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1097, file: !1098, line: 857, baseType: !112, size: 8, offset: 8456)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1097, file: !1098, line: 858, baseType: !51, size: 32, offset: 8480)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1097, file: !1098, line: 859, baseType: !126, size: 128, offset: 8512)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1097, file: !1098, line: 860, baseType: !51, size: 32, offset: 8640)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1097, file: !1098, line: 861, baseType: !126, size: 128, offset: 8704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1097, file: !1098, line: 873, baseType: !1375, size: 256, offset: 8832)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1098, line: 376, size: 256, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1375, file: !1098, line: 381, baseType: !68, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1375, file: !1098, line: 384, baseType: !756, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1375, file: !1098, line: 389, baseType: !756, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1375, file: !1098, line: 392, baseType: !756, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1097, file: !1098, line: 875, baseType: !126, size: 128, offset: 9088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1097, file: !1098, line: 877, baseType: !1383, size: 320, offset: 9216)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1384, line: 86, size: 320, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1385 = !{!1386, !1387, !1388}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1383, file: !1384, line: 87, baseType: !51, size: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1383, file: !1384, line: 88, baseType: !126, size: 128, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1383, file: !1384, line: 89, baseType: !126, size: 128, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1097, file: !1098, line: 878, baseType: !1145, size: 192, align: 64, offset: 9536)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1097, file: !1098, line: 881, baseType: !1391, size: 64, offset: 9728)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !143, line: 733, size: 10240, elements: !1393)
!1393 = !{!1394, !1825}
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !143, line: 734, baseType: !1395, size: 10240)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !143, line: 734, size: 10240, elements: !1396)
!1396 = !{!1397, !1401, !1414, !1419, !1420, !1421, !1422, !1423, !1424, !1433, !1434, !1435, !1441, !1442, !1443, !1444, !1445, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1482, !1494, !1497, !1545, !1546, !1547, !1550, !1811, !1812, !1815, !1816, !1817, !1823, !1824}
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !143, line: 739, baseType: !1398, size: 512, align: 512)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1395, file: !143, line: 739, size: 512, align: 512, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1398, file: !143, line: 747, baseType: !78, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1395, file: !143, line: 750, baseType: !1402, size: 128, offset: 512)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1403, line: 218, size: 128, elements: !1404)
!1403 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1404 = !{!1405, !1412, !1413}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1403, line: 219, baseType: !1406, size: 32)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !1403, line: 219, size: 32, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1406, file: !1403, line: 220, baseType: !88, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1406, file: !1403, line: 221, baseType: !1410)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1403, line: 197, baseType: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1403, line: 197, elements: !882)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1402, file: !1403, line: 223, baseType: !7, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1402, file: !1403, line: 224, baseType: !49, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1395, file: !143, line: 752, baseType: !1415, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!68, !1418, !68, !68, !68, !68}
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1395, file: !143, line: 756, baseType: !68, size: 64, offset: 704)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1395, file: !143, line: 757, baseType: !68, size: 64, offset: 768)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1395, file: !143, line: 760, baseType: !68, size: 64, offset: 832)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1395, file: !143, line: 761, baseType: !68, size: 64, offset: 896)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1395, file: !143, line: 763, baseType: !68, size: 64, offset: 960)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1395, file: !143, line: 764, baseType: !1425, size: 64, offset: 1024)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1427, line: 299, baseType: !1428)
!1427 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1427, line: 299, size: 64, elements: !1429)
!1429 = !{!1430}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1428, file: !1427, line: 299, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1432, line: 18, baseType: !68)
!1432 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1395, file: !143, line: 773, baseType: !78, size: 32, offset: 1088)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1395, file: !143, line: 785, baseType: !78, size: 32, offset: 1120)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1395, file: !143, line: 795, baseType: !1436, size: 64, offset: 1152)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !143, line: 726, size: 128, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1437, file: !143, line: 727, baseType: !754, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1437, file: !143, line: 728, baseType: !51, size: 32, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1395, file: !143, line: 801, baseType: !68, size: 64, offset: 1216)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1395, file: !143, line: 804, baseType: !344, size: 64, offset: 1280)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1395, file: !143, line: 806, baseType: !51, size: 32, offset: 1344)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1395, file: !143, line: 808, baseType: !88, size: 32, offset: 1376)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1395, file: !143, line: 823, baseType: !1446, size: 320, offset: 1408)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1447, line: 48, size: 320, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1448 = !{!1449, !1450, !1451, !1452, !1453}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1446, file: !1447, line: 49, baseType: !344, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1446, file: !1447, line: 55, baseType: !344, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1446, file: !1447, line: 57, baseType: !355, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1446, file: !1447, line: 59, baseType: !353, size: 32, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1446, file: !1447, line: 60, baseType: !126, size: 128, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1395, file: !143, line: 825, baseType: !126, size: 128, offset: 1728)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1395, file: !143, line: 845, baseType: !51, size: 32, offset: 1856)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1395, file: !143, line: 849, baseType: !68, size: 64, offset: 1920)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1395, file: !143, line: 850, baseType: !68, size: 64, offset: 1984)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1395, file: !143, line: 852, baseType: !68, size: 64, offset: 2048)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1395, file: !143, line: 853, baseType: !68, size: 64, offset: 2112)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1395, file: !143, line: 854, baseType: !346, size: 64, offset: 2176)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1395, file: !143, line: 855, baseType: !68, size: 64, offset: 2240)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1395, file: !143, line: 856, baseType: !68, size: 64, offset: 2304)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1395, file: !143, line: 857, baseType: !68, size: 64, offset: 2368)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1395, file: !143, line: 858, baseType: !68, size: 64, offset: 2432)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1395, file: !143, line: 865, baseType: !729, size: 32, offset: 2496)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1395, file: !143, line: 867, baseType: !88, size: 32, offset: 2528)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1395, file: !143, line: 869, baseType: !68, size: 64, offset: 2560)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1395, file: !143, line: 869, baseType: !68, size: 64, offset: 2624)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1395, file: !143, line: 869, baseType: !68, size: 64, offset: 2688)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1395, file: !143, line: 869, baseType: !68, size: 64, offset: 2752)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1395, file: !143, line: 870, baseType: !68, size: 64, offset: 2816)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1395, file: !143, line: 870, baseType: !68, size: 64, offset: 2880)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1395, file: !143, line: 870, baseType: !68, size: 64, offset: 2944)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1395, file: !143, line: 871, baseType: !68, size: 64, offset: 3008)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1395, file: !143, line: 871, baseType: !68, size: 64, offset: 3072)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1395, file: !143, line: 871, baseType: !68, size: 64, offset: 3136)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1395, file: !143, line: 871, baseType: !68, size: 64, offset: 3200)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1395, file: !143, line: 873, baseType: !1479, size: 3328, offset: 3264)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 3328, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 52)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1395, file: !143, line: 875, baseType: !1483, size: 1280, offset: 6592)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1484, size: 1280, elements: !431)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1485, line: 22, size: 320, elements: !1486)
!1485 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1486 = !{!1487, !1488, !1489, !1490}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1484, file: !1485, line: 23, baseType: !353, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1484, file: !1485, line: 24, baseType: !350, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1484, file: !1485, line: 26, baseType: !126, size: 128, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1484, file: !1485, line: 28, baseType: !1491, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !113, line: 20, baseType: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !115, line: 26, baseType: !51)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1395, file: !143, line: 877, baseType: !1495, size: 64, offset: 7872)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !143, line: 877, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1395, file: !143, line: 880, baseType: !1498, size: 1088, offset: 7936)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1499, line: 72, baseType: !1500)
!1499 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1499, line: 23, size: 1088, elements: !1501)
!1501 = !{!1502, !1503, !1504, !1505, !1506, !1509, !1510, !1511, !1512, !1539, !1540, !1541}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1500, file: !1499, line: 28, baseType: !754, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1500, file: !1499, line: 38, baseType: !346, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1500, file: !1499, line: 40, baseType: !68, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1500, file: !1499, line: 43, baseType: !1446, size: 320, offset: 192)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1500, file: !1499, line: 44, baseType: !1507, size: 64, offset: 512)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1499, line: 44, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1500, file: !1499, line: 48, baseType: !68, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1500, file: !1499, line: 59, baseType: !340, size: 256, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1500, file: !1499, line: 60, baseType: !49, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1500, file: !1499, line: 61, baseType: !1513, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1516, line: 13, size: 1216, elements: !1517)
!1516 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1515, file: !1516, line: 14, baseType: !49, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1515, file: !1516, line: 15, baseType: !68, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1515, file: !1516, line: 17, baseType: !68, size: 64, offset: 128)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1515, file: !1516, line: 17, baseType: !68, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1515, file: !1516, line: 18, baseType: !68, size: 64, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1515, file: !1516, line: 18, baseType: !68, size: 64, offset: 320)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1515, file: !1516, line: 19, baseType: !1525, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1515, file: !1516, line: 21, baseType: !644, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1515, file: !1516, line: 23, baseType: !644, size: 64, offset: 512)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1515, file: !1516, line: 24, baseType: !644, size: 64, offset: 576)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1515, file: !1516, line: 25, baseType: !644, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1515, file: !1516, line: 26, baseType: !644, size: 64, offset: 704)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1515, file: !1516, line: 27, baseType: !644, size: 64, offset: 768)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1515, file: !1516, line: 28, baseType: !644, size: 64, offset: 832)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1515, file: !1516, line: 29, baseType: !644, size: 64, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1515, file: !1516, line: 30, baseType: !644, size: 64, offset: 960)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1515, file: !1516, line: 31, baseType: !644, size: 64, offset: 1024)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1515, file: !1516, line: 32, baseType: !644, size: 64, offset: 1088)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1515, file: !1516, line: 33, baseType: !644, size: 64, offset: 1152)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1500, file: !1499, line: 63, baseType: !78, size: 32, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1500, file: !1499, line: 69, baseType: !122, size: 16, offset: 1056)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1500, file: !1499, line: 70, baseType: !1542, size: 16, offset: 1072)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !113, line: 18, baseType: !1543)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !115, line: 23, baseType: !1544)
!1544 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1395, file: !143, line: 882, baseType: !68, size: 64, offset: 9024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1395, file: !143, line: 885, baseType: !88, size: 32, offset: 9088)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1395, file: !143, line: 886, baseType: !1548, size: 64, offset: 9152)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !143, line: 732, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1395, file: !143, line: 901, baseType: !1551, size: 64, offset: 9216)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1553, line: 68, size: 4800, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1554 = !{!1555, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1594, !1595, !1598, !1599, !1709, !1710, !1722, !1792, !1793, !1807, !1809}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1552, file: !1553, line: 69, baseType: !1556, size: 576)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1553, line: 23, size: 576, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1556, file: !1553, line: 24, baseType: !477, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1556, file: !1553, line: 25, baseType: !1560, size: 512, offset: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1556, file: !1553, line: 25, size: 512, elements: !1561)
!1561 = !{!1562, !1571}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1560, file: !1553, line: 26, baseType: !1563, size: 480)
!1563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1564, size: 480, elements: !1569)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1553, line: 17, size: 96, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1564, file: !1553, line: 18, baseType: !477, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1564, file: !1553, line: 19, baseType: !477, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1564, file: !1553, line: 20, baseType: !477, size: 32, offset: 64)
!1569 = !{!1570}
!1570 = !DISubrange(count: 5)
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1553, line: 27, baseType: !1572, size: 128)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1560, file: !1553, line: 27, size: 128, elements: !1573)
!1573 = !{!1574, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1572, file: !1553, line: 28, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1572, file: !1553, line: 29, baseType: !1575, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1552, file: !1553, line: 70, baseType: !1556, size: 576, offset: 576)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1552, file: !1553, line: 71, baseType: !1556, size: 576, offset: 1152)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1552, file: !1553, line: 72, baseType: !1551, size: 64, offset: 1728)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1552, file: !1553, line: 73, baseType: !51, size: 32, offset: 1792)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1552, file: !1553, line: 74, baseType: !689, size: 32, offset: 1824)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1552, file: !1553, line: 75, baseType: !698, size: 32, offset: 1856)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1552, file: !1553, line: 76, baseType: !1584, size: 192, offset: 1920)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1585, line: 9, size: 192, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1586 = !{!1587, !1588, !1592, !1593}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1584, file: !1585, line: 10, baseType: !344, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1584, file: !1585, line: 11, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1585, line: 7, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1584, file: !1585, line: 12, baseType: !7, size: 32, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1584, file: !1585, line: 13, baseType: !381, size: 32, offset: 160)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !1553, line: 77, baseType: !68, size: 64, offset: 2112)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1552, file: !1553, line: 80, baseType: !1596, size: 8, offset: 2176)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !1597)
!1597 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1552, file: !1553, line: 88, baseType: !126, size: 128, offset: 2240)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1552, file: !1553, line: 89, baseType: !1600, size: 64, offset: 2368)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1602, line: 195, size: 1728, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1603 = !{!1604, !1605, !1608, !1613, !1614, !1617, !1618, !1625, !1626, !1627, !1628, !1631, !1632, !1633, !1634, !1635, !1673, !1694}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1601, file: !1602, line: 196, baseType: !381, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1601, file: !1602, line: 197, baseType: !1606, size: 32, offset: 32)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1602, line: 28, baseType: !1607)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !54, line: 104, baseType: !1492)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1602, line: 198, baseType: !1609, size: 192, offset: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !1602, line: 198, size: 192, elements: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1609, file: !1602, line: 199, baseType: !126, size: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1609, file: !1602, line: 200, baseType: !1145, size: 192, align: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1601, file: !1602, line: 205, baseType: !1446, size: 320, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1601, file: !1602, line: 206, baseType: !1615, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1602, line: 206, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1601, file: !1602, line: 207, baseType: !49, size: 64, offset: 640)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1602, line: 208, baseType: !1619, size: 64, offset: 704)
!1619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !1602, line: 208, size: 64, elements: !1620)
!1620 = !{!1621, !1624}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1619, file: !1602, line: 209, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1623, line: 8, baseType: !351)
!1623 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1619, file: !1602, line: 210, baseType: !1622, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1601, file: !1602, line: 212, baseType: !1622, size: 64, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1601, file: !1602, line: 213, baseType: !689, size: 32, offset: 832)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1601, file: !1602, line: 214, baseType: !698, size: 32, offset: 864)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1601, file: !1602, line: 215, baseType: !1629, size: 32, offset: 896)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1602, line: 31, baseType: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 110, baseType: !477)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1601, file: !1602, line: 216, baseType: !55, size: 16, offset: 928)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1601, file: !1602, line: 217, baseType: !55, size: 16, offset: 944)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1601, file: !1602, line: 221, baseType: !1544, size: 16, offset: 960)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1601, file: !1602, line: 228, baseType: !68, size: 64, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1602, line: 245, baseType: !1636, size: 320, offset: 1088)
!1636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !1602, line: 245, size: 320, elements: !1637)
!1637 = !{!1638, !1665}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1636, file: !1602, line: 246, baseType: !1639, size: 320)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1602, line: 114, size: 320, elements: !1640)
!1640 = !{!1641, !1642, !1654, !1657, !1664}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1639, file: !1602, line: 116, baseType: !68, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1602, line: 117, baseType: !1643, size: 64, offset: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1602, line: 117, size: 64, elements: !1644)
!1644 = !{!1645, !1653}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !1602, line: 118, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !1602, line: 118, size: 64, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1646, file: !1602, line: 120, baseType: !122, size: 16)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1646, file: !1602, line: 121, baseType: !1650, size: 48, offset: 16)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 48, elements: !1651)
!1651 = !{!1652}
!1652 = !DISubrange(count: 6)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1643, file: !1602, line: 127, baseType: !68, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1639, file: !1602, line: 129, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1602, line: 102, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1639, file: !1602, line: 130, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1602, line: 108, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1659, file: !1602, line: 109, baseType: !1018, size: 128, align: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1659, file: !1602, line: 110, baseType: !381, size: 32, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1659, file: !1602, line: 111, baseType: !1596, size: 8, offset: 160)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1639, file: !1602, line: 131, baseType: !45, size: 64, offset: 256)
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1636, file: !1602, line: 247, baseType: !1666, size: 320)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1636, file: !1602, line: 247, size: 320, elements: !1667)
!1667 = !{!1668, !1669, !1670, !1671, !1672}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1666, file: !1602, line: 248, baseType: !68, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1666, file: !1602, line: 249, baseType: !68, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !1602, line: 250, baseType: !1655, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1666, file: !1602, line: 251, baseType: !1658, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1666, file: !1602, line: 252, baseType: !609, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1602, line: 260, baseType: !1674, size: 256, offset: 1408)
!1674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !1602, line: 260, size: 256, elements: !1675)
!1675 = !{!1676, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1674, file: !1602, line: 261, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1602, line: 134, size: 256, elements: !1678)
!1678 = !{!1679, !1680}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1677, file: !1602, line: 135, baseType: !49, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1677, file: !1602, line: 136, baseType: !1681, size: 256)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 256, elements: !431)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1602, line: 262, baseType: !1683, size: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1674, file: !1602, line: 262, size: 256, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1683, file: !1602, line: 264, baseType: !126, size: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1683, file: !1602, line: 265, baseType: !1687, size: 128, offset: 128)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1688, line: 22, size: 128, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1689 = !{!1690, !1693}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1687, file: !1688, line: 23, baseType: !1691, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1688, line: 23, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1687, file: !1688, line: 24, baseType: !68, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1601, file: !1602, line: 280, baseType: !1695, size: 64, offset: 1664)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1602, line: 176, size: 192, elements: !1697)
!1697 = !{!1698, !1707, !1708}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1696, file: !1602, line: 177, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1602, line: 171, baseType: !1700)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!51, !1600, !1703, !1705, !1600}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1656)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1677)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1696, file: !1602, line: 178, baseType: !1600, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1696, file: !1602, line: 179, baseType: !1655, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1552, file: !1553, line: 90, baseType: !1446, size: 320, offset: 2432)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1552, file: !1553, line: 97, baseType: !1711, size: 256, offset: 2752)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1712, line: 98, size: 256, elements: !1713)
!1712 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1713 = !{!1714, !1715, !1716}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1711, file: !1712, line: 99, baseType: !344, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1711, file: !1712, line: 100, baseType: !126, size: 128, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1711, file: !1712, line: 101, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1712, line: 21, baseType: !1718)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{null, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1552, file: !1553, line: 99, baseType: !1723, size: 768, offset: 3008)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !41, line: 199, size: 768, elements: !1724)
!1724 = !{!1725, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1723, file: !41, line: 200, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!51, !1729}
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1723, file: !41, line: 201, baseType: !1731, size: 704, offset: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !41, line: 193, size: 704, elements: !1732)
!1732 = !{!1733, !1791}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1731, file: !41, line: 195, baseType: !1734, size: 640)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !41, line: 173, size: 640, elements: !1735)
!1735 = !{!1736, !1748, !1760, !1761, !1781, !1782, !1784, !1790}
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !41, line: 174, baseType: !1737, size: 192)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1734, file: !41, line: 174, size: 192, elements: !1738)
!1738 = !{!1739, !1747}
!1739 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !41, line: 175, baseType: !1740, size: 192)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1737, file: !41, line: 175, size: 192, elements: !1741)
!1741 = !{!1742, !1743, !1744, !1745, !1746}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1740, file: !41, line: 176, baseType: !62, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1740, file: !41, line: 177, baseType: !51, size: 32, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1740, file: !41, line: 178, baseType: !51, size: 32, offset: 96)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1740, file: !41, line: 179, baseType: !51, size: 32, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1740, file: !41, line: 180, baseType: !51, size: 32, offset: 160)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1737, file: !41, line: 182, baseType: !1018, size: 128, align: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1734, file: !41, line: 184, baseType: !1749, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1751, line: 26, size: 256, elements: !1752)
!1751 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1750, file: !1751, line: 27, baseType: !7, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1750, file: !1751, line: 28, baseType: !1755, size: 192, offset: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1756, line: 43, size: 192, elements: !1757)
!1756 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !1756, line: 44, baseType: !353, size: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1755, file: !1756, line: 45, baseType: !126, size: 128, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1734, file: !41, line: 185, baseType: !62, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1734, file: !41, line: 186, baseType: !1762, size: 64, offset: 320)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !41, line: 204, size: 960, elements: !1764)
!1764 = !{!1765, !1766, !1770, !1777}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1763, file: !41, line: 205, baseType: !1723, size: 768)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1763, file: !41, line: 206, baseType: !1767, size: 64, offset: 768)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1729, !1762}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1763, file: !41, line: 207, baseType: !1771, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1774, !1775, !1776}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1763, file: !41, line: 209, baseType: !1778, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!51, !1774, !62}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1734, file: !41, line: 187, baseType: !1729, size: 64, offset: 384)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1734, file: !41, line: 188, baseType: !1783, size: 64, offset: 448)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1734, file: !41, line: 189, baseType: !1785, size: 64, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !41, line: 157, size: 256, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1786, file: !41, line: 158, baseType: !1145, size: 192, align: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1786, file: !41, line: 159, baseType: !1774, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1734, file: !41, line: 190, baseType: !870, size: 64, offset: 576)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1731, file: !41, line: 196, baseType: !1277, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1552, file: !1553, line: 100, baseType: !1774, size: 64, offset: 3776)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1552, file: !1553, line: 102, baseType: !1794, size: 64, offset: 3840)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1553, line: 107, size: 1152, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1805}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1795, file: !1553, line: 108, baseType: !874, size: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1795, file: !1553, line: 109, baseType: !1551, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1795, file: !1553, line: 110, baseType: !689, size: 32, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1795, file: !1553, line: 111, baseType: !78, size: 32, offset: 224)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1795, file: !1553, line: 112, baseType: !1802, size: 640, offset: 256)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 640, elements: !1803)
!1803 = !{!1804}
!1804 = !DISubrange(count: 10)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1795, file: !1553, line: 113, baseType: !1806, size: 256, offset: 896)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !431)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1552, file: !1553, line: 103, baseType: !1808, size: 640, offset: 3904)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 640, elements: !1803)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1552, file: !1553, line: 104, baseType: !1810, size: 256, offset: 4544)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !644, size: 256, elements: !431)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1395, file: !143, line: 904, baseType: !1418, size: 64, offset: 9280)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1395, file: !143, line: 906, baseType: !1813, size: 64, offset: 9344)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !143, line: 906, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1395, file: !143, line: 930, baseType: !78, size: 32, offset: 9408)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1395, file: !143, line: 933, baseType: !78, size: 32, offset: 9440)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1395, file: !143, line: 935, baseType: !1818, size: 64, offset: 9472)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !167, line: 103, size: 64, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1818, file: !167, line: 104, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !167, line: 101, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1395, file: !143, line: 940, baseType: !344, size: 64, offset: 9536)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1395, file: !143, line: 942, baseType: !1711, size: 256, offset: 9600)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1392, file: !143, line: 986, baseType: !1826, offset: 10240)
!1826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, elements: !1827)
!1827 = !{!1828}
!1828 = !DISubrange(count: -1)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1097, file: !1098, line: 882, baseType: !1391, size: 64, offset: 9792)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1097, file: !1098, line: 884, baseType: !51, size: 32, offset: 9856)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1097, file: !1098, line: 885, baseType: !51, size: 32, offset: 9888)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1097, file: !1098, line: 886, baseType: !51, size: 32, offset: 9920)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1097, file: !1098, line: 888, baseType: !51, size: 32, offset: 9952)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1097, file: !1098, line: 890, baseType: !68, size: 64, offset: 9984)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1097, file: !1098, line: 893, baseType: !7, size: 32, offset: 10048)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1097, file: !1098, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1097, file: !1098, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1097, file: !1098, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1097, file: !1098, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1097, file: !1098, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1097, file: !1098, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1097, file: !1098, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1097, file: !1098, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1097, file: !1098, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1097, file: !1098, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1097, file: !1098, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1097, file: !1098, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1097, file: !1098, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1097, file: !1098, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1097, file: !1098, line: 969, baseType: !68, size: 64, offset: 10176)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1097, file: !1098, line: 971, baseType: !1852, size: 448, offset: 10240)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !137, line: 25, size: 448, elements: !1853)
!1853 = !{!1854, !1855, !1860}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1852, file: !137, line: 26, baseType: !68, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1852, file: !137, line: 27, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!644, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !137, line: 28, baseType: !1861, size: 320, offset: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1852, file: !137, line: 28, size: 320, elements: !1862)
!1862 = !{!1863, !1873, !1898}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1861, file: !137, line: 37, baseType: !1864, size: 320)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !137, line: 30, size: 320, elements: !1865)
!1865 = !{!1866, !1868, !1869, !1870, !1871, !1872}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1864, file: !137, line: 31, baseType: !1867, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1864, file: !137, line: 32, baseType: !477, size: 32, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !137, line: 33, baseType: !477, size: 32, offset: 96)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1864, file: !137, line: 34, baseType: !477, size: 32, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1864, file: !137, line: 35, baseType: !754, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1864, file: !137, line: 36, baseType: !1867, size: 64, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1861, file: !137, line: 47, baseType: !1874, size: 192)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !137, line: 39, size: 192, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1897}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1874, file: !137, line: 40, baseType: !1262, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1874, file: !137, line: 41, baseType: !136, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1874, file: !137, line: 42, baseType: !1879, size: 64, offset: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1874, file: !137, line: 42, size: 64, elements: !1880)
!1880 = !{!1881, !1889}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1879, file: !137, line: 43, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1884, line: 7, size: 128, elements: !1885)
!1884 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1885 = !{!1886, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1883, file: !1884, line: 8, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !66, line: 93, baseType: !72)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1883, file: !1884, line: 9, baseType: !72, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1879, file: !137, line: 44, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1892, line: 7, size: 64, elements: !1893)
!1892 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1893 = !{!1894, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1891, file: !1892, line: 8, baseType: !1895, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1892, line: 5, baseType: !1492)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1891, file: !1892, line: 9, baseType: !1492, size: 32, offset: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1874, file: !137, line: 46, baseType: !754, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1861, file: !137, line: 55, baseType: !1899, size: 256)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1861, file: !137, line: 49, size: 256, elements: !1900)
!1900 = !{!1901, !1904, !1905, !1906, !1907}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1899, file: !137, line: 50, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !137, line: 14, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1899, file: !137, line: 51, baseType: !51, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1899, file: !137, line: 52, baseType: !51, size: 32, offset: 96)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1899, file: !137, line: 53, baseType: !68, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1899, file: !137, line: 54, baseType: !68, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1097, file: !1098, line: 973, baseType: !1909, size: 32, offset: 10688)
!1909 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !54, line: 27, baseType: !1910)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !66, line: 28, baseType: !51)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1097, file: !1098, line: 974, baseType: !1909, size: 32, offset: 10720)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1097, file: !1098, line: 978, baseType: !68, size: 64, offset: 10752)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1097, file: !1098, line: 987, baseType: !1096, size: 64, offset: 10816)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1097, file: !1098, line: 990, baseType: !1096, size: 64, offset: 10880)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1097, file: !1098, line: 995, baseType: !126, size: 128, offset: 10944)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1097, file: !1098, line: 996, baseType: !126, size: 128, offset: 11072)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1097, file: !1098, line: 997, baseType: !1096, size: 64, offset: 11200)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1097, file: !1098, line: 1005, baseType: !126, size: 128, offset: 11264)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1097, file: !1098, line: 1006, baseType: !126, size: 128, offset: 11392)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1097, file: !1098, line: 1009, baseType: !1059, size: 64, offset: 11520)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1097, file: !1098, line: 1010, baseType: !1922, size: 512, offset: 11584)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 512, elements: !431)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1097, file: !1098, line: 1011, baseType: !126, size: 128, offset: 12096)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1097, file: !1098, line: 1012, baseType: !126, size: 128, offset: 12224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1097, file: !1098, line: 1014, baseType: !1749, size: 64, offset: 12352)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1097, file: !1098, line: 1017, baseType: !963, size: 64, offset: 12416)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1097, file: !1098, line: 1020, baseType: !963, size: 64, offset: 12480)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1097, file: !1098, line: 1023, baseType: !49, size: 64, offset: 12544)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1097, file: !1098, line: 1025, baseType: !754, size: 64, offset: 12608)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1097, file: !1098, line: 1026, baseType: !754, size: 64, offset: 12672)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1097, file: !1098, line: 1031, baseType: !754, size: 64, offset: 12736)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1097, file: !1098, line: 1032, baseType: !1933, size: 192, offset: 12800)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1098, line: 324, size: 192, elements: !1934)
!1934 = !{!1935, !1936, !1937}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1933, file: !1098, line: 326, baseType: !754, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1933, file: !1098, line: 327, baseType: !754, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1933, file: !1098, line: 328, baseType: !353, size: 32, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1097, file: !1098, line: 1041, baseType: !68, size: 64, offset: 12992)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1097, file: !1098, line: 1042, baseType: !68, size: 64, offset: 13056)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1097, file: !1098, line: 1045, baseType: !754, size: 64, offset: 13120)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1097, file: !1098, line: 1048, baseType: !754, size: 64, offset: 13184)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1097, file: !1098, line: 1051, baseType: !68, size: 64, offset: 13248)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1097, file: !1098, line: 1052, baseType: !68, size: 64, offset: 13312)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1097, file: !1098, line: 1055, baseType: !1945, size: 640, offset: 13376)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1946, line: 132, size: 640, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1947 = !{!1948, !1954, !1955}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1945, file: !1946, line: 133, baseType: !1949, size: 576)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 576, elements: !610)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1946, line: 117, size: 192, elements: !1951)
!1951 = !{!1952, !1953}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1950, file: !1946, line: 118, baseType: !754, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1950, file: !1946, line: 119, baseType: !1271, size: 128, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1945, file: !1946, line: 134, baseType: !7, size: 32, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1945, file: !1946, line: 135, baseType: !7, size: 32, offset: 608)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1097, file: !1098, line: 1058, baseType: !1957, size: 448, offset: 14016)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1946, line: 144, size: 448, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1957, file: !1946, line: 145, baseType: !1018, size: 128, align: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1957, file: !1946, line: 146, baseType: !340, size: 256, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1957, file: !1946, line: 147, baseType: !7, size: 32, offset: 384)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1097, file: !1098, line: 1064, baseType: !1963, size: 64, offset: 14464)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1965)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1966, line: 110, size: 1472, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1967 = !{!1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !2017, !2018, !2019, !2027}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1965, file: !1966, line: 111, baseType: !344, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1965, file: !1966, line: 112, baseType: !689, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1965, file: !1966, line: 113, baseType: !698, size: 32, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1965, file: !1966, line: 114, baseType: !689, size: 32, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1965, file: !1966, line: 115, baseType: !698, size: 32, offset: 160)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1965, file: !1966, line: 116, baseType: !689, size: 32, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1965, file: !1966, line: 117, baseType: !698, size: 32, offset: 224)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1965, file: !1966, line: 118, baseType: !689, size: 32, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1965, file: !1966, line: 119, baseType: !698, size: 32, offset: 288)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1965, file: !1966, line: 120, baseType: !7, size: 32, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1965, file: !1966, line: 121, baseType: !1979, size: 64, offset: 384)
!1979 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1980, line: 24, baseType: !1981)
!1980 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1980, line: 24, size: 64, elements: !1982)
!1982 = !{!1983}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1981, file: !1980, line: 24, baseType: !754, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1965, file: !1966, line: 122, baseType: !1979, size: 64, offset: 448)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1965, file: !1966, line: 123, baseType: !1979, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1965, file: !1966, line: 124, baseType: !1979, size: 64, offset: 576)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1965, file: !1966, line: 125, baseType: !1979, size: 64, offset: 640)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1965, file: !1966, line: 127, baseType: !116, size: 8, offset: 704)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1965, file: !1966, line: 129, baseType: !1600, size: 64, offset: 768)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1965, file: !1966, line: 130, baseType: !1600, size: 64, offset: 832)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1965, file: !1966, line: 131, baseType: !1600, size: 64, offset: 896)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1965, file: !1966, line: 132, baseType: !1600, size: 64, offset: 960)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1965, file: !1966, line: 135, baseType: !49, size: 64, offset: 1024)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1965, file: !1966, line: 137, baseType: !1995, size: 64, offset: 1088)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1997, line: 14, size: 1088, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1998 = !{!1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1996, file: !1997, line: 15, baseType: !381, size: 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1996, file: !1997, line: 17, baseType: !1484, size: 320, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1996, file: !1997, line: 19, baseType: !68, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1996, file: !1997, line: 20, baseType: !344, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1996, file: !1997, line: 23, baseType: !874, size: 128, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1996, file: !1997, line: 24, baseType: !689, size: 32, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1996, file: !1997, line: 29, baseType: !344, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1996, file: !1997, line: 36, baseType: !2007, size: 320, offset: 768)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2008, line: 15, size: 320, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2015, !2016}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !2008, line: 16, baseType: !353, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2007, file: !2008, line: 18, baseType: !51, size: 32, offset: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2007, file: !2008, line: 19, baseType: !51, size: 32, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2007, file: !2008, line: 20, baseType: !51, size: 32, offset: 96)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2007, file: !2008, line: 21, baseType: !51, size: 32, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2007, file: !2008, line: 22, baseType: !68, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2007, file: !2008, line: 23, baseType: !68, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1965, file: !1966, line: 138, baseType: !1551, size: 64, offset: 1152)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1965, file: !1966, line: 139, baseType: !1794, size: 64, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1965, file: !1966, line: 140, baseType: !2020, size: 64, offset: 1280)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1966, line: 25, size: 64, elements: !2022)
!2022 = !{!2023, !2024, !2025}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2021, file: !1966, line: 26, baseType: !78, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2021, file: !1966, line: 27, baseType: !51, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2021, file: !1966, line: 28, baseType: !2026, offset: 64)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, elements: !1827)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !1965, file: !1966, line: 142, baseType: !2028, size: 128, offset: 1344)
!2028 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1965, file: !1966, line: 142, size: 128, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2028, file: !1966, line: 143, baseType: !51, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2028, file: !1966, line: 144, baseType: !1018, size: 128, align: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1097, file: !1098, line: 1067, baseType: !1963, size: 64, offset: 14528)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1097, file: !1098, line: 1070, baseType: !1963, size: 64, offset: 14592)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1097, file: !1098, line: 1074, baseType: !1600, size: 64, offset: 14656)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1097, file: !1098, line: 1084, baseType: !437, size: 128, offset: 14720)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1097, file: !1098, line: 1086, baseType: !2037, size: 64, offset: 14848)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1098, line: 55, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1097, file: !1098, line: 1089, baseType: !2040, size: 64, offset: 14912)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2041, line: 12, size: 64, elements: !2042)
!2041 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2042 = !{!2043}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2040, file: !2041, line: 13, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2041, line: 8, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1097, file: !1098, line: 1090, baseType: !2047, size: 128, offset: 14976)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2048, line: 13, size: 128, elements: !2049)
!2048 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2049 = !{!2050}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2047, file: !2048, line: 14, baseType: !126, size: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1097, file: !1098, line: 1097, baseType: !2052, size: 64, offset: 15104)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1098, line: 50, flags: DIFlagFwdDecl)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1097, file: !1098, line: 1100, baseType: !2055, size: 64, offset: 15168)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1098, line: 1100, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1097, file: !1098, line: 1103, baseType: !2058, size: 64, offset: 15232)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1098, line: 53, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1097, file: !1098, line: 1107, baseType: !2061, size: 64, offset: 15296)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2063, line: 31, size: 576, elements: !2064)
!2063 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2064 = !{!2065, !2066, !2069, !2072, !2075, !2076, !2079, !2082, !2083}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2062, file: !2063, line: 32, baseType: !381, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2062, file: !2063, line: 33, baseType: !2067, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2063, line: 9, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2062, file: !2063, line: 34, baseType: !2070, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2063, line: 10, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2062, file: !2063, line: 35, baseType: !2073, size: 64, offset: 192)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2063, line: 8, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2062, file: !2063, line: 36, baseType: !1076, size: 64, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2062, file: !2063, line: 37, baseType: !2077, size: 64, offset: 320)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1602, line: 34, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2062, file: !2063, line: 38, baseType: !2080, size: 64, offset: 384)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2063, line: 38, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2062, file: !2063, line: 39, baseType: !2080, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2062, file: !2063, line: 40, baseType: !2084, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2086, line: 771, size: 384, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!2087 = !{!2088, !2089, !2090, !2091}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2085, file: !2086, line: 772, baseType: !1584, size: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2085, file: !2086, line: 773, baseType: !1551, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2085, file: !2086, line: 774, baseType: !1794, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !2085, file: !2086, line: 775, baseType: !2092, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2094, line: 209, size: 4736, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!2095 = !{!2096, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2093, file: !2094, line: 215, baseType: !2097, size: 896)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 896, elements: !494)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !2094, line: 152, size: 1600, elements: !2100)
!2100 = !{!2101, !2595, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2718}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !2099, file: !2094, line: 154, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !2094, line: 389, size: 7872, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2497, !2514, !2515, !2519, !2520, !2521, !2522, !2523, !2524, !2543, !2544, !2546, !2547, !2548, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2582, !2585, !2586, !2593}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2103, file: !2094, line: 391, baseType: !2099, size: 1600)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2094, line: 393, baseType: !68, size: 64, offset: 1600)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2103, file: !2094, line: 401, baseType: !51, size: 32, offset: 1664)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !2103, file: !2094, line: 404, baseType: !51, size: 32, offset: 1696)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !2103, file: !2094, line: 417, baseType: !51, size: 32, offset: 1728)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !2103, file: !2094, line: 418, baseType: !51, size: 32, offset: 1760)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !2103, file: !2094, line: 419, baseType: !51, size: 32, offset: 1792)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !2103, file: !2094, line: 432, baseType: !51, size: 32, offset: 1824)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !2103, file: !2094, line: 433, baseType: !51, size: 32, offset: 1856)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !2103, file: !2094, line: 434, baseType: !51, size: 32, offset: 1888)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !2103, file: !2094, line: 436, baseType: !51, size: 32, offset: 1920)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !2103, file: !2094, line: 439, baseType: !7, size: 32, offset: 1952)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2103, file: !2094, line: 441, baseType: !2118, size: 64, offset: 1984)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !854, line: 190, size: 1152, elements: !2120)
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2489, !2490, !2491, !2492, !2493, !2496}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2119, file: !854, line: 191, baseType: !78, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2119, file: !854, line: 192, baseType: !78, size: 32, offset: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2119, file: !854, line: 202, baseType: !2118, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2119, file: !854, line: 203, baseType: !45, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2119, file: !854, line: 205, baseType: !1145, size: 192, align: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2119, file: !854, line: 207, baseType: !1525, size: 64, offset: 384)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2119, file: !854, line: 208, baseType: !7, size: 32, offset: 448)
!2128 = !DIDerivedType(tag: DW_TAG_member, scope: !2119, file: !854, line: 209, baseType: !2129, size: 256, offset: 512)
!2129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2119, file: !854, line: 209, size: 256, elements: !2130)
!2130 = !{!2131, !2140, !2144}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2129, file: !854, line: 210, baseType: !2132, size: 256)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !854, line: 153, size: 256, elements: !2133)
!2133 = !{!2134, !2135, !2136, !2139}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2132, file: !854, line: 154, baseType: !68, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2132, file: !854, line: 156, baseType: !1277, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2132, file: !854, line: 162, baseType: !2137, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !854, line: 162, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2132, file: !854, line: 167, baseType: !68, size: 64, offset: 192)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2129, file: !854, line: 211, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !854, line: 170, size: 64, elements: !2142)
!2142 = !{!2143}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2141, file: !854, line: 171, baseType: !2118, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2129, file: !854, line: 212, baseType: !2145, size: 256)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !854, line: 174, size: 256, elements: !2146)
!2146 = !{!2147, !2484, !2487, !2488}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2145, file: !854, line: 175, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !854, line: 271, size: 768, elements: !2151)
!2151 = !{!2152, !2457, !2461, !2462, !2463, !2464, !2465, !2469, !2470, !2471, !2472, !2480}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2150, file: !854, line: 276, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!51, !2156}
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !854, line: 251, size: 1216, elements: !2158)
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2157, file: !854, line: 253, baseType: !2118, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2157, file: !854, line: 254, baseType: !1418, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2157, file: !854, line: 255, baseType: !969, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2157, file: !854, line: 256, baseType: !49, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2157, file: !854, line: 259, baseType: !340, size: 256, offset: 256)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2157, file: !854, line: 260, baseType: !340, size: 256, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2157, file: !854, line: 261, baseType: !51, size: 32, offset: 768)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2157, file: !854, line: 262, baseType: !126, size: 128, offset: 832)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2157, file: !854, line: 263, baseType: !609, size: 64, offset: 960)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2157, file: !854, line: 265, baseType: !64, size: 64, offset: 1024)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2157, file: !854, line: 266, baseType: !1596, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2157, file: !854, line: 267, baseType: !1596, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2157, file: !854, line: 268, baseType: !2172, size: 64, offset: 1152)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2175, line: 563, size: 1024, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2176 = !{!2177, !2233, !2234, !2238, !2242, !2246, !2423, !2427, !2431, !2435, !2436, !2437, !2441, !2445, !2449, !2453}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2174, file: !2175, line: 564, baseType: !2178, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !143, line: 625, size: 1344, elements: !2183)
!2183 = !{!2184, !2193, !2194, !2200, !2207, !2208, !2213, !2214, !2219, !2220, !2223, !2224, !2225, !2226, !2227, !2228, !2231}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !143, line: 628, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !143, line: 628, size: 128, elements: !2186)
!2186 = !{!2187, !2192}
!2187 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !143, line: 629, baseType: !2188, size: 128)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !143, line: 629, size: 128, elements: !2189)
!2189 = !{!2190, !2191}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2188, file: !143, line: 631, baseType: !68, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2188, file: !143, line: 632, baseType: !68, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2185, file: !143, line: 635, baseType: !1018, size: 128, align: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2182, file: !143, line: 639, baseType: !1391, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2182, file: !143, line: 640, baseType: !2195, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1427, line: 297, baseType: !2196)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1427, line: 297, size: 64, elements: !2197)
!2197 = !{!2198}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2196, file: !1427, line: 297, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1432, line: 19, baseType: !68)
!2200 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !143, line: 646, baseType: !2201, size: 64, offset: 256)
!2201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !143, line: 646, size: 64, elements: !2202)
!2202 = !{!2203, !2206}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2201, file: !143, line: 647, baseType: !2204, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2205)
!2205 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !143, line: 542, baseType: !68)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2201, file: !143, line: 648, baseType: !2205, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2182, file: !143, line: 666, baseType: !51, size: 32, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2182, file: !143, line: 667, baseType: !2209, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !143, line: 579, size: 320, elements: !2211)
!2211 = !{!2212}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2210, file: !143, line: 580, baseType: !1446, size: 320)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2182, file: !143, line: 670, baseType: !1596, size: 8, offset: 448)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2182, file: !143, line: 681, baseType: !2215, size: 256, offset: 512)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !143, line: 678, size: 256, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2215, file: !143, line: 679, baseType: !1145, size: 192, align: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2215, file: !143, line: 680, baseType: !68, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2182, file: !143, line: 689, baseType: !126, size: 128, offset: 768)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2182, file: !143, line: 691, baseType: !2221, size: 64, offset: 896)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !143, line: 691, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2182, file: !143, line: 694, baseType: !2172, size: 64, offset: 960)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2182, file: !143, line: 697, baseType: !68, size: 64, offset: 1024)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2182, file: !143, line: 699, baseType: !1418, size: 64, offset: 1088)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2182, file: !143, line: 700, baseType: !49, size: 64, offset: 1152)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2182, file: !143, line: 711, baseType: !344, size: 64, offset: 1216)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2182, file: !143, line: 717, baseType: !2229, size: 64, offset: 1280)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !143, line: 717, flags: DIFlagFwdDecl)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2182, file: !143, line: 722, baseType: !2232, offset: 1344)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !143, line: 570, elements: !882)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2174, file: !2175, line: 569, baseType: !2178, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2174, file: !2175, line: 571, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!51, !2181, !68}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2174, file: !2175, line: 572, baseType: !2239, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!51, !2181}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2174, file: !2175, line: 578, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!51, !2181, !68, !68, !68}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2174, file: !2175, line: 580, baseType: !2247, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !143, line: 1184, baseType: !7)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2175, line: 512, size: 896, elements: !2253)
!2253 = !{!2254, !2262, !2263, !2270, !2277, !2287, !2416, !2417, !2419, !2421}
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2175, line: 513, baseType: !2255, size: 320)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !2175, line: 513, size: 320, elements: !2256)
!2256 = !{!2257, !2258, !2259, !2260, !2261}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2255, file: !2175, line: 514, baseType: !2181, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2255, file: !2175, line: 515, baseType: !325, size: 32, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2255, file: !2175, line: 516, baseType: !68, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2255, file: !2175, line: 517, baseType: !68, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2255, file: !2175, line: 518, baseType: !68, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2252, file: !2175, line: 520, baseType: !142, size: 32, offset: 320)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2252, file: !2175, line: 522, baseType: !2264, size: 64, offset: 384)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1432, line: 22, baseType: !2266)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1432, line: 22, size: 64, elements: !2267)
!2267 = !{!2268}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2266, file: !1432, line: 22, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1432, line: 15, baseType: !68)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2252, file: !2175, line: 524, baseType: !2271, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1427, line: 372, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1427, line: 372, size: 64, elements: !2274)
!2274 = !{!2275}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2273, file: !1427, line: 372, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1432, line: 16, baseType: !68)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !2175, line: 527, baseType: !2278, size: 64, offset: 512)
!2278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2252, file: !2175, line: 527, size: 64, elements: !2279)
!2279 = !{!2280, !2286}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2278, file: !2175, line: 528, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1432, line: 21, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1432, line: 21, size: 64, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2282, file: !1432, line: 21, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1432, line: 14, baseType: !68)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2278, file: !2175, line: 529, baseType: !2265, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2252, file: !2175, line: 534, baseType: !2288, size: 64, offset: 576)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !143, line: 74, size: 512, align: 128, elements: !2290)
!2290 = !{!2291, !2292, !2410, !2415}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2289, file: !143, line: 75, baseType: !68, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !143, line: 83, baseType: !2293, size: 320, offset: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !143, line: 83, size: 320, elements: !2294)
!2294 = !{!2295, !2316, !2330, !2334, !2409}
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !143, line: 84, baseType: !2296, size: 320)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !143, line: 84, size: 320, elements: !2297)
!2297 = !{!2298, !2309, !2310, !2315}
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !143, line: 90, baseType: !2299, size: 128)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !143, line: 90, size: 128, elements: !2300)
!2300 = !{!2301, !2302, !2307, !2308}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2299, file: !143, line: 91, baseType: !126, size: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, scope: !2299, file: !143, line: 94, baseType: !2303, size: 128)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !143, line: 94, size: 128, elements: !2304)
!2304 = !{!2305, !2306}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2303, file: !143, line: 96, baseType: !49, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2303, file: !143, line: 98, baseType: !7, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2299, file: !143, line: 102, baseType: !126, size: 128)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2299, file: !143, line: 103, baseType: !126, size: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2296, file: !143, line: 106, baseType: !679, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !143, line: 107, baseType: !2311, size: 64, offset: 192)
!2311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !143, line: 107, size: 64, elements: !2312)
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2311, file: !143, line: 108, baseType: !68, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2311, file: !143, line: 109, baseType: !68, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2296, file: !143, line: 117, baseType: !68, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !143, line: 119, baseType: !2317, size: 320)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !143, line: 119, size: 320, elements: !2318)
!2318 = !{!2319, !2320, !2323, !2324, !2325}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2317, file: !143, line: 124, baseType: !68, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2317, file: !143, line: 125, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !143, line: 125, flags: DIFlagFwdDecl)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2317, file: !143, line: 126, baseType: !68, size: 64, offset: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2317, file: !143, line: 127, baseType: !68, size: 64, offset: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !143, line: 128, baseType: !2326, size: 64, offset: 256)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !143, line: 128, size: 64, elements: !2327)
!2327 = !{!2328, !2329}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2326, file: !143, line: 133, baseType: !68, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2326, file: !143, line: 138, baseType: !344, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !143, line: 141, baseType: !2331, size: 64)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !143, line: 141, size: 64, elements: !2332)
!2332 = !{!2333}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2331, file: !143, line: 142, baseType: !68, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !143, line: 144, baseType: !2335, size: 128)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !143, line: 144, size: 128, elements: !2336)
!2336 = !{!2337, !2408}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2335, file: !143, line: 146, baseType: !2338, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !159, line: 126, size: 1216, elements: !2340)
!2340 = !{!2341, !2351, !2372, !2373, !2374, !2375, !2376, !2390, !2391, !2392}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2339, file: !159, line: 127, baseType: !2342, size: 384)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !159, line: 21, size: 384, elements: !2343)
!2343 = !{!2344, !2345, !2347, !2348, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2342, file: !159, line: 22, baseType: !68, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2342, file: !159, line: 23, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2342, file: !159, line: 24, baseType: !2346, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2342, file: !159, line: 25, baseType: !68, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2342, file: !159, line: 26, baseType: !68, size: 64, offset: 256)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2342, file: !159, line: 27, baseType: !68, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2339, file: !159, line: 128, baseType: !2352, size: 128, offset: 384)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2353, line: 105, size: 128, elements: !2354)
!2353 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2352, file: !2353, line: 110, baseType: !68, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2352, file: !2353, line: 118, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2353, line: 95, size: 448, elements: !2359)
!2359 = !{!2360, !2361, !2367, !2368, !2369, !2370, !2371}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2358, file: !2353, line: 96, baseType: !344, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2358, file: !2353, line: 97, baseType: !2362, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2353, line: 60, baseType: !2364)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{null, !2366}
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2358, file: !2353, line: 98, baseType: !2362, size: 64, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2358, file: !2353, line: 99, baseType: !1596, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2358, file: !2353, line: 100, baseType: !1596, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2358, file: !2353, line: 101, baseType: !1018, size: 128, align: 64, offset: 256)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2358, file: !2353, line: 102, baseType: !2366, size: 64, offset: 384)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2339, file: !159, line: 129, baseType: !1750, size: 256, offset: 512)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2339, file: !159, line: 130, baseType: !158, size: 32, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2339, file: !159, line: 131, baseType: !7, size: 32, offset: 800)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2339, file: !159, line: 132, baseType: !68, size: 64, offset: 832)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2339, file: !159, line: 133, baseType: !2377, size: 64, offset: 896)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !159, line: 77, size: 192, elements: !2380)
!2380 = !{!2381, !2385, !2386}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2379, file: !159, line: 83, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2288}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2379, file: !159, line: 89, baseType: !2247, size: 64, offset: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2379, file: !159, line: 100, baseType: !2387, size: 64, offset: 128)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!51, !2338, !68, !68, !51}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2339, file: !159, line: 134, baseType: !49, size: 64, offset: 960)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2339, file: !159, line: 135, baseType: !51, size: 32, offset: 1024)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !2339, file: !159, line: 136, baseType: !2393, size: 128, offset: 1088)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2339, file: !159, line: 136, size: 128, elements: !2394)
!2394 = !{!2395, !2401}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2393, file: !159, line: 137, baseType: !2396, size: 128)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2397, line: 6, size: 128, elements: !2398)
!2397 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2398 = !{!2399, !2400}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2396, file: !2397, line: 7, baseType: !754, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2396, file: !2397, line: 8, baseType: !754, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, scope: !2393, file: !159, line: 138, baseType: !2402)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2393, file: !159, line: 138, elements: !2403)
!2403 = !{!2404, !2406}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2402, file: !159, line: 138, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2402, file: !159, line: 138, elements: !882)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2402, file: !159, line: 138, baseType: !2407)
!2407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2396, elements: !1827)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2335, file: !143, line: 147, baseType: !49, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2293, file: !143, line: 161, baseType: !1018, size: 128, align: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !143, line: 164, baseType: !2411, size: 32, offset: 384)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2289, file: !143, line: 164, size: 32, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2411, file: !143, line: 169, baseType: !78, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2411, file: !143, line: 177, baseType: !7, size: 32)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2289, file: !143, line: 181, baseType: !78, size: 32, offset: 416)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2252, file: !2175, line: 535, baseType: !2288, size: 64, offset: 640)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2252, file: !2175, line: 541, baseType: !2418, size: 64, offset: 704)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2252, file: !2175, line: 545, baseType: !2420, size: 64, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2252, file: !2175, line: 549, baseType: !2422, size: 64, offset: 832)
!2422 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1427, line: 520, baseType: !2288)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2174, file: !2175, line: 581, baseType: !2424, size: 64, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!2250, !2251, !7}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2174, file: !2175, line: 582, baseType: !2428, size: 64, offset: 448)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!2250, !2251, !68, !68}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2174, file: !2175, line: 584, baseType: !2432, size: 64, offset: 512)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!68, !2181}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2174, file: !2175, line: 588, baseType: !2247, size: 64, offset: 576)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2174, file: !2175, line: 591, baseType: !2247, size: 64, offset: 640)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2174, file: !2175, line: 597, baseType: !2438, size: 64, offset: 704)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!51, !2181, !68, !49, !51, !51}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2174, file: !2175, line: 603, baseType: !2442, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!45, !2181}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2174, file: !2175, line: 613, baseType: !2446, size: 64, offset: 832)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!51, !2181, !2229}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2174, file: !2175, line: 625, baseType: !2450, size: 64, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2229, !2181, !68}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2174, file: !2175, line: 633, baseType: !2454, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2288, !2181, !68}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2150, file: !854, line: 277, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2156}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2150, file: !854, line: 290, baseType: !999, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2150, file: !854, line: 292, baseType: !987, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2150, file: !854, line: 293, baseType: !995, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2150, file: !854, line: 294, baseType: !991, size: 64, offset: 320)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2150, file: !854, line: 296, baseType: !2466, size: 64, offset: 384)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!641, !2156, !609, !64, !70}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2150, file: !854, line: 306, baseType: !64, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2150, file: !854, line: 313, baseType: !1596, size: 8, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2150, file: !854, line: 314, baseType: !2466, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2150, file: !854, line: 317, baseType: !2473, size: 64, offset: 640)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!2476, !2156, !2478}
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2477, line: 59, baseType: !7)
!2477 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !854, line: 31, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2150, file: !854, line: 320, baseType: !2481, size: 64, offset: 704)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!51, !2156, !2181}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2145, file: !854, line: 176, baseType: !2485, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !854, line: 35, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2145, file: !854, line: 177, baseType: !70, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2145, file: !854, line: 178, baseType: !2118, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2119, file: !854, line: 215, baseType: !49, size: 64, offset: 768)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2119, file: !854, line: 221, baseType: !754, size: 64, offset: 832)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2119, file: !854, line: 223, baseType: !55, size: 16, offset: 896)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2119, file: !854, line: 224, baseType: !53, size: 16, offset: 912)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2119, file: !854, line: 225, baseType: !2494, size: 64, offset: 960)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !854, line: 36, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2119, file: !854, line: 227, baseType: !1018, size: 128, align: 64, offset: 1024)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !2103, file: !2094, line: 442, baseType: !2498, size: 448, offset: 2048)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !2094, line: 138, size: 448, elements: !2499)
!2499 = !{!2500, !2501, !2502}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2498, file: !2094, line: 140, baseType: !2118, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2498, file: !2094, line: 141, baseType: !68, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2498, file: !2094, line: 142, baseType: !2503, size: 320, offset: 128)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2504, line: 11, size: 320, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2505 = !{!2506, !2507, !2508, !2513}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2503, file: !2504, line: 16, baseType: !874, size: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2503, file: !2504, line: 17, baseType: !68, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2503, file: !2504, line: 18, baseType: !2509, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{null, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2503, file: !2504, line: 19, baseType: !477, size: 32, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !2103, file: !2094, line: 443, baseType: !2498, size: 448, offset: 2496)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !2103, file: !2094, line: 446, baseType: !2516, offset: 2944)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2498, elements: !2517)
!2517 = !{!2518}
!2518 = !DISubrange(count: 0)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !2103, file: !2094, line: 455, baseType: !122, size: 16, offset: 2944)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !2103, file: !2094, line: 456, baseType: !122, size: 16, offset: 2960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !2103, file: !2094, line: 457, baseType: !122, size: 16, offset: 2976)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !2103, file: !2094, line: 458, baseType: !122, size: 16, offset: 2992)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !2103, file: !2094, line: 461, baseType: !2097, size: 896, offset: 3008)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2103, file: !2094, line: 463, baseType: !2525, size: 64, offset: 3904)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !2094, line: 537, size: 41664, elements: !2527)
!2527 = !{!2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2541}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2526, file: !2094, line: 538, baseType: !2137, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2526, file: !2094, line: 541, baseType: !7, size: 32, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2526, file: !2094, line: 544, baseType: !51, size: 32, offset: 96)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2526, file: !2094, line: 547, baseType: !126, size: 128, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2526, file: !2094, line: 548, baseType: !1018, size: 128, align: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2526, file: !2094, line: 555, baseType: !2103, size: 7872, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2526, file: !2094, line: 558, baseType: !2102, size: 64, offset: 8256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2526, file: !2094, line: 561, baseType: !78, size: 32, offset: 8320)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2526, file: !2094, line: 564, baseType: !7, size: 32, offset: 8352)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2526, file: !2094, line: 567, baseType: !2538, size: 32768, offset: 8384)
!2538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32768, elements: !2539)
!2539 = !{!2540}
!2540 = !DISubrange(count: 4096)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2526, file: !2094, line: 570, baseType: !2542, size: 512, offset: 41152)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !614)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !2103, file: !2094, line: 469, baseType: !126, size: 128, offset: 3968)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !2103, file: !2094, line: 478, baseType: !2545, size: 1792, offset: 4096)
!2545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1792, elements: !494)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !2103, file: !2094, line: 487, baseType: !2102, size: 64, offset: 5888)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !2103, file: !2094, line: 488, baseType: !2102, size: 64, offset: 5952)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !2103, file: !2094, line: 491, baseType: !2549, size: 64, offset: 6016)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !2094, line: 327, size: 896, elements: !2551)
!2551 = !{!2552, !2555, !2565, !2566, !2567, !2568, !2569}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2550, file: !2094, line: 332, baseType: !2553)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2554, line: 64, elements: !882)
!2554 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2550, file: !2094, line: 333, baseType: !2556, size: 192)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !2094, line: 299, size: 192, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2556, file: !2094, line: 300, baseType: !2559, size: 192)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2560, line: 17, size: 192, elements: !2561)
!2560 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2559, file: !2560, line: 18, baseType: !754, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2559, file: !2560, line: 19, baseType: !754, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2559, file: !2560, line: 20, baseType: !756, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2550, file: !2094, line: 339, baseType: !2556, size: 192, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2550, file: !2094, line: 347, baseType: !2556, size: 192, offset: 384)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2550, file: !2094, line: 353, baseType: !2556, size: 192, offset: 576)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2550, file: !2094, line: 366, baseType: !2102, size: 64, offset: 768)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2550, file: !2094, line: 367, baseType: !2102, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !2103, file: !2094, line: 492, baseType: !126, size: 128, offset: 6080)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2103, file: !2094, line: 495, baseType: !2556, size: 192, offset: 6208)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2103, file: !2094, line: 496, baseType: !2556, size: 192, offset: 6400)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2103, file: !2094, line: 497, baseType: !1933, size: 192, offset: 6592)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !2103, file: !2094, line: 503, baseType: !126, size: 128, offset: 6784)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !2103, file: !2094, line: 504, baseType: !340, size: 256, offset: 6912)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !2103, file: !2094, line: 507, baseType: !83, size: 192, offset: 7168)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !2103, file: !2094, line: 510, baseType: !1711, size: 256, offset: 7360)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !2103, file: !2094, line: 513, baseType: !2579, size: 64, offset: 7616)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2581, line: 214, elements: !882)
!2581 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2103, file: !2094, line: 516, baseType: !2583, offset: 7680)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2584, line: 76, elements: !882)
!2584 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !2103, file: !2094, line: 519, baseType: !78, size: 32, offset: 7680)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !2103, file: !2094, line: 522, baseType: !2587, size: 128, offset: 7712)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !2094, line: 370, size: 128, elements: !2588)
!2588 = !{!2589, !2590, !2591, !2592}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2587, file: !2094, line: 372, baseType: !1596, size: 8)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2587, file: !2094, line: 375, baseType: !51, size: 32, offset: 32)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2587, file: !2094, line: 380, baseType: !51, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2587, file: !2094, line: 386, baseType: !51, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !2103, file: !2094, line: 529, baseType: !2594, offset: 7872)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2102, elements: !1827)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2099, file: !2094, line: 157, baseType: !2596, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !2094, line: 669, size: 1984, elements: !2598)
!2598 = !{!2599, !2603, !2607, !2611, !2612, !2613, !2614, !2618, !2622, !2623, !2629, !2633, !2634, !2638, !2642, !2646, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2699, !2700}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2597, file: !2094, line: 670, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!2098, !2098}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2597, file: !2094, line: 671, baseType: !2604, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!51, !2098}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2597, file: !2094, line: 672, baseType: !2608, size: 64, offset: 128)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !2098}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2597, file: !2094, line: 673, baseType: !2608, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2597, file: !2094, line: 674, baseType: !2608, size: 64, offset: 256)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2597, file: !2094, line: 675, baseType: !2608, size: 64, offset: 320)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2597, file: !2094, line: 676, baseType: !2615, size: 64, offset: 384)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !2098, !51}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2597, file: !2094, line: 677, baseType: !2619, size: 64, offset: 448)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!51, !969, !2098}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2597, file: !2094, line: 679, baseType: !2619, size: 64, offset: 512)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2597, file: !2094, line: 682, baseType: !2624, size: 64, offset: 576)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!51, !2627}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !2094, line: 30, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2597, file: !2094, line: 683, baseType: !2630, size: 64, offset: 640)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !2627}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2597, file: !2094, line: 684, baseType: !2630, size: 64, offset: 704)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2597, file: !2094, line: 685, baseType: !2635, size: 64, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2597, file: !2094, line: 686, baseType: !2639, size: 64, offset: 832)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!51, !1096, !2092}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2597, file: !2094, line: 688, baseType: !2643, size: 64, offset: 896)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{null, !1096, !2092}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2597, file: !2094, line: 689, baseType: !2647, size: 64, offset: 960)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{null, !1096}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2597, file: !2094, line: 690, baseType: !2647, size: 64, offset: 1024)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2597, file: !2094, line: 691, baseType: !2647, size: 64, offset: 1088)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2597, file: !2094, line: 692, baseType: !2608, size: 64, offset: 1152)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2597, file: !2094, line: 694, baseType: !1596, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2597, file: !2094, line: 707, baseType: !1596, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2597, file: !2094, line: 719, baseType: !1596, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2597, file: !2094, line: 722, baseType: !51, size: 32, offset: 1248)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2597, file: !2094, line: 723, baseType: !45, size: 64, offset: 1280)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2597, file: !2094, line: 726, baseType: !45, size: 64, offset: 1344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2597, file: !2094, line: 729, baseType: !2525, size: 64, offset: 1408)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2597, file: !2094, line: 732, baseType: !1081, size: 192, offset: 1472)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2597, file: !2094, line: 738, baseType: !126, size: 128, offset: 1664)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2597, file: !2094, line: 744, baseType: !2663, size: 64, offset: 1792)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !2094, line: 580, size: 1728, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2675, !2676, !2677, !2681, !2685, !2686, !2687, !2688, !2689, !2693, !2697, !2698}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2664, file: !2094, line: 586, baseType: !2542, size: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2664, file: !2094, line: 587, baseType: !68, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2664, file: !2094, line: 593, baseType: !64, size: 64, offset: 576)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2664, file: !2094, line: 596, baseType: !7, size: 32, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2664, file: !2094, line: 604, baseType: !7, size: 32, offset: 672)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2664, file: !2094, line: 610, baseType: !2596, size: 64, offset: 704)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2664, file: !2094, line: 611, baseType: !126, size: 128, offset: 768)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2664, file: !2094, line: 612, baseType: !2674, size: 64, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2664, file: !2094, line: 614, baseType: !2153, size: 64, offset: 960)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2664, file: !2094, line: 615, baseType: !2458, size: 64, offset: 1024)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2664, file: !2094, line: 621, baseType: !2678, size: 64, offset: 1088)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!754, !2098, !2663}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2664, file: !2094, line: 625, baseType: !2682, size: 64, offset: 1152)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!350, !2098, !2663}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2664, file: !2094, line: 628, baseType: !999, size: 64, offset: 1216)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2664, file: !2094, line: 631, baseType: !987, size: 64, offset: 1280)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2664, file: !2094, line: 632, baseType: !995, size: 64, offset: 1344)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2664, file: !2094, line: 633, baseType: !991, size: 64, offset: 1408)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2664, file: !2094, line: 640, baseType: !2690, size: 64, offset: 1472)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!51, !2098, !2663, !754}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2664, file: !2094, line: 645, baseType: !2694, size: 64, offset: 1536)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!51, !2098, !2663, !350}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2664, file: !2094, line: 654, baseType: !2466, size: 64, offset: 1600)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2664, file: !2094, line: 657, baseType: !2473, size: 64, offset: 1664)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2597, file: !2094, line: 745, baseType: !2663, size: 64, offset: 1856)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2597, file: !2094, line: 754, baseType: !7, size: 32, offset: 1920)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2099, file: !2094, line: 160, baseType: !2352, size: 128, offset: 128)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2099, file: !2094, line: 163, baseType: !126, size: 128, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2099, file: !2094, line: 164, baseType: !126, size: 128, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !2099, file: !2094, line: 167, baseType: !126, size: 128, offset: 512)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2099, file: !2094, line: 173, baseType: !51, size: 32, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2099, file: !2094, line: 175, baseType: !7, size: 32, offset: 672)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !2099, file: !2094, line: 183, baseType: !754, size: 64, offset: 704)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !2099, file: !2094, line: 189, baseType: !78, size: 32, offset: 768)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2099, file: !2094, line: 192, baseType: !1711, size: 256, offset: 832)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !2099, file: !2094, line: 193, baseType: !2711, size: 448, offset: 1088)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1712, line: 120, size: 448, elements: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2711, file: !1712, line: 121, baseType: !1711, size: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2711, file: !1712, line: 122, baseType: !1018, size: 128, align: 64, offset: 256)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2711, file: !1712, line: 125, baseType: !2716, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1712, line: 18, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2099, file: !2094, line: 199, baseType: !2098, size: 64, offset: 1536)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2093, file: !2094, line: 218, baseType: !381, size: 32, offset: 896)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !2093, file: !2094, line: 226, baseType: !2092, size: 64, offset: 960)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !2093, file: !2094, line: 229, baseType: !2102, size: 64, offset: 1024)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2093, file: !2094, line: 232, baseType: !51, size: 32, offset: 1088)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2093, file: !2094, line: 241, baseType: !126, size: 128, offset: 1152)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !2093, file: !2094, line: 242, baseType: !126, size: 128, offset: 1280)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !2093, file: !2094, line: 243, baseType: !126, size: 128, offset: 1408)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !2093, file: !2094, line: 246, baseType: !126, size: 128, offset: 1536)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !2093, file: !2094, line: 255, baseType: !2545, size: 1792, offset: 1664)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !2093, file: !2094, line: 258, baseType: !126, size: 128, offset: 3456)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !2093, file: !2094, line: 259, baseType: !126, size: 128, offset: 3584)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !2093, file: !2094, line: 265, baseType: !874, size: 128, offset: 3712)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !2093, file: !2094, line: 271, baseType: !126, size: 128, offset: 3840)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !2093, file: !2094, line: 277, baseType: !126, size: 128, offset: 3968)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !2093, file: !2094, line: 278, baseType: !126, size: 128, offset: 4096)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !2093, file: !2094, line: 279, baseType: !126, size: 128, offset: 4224)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !2093, file: !2094, line: 288, baseType: !2102, size: 64, offset: 4352)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !2093, file: !2094, line: 289, baseType: !2102, size: 64, offset: 4416)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !2093, file: !2094, line: 290, baseType: !2092, size: 64, offset: 4480)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2093, file: !2094, line: 293, baseType: !1596, size: 8, offset: 4544)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2093, file: !2094, line: 296, baseType: !1018, size: 128, align: 64, offset: 4608)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1097, file: !1098, line: 1110, baseType: !2741, size: 64, offset: 15360)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2743, line: 93, size: 8768, elements: !2744)
!2743 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2793, !2802, !2803, !2805, !2806, !2807, !2810, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2848, !2849, !2856, !2866, !2929, !2930, !2933, !2934, !2935, !2936, !2937, !2938}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2742, file: !2743, line: 94, baseType: !381, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2742, file: !2743, line: 95, baseType: !78, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2742, file: !2743, line: 96, baseType: !51, size: 32, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2742, file: !2743, line: 97, baseType: !51, size: 32, offset: 96)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2742, file: !2743, line: 98, baseType: !126, size: 128, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2742, file: !2743, line: 100, baseType: !83, size: 192, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2742, file: !2743, line: 103, baseType: !1096, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2742, file: !2743, line: 106, baseType: !2753, size: 192, offset: 512)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2754, line: 32, size: 192, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2755 = !{!2756, !2757}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2753, file: !2754, line: 33, baseType: !126, size: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2753, file: !2754, line: 34, baseType: !2758, size: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2759, line: 25, baseType: !2760)
!2759 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2759, line: 23, size: 64, elements: !2761)
!2761 = !{!2762}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2760, file: !2759, line: 24, baseType: !1342, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2742, file: !2743, line: 109, baseType: !870, size: 64, offset: 704)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2742, file: !2743, line: 112, baseType: !51, size: 32, offset: 768)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2742, file: !2743, line: 114, baseType: !51, size: 32, offset: 800)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2742, file: !2743, line: 115, baseType: !1096, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2742, file: !2743, line: 118, baseType: !51, size: 32, offset: 896)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2742, file: !2743, line: 119, baseType: !7, size: 32, offset: 928)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2742, file: !2743, line: 121, baseType: !2770, size: 64, offset: 960)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2743, line: 80, size: 448, elements: !2772)
!2772 = !{!2773, !2774, !2780}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2771, file: !2743, line: 81, baseType: !78, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2771, file: !2743, line: 82, baseType: !2775, size: 128, offset: 64)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2743, line: 75, size: 128, elements: !2776)
!2776 = !{!2777, !2778}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2775, file: !2743, line: 76, baseType: !1096, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2775, file: !2743, line: 77, baseType: !2779, size: 64, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2771, file: !2743, line: 83, baseType: !1750, size: 256, offset: 192)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2742, file: !2743, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2742, file: !2743, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2742, file: !2743, line: 138, baseType: !7, size: 32, offset: 1056)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2742, file: !2743, line: 139, baseType: !126, size: 128, offset: 1088)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2742, file: !2743, line: 142, baseType: !1215, size: 512, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2742, file: !2743, line: 143, baseType: !1223, size: 64, offset: 1728)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2742, file: !2743, line: 150, baseType: !2788, size: 256, offset: 1792)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2789, size: 256, elements: !455)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2743, line: 38, size: 128, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2789, file: !2743, line: 39, baseType: !754, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2789, file: !2743, line: 40, baseType: !754, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2742, file: !2743, line: 156, baseType: !2794, size: 192, offset: 2048)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2743, line: 66, size: 192, elements: !2795)
!2795 = !{!2796}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2794, file: !2743, line: 67, baseType: !2797, size: 192)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2743, line: 47, size: 192, elements: !2798)
!2798 = !{!2799, !2800, !2801}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2797, file: !2743, line: 48, baseType: !346, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2797, file: !2743, line: 49, baseType: !346, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2797, file: !2743, line: 50, baseType: !346, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2742, file: !2743, line: 160, baseType: !1945, size: 640, offset: 2240)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2742, file: !2743, line: 163, baseType: !2804, size: 256, offset: 2880)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 256, elements: !431)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2742, file: !2743, line: 169, baseType: !1059, size: 64, offset: 3136)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2742, file: !2743, line: 172, baseType: !51, size: 32, offset: 3200)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2742, file: !2743, line: 174, baseType: !2808, size: 64, offset: 3264)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2809, size: 64)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2743, line: 174, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2742, file: !2743, line: 185, baseType: !2811, size: 64, offset: 3328)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !725, line: 860, baseType: !2812)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 853, size: 64, elements: !2813)
!2813 = !{!2814, !2815}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2812, file: !725, line: 858, baseType: !724, size: 32)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2812, file: !725, line: 859, baseType: !88, size: 32, offset: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2742, file: !2743, line: 186, baseType: !754, size: 64, offset: 3392)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2742, file: !2743, line: 186, baseType: !754, size: 64, offset: 3456)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2742, file: !2743, line: 186, baseType: !754, size: 64, offset: 3520)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2742, file: !2743, line: 186, baseType: !754, size: 64, offset: 3584)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2742, file: !2743, line: 187, baseType: !754, size: 64, offset: 3648)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2742, file: !2743, line: 188, baseType: !754, size: 64, offset: 3712)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2742, file: !2743, line: 189, baseType: !1933, size: 192, offset: 3776)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2742, file: !2743, line: 190, baseType: !68, size: 64, offset: 3968)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2742, file: !2743, line: 190, baseType: !68, size: 64, offset: 4032)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2742, file: !2743, line: 190, baseType: !68, size: 64, offset: 4096)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2742, file: !2743, line: 190, baseType: !68, size: 64, offset: 4160)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2742, file: !2743, line: 191, baseType: !68, size: 64, offset: 4224)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2742, file: !2743, line: 191, baseType: !68, size: 64, offset: 4288)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2742, file: !2743, line: 191, baseType: !68, size: 64, offset: 4352)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2742, file: !2743, line: 191, baseType: !68, size: 64, offset: 4416)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2742, file: !2743, line: 192, baseType: !68, size: 64, offset: 4480)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2742, file: !2743, line: 192, baseType: !68, size: 64, offset: 4544)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2742, file: !2743, line: 192, baseType: !68, size: 64, offset: 4608)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2742, file: !2743, line: 192, baseType: !68, size: 64, offset: 4672)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2742, file: !2743, line: 193, baseType: !68, size: 64, offset: 4736)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2742, file: !2743, line: 193, baseType: !68, size: 64, offset: 4800)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2742, file: !2743, line: 194, baseType: !2838, size: 448, offset: 4864)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2839, line: 12, size: 448, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2838, file: !2839, line: 15, baseType: !754, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2838, file: !2839, line: 17, baseType: !754, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2838, file: !2839, line: 19, baseType: !754, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2838, file: !2839, line: 21, baseType: !754, size: 64, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2838, file: !2839, line: 29, baseType: !754, size: 64, offset: 256)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2838, file: !2839, line: 35, baseType: !754, size: 64, offset: 320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2838, file: !2839, line: 44, baseType: !754, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2742, file: !2743, line: 202, baseType: !756, size: 64, offset: 5312)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2742, file: !2743, line: 213, baseType: !2850, size: 2048, offset: 5376)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2851, size: 2048, elements: !438)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2852, line: 43, size: 128, elements: !2853)
!2852 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2851, file: !2852, line: 44, baseType: !67, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2851, file: !2852, line: 45, baseType: !67, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2742, file: !2743, line: 216, baseType: !2857, size: 448, offset: 7424)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2743, line: 30, size: 448, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2857, file: !2743, line: 31, baseType: !51, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2857, file: !2743, line: 32, baseType: !644, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2857, file: !2743, line: 33, baseType: !68, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2857, file: !2743, line: 34, baseType: !754, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2857, file: !2743, line: 34, baseType: !754, size: 64, offset: 256)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2857, file: !2743, line: 35, baseType: !68, size: 64, offset: 320)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2857, file: !2743, line: 35, baseType: !68, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2742, file: !2743, line: 219, baseType: !2867, size: 64, offset: 7872)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2869, line: 41, size: 3456, elements: !2870)
!2869 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2885, !2886, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2868, file: !2869, line: 47, baseType: !123, size: 16)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2868, file: !2869, line: 48, baseType: !396, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2868, file: !2869, line: 54, baseType: !114, size: 8, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2868, file: !2869, line: 55, baseType: !114, size: 8, offset: 72)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2868, file: !2869, line: 73, baseType: !755, size: 64, align: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2868, file: !2869, line: 74, baseType: !755, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2868, file: !2869, line: 81, baseType: !755, size: 64, offset: 256)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2868, file: !2869, line: 82, baseType: !755, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2868, file: !2869, line: 85, baseType: !755, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2868, file: !2869, line: 86, baseType: !755, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2868, file: !2869, line: 94, baseType: !755, size: 64, offset: 512)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2868, file: !2869, line: 102, baseType: !755, size: 64, offset: 576)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2868, file: !2869, line: 107, baseType: !2884, size: 256, offset: 640)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 256, elements: !763)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2868, file: !2869, line: 108, baseType: !114, size: 8, align: 64, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2868, file: !2869, line: 110, baseType: !2887, size: 24, offset: 904)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 24, elements: !610)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2868, file: !2869, line: 111, baseType: !396, size: 32, align: 64, offset: 960)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2868, file: !2869, line: 113, baseType: !396, size: 32, offset: 992)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2868, file: !2869, line: 114, baseType: !396, size: 32, offset: 1024)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2868, file: !2869, line: 115, baseType: !396, size: 32, offset: 1056)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2868, file: !2869, line: 117, baseType: !396, size: 32, offset: 1088)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2868, file: !2869, line: 118, baseType: !755, size: 64, align: 64, offset: 1152)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2868, file: !2869, line: 120, baseType: !755, size: 64, offset: 1216)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2868, file: !2869, line: 121, baseType: !755, size: 64, offset: 1280)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2868, file: !2869, line: 122, baseType: !755, size: 64, offset: 1344)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2868, file: !2869, line: 123, baseType: !755, size: 64, offset: 1408)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2868, file: !2869, line: 133, baseType: !755, size: 64, offset: 1472)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2868, file: !2869, line: 137, baseType: !755, size: 64, offset: 1536)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2868, file: !2869, line: 142, baseType: !755, size: 64, offset: 1600)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2868, file: !2869, line: 143, baseType: !755, size: 64, offset: 1664)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2868, file: !2869, line: 146, baseType: !755, size: 64, offset: 1728)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2868, file: !2869, line: 147, baseType: !755, size: 64, offset: 1792)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2868, file: !2869, line: 148, baseType: !755, size: 64, offset: 1856)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2868, file: !2869, line: 149, baseType: !755, size: 64, offset: 1920)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2868, file: !2869, line: 154, baseType: !755, size: 64, offset: 1984)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2868, file: !2869, line: 155, baseType: !755, size: 64, offset: 2048)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2868, file: !2869, line: 156, baseType: !755, size: 64, offset: 2112)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2868, file: !2869, line: 158, baseType: !755, size: 64, offset: 2176)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2868, file: !2869, line: 159, baseType: !755, size: 64, offset: 2240)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2868, file: !2869, line: 162, baseType: !755, size: 64, offset: 2304)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2868, file: !2869, line: 163, baseType: !755, size: 64, offset: 2368)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2868, file: !2869, line: 164, baseType: !755, size: 64, offset: 2432)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2868, file: !2869, line: 167, baseType: !755, size: 64, offset: 2496)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2868, file: !2869, line: 168, baseType: !755, size: 64, offset: 2560)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2868, file: !2869, line: 171, baseType: !755, size: 64, offset: 2624)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2868, file: !2869, line: 172, baseType: !755, size: 64, offset: 2688)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2868, file: !2869, line: 175, baseType: !755, size: 64, offset: 2752)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2868, file: !2869, line: 178, baseType: !755, size: 64, offset: 2816)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2868, file: !2869, line: 179, baseType: !755, size: 64, offset: 2880)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2868, file: !2869, line: 182, baseType: !396, size: 32, offset: 2944)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2868, file: !2869, line: 186, baseType: !755, size: 64, align: 64, offset: 3008)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2868, file: !2869, line: 194, baseType: !755, size: 64, offset: 3072)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2868, file: !2869, line: 195, baseType: !755, size: 64, offset: 3136)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2868, file: !2869, line: 199, baseType: !755, size: 64, offset: 3200)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2868, file: !2869, line: 200, baseType: !755, size: 64, offset: 3264)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2868, file: !2869, line: 203, baseType: !755, size: 64, offset: 3328)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2868, file: !2869, line: 204, baseType: !755, size: 64, offset: 3392)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2742, file: !2743, line: 222, baseType: !7, size: 32, offset: 7936)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2742, file: !2743, line: 223, baseType: !2931, size: 64, offset: 8000)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2743, line: 223, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2742, file: !2743, line: 230, baseType: !1596, size: 8, offset: 8064)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2742, file: !2743, line: 231, baseType: !1544, size: 16, offset: 8080)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2742, file: !2743, line: 232, baseType: !1544, size: 16, offset: 8096)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2742, file: !2743, line: 234, baseType: !1391, size: 64, offset: 8128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2742, file: !2743, line: 237, baseType: !340, size: 256, offset: 8192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2742, file: !2743, line: 243, baseType: !1446, size: 320, offset: 8448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1097, file: !1098, line: 1111, baseType: !2940, size: 64, offset: 15424)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2743, line: 20, size: 16640, elements: !2942)
!2942 = !{!2943, !2944, !2945, !2946}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2941, file: !2743, line: 21, baseType: !88, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2941, file: !2743, line: 22, baseType: !381, size: 32, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2941, file: !2743, line: 23, baseType: !83, size: 192, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2941, file: !2743, line: 24, baseType: !2947, size: 16384, offset: 256)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2948, size: 16384, elements: !614)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2754, line: 51, size: 256, elements: !2949)
!2949 = !{!2950}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2948, file: !2754, line: 52, baseType: !2951, size: 256)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2754, line: 37, size: 256, elements: !2952)
!2952 = !{!2953, !2960, !2961, !2965}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2951, file: !2754, line: 39, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2955, line: 83, baseType: !2956)
!2955 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2955, line: 82, baseType: !2958)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !51}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2951, file: !2754, line: 40, baseType: !68, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2951, file: !2754, line: 46, baseType: !2962, size: 64, offset: 128)
!2962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2955, line: 86, baseType: !2963)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2955, line: 85, baseType: !2636)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2951, file: !2754, line: 48, baseType: !2758, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1097, file: !1098, line: 1112, baseType: !2758, size: 64, offset: 15488)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1097, file: !1098, line: 1113, baseType: !2758, size: 64, offset: 15552)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1097, file: !1098, line: 1115, baseType: !2758, size: 64, offset: 15616)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1097, file: !1098, line: 1116, baseType: !2753, size: 192, offset: 15680)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1097, file: !1098, line: 1117, baseType: !68, size: 64, offset: 15872)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1097, file: !1098, line: 1118, baseType: !64, size: 64, offset: 15936)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1097, file: !1098, line: 1119, baseType: !7, size: 32, offset: 16000)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1097, file: !1098, line: 1121, baseType: !1021, size: 64, offset: 16064)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1097, file: !1098, line: 1125, baseType: !2975, size: 64, offset: 16128)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1098, line: 43, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1097, file: !1098, line: 1127, baseType: !689, size: 32, offset: 16192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1097, file: !1098, line: 1128, baseType: !7, size: 32, offset: 16224)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1097, file: !1098, line: 1130, baseType: !2980, size: 128, offset: 16256)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2981, line: 37, size: 128, elements: !2982)
!2981 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2982 = !{!2983, !2984, !2985}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2980, file: !2981, line: 38, baseType: !51, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2980, file: !2981, line: 39, baseType: !78, size: 32, offset: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2980, file: !2981, line: 40, baseType: !2986, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2981, line: 24, flags: DIFlagFwdDecl)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1097, file: !1098, line: 1131, baseType: !2989, size: 256, offset: 16384)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2990, line: 12, size: 256, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2991 = !{!2992, !2993, !2994, !2995}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2989, file: !2990, line: 13, baseType: !609, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2989, file: !2990, line: 14, baseType: !68, size: 64, offset: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2989, file: !2990, line: 15, baseType: !68, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2989, file: !2990, line: 16, baseType: !1596, size: 8, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1097, file: !1098, line: 1134, baseType: !754, size: 64, offset: 16640)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1097, file: !1098, line: 1135, baseType: !754, size: 64, offset: 16704)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1097, file: !1098, line: 1138, baseType: !88, size: 32, offset: 16768)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1097, file: !1098, line: 1141, baseType: !353, size: 32, offset: 16800)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1097, file: !1098, line: 1143, baseType: !3001, size: 64, offset: 16832)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1098, line: 735, size: 64, elements: !3002)
!3002 = !{!3003}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3001, file: !1098, line: 736, baseType: !3004, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1097, file: !1098, line: 1147, baseType: !1274, size: 128, offset: 16896)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1097, file: !1098, line: 1149, baseType: !1096, size: 64, offset: 17024)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1097, file: !1098, line: 1151, baseType: !3008, size: 64, offset: 17088)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1098, line: 1151, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1097, file: !1098, line: 1188, baseType: !49, size: 64, offset: 17152)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1097, file: !1098, line: 1191, baseType: !3012, size: 64, offset: 17216)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1098, line: 44, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1097, file: !1098, line: 1194, baseType: !3015, size: 64, offset: 17280)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1098, line: 45, flags: DIFlagFwdDecl)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1097, file: !1098, line: 1197, baseType: !3018, size: 64, offset: 17344)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !3020, line: 155, size: 64, elements: !3021)
!3020 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !3019, file: !3020, line: 157, baseType: !68, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1097, file: !1098, line: 1199, baseType: !3024, size: 64, offset: 17408)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3026, line: 99, size: 128, elements: !3027)
!3026 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3025, file: !3026, line: 100, baseType: !344, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3025, file: !3026, line: 101, baseType: !78, size: 32, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3025, file: !3026, line: 103, baseType: !55, size: 16, offset: 96)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1097, file: !1098, line: 1202, baseType: !3032, size: 64, offset: 17472)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1098, line: 48, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1097, file: !1098, line: 1205, baseType: !68, size: 64, offset: 17536)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1097, file: !1098, line: 1206, baseType: !3036, size: 64, offset: 17600)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2754, line: 14, baseType: !3038)
!3038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2754, line: 12, size: 384, elements: !3039)
!3039 = !{!3040}
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3038, file: !2754, line: 13, baseType: !3041, size: 384)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3038, file: !2754, line: 13, size: 384, elements: !3042)
!3042 = !{!3043, !3044, !3045, !3046}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3041, file: !2754, line: 13, baseType: !51, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3041, file: !2754, line: 13, baseType: !51, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3041, file: !2754, line: 13, baseType: !51, size: 32, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3041, file: !2754, line: 13, baseType: !3047, size: 256, offset: 128)
!3047 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3048, line: 37, size: 256, elements: !3049)
!3048 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3049 = !{!3050, !3055, !3068, !3074, !3083, !3110, !3115}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3047, file: !3048, line: 42, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 39, size: 64, elements: !3052)
!3052 = !{!3053, !3054}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3051, file: !3048, line: 40, baseType: !1910, size: 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3051, file: !3048, line: 41, baseType: !695, size: 32, offset: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3047, file: !3048, line: 50, baseType: !3056, size: 192)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 45, size: 192, elements: !3057)
!3057 = !{!3058, !3060, !3061, !3067}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3056, file: !3048, line: 46, baseType: !3059, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !66, line: 95, baseType: !51)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3056, file: !3048, line: 47, baseType: !51, size: 32, offset: 32)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3056, file: !3048, line: 48, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3048, line: 11, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3048, line: 8, size: 64, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3063, file: !3048, line: 9, baseType: !51, size: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3063, file: !3048, line: 10, baseType: !49, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3056, file: !3048, line: 49, baseType: !51, size: 32, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3047, file: !3048, line: 57, baseType: !3069, size: 128)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 53, size: 128, elements: !3070)
!3070 = !{!3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3069, file: !3048, line: 54, baseType: !1910, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3069, file: !3048, line: 55, baseType: !695, size: 32, offset: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3069, file: !3048, line: 56, baseType: !3062, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3047, file: !3048, line: 66, baseType: !3075, size: 256)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 60, size: 256, elements: !3076)
!3076 = !{!3077, !3078, !3079, !3080, !3082}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3075, file: !3048, line: 61, baseType: !1910, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3075, file: !3048, line: 62, baseType: !695, size: 32, offset: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3075, file: !3048, line: 63, baseType: !51, size: 32, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3075, file: !3048, line: 64, baseType: !3081, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !66, line: 94, baseType: !643)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3075, file: !3048, line: 65, baseType: !3081, size: 64, offset: 192)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3047, file: !3048, line: 105, baseType: !3084, size: 256)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 69, size: 256, elements: !3085)
!3085 = !{!3086, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3084, file: !3048, line: 70, baseType: !49, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, scope: !3084, file: !3048, line: 79, baseType: !3088, size: 192, offset: 64)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3084, file: !3048, line: 79, size: 192, elements: !3089)
!3089 = !{!3090, !3091, !3092, !3099, !3104}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3088, file: !3048, line: 81, baseType: !51, size: 32)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3088, file: !3048, line: 86, baseType: !1544, size: 16)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3088, file: !3048, line: 92, baseType: !3093, size: 192)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3048, line: 88, size: 192, elements: !3094)
!3094 = !{!3095, !3097, !3098}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3093, file: !3048, line: 89, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, elements: !1258)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3093, file: !3048, line: 90, baseType: !49, size: 64, offset: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3093, file: !3048, line: 91, baseType: !49, size: 64, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3088, file: !3048, line: 97, baseType: !3100, size: 96)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3048, line: 94, size: 96, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3100, file: !3048, line: 95, baseType: !3096, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3100, file: !3048, line: 96, baseType: !396, size: 32, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3088, file: !3048, line: 103, baseType: !3105, size: 128)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3048, line: 99, size: 128, elements: !3106)
!3106 = !{!3107, !3108, !3109}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3105, file: !3048, line: 100, baseType: !68, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3105, file: !3048, line: 101, baseType: !396, size: 32, offset: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3105, file: !3048, line: 102, baseType: !396, size: 32, offset: 96)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3047, file: !3048, line: 111, baseType: !3111, size: 128)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 108, size: 128, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3111, file: !3048, line: 109, baseType: !644, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3111, file: !3048, line: 110, baseType: !51, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3047, file: !3048, line: 118, baseType: !3116, size: 128)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3047, file: !3048, line: 114, size: 128, elements: !3117)
!3117 = !{!3118, !3119, !3120}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3116, file: !3048, line: 115, baseType: !49, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3116, file: !3048, line: 116, baseType: !51, size: 32, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3116, file: !3048, line: 117, baseType: !7, size: 32, offset: 96)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1097, file: !1098, line: 1208, baseType: !2838, size: 448, offset: 17664)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1097, file: !1098, line: 1215, baseType: !754, size: 64, offset: 18112)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1097, file: !1098, line: 1217, baseType: !754, size: 64, offset: 18176)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1097, file: !1098, line: 1219, baseType: !754, size: 64, offset: 18240)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1097, file: !1098, line: 1223, baseType: !3126, size: 64, offset: 18304)
!3126 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3127, line: 99, baseType: !3128)
!3127 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3127, line: 99, size: 64, elements: !3129)
!3129 = !{!3130}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3128, file: !3127, line: 99, baseType: !1342, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1097, file: !1098, line: 1225, baseType: !724, size: 32, offset: 18368)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1097, file: !1098, line: 1226, baseType: !51, size: 32, offset: 18400)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1097, file: !1098, line: 1227, baseType: !51, size: 32, offset: 18432)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1097, file: !1098, line: 1231, baseType: !2092, size: 64, offset: 18496)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1097, file: !1098, line: 1233, baseType: !126, size: 128, offset: 18560)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1097, file: !1098, line: 1240, baseType: !3137, size: 64, offset: 18688)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1098, line: 62, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1097, file: !1098, line: 1242, baseType: !3140, size: 64, offset: 18752)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1098, line: 1242, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1097, file: !1098, line: 1244, baseType: !126, size: 128, offset: 18816)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1097, file: !1098, line: 1245, baseType: !3144, size: 64, offset: 18944)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1098, line: 51, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1097, file: !1098, line: 1246, baseType: !340, size: 256, offset: 19008)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1097, file: !1098, line: 1247, baseType: !7, size: 32, offset: 19264)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1097, file: !1098, line: 1250, baseType: !3149, size: 64, offset: 19328)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1098, line: 57, flags: DIFlagFwdDecl)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1097, file: !1098, line: 1251, baseType: !340, size: 256, offset: 19392)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1097, file: !1098, line: 1252, baseType: !126, size: 128, offset: 19648)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1097, file: !1098, line: 1259, baseType: !2229, size: 64, offset: 19776)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1097, file: !1098, line: 1260, baseType: !1544, size: 16, offset: 19840)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1097, file: !1098, line: 1261, baseType: !1544, size: 16, offset: 19856)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1097, file: !1098, line: 1314, baseType: !3157, size: 64, offset: 19904)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3159, line: 62, size: 256, align: 256, elements: !3160)
!3159 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3158, file: !3159, line: 75, baseType: !396, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3158, file: !3159, line: 90, baseType: !396, size: 32, offset: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3158, file: !3159, line: 112, baseType: !755, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3158, file: !3159, line: 132, baseType: !396, size: 32, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3158, file: !3159, line: 140, baseType: !396, size: 32, offset: 160)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3158, file: !3159, line: 149, baseType: !396, size: 32, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3158, file: !3159, line: 154, baseType: !3168, offset: 224)
!3168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !1827)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1097, file: !1098, line: 1315, baseType: !477, size: 32, offset: 19968)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1097, file: !1098, line: 1316, baseType: !477, size: 32, offset: 20000)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1097, file: !1098, line: 1321, baseType: !68, size: 64, offset: 20032)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1097, file: !1098, line: 1325, baseType: !51, size: 32, offset: 20096)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1097, file: !1098, line: 1326, baseType: !51, size: 32, offset: 20128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1097, file: !1098, line: 1327, baseType: !51, size: 32, offset: 20160)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1097, file: !1098, line: 1328, baseType: !51, size: 32, offset: 20192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1097, file: !1098, line: 1329, baseType: !1018, size: 128, align: 64, offset: 20224)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1097, file: !1098, line: 1332, baseType: !3178, size: 128, offset: 20352)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3179, line: 51, size: 128, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3180 = !{!3181, !3186, !3187}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3178, file: !3179, line: 60, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3183, line: 7, size: 64, elements: !3184)
!3183 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3184 = !{!3185}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3182, file: !3183, line: 12, baseType: !1339, size: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3178, file: !3179, line: 63, baseType: !1596, size: 8, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3178, file: !3179, line: 70, baseType: !1596, size: 8, offset: 72)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1097, file: !1098, line: 1335, baseType: !3189, size: 64, offset: 20480)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1098, line: 59, flags: DIFlagFwdDecl)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1097, file: !1098, line: 1337, baseType: !3192, size: 128, offset: 20544)
!3192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3179, line: 39, size: 128, elements: !3193)
!3193 = !{!3194, !3195, !3196}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3192, file: !3179, line: 40, baseType: !2288, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3192, file: !3179, line: 42, baseType: !396, size: 32, offset: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3192, file: !3179, line: 43, baseType: !396, size: 32, offset: 96)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1097, file: !1098, line: 1340, baseType: !3198, size: 64, offset: 20672)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1098, line: 69, flags: DIFlagFwdDecl)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1097, file: !1098, line: 1351, baseType: !51, size: 32, offset: 20736)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1097, file: !1098, line: 1352, baseType: !51, size: 32, offset: 20768)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1097, file: !1098, line: 1354, baseType: !68, size: 64, offset: 20800)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1097, file: !1098, line: 1364, baseType: !754, size: 64, offset: 20864)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1097, file: !1098, line: 1365, baseType: !754, size: 64, offset: 20928)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1097, file: !1098, line: 1412, baseType: !68, size: 64, offset: 20992)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1097, file: !1098, line: 1453, baseType: !3207, size: 64, offset: 21056)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1098, line: 1453, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1097, file: !1098, line: 1457, baseType: !3210, size: 64, offset: 21120)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !167, line: 61, size: 576, elements: !3212)
!3212 = !{!3213, !3214, !3233, !3236, !3237, !3270, !3280}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3211, file: !167, line: 62, baseType: !166, size: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3211, file: !167, line: 64, baseType: !3215, size: 192, offset: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3211, file: !167, line: 64, size: 192, elements: !3216)
!3216 = !{!3217, !3228}
!3217 = !DIDerivedType(tag: DW_TAG_member, scope: !3215, file: !167, line: 65, baseType: !3218, size: 192)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !167, line: 65, size: 192, elements: !3219)
!3219 = !{!3220, !3227}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3218, file: !167, line: 66, baseType: !3221, size: 128)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3222, line: 50, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3223 = !{!3224, !3225, !3226}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3221, file: !3222, line: 52, baseType: !68, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3221, file: !3222, line: 54, baseType: !7, size: 32, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3221, file: !3222, line: 55, baseType: !7, size: 32, offset: 96)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3218, file: !167, line: 67, baseType: !68, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_member, scope: !3215, file: !167, line: 70, baseType: !3229, size: 192)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3215, file: !167, line: 70, size: 192, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3229, file: !167, line: 71, baseType: !1018, size: 128, align: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3229, file: !167, line: 72, baseType: !68, size: 64, offset: 128)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3211, file: !167, line: 76, baseType: !3234, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !167, line: 76, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3211, file: !167, line: 77, baseType: !68, size: 64, offset: 320)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3211, file: !167, line: 79, baseType: !3238, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3222, line: 25, size: 256, elements: !3240)
!3240 = !{!3241, !3247, !3251}
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !3222, line: 26, baseType: !3242, size: 128)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3239, file: !3222, line: 26, size: 128, elements: !3243)
!3243 = !{!3244, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3242, file: !3222, line: 27, baseType: !3245, size: 128)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, elements: !438)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3242, file: !3222, line: 28, baseType: !3245, size: 128)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3239, file: !3222, line: 31, baseType: !3248, size: 64, offset: 128)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3250)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3222, line: 23, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, scope: !3239, file: !3222, line: 33, baseType: !3252, size: 64, offset: 192)
!3252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3239, file: !3222, line: 33, size: 64, elements: !3253)
!3253 = !{!3254, !3260, !3265}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3252, file: !3222, line: 38, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3222, line: 34, size: 64, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3255, file: !3222, line: 35, baseType: !1492, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3255, file: !3222, line: 36, baseType: !112, size: 8, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3255, file: !3222, line: 37, baseType: !112, size: 8, offset: 40)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3252, file: !3222, line: 42, baseType: !3261, size: 16)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3222, line: 39, size: 16, elements: !3262)
!3262 = !{!3263, !3264}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3261, file: !3222, line: 40, baseType: !112, size: 8)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3261, file: !3222, line: 41, baseType: !112, size: 8, offset: 8)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3252, file: !3222, line: 46, baseType: !3266, size: 16)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3222, line: 43, size: 16, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3266, file: !3222, line: 44, baseType: !112, size: 8)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3266, file: !3222, line: 45, baseType: !112, size: 8, offset: 8)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3211, file: !167, line: 81, baseType: !3271, size: 64, offset: 448)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !167, line: 85, size: 384, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3277, !3278, !3279}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3272, file: !167, line: 86, baseType: !3234, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3272, file: !167, line: 87, baseType: !68, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3272, file: !167, line: 88, baseType: !68, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3272, file: !167, line: 89, baseType: !68, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3272, file: !167, line: 90, baseType: !1596, size: 8, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3272, file: !167, line: 92, baseType: !3271, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3211, file: !167, line: 82, baseType: !7, size: 32, offset: 512)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1097, file: !1098, line: 1463, baseType: !3282, offset: 21184)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1098, line: 739, elements: !882)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1097, file: !1098, line: 1470, baseType: !1018, size: 128, align: 64, offset: 21184)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1097, file: !1098, line: 1471, baseType: !381, size: 32, offset: 21312)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1097, file: !1098, line: 1472, baseType: !51, size: 32, offset: 21344)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1097, file: !1098, line: 1474, baseType: !1096, size: 64, offset: 21376)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1097, file: !1098, line: 1475, baseType: !2503, size: 320, offset: 21440)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1097, file: !1098, line: 1478, baseType: !3289, size: 64, offset: 21760)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3291, line: 49, size: 512, elements: !3292)
!3291 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3299, !3300, !3301, !3303}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3290, file: !3291, line: 50, baseType: !3289, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3290, file: !3291, line: 51, baseType: !49, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3290, file: !3291, line: 52, baseType: !68, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3290, file: !3291, line: 53, baseType: !68, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3290, file: !3291, line: 54, baseType: !3298, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3290, file: !3291, line: 56, baseType: !7, size: 32, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3290, file: !3291, line: 58, baseType: !7, size: 32, offset: 352)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3290, file: !3291, line: 59, baseType: !3302, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !54, line: 159, baseType: !754)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3290, file: !3291, line: 60, baseType: !1525, size: 64, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1097, file: !1098, line: 1482, baseType: !381, size: 32, offset: 21824)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1097, file: !1098, line: 1489, baseType: !49, size: 64, offset: 21888)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1097, file: !1098, line: 1504, baseType: !49, size: 64, offset: 21952)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1097, file: !1098, line: 1505, baseType: !755, size: 64, offset: 22016)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1097, file: !1098, line: 1506, baseType: !754, size: 64, offset: 22080)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1097, file: !1098, line: 1507, baseType: !755, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1097, file: !1098, line: 1508, baseType: !755, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1097, file: !1098, line: 1509, baseType: !755, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1097, file: !1098, line: 1510, baseType: !1018, size: 128, align: 64, offset: 22208)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1097, file: !1098, line: 1511, baseType: !51, size: 32, offset: 22336)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1097, file: !1098, line: 1515, baseType: !3315, size: 64, offset: 22400)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1013, line: 56, size: 64, elements: !3316)
!3316 = !{!3317}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3315, file: !1013, line: 57, baseType: !1016, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1097, file: !1098, line: 1518, baseType: !3315, size: 64, offset: 22464)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1097, file: !1098, line: 1528, baseType: !1018, size: 128, align: 64, offset: 22528)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1097, file: !1098, line: 1552, baseType: !3321, size: 35328, offset: 23040)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3322, line: 430, size: 35328, elements: !3323)
!3322 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3323 = !{!3324, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3353, !3354, !3355, !3356, !3357, !3358, !3361, !3362, !3363, !3364}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3321, file: !3322, line: 432, baseType: !3325, size: 192)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3326, size: 192, elements: !610)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3327, line: 16, size: 64, elements: !3328)
!3327 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3326, file: !3327, line: 17, baseType: !122, size: 16)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3326, file: !3327, line: 18, baseType: !122, size: 16, offset: 16)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3326, file: !3327, line: 19, baseType: !122, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3326, file: !3327, line: 19, baseType: !122, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3326, file: !3327, line: 19, baseType: !122, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3326, file: !3327, line: 19, baseType: !122, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3326, file: !3327, line: 19, baseType: !122, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3326, file: !3327, line: 20, baseType: !122, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3326, file: !3327, line: 20, baseType: !122, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3326, file: !3327, line: 20, baseType: !122, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3326, file: !3327, line: 20, baseType: !122, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3326, file: !3327, line: 20, baseType: !122, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3326, file: !3327, line: 20, baseType: !122, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3321, file: !3322, line: 436, baseType: !68, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3321, file: !3322, line: 440, baseType: !55, size: 16, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3321, file: !3322, line: 441, baseType: !55, size: 16, offset: 272)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3321, file: !3322, line: 442, baseType: !55, size: 16, offset: 288)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3321, file: !3322, line: 443, baseType: !55, size: 16, offset: 304)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3321, file: !3322, line: 447, baseType: !68, size: 64, offset: 320)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3321, file: !3322, line: 448, baseType: !68, size: 64, offset: 384)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3321, file: !3322, line: 459, baseType: !3350, size: 256, offset: 448)
!3350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3351, size: 256, elements: !431)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3322, line: 428, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3321, file: !3322, line: 461, baseType: !68, size: 64, offset: 704)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3321, file: !3322, line: 463, baseType: !68, size: 64, offset: 768)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3321, file: !3322, line: 465, baseType: !68, size: 64, offset: 832)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3321, file: !3322, line: 466, baseType: !68, size: 64, offset: 896)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3321, file: !3322, line: 467, baseType: !68, size: 64, offset: 960)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3321, file: !3322, line: 473, baseType: !3359, size: 64, offset: 1024)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3322, line: 10, flags: DIFlagFwdDecl)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3321, file: !3322, line: 480, baseType: !68, size: 64, offset: 1088)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3321, file: !3322, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3321, file: !3322, line: 491, baseType: !477, size: 32, offset: 1184)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3321, file: !3322, line: 501, baseType: !3365, size: 33792, offset: 1536)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3366, line: 448, size: 33792, elements: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3367 = !{!3368, !3369, !3370, !3530, !3531, !3537, !3538}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3365, file: !3366, line: 461, baseType: !7, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3365, file: !3366, line: 468, baseType: !68, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3365, file: !3366, line: 476, baseType: !3371, size: 64, offset: 128)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3366, line: 356, size: 33280, align: 512, elements: !3373)
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3372, file: !3366, line: 358, baseType: !7, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3372, file: !3366, line: 361, baseType: !7, size: 32, offset: 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3372, file: !3366, line: 364, baseType: !754, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3372, file: !3366, line: 367, baseType: !754, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3372, file: !3366, line: 370, baseType: !754, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3372, file: !3366, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3372, file: !3366, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3372, file: !3366, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3372, file: !3366, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3372, file: !3366, line: 397, baseType: !3384, size: 32768, offset: 512)
!3384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3366, line: 348, size: 32768, elements: !3385)
!3385 = !{!3386, !3401, !3438, !3515, !3528}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3384, file: !3366, line: 349, baseType: !3387, size: 896)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3366, line: 12, size: 896, elements: !3388)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3400}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3387, file: !3366, line: 13, baseType: !477, size: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3387, file: !3366, line: 14, baseType: !477, size: 32, offset: 32)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3387, file: !3366, line: 15, baseType: !477, size: 32, offset: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3387, file: !3366, line: 16, baseType: !477, size: 32, offset: 96)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3387, file: !3366, line: 17, baseType: !477, size: 32, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3387, file: !3366, line: 18, baseType: !477, size: 32, offset: 160)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3387, file: !3366, line: 19, baseType: !477, size: 32, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3387, file: !3366, line: 22, baseType: !3397, size: 640, offset: 224)
!3397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 640, elements: !3398)
!3398 = !{!3399}
!3399 = !DISubrange(count: 20)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3387, file: !3366, line: 25, baseType: !477, size: 32, offset: 864)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3384, file: !3366, line: 350, baseType: !3402, size: 4096, align: 128)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3366, line: 34, size: 4096, align: 128, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3423, !3424, !3425, !3427, !3429, !3433}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3402, file: !3366, line: 35, baseType: !122, size: 16)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3402, file: !3366, line: 36, baseType: !122, size: 16, offset: 16)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3402, file: !3366, line: 37, baseType: !122, size: 16, offset: 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3402, file: !3366, line: 38, baseType: !122, size: 16, offset: 48)
!3408 = !DIDerivedType(tag: DW_TAG_member, scope: !3402, file: !3366, line: 39, baseType: !3409, size: 128, offset: 64)
!3409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3402, file: !3366, line: 39, size: 128, elements: !3410)
!3410 = !{!3411, !3416}
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !3366, line: 40, baseType: !3412, size: 128)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3409, file: !3366, line: 40, size: 128, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3412, file: !3366, line: 41, baseType: !754, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3412, file: !3366, line: 42, baseType: !754, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, scope: !3409, file: !3366, line: 44, baseType: !3417, size: 128)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3409, file: !3366, line: 44, size: 128, elements: !3418)
!3418 = !{!3419, !3420, !3421, !3422}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3417, file: !3366, line: 45, baseType: !477, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3417, file: !3366, line: 46, baseType: !477, size: 32, offset: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3417, file: !3366, line: 47, baseType: !477, size: 32, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3417, file: !3366, line: 48, baseType: !477, size: 32, offset: 96)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3402, file: !3366, line: 51, baseType: !477, size: 32, offset: 192)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3402, file: !3366, line: 52, baseType: !477, size: 32, offset: 224)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3402, file: !3366, line: 55, baseType: !3426, size: 1024, offset: 256)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 1024, elements: !763)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3402, file: !3366, line: 58, baseType: !3428, size: 2048, offset: 1280)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 2048, elements: !614)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3402, file: !3366, line: 60, baseType: !3430, size: 384, offset: 3328)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 384, elements: !3431)
!3431 = !{!3432}
!3432 = !DISubrange(count: 12)
!3433 = !DIDerivedType(tag: DW_TAG_member, scope: !3402, file: !3366, line: 62, baseType: !3434, size: 384, offset: 3712)
!3434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3402, file: !3366, line: 62, size: 384, elements: !3435)
!3435 = !{!3436, !3437}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3434, file: !3366, line: 63, baseType: !3430, size: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3434, file: !3366, line: 64, baseType: !3430, size: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3384, file: !3366, line: 351, baseType: !3439, size: 1088)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3366, line: 79, size: 1088, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3514}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3439, file: !3366, line: 80, baseType: !477, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3439, file: !3366, line: 81, baseType: !477, size: 32, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3439, file: !3366, line: 82, baseType: !477, size: 32, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3439, file: !3366, line: 83, baseType: !477, size: 32, offset: 96)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3439, file: !3366, line: 84, baseType: !477, size: 32, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3439, file: !3366, line: 85, baseType: !477, size: 32, offset: 160)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3439, file: !3366, line: 86, baseType: !477, size: 32, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3439, file: !3366, line: 88, baseType: !3397, size: 640, offset: 224)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3439, file: !3366, line: 89, baseType: !112, size: 8, offset: 864)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3439, file: !3366, line: 90, baseType: !112, size: 8, offset: 872)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3439, file: !3366, line: 91, baseType: !112, size: 8, offset: 880)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3439, file: !3366, line: 92, baseType: !112, size: 8, offset: 888)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3439, file: !3366, line: 93, baseType: !112, size: 8, offset: 896)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3439, file: !3366, line: 94, baseType: !112, size: 8, offset: 904)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3439, file: !3366, line: 95, baseType: !3456, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3458, line: 11, size: 128, elements: !3459)
!3458 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3457, file: !3458, line: 12, baseType: !644, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3457, file: !3458, line: 13, baseType: !3462, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3464, line: 103, size: 1344, elements: !3465)
!3464 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3494, !3495, !3496}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3463, file: !3464, line: 109, baseType: !68, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3463, file: !3464, line: 110, baseType: !68, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3463, file: !3464, line: 111, baseType: !68, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3463, file: !3464, line: 112, baseType: !68, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3463, file: !3464, line: 113, baseType: !68, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3463, file: !3464, line: 114, baseType: !68, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3463, file: !3464, line: 117, baseType: !68, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3463, file: !3464, line: 118, baseType: !68, size: 64, offset: 448)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3463, file: !3464, line: 119, baseType: !68, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3463, file: !3464, line: 120, baseType: !68, size: 64, offset: 576)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3463, file: !3464, line: 121, baseType: !68, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3463, file: !3464, line: 122, baseType: !68, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3463, file: !3464, line: 123, baseType: !68, size: 64, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3463, file: !3464, line: 124, baseType: !68, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3463, file: !3464, line: 125, baseType: !68, size: 64, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3463, file: !3464, line: 139, baseType: !68, size: 64, offset: 960)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3463, file: !3464, line: 142, baseType: !68, size: 64, offset: 1024)
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !3464, line: 144, baseType: !3484, size: 64, offset: 1088)
!3484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !3464, line: 144, size: 64, elements: !3485)
!3485 = !{!3486, !3487, !3488}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3484, file: !3464, line: 146, baseType: !122, size: 16)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3484, file: !3464, line: 148, baseType: !754, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3484, file: !3464, line: 150, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3464, line: 59, size: 64, elements: !3490)
!3490 = !{!3491, !3492, !3493}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3489, file: !3464, line: 61, baseType: !754, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3489, file: !3464, line: 63, baseType: !754, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3489, file: !3464, line: 65, baseType: !754, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3463, file: !3464, line: 153, baseType: !68, size: 64, offset: 1152)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3463, file: !3464, line: 154, baseType: !68, size: 64, offset: 1216)
!3496 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !3464, line: 156, baseType: !3497, size: 64, offset: 1280)
!3497 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !3464, line: 156, size: 64, elements: !3498)
!3498 = !{!3499, !3500, !3501}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3497, file: !3464, line: 158, baseType: !122, size: 16)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3497, file: !3464, line: 160, baseType: !754, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3497, file: !3464, line: 162, baseType: !3502, size: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3464, line: 69, size: 64, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3502, file: !3464, line: 71, baseType: !754, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3502, file: !3464, line: 73, baseType: !754, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3502, file: !3464, line: 75, baseType: !754, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3502, file: !3464, line: 77, baseType: !754, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3502, file: !3464, line: 80, baseType: !754, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3502, file: !3464, line: 83, baseType: !754, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3502, file: !3464, line: 86, baseType: !754, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3502, file: !3464, line: 88, baseType: !754, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3502, file: !3464, line: 93, baseType: !754, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3502, file: !3464, line: 100, baseType: !754, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3439, file: !3366, line: 96, baseType: !477, size: 32, offset: 1024)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3384, file: !3366, line: 352, baseType: !3516, size: 4608, align: 512)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3366, line: 333, size: 4608, align: 512, elements: !3517)
!3517 = !{!3518, !3519, !3526}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3516, file: !3366, line: 334, baseType: !3402, size: 4096, align: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3516, file: !3366, line: 335, baseType: !3520, size: 512, offset: 4096)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3366, line: 312, size: 512, elements: !3521)
!3521 = !{!3522, !3523, !3524}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3520, file: !3366, line: 313, baseType: !754, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3520, file: !3366, line: 314, baseType: !754, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3520, file: !3366, line: 315, baseType: !3525, size: 384, offset: 128)
!3525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 384, elements: !1651)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3516, file: !3366, line: 336, baseType: !3527, offset: 4608)
!3527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !1827)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3384, file: !3366, line: 353, baseType: !3529, size: 32768)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 32768, elements: !2539)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3365, file: !3366, line: 484, baseType: !3371, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3365, file: !3366, line: 491, baseType: !3532, size: 128, offset: 256)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3366, line: 404, size: 128, elements: !3533)
!3533 = !{!3534, !3535, !3536}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3532, file: !3366, line: 424, baseType: !754, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3532, file: !3366, line: 432, baseType: !7, size: 32, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3532, file: !3366, line: 440, baseType: !7, size: 32, offset: 96)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3365, file: !3366, line: 498, baseType: !3532, size: 128, offset: 384)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3365, file: !3366, line: 508, baseType: !3372, size: 33280, align: 512, offset: 512)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1077, file: !1078, line: 31, baseType: !3540, size: 64, offset: 448)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3542, line: 11, flags: DIFlagFwdDecl)
!3542 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1077, file: !1078, line: 32, baseType: !7, size: 32, offset: 512)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1077, file: !1078, line: 33, baseType: !1076, size: 64, offset: 576)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1077, file: !1078, line: 35, baseType: !3546, size: 64, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1078, line: 17, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1077, file: !1078, line: 37, baseType: !1551, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1077, file: !1078, line: 38, baseType: !1794, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1077, file: !1078, line: 39, baseType: !51, size: 32, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1077, file: !1078, line: 40, baseType: !1584, size: 192, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1077, file: !1078, line: 42, baseType: !51, size: 32, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1035, file: !31, line: 951, baseType: !173, size: 32, offset: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1035, file: !31, line: 952, baseType: !689, size: 32, offset: 160)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1035, file: !31, line: 952, baseType: !689, size: 32, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1035, file: !31, line: 953, baseType: !51, size: 32, offset: 224)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1006, file: !31, line: 1012, baseType: !1963, size: 64, offset: 896)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1006, file: !31, line: 1013, baseType: !3559, size: 256, offset: 960)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 970, size: 256, elements: !3560)
!3560 = !{!3561, !3562, !3563, !3564, !3565, !3566}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3559, file: !31, line: 971, baseType: !68, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3559, file: !31, line: 972, baseType: !7, size: 32, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3559, file: !31, line: 973, baseType: !7, size: 32, offset: 96)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3559, file: !31, line: 974, baseType: !7, size: 32, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3559, file: !31, line: 975, baseType: !7, size: 32, offset: 160)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3559, file: !31, line: 976, baseType: !70, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1006, file: !31, line: 1014, baseType: !3568, size: 128, offset: 1216)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3569, line: 8, size: 128, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3570 = !{!3571, !3572}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3568, file: !3569, line: 9, baseType: !826, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3568, file: !3569, line: 10, baseType: !718, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1006, file: !31, line: 1015, baseType: !683, size: 64, offset: 1344)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1006, file: !31, line: 1016, baseType: !3575, size: 64, offset: 1408)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1914, size: 2112, elements: !3578)
!3578 = !{!3579, !3580, !3584, !3588, !3592, !3703, !3704, !3710, !3723, !3727, !3731, !3732, !3736, !3737, !3741, !3746, !3747, !3751, !3755, !3761, !3762, !3766, !3767, !3771, !3775, !3779, !3785, !3789, !3793, !3797, !3801, !3802, !3808}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3577, file: !31, line: 1915, baseType: !556, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3577, file: !31, line: 1916, baseType: !3581, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!70, !1418, !70, !51}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3577, file: !31, line: 1917, baseType: !3585, size: 64, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!641, !1418, !609, !64, !69}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3577, file: !31, line: 1918, baseType: !3589, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!641, !1418, !45, !64, !69}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3577, file: !31, line: 1919, baseType: !3593, size: 64, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!641, !3596, !3701}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 373, size: 384, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3605, !3606, !3607, !3608}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3597, file: !31, line: 374, baseType: !1418, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3597, file: !31, line: 375, baseType: !70, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3597, file: !31, line: 376, baseType: !3602, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !3596, !644}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3597, file: !31, line: 377, baseType: !49, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3597, file: !31, line: 378, baseType: !51, size: 32, offset: 256)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3597, file: !31, line: 379, baseType: !122, size: 16, offset: 288)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3597, file: !31, line: 380, baseType: !3609, size: 64, offset: 320)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3597, file: !31, line: 380, size: 64, elements: !3610)
!3610 = !{!3611, !3697}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3609, file: !31, line: 386, baseType: !3612, size: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !3614, line: 998, size: 448, elements: !3615)
!3614 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!3615 = !{!3616, !3683, !3684}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !3613, file: !3614, line: 999, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !143, line: 293, size: 1536, elements: !3619)
!3619 = !{!3620, !3650, !3664}
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !143, line: 295, baseType: !3621, size: 512)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !143, line: 295, size: 512, elements: !3622)
!3622 = !{!3623, !3649}
!3623 = !DIDerivedType(tag: DW_TAG_member, scope: !3621, file: !143, line: 296, baseType: !3624, size: 448)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3621, file: !143, line: 296, size: 448, elements: !3625)
!3625 = !{!3626, !3627, !3636, !3637, !3638, !3647, !3648}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3624, file: !143, line: 298, baseType: !68, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, scope: !3624, file: !143, line: 299, baseType: !3628, size: 128, offset: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3624, file: !143, line: 299, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3628, file: !143, line: 300, baseType: !126, size: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, scope: !3628, file: !143, line: 302, baseType: !3632, size: 128)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3628, file: !143, line: 302, size: 128, elements: !3633)
!3633 = !{!3634, !3635}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3632, file: !143, line: 303, baseType: !49, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3632, file: !143, line: 305, baseType: !7, size: 32, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3624, file: !143, line: 310, baseType: !679, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3624, file: !143, line: 311, baseType: !68, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3624, file: !143, line: 312, baseType: !3639, size: 64, offset: 320)
!3639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3624, file: !143, line: 312, size: 64, elements: !3640)
!3640 = !{!3641, !3642}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3639, file: !143, line: 313, baseType: !49, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3639, file: !143, line: 314, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !143, line: 257, baseType: !3644)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 255, size: 64, elements: !3645)
!3645 = !{!3646}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3644, file: !143, line: 256, baseType: !68, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3624, file: !143, line: 316, baseType: !78, size: 32, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3624, file: !143, line: 317, baseType: !78, size: 32, offset: 416)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3621, file: !143, line: 323, baseType: !2289, size: 512, align: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !143, line: 325, baseType: !3651, size: 512, offset: 512)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !143, line: 325, size: 512, elements: !3652)
!3652 = !{!3653, !3663}
!3653 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !143, line: 326, baseType: !3654, size: 320)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3651, file: !143, line: 326, size: 320, elements: !3655)
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3661, !3662}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3654, file: !143, line: 327, baseType: !68, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3654, file: !143, line: 328, baseType: !68, size: 64, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3654, file: !143, line: 329, baseType: !68, size: 64, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3654, file: !143, line: 331, baseType: !78, size: 32, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3654, file: !143, line: 332, baseType: !78, size: 32, offset: 224)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3654, file: !143, line: 333, baseType: !78, size: 32, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3654, file: !143, line: 335, baseType: !7, size: 32, offset: 288)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3651, file: !143, line: 339, baseType: !2289, size: 512, align: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !143, line: 341, baseType: !3665, size: 512, offset: 1024)
!3665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !143, line: 341, size: 512, elements: !3666)
!3666 = !{!3667, !3676, !3682}
!3667 = !DIDerivedType(tag: DW_TAG_member, scope: !3665, file: !143, line: 342, baseType: !3668, size: 384)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3665, file: !143, line: 342, size: 384, elements: !3669)
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3668, file: !143, line: 343, baseType: !68, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3668, file: !143, line: 344, baseType: !68, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3668, file: !143, line: 346, baseType: !49, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3668, file: !143, line: 347, baseType: !49, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3668, file: !143, line: 348, baseType: !49, size: 64, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3668, file: !143, line: 349, baseType: !49, size: 64, offset: 320)
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3665, file: !143, line: 352, baseType: !3677, size: 256)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3665, file: !143, line: 352, size: 256, elements: !3678)
!3678 = !{!3679, !3680, !3681}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3677, file: !143, line: 353, baseType: !68, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3677, file: !143, line: 354, baseType: !68, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3677, file: !143, line: 356, baseType: !126, size: 128, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3665, file: !143, line: 359, baseType: !2289, size: 512, align: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !3613, file: !3614, line: 1000, baseType: !51, size: 32, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3613, file: !3614, line: 1001, baseType: !3685, size: 320, offset: 128)
!3685 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !84, line: 14, baseType: !3686)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !84, line: 30, size: 320, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3696}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3686, file: !84, line: 31, baseType: !7, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3686, file: !84, line: 32, baseType: !49, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3686, file: !84, line: 33, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !84, line: 16, baseType: !3692)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!51, !3695, !7, !51, !49}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3686, file: !84, line: 34, baseType: !126, size: 128, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3609, file: !31, line: 395, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!641, !49}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 69, flags: DIFlagFwdDecl)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3577, file: !31, line: 1920, baseType: !3593, size: 64, offset: 320)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3577, file: !31, line: 1921, baseType: !3705, size: 64, offset: 384)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!51, !3596, !3708, !7}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !31, line: 53, flags: DIFlagFwdDecl)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3577, file: !31, line: 1923, baseType: !3711, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!51, !1418, !3714}
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1858, size: 128, elements: !3716)
!3716 = !{!3717, !3722}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3715, file: !31, line: 1859, baseType: !3718, size: 64)
!3718 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1855, baseType: !3719)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!1596, !3714, !45, !51, !70, !754, !7}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3715, file: !31, line: 1860, baseType: !70, size: 64, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3577, file: !31, line: 1924, baseType: !3724, size: 64, offset: 512)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!2476, !1418, !2478}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3577, file: !31, line: 1925, baseType: !3728, size: 64, offset: 576)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!644, !1418, !7, !68}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3577, file: !31, line: 1926, baseType: !3728, size: 64, offset: 640)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3577, file: !31, line: 1927, baseType: !3733, size: 64, offset: 704)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!51, !1418, !2181}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3577, file: !31, line: 1928, baseType: !68, size: 64, offset: 768)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3577, file: !31, line: 1929, baseType: !3738, size: 64, offset: 832)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!51, !683, !1418}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3577, file: !31, line: 1930, baseType: !3742, size: 64, offset: 896)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!51, !1418, !3745}
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1061, baseType: !49)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3577, file: !31, line: 1931, baseType: !3738, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3577, file: !31, line: 1932, baseType: !3748, size: 64, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!51, !1418, !70, !70, !51}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3577, file: !31, line: 1933, baseType: !3752, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!51, !51, !1418, !51}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3577, file: !31, line: 1934, baseType: !3756, size: 64, offset: 1152)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!51, !1418, !51, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1063, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3577, file: !31, line: 1935, baseType: !1415, size: 64, offset: 1216)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3577, file: !31, line: 1936, baseType: !3763, size: 64, offset: 1280)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!51, !51}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3577, file: !31, line: 1937, baseType: !3756, size: 64, offset: 1344)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3577, file: !31, line: 1938, baseType: !3768, size: 64, offset: 1408)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!641, !3189, !1418, !69, !64, !7}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3577, file: !31, line: 1939, baseType: !3772, size: 64, offset: 1472)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!641, !1418, !69, !3189, !64, !7}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3577, file: !31, line: 1940, baseType: !3776, size: 64, offset: 1536)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !1418}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3577, file: !31, line: 1941, baseType: !3780, size: 64, offset: 1600)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!51, !1418, !51, !3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3577, file: !31, line: 1942, baseType: !3786, size: 64, offset: 1664)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!644, !1418, !51, !70, !70}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3577, file: !31, line: 1944, baseType: !3790, size: 64, offset: 1728)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{null, !969, !1418}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3577, file: !31, line: 1948, baseType: !3794, size: 64, offset: 1792)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!641, !1418, !70, !1418, !70, !64, !7}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3577, file: !31, line: 1950, baseType: !3798, size: 64, offset: 1856)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!70, !1418, !70, !1418, !70, !70, !7}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3577, file: !31, line: 1953, baseType: !3748, size: 64, offset: 1920)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3577, file: !31, line: 1954, baseType: !3803, size: 64, offset: 1984)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!51, !3806, !7}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !31, line: 1911, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3577, file: !31, line: 1955, baseType: !3809, size: 64, offset: 2048)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!51, !3806, !3708, !7}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1006, file: !31, line: 1018, baseType: !754, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1006, file: !31, line: 1020, baseType: !49, size: 64, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1006, file: !31, line: 1023, baseType: !49, size: 64, offset: 1600)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1006, file: !31, line: 1027, baseType: !3816, size: 64, offset: 1664)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1006, file: !31, line: 1029, baseType: !679, size: 64, offset: 1728)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1006, file: !31, line: 1030, baseType: !3819, size: 32, offset: 1792)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3820, line: 8, baseType: !477)
!3820 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1006, file: !31, line: 1031, baseType: !3819, size: 32, offset: 1824)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !970, file: !971, line: 29, baseType: !49, size: 64, offset: 896)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !894, file: !31, line: 2077, baseType: !966, size: 64, offset: 1088)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !894, file: !31, line: 2078, baseType: !966, size: 64, offset: 1152)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !894, file: !31, line: 2079, baseType: !966, size: 64, offset: 1216)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !894, file: !31, line: 2081, baseType: !3827, size: 64, offset: 1280)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!641, !832, !51, !609, !64, !70}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !894, file: !31, line: 2082, baseType: !3831, size: 64, offset: 1344)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!641, !832, !51, !45, !64, !70}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !894, file: !31, line: 2083, baseType: !3835, size: 64, offset: 1408)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!3838, !683}
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !182, line: 296, size: 1664, elements: !3841)
!3841 = !{!3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3866, !3867, !3868}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3840, file: !182, line: 297, baseType: !874, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3840, file: !182, line: 298, baseType: !126, size: 128, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3840, file: !182, line: 299, baseType: !126, size: 128, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3840, file: !182, line: 300, baseType: !126, size: 128, offset: 384)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3840, file: !182, line: 301, baseType: !340, size: 256, offset: 512)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3840, file: !182, line: 302, baseType: !88, size: 32, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3840, file: !182, line: 303, baseType: !78, size: 32, offset: 800)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3840, file: !182, line: 304, baseType: !832, size: 64, offset: 832)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3840, file: !182, line: 305, baseType: !3851, size: 64, offset: 896)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !182, line: 68, size: 64, elements: !3852)
!3852 = !{!3853, !3865}
!3853 = !DIDerivedType(tag: DW_TAG_member, scope: !3851, file: !182, line: 69, baseType: !3854, size: 32)
!3854 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3851, file: !182, line: 69, size: 32, elements: !3855)
!3855 = !{!3856, !3857, !3858}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3854, file: !182, line: 70, baseType: !689, size: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3854, file: !182, line: 71, baseType: !698, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3854, file: !182, line: 72, baseType: !3859, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3860, line: 24, baseType: !3861)
!3860 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3860, line: 22, size: 32, elements: !3862)
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3861, file: !3860, line: 23, baseType: !3864, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3860, line: 20, baseType: !695)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3851, file: !182, line: 74, baseType: !181, size: 32, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3840, file: !182, line: 306, baseType: !70, size: 64, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3840, file: !182, line: 307, baseType: !68, size: 64, offset: 1024)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3840, file: !182, line: 308, baseType: !3869, size: 576, offset: 1088)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !182, line: 205, size: 576, elements: !3870)
!3870 = !{!3871, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3869, file: !182, line: 206, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !182, line: 66, baseType: !72)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3869, file: !182, line: 207, baseType: !3872, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3869, file: !182, line: 208, baseType: !3872, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3869, file: !182, line: 209, baseType: !3872, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3869, file: !182, line: 210, baseType: !3872, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3869, file: !182, line: 211, baseType: !3872, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3869, file: !182, line: 212, baseType: !3872, size: 64, offset: 384)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3869, file: !182, line: 213, baseType: !1622, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3869, file: !182, line: 214, baseType: !1622, size: 64, offset: 512)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !894, file: !31, line: 2085, baseType: !3882, size: 64, offset: 1472)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!644, !832, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3887, line: 15, size: 256, elements: !3888)
!3887 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3888 = !{!3889, !3890, !3891, !3892, !3893}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3886, file: !3887, line: 16, baseType: !325, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3886, file: !3887, line: 19, baseType: !51, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3886, file: !3887, line: 26, baseType: !68, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3886, file: !3887, line: 33, baseType: !68, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3886, file: !3887, line: 36, baseType: !3894, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !143, line: 33, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !894, file: !31, line: 2087, baseType: !3882, size: 64, offset: 1536)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !894, file: !31, line: 2089, baseType: !864, size: 64, offset: 1600)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !833, file: !31, line: 1198, baseType: !3899, size: 64, offset: 448)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3901)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !182, line: 324, size: 704, elements: !3902)
!3902 = !{!3903, !3907, !3911, !3915, !3916, !3917, !3918, !3919, !3924, !3929, !3933}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3901, file: !182, line: 325, baseType: !3904, size: 64)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!51, !3839}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3901, file: !182, line: 326, baseType: !3908, size: 64, offset: 64)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!3839, !832, !51}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3901, file: !182, line: 327, baseType: !3912, size: 64, offset: 128)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{null, !3839}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3901, file: !182, line: 328, baseType: !3904, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3901, file: !182, line: 329, baseType: !3904, size: 64, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3901, file: !182, line: 330, baseType: !3904, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3901, file: !182, line: 331, baseType: !940, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3901, file: !182, line: 334, baseType: !3920, size: 64, offset: 448)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!3923, !683}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3901, file: !182, line: 335, baseType: !3925, size: 64, offset: 512)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!51, !683, !3928}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3901, file: !182, line: 337, baseType: !3930, size: 64, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!51, !683, !3923}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3901, file: !182, line: 339, baseType: !3934, size: 64, offset: 640)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DISubroutineType(types: !3936)
!3936 = !{!51, !832, !3937}
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !833, file: !31, line: 1199, baseType: !3939, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3941)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !182, line: 430, size: 704, elements: !3942)
!3942 = !{!3943, !3949, !3950, !3954, !3955, !3956, !3971, !3994, !3998, !3999, !4022}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3941, file: !182, line: 431, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!51, !832, !51, !51, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3941, file: !182, line: 432, baseType: !940, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3941, file: !182, line: 433, baseType: !3951, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!51, !832, !7}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3941, file: !182, line: 434, baseType: !3951, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3941, file: !182, line: 435, baseType: !940, size: 64, offset: 256)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3941, file: !182, line: 436, baseType: !3957, size: 64, offset: 320)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!51, !832, !51, !3960}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !182, line: 417, size: 256, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3961, file: !182, line: 418, baseType: !51, size: 32)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3961, file: !182, line: 419, baseType: !7, size: 32, offset: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3961, file: !182, line: 420, baseType: !7, size: 32, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3961, file: !182, line: 422, baseType: !7, size: 32, offset: 96)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3961, file: !182, line: 423, baseType: !7, size: 32, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3961, file: !182, line: 424, baseType: !7, size: 32, offset: 160)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3961, file: !182, line: 425, baseType: !7, size: 32, offset: 192)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3961, file: !182, line: 426, baseType: !7, size: 32, offset: 224)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3941, file: !182, line: 437, baseType: !3972, size: 64, offset: 384)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!51, !832, !3851, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !182, line: 345, size: 960, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3976, file: !182, line: 346, baseType: !51, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3976, file: !182, line: 347, baseType: !754, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3976, file: !182, line: 348, baseType: !754, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3976, file: !182, line: 349, baseType: !754, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3976, file: !182, line: 350, baseType: !754, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3976, file: !182, line: 351, baseType: !754, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3976, file: !182, line: 352, baseType: !754, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3976, file: !182, line: 353, baseType: !350, size: 64, offset: 448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3976, file: !182, line: 355, baseType: !350, size: 64, offset: 512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3976, file: !182, line: 356, baseType: !51, size: 32, offset: 576)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3976, file: !182, line: 357, baseType: !51, size: 32, offset: 608)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3976, file: !182, line: 358, baseType: !754, size: 64, offset: 640)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3976, file: !182, line: 359, baseType: !754, size: 64, offset: 704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3976, file: !182, line: 360, baseType: !754, size: 64, offset: 768)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3976, file: !182, line: 361, baseType: !350, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3976, file: !182, line: 362, baseType: !51, size: 32, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3941, file: !182, line: 438, baseType: !3995, size: 64, offset: 448)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!51, !832, !3937, !3975}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3941, file: !182, line: 440, baseType: !3972, size: 64, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3941, file: !182, line: 441, baseType: !4000, size: 64, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!51, !832, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !182, line: 411, size: 1408, elements: !4005)
!4005 = !{!4006, !4007}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !4004, file: !182, line: 412, baseType: !7, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !4004, file: !182, line: 413, baseType: !4008, size: 1344, offset: 64)
!4008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4009, size: 1344, elements: !610)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !182, line: 397, size: 448, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4021}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4009, file: !182, line: 398, baseType: !7, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !4009, file: !182, line: 399, baseType: !7, size: 32, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !4009, file: !182, line: 401, baseType: !7, size: 32, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !4009, file: !182, line: 402, baseType: !7, size: 32, offset: 96)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !4009, file: !182, line: 403, baseType: !7, size: 32, offset: 128)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !4009, file: !182, line: 404, baseType: !7, size: 32, offset: 160)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !4009, file: !182, line: 405, baseType: !7, size: 32, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4009, file: !182, line: 406, baseType: !756, size: 64, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4009, file: !182, line: 407, baseType: !4020, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !54, line: 132, baseType: !754)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !4009, file: !182, line: 408, baseType: !4020, size: 64, offset: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3941, file: !182, line: 442, baseType: !3951, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !833, file: !31, line: 1200, baseType: !4024, size: 64, offset: 576)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4026)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 54, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !833, file: !31, line: 1201, baseType: !68, size: 64, offset: 640)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !833, file: !31, line: 1202, baseType: !68, size: 64, offset: 704)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !833, file: !31, line: 1203, baseType: !68, size: 64, offset: 768)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !833, file: !31, line: 1204, baseType: !718, size: 64, offset: 832)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !833, file: !31, line: 1205, baseType: !1446, size: 320, offset: 896)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !833, file: !31, line: 1206, baseType: !51, size: 32, offset: 1216)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !833, file: !31, line: 1207, baseType: !78, size: 32, offset: 1248)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !833, file: !31, line: 1209, baseType: !49, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !833, file: !31, line: 1211, baseType: !4036, size: 64, offset: 1344)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4039)
!4039 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1211, flags: DIFlagFwdDecl)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !833, file: !31, line: 1223, baseType: !4041, size: 64, offset: 1408)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !735, line: 34, size: 64, elements: !4042)
!4042 = !{!4043}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4041, file: !735, line: 35, baseType: !738, size: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !833, file: !31, line: 1224, baseType: !126, size: 128, offset: 1472)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !833, file: !31, line: 1225, baseType: !4046, size: 64, offset: 1600)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !4048, line: 40, size: 7424, elements: !4049)
!4048 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!4049 = !{!4050, !4052, !4053, !4054, !4057, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4084, !4085}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !4047, file: !4048, line: 41, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !54, line: 131, baseType: !754)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !4047, file: !4048, line: 42, baseType: !4051, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !4047, file: !4048, line: 43, baseType: !3207, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !4047, file: !4048, line: 44, baseType: !4055, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3026, line: 74, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !4047, file: !4048, line: 45, baseType: !4058, size: 64, offset: 256)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !4048, line: 45, flags: DIFlagFwdDecl)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !4047, file: !4048, line: 46, baseType: !68, size: 64, offset: 320)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !4047, file: !4048, line: 47, baseType: !1596, size: 8, offset: 384)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !4047, file: !4048, line: 48, baseType: !112, size: 8, offset: 392)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !4047, file: !4048, line: 49, baseType: !1596, size: 8, offset: 400)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !4047, file: !4048, line: 50, baseType: !1596, size: 8, offset: 408)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !4047, file: !4048, line: 51, baseType: !837, size: 32, offset: 416)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !4047, file: !4048, line: 52, baseType: !78, size: 32, offset: 448)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !4047, file: !4048, line: 53, baseType: !88, size: 32, offset: 480)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !4047, file: !4048, line: 54, baseType: !683, size: 64, offset: 512)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !4047, file: !4048, line: 55, baseType: !49, size: 64, offset: 576)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !4047, file: !4048, line: 56, baseType: !49, size: 64, offset: 640)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !4047, file: !4048, line: 57, baseType: !4072, size: 64, offset: 704)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !4048, line: 57, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !4047, file: !4048, line: 58, baseType: !340, size: 256, offset: 768)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !4047, file: !4048, line: 60, baseType: !51, size: 32, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !4047, file: !4048, line: 61, baseType: !51, size: 32, offset: 1056)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !4047, file: !4048, line: 62, baseType: !574, size: 64, offset: 1088)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !4047, file: !4048, line: 65, baseType: !340, size: 256, offset: 1152)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !4047, file: !4048, line: 66, baseType: !832, size: 64, offset: 1408)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !4047, file: !4048, line: 68, baseType: !4082, size: 64, offset: 1472)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !4048, line: 68, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !4047, file: !4048, line: 72, baseType: !1596, size: 8, offset: 1536)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !4047, file: !4048, line: 77, baseType: !4086, size: 5824, offset: 1600)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !194, line: 705, size: 5824, elements: !4087)
!4087 = !{!4088, !4089, !4091, !4094, !4095, !4148, !4234, !4235, !4236, !4237, !4238, !4245, !4337, !4350, !4571, !4575, !4577, !4578, !4579, !4583, !4590, !4591, !4594, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4661, !4662, !4663, !4666, !4669, !4678, !4679, !4680, !4681, !4682, !4683}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4086, file: !194, line: 706, baseType: !569, size: 512)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4086, file: !194, line: 707, baseType: !4090, size: 64, offset: 512)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4086, file: !194, line: 709, baseType: !4092, size: 64, offset: 576)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !194, line: 37, flags: DIFlagFwdDecl)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4086, file: !194, line: 711, baseType: !45, size: 64, offset: 640)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4086, file: !194, line: 712, baseType: !4096, size: 64, offset: 704)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4098)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !194, line: 89, size: 384, elements: !4099)
!4099 = !{!4100, !4101, !4102, !4108, !4113, !4117}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4098, file: !194, line: 90, baseType: !45, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4098, file: !194, line: 91, baseType: !655, size: 64, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4098, file: !194, line: 92, baseType: !4103, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!51, !4106, !604}
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4098, file: !194, line: 93, baseType: !4109, size: 64, offset: 192)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!609, !4106, !4112, !1775, !1776}
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4098, file: !194, line: 95, baseType: !4114, size: 64, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !4090}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4098, file: !194, line: 97, baseType: !4118, size: 64, offset: 320)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !201, line: 286, size: 1472, elements: !4121)
!4121 = !{!4122, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4120, file: !201, line: 287, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!51, !4090}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4120, file: !201, line: 288, baseType: !4114, size: 64, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4120, file: !201, line: 289, baseType: !4123, size: 64, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4120, file: !201, line: 290, baseType: !4123, size: 64, offset: 192)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4120, file: !201, line: 291, baseType: !4123, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4120, file: !201, line: 292, baseType: !4123, size: 64, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4120, file: !201, line: 293, baseType: !4123, size: 64, offset: 384)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4120, file: !201, line: 294, baseType: !4123, size: 64, offset: 448)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4120, file: !201, line: 295, baseType: !4123, size: 64, offset: 512)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4120, file: !201, line: 296, baseType: !4123, size: 64, offset: 576)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4120, file: !201, line: 297, baseType: !4123, size: 64, offset: 640)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4120, file: !201, line: 298, baseType: !4123, size: 64, offset: 704)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4120, file: !201, line: 299, baseType: !4123, size: 64, offset: 768)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4120, file: !201, line: 300, baseType: !4123, size: 64, offset: 832)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4120, file: !201, line: 301, baseType: !4123, size: 64, offset: 896)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4120, file: !201, line: 302, baseType: !4123, size: 64, offset: 960)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4120, file: !201, line: 303, baseType: !4123, size: 64, offset: 1024)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4120, file: !201, line: 304, baseType: !4123, size: 64, offset: 1088)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4120, file: !201, line: 305, baseType: !4123, size: 64, offset: 1152)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4120, file: !201, line: 306, baseType: !4123, size: 64, offset: 1216)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4120, file: !201, line: 307, baseType: !4123, size: 64, offset: 1280)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4120, file: !201, line: 308, baseType: !4123, size: 64, offset: 1344)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4120, file: !201, line: 309, baseType: !4123, size: 64, offset: 1408)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4086, file: !194, line: 714, baseType: !4149, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4151)
!4151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4152, line: 80, size: 1344, elements: !4153)
!4152 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4153 = !{!4154, !4155, !4156, !4157, !4158, !4159, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4233}
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4151, file: !4152, line: 81, baseType: !45, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4151, file: !4152, line: 82, baseType: !45, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4151, file: !4152, line: 83, baseType: !655, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4151, file: !4152, line: 84, baseType: !655, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4151, file: !4152, line: 85, baseType: !655, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4151, file: !4152, line: 87, baseType: !4160, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!51, !4090, !4163}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !188, line: 96, size: 1152, elements: !4165)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4171, !4172, !4185, !4196, !4197, !4198, !4199, !4200, !4208, !4209, !4210, !4211, !4212, !4213}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4164, file: !188, line: 97, baseType: !45, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4164, file: !188, line: 98, baseType: !4149, size: 64, offset: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4164, file: !188, line: 100, baseType: !556, size: 64, offset: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4164, file: !188, line: 101, baseType: !45, size: 64, offset: 192)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4164, file: !188, line: 103, baseType: !1596, size: 8, offset: 256)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4164, file: !188, line: 104, baseType: !187, size: 32, offset: 288)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4164, file: !188, line: 106, baseType: !4173, size: 64, offset: 320)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4175)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4176, line: 282, size: 1600, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4177 = !{!4178, !4179, !4180, !4184}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 283, baseType: !2884, size: 256)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4175, file: !4176, line: 284, baseType: !2884, size: 256, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4175, file: !4176, line: 285, baseType: !4181, size: 1024, offset: 512)
!4181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1024, elements: !4182)
!4182 = !{!4183}
!4183 = !DISubrange(count: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4175, file: !4176, line: 286, baseType: !1525, size: 64, offset: 1536)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4164, file: !188, line: 107, baseType: !4186, size: 64, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4188)
!4188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4176, line: 217, size: 256, elements: !4189)
!4189 = !{!4190, !4192, !4194, !4195}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4188, file: !4176, line: 218, baseType: !4191, size: 128)
!4191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, elements: !438)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4188, file: !4176, line: 219, baseType: !4193, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4176, line: 15, baseType: !68)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4188, file: !4176, line: 220, baseType: !396, size: 32, offset: 192)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4188, file: !4176, line: 221, baseType: !396, size: 32, offset: 224)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4164, file: !188, line: 109, baseType: !4123, size: 64, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4164, file: !188, line: 110, baseType: !4114, size: 64, offset: 512)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4164, file: !188, line: 111, baseType: !4123, size: 64, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4164, file: !188, line: 112, baseType: !4114, size: 64, offset: 640)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4164, file: !188, line: 113, baseType: !4201, size: 64, offset: 704)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!51, !4090, !4204}
!4204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !201, line: 60, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !201, line: 58, size: 32, elements: !4206)
!4206 = !{!4207}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4205, file: !201, line: 59, baseType: !51, size: 32)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4164, file: !188, line: 114, baseType: !4123, size: 64, offset: 768)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4164, file: !188, line: 115, baseType: !655, size: 64, offset: 832)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4164, file: !188, line: 116, baseType: !655, size: 64, offset: 896)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4164, file: !188, line: 118, baseType: !4118, size: 64, offset: 960)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4164, file: !188, line: 119, baseType: !4114, size: 64, offset: 1024)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4164, file: !188, line: 121, baseType: !4214, size: 64, offset: 1088)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !188, line: 121, flags: DIFlagFwdDecl)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4151, file: !4152, line: 88, baseType: !4103, size: 64, offset: 384)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4151, file: !4152, line: 89, baseType: !4123, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4151, file: !4152, line: 90, baseType: !4114, size: 64, offset: 512)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4151, file: !4152, line: 91, baseType: !4114, size: 64, offset: 576)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4151, file: !4152, line: 92, baseType: !4114, size: 64, offset: 640)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4151, file: !4152, line: 94, baseType: !4123, size: 64, offset: 704)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4151, file: !4152, line: 95, baseType: !4123, size: 64, offset: 768)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4151, file: !4152, line: 97, baseType: !4201, size: 64, offset: 832)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4151, file: !4152, line: 98, baseType: !4123, size: 64, offset: 896)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4151, file: !4152, line: 100, baseType: !4123, size: 64, offset: 960)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4151, file: !4152, line: 102, baseType: !4123, size: 64, offset: 1024)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4151, file: !4152, line: 103, baseType: !4114, size: 64, offset: 1088)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4151, file: !4152, line: 105, baseType: !4118, size: 64, offset: 1152)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4151, file: !4152, line: 107, baseType: !4230, size: 64, offset: 1216)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4232)
!4232 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4152, line: 107, flags: DIFlagFwdDecl)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4151, file: !4152, line: 109, baseType: !1596, size: 8, offset: 1280)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4086, file: !194, line: 715, baseType: !4163, size: 64, offset: 832)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4086, file: !194, line: 717, baseType: !49, size: 64, offset: 896)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4086, file: !194, line: 719, baseType: !49, size: 64, offset: 960)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4086, file: !194, line: 721, baseType: !340, size: 256, offset: 1024)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4086, file: !194, line: 725, baseType: !4239, size: 448, offset: 1280)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !194, line: 517, size: 448, elements: !4240)
!4240 = !{!4241, !4242, !4243, !4244}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4239, file: !194, line: 518, baseType: !126, size: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4239, file: !194, line: 519, baseType: !126, size: 128, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4239, file: !194, line: 520, baseType: !126, size: 128, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4239, file: !194, line: 521, baseType: !193, size: 32, offset: 384)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4086, file: !194, line: 726, baseType: !4246, size: 2496, offset: 1728)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !201, line: 663, size: 2496, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4330, !4334}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4246, file: !201, line: 664, baseType: !4204, size: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4246, file: !201, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4246, file: !201, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4246, file: !201, line: 667, baseType: !1596, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4246, file: !201, line: 668, baseType: !1596, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4246, file: !201, line: 669, baseType: !1596, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4246, file: !201, line: 670, baseType: !1596, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4246, file: !201, line: 671, baseType: !1596, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4246, file: !201, line: 672, baseType: !1596, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4246, file: !201, line: 673, baseType: !1596, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4246, file: !201, line: 674, baseType: !1596, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4246, file: !201, line: 675, baseType: !477, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4246, file: !201, line: 676, baseType: !88, size: 32, offset: 96)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4246, file: !201, line: 678, baseType: !126, size: 128, offset: 128)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4246, file: !201, line: 679, baseType: !1750, size: 256, offset: 256)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4246, file: !201, line: 680, baseType: !4264, size: 64, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4266, line: 43, size: 1536, elements: !4267)
!4266 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4267 = !{!4268, !4269, !4270, !4271, !4272, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4265, file: !4266, line: 44, baseType: !45, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4265, file: !4266, line: 45, baseType: !51, size: 32, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4265, file: !4266, line: 46, baseType: !126, size: 128, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4265, file: !4266, line: 47, baseType: !88, size: 32, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4265, file: !4266, line: 48, baseType: !4273, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !201, line: 629, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4265, file: !4266, line: 49, baseType: !2503, size: 320, offset: 384)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4265, file: !4266, line: 50, baseType: !68, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4265, file: !4266, line: 51, baseType: !1223, size: 64, offset: 768)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4265, file: !4266, line: 52, baseType: !1223, size: 64, offset: 832)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4265, file: !4266, line: 53, baseType: !1223, size: 64, offset: 896)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4265, file: !4266, line: 54, baseType: !1223, size: 64, offset: 960)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4265, file: !4266, line: 55, baseType: !1223, size: 64, offset: 1024)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4265, file: !4266, line: 56, baseType: !68, size: 64, offset: 1088)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4265, file: !4266, line: 57, baseType: !68, size: 64, offset: 1152)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4265, file: !4266, line: 58, baseType: !68, size: 64, offset: 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4265, file: !4266, line: 59, baseType: !68, size: 64, offset: 1280)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4265, file: !4266, line: 60, baseType: !68, size: 64, offset: 1344)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4265, file: !4266, line: 61, baseType: !4090, size: 64, offset: 1408)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4265, file: !4266, line: 62, baseType: !1596, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4265, file: !4266, line: 63, baseType: !1596, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4246, file: !201, line: 681, baseType: !1596, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4246, file: !201, line: 682, baseType: !1596, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4246, file: !201, line: 683, baseType: !1596, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4246, file: !201, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4246, file: !201, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4246, file: !201, line: 690, baseType: !1215, size: 512, offset: 640)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4246, file: !201, line: 691, baseType: !754, size: 64, offset: 1152)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4246, file: !201, line: 692, baseType: !1711, size: 256, offset: 1216)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4246, file: !201, line: 693, baseType: !83, size: 192, offset: 1472)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4246, file: !201, line: 694, baseType: !4273, size: 64, offset: 1664)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4246, file: !201, line: 695, baseType: !78, size: 32, offset: 1728)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4246, file: !201, line: 696, baseType: !78, size: 32, offset: 1760)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4246, file: !201, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4246, file: !201, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4246, file: !201, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4246, file: !201, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4246, file: !201, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4246, file: !201, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4246, file: !201, line: 703, baseType: !1596, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4246, file: !201, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4246, file: !201, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4246, file: !201, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4246, file: !201, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4246, file: !201, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4246, file: !201, line: 709, baseType: !7, size: 32, offset: 1824)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4246, file: !201, line: 710, baseType: !200, size: 32, offset: 1856)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4246, file: !201, line: 711, baseType: !208, size: 32, offset: 1888)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4246, file: !201, line: 712, baseType: !208, size: 32, offset: 1920)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4246, file: !201, line: 713, baseType: !51, size: 32, offset: 1952)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4246, file: !201, line: 714, baseType: !51, size: 32, offset: 1984)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4246, file: !201, line: 715, baseType: !754, size: 64, offset: 2048)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4246, file: !201, line: 716, baseType: !754, size: 64, offset: 2112)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4246, file: !201, line: 717, baseType: !754, size: 64, offset: 2176)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4246, file: !201, line: 718, baseType: !754, size: 64, offset: 2240)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4246, file: !201, line: 720, baseType: !4325, size: 64, offset: 2304)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !201, line: 632, size: 64, elements: !4327)
!4327 = !{!4328, !4329}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4326, file: !201, line: 633, baseType: !88, size: 32)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4326, file: !201, line: 634, baseType: !7, size: 32, offset: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4246, file: !201, line: 721, baseType: !4331, size: 64, offset: 2368)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{null, !4090, !1492}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4246, file: !201, line: 722, baseType: !4335, size: 64, offset: 2432)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !201, line: 722, flags: DIFlagFwdDecl)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4086, file: !194, line: 727, baseType: !4338, size: 64, offset: 4224)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !201, line: 742, size: 1792, elements: !4340)
!4340 = !{!4341, !4342, !4343, !4347, !4348, !4349}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4339, file: !201, line: 743, baseType: !4120, size: 1472)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4339, file: !201, line: 744, baseType: !4123, size: 64, offset: 1472)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4339, file: !201, line: 745, baseType: !4344, size: 64, offset: 1536)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !4090, !1596}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4339, file: !201, line: 746, baseType: !4123, size: 64, offset: 1600)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4339, file: !201, line: 747, baseType: !4114, size: 64, offset: 1664)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4339, file: !201, line: 748, baseType: !4114, size: 64, offset: 1728)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4086, file: !194, line: 736, baseType: !4351, size: 128, offset: 4288)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !194, line: 529, size: 128, elements: !4352)
!4352 = !{!4353, !4568}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4351, file: !194, line: 531, baseType: !4354, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4356, line: 150, size: 1408, elements: !4357)
!4356 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd3b6d3aac1ec0f42f0ed0e1454dc51c")
!4357 = !{!4358, !4359, !4360, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4556, !4557, !4558, !4559, !4563, !4564, !4565, !4566}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4355, file: !4356, line: 151, baseType: !126, size: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4355, file: !4356, line: 152, baseType: !45, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4355, file: !4356, line: 153, baseType: !4361, size: 64, offset: 192)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4363)
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !4356, line: 88, size: 640, elements: !4364)
!4364 = !{!4365, !4495, !4506, !4511, !4515, !4523, !4527, !4531, !4538, !4542}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4363, file: !4356, line: 89, baseType: !4366, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4367, size: 64)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!51, !4354, !4369, !221}
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4371, line: 48, size: 1152, elements: !4372)
!4371 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4372 = !{!4373, !4374, !4376, !4377, !4481, !4489, !4490, !4491, !4492, !4493, !4494}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4370, file: !4371, line: 49, baseType: !45, size: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4370, file: !4371, line: 50, baseType: !4375, size: 32, offset: 64)
!4375 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4371, line: 25, baseType: !477)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4370, file: !4371, line: 51, baseType: !45, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4370, file: !4371, line: 52, baseType: !4378, size: 512, offset: 192)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4379, line: 41, size: 512, elements: !4380)
!4379 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4380 = !{!4381, !4383, !4477, !4478, !4479, !4480}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4378, file: !4379, line: 42, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4378, file: !4379, line: 43, baseType: !4384, size: 64, offset: 64)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4386)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4379, line: 125, size: 1408, elements: !4387)
!4387 = !{!4388, !4392, !4396, !4402, !4406, !4407, !4411, !4415, !4419, !4424, !4428, !4429, !4433, !4437, !4441, !4452, !4453, !4454, !4455, !4465, !4469, !4473}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4386, file: !4379, line: 126, baseType: !4389, size: 64)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!4382, !4382}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4386, file: !4379, line: 127, baseType: !4393, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{null, !4382}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4386, file: !4379, line: 128, baseType: !4397, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!1596, !4400}
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4401, size: 64)
!4401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4378)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4386, file: !4379, line: 129, baseType: !4403, size: 64, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!1525, !4400, !4106}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4386, file: !4379, line: 131, baseType: !4397, size: 64, offset: 256)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4386, file: !4379, line: 133, baseType: !4408, size: 64, offset: 320)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!215, !4400}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4386, file: !4379, line: 134, baseType: !4412, size: 64, offset: 384)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!1596, !4400, !45}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4386, file: !4379, line: 136, baseType: !4416, size: 64, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!51, !4400, !45, !7, !49, !64}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4386, file: !4379, line: 141, baseType: !4420, size: 64, offset: 512)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!51, !4400, !45, !4423, !64}
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4386, file: !4379, line: 144, baseType: !4425, size: 64, offset: 576)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!45, !4400}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4386, file: !4379, line: 145, baseType: !4425, size: 64, offset: 640)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4386, file: !4379, line: 146, baseType: !4430, size: 64, offset: 704)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!4382, !4400}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4386, file: !4379, line: 148, baseType: !4434, size: 64, offset: 768)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{!4382, !4400, !4382}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4386, file: !4379, line: 151, baseType: !4438, size: 64, offset: 832)
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!4382, !4400, !45}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4386, file: !4379, line: 153, baseType: !4442, size: 64, offset: 896)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!51, !4400, !45, !45, !7, !7, !4445}
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4379, line: 94, size: 640, elements: !4447)
!4447 = !{!4448, !4449, !4450}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4446, file: !4379, line: 95, baseType: !4382, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4446, file: !4379, line: 96, baseType: !7, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4446, file: !4379, line: 97, baseType: !4451, size: 512, offset: 128)
!4451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !754, size: 512, elements: !1258)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4386, file: !4379, line: 158, baseType: !4434, size: 64, offset: 960)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4386, file: !4379, line: 161, baseType: !4430, size: 64, offset: 1024)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4386, file: !4379, line: 163, baseType: !4389, size: 64, offset: 1088)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4386, file: !4379, line: 164, baseType: !4456, size: 64, offset: 1152)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!51, !4400, !4459}
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4379, line: 73, size: 128, elements: !4461)
!4461 = !{!4462, !4463, !4464}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4460, file: !4379, line: 74, baseType: !7, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4460, file: !4379, line: 75, baseType: !7, size: 32, offset: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4460, file: !4379, line: 76, baseType: !4400, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4386, file: !4379, line: 166, baseType: !4466, size: 64, offset: 1216)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DISubroutineType(types: !4468)
!4468 = !{!49, !4382, !51}
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4386, file: !4379, line: 167, baseType: !4470, size: 64, offset: 1280)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!51, !4400, !7}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4386, file: !4379, line: 168, baseType: !4474, size: 64, offset: 1344)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{!51, !4382}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4378, file: !4379, line: 44, baseType: !4090, size: 64, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4378, file: !4379, line: 45, baseType: !126, size: 128, offset: 192)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4378, file: !4379, line: 46, baseType: !126, size: 128, offset: 320)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4378, file: !4379, line: 47, baseType: !112, size: 8, offset: 448)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4370, file: !4371, line: 54, baseType: !4482, size: 64, offset: 704)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4371, line: 28, size: 256, elements: !4484)
!4484 = !{!4485, !4486, !4487, !4488}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4483, file: !4371, line: 29, baseType: !609, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4483, file: !4371, line: 30, baseType: !51, size: 32, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4483, file: !4371, line: 31, baseType: !49, size: 64, offset: 128)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4483, file: !4371, line: 32, baseType: !4482, size: 64, offset: 192)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4370, file: !4371, line: 55, baseType: !4482, size: 64, offset: 768)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4370, file: !4371, line: 56, baseType: !4369, size: 64, offset: 832)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4370, file: !4371, line: 57, baseType: !4369, size: 64, offset: 896)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4370, file: !4371, line: 58, baseType: !4369, size: 64, offset: 960)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4370, file: !4371, line: 62, baseType: !68, size: 64, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4370, file: !4371, line: 63, baseType: !49, size: 64, offset: 1088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !4363, file: !4356, line: 91, baseType: !4496, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!51, !4354, !4499, !221}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !4356, line: 63, size: 640, elements: !4501)
!4501 = !{!4502, !4503, !4504}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4500, file: !4356, line: 64, baseType: !4382, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4500, file: !4356, line: 65, baseType: !51, size: 32, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4500, file: !4356, line: 66, baseType: !4505, size: 512, offset: 96)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 512, elements: !438)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4363, file: !4356, line: 93, baseType: !4507, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!51, !4354, !7, !4510}
!4510 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !54, line: 170, baseType: !68)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !4363, file: !4356, line: 94, baseType: !4512, size: 64, offset: 192)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{null, !4354, !7}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !4363, file: !4356, line: 95, baseType: !4516, size: 64, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!51, !4354, !4369, !4519, !7, !4521, !4522}
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4363, file: !4356, line: 100, baseType: !4524, size: 64, offset: 320)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!51, !4354, !7, !7, !49}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4363, file: !4356, line: 102, baseType: !4528, size: 64, offset: 384)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{null, !4354, !7, !7}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4363, file: !4356, line: 104, baseType: !4532, size: 64, offset: 448)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!51, !4354, !4535, !1596}
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4537, line: 11, flags: DIFlagFwdDecl)
!4537 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12f502f2f1e55658b1d5aa186ee65843")
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4363, file: !4356, line: 105, baseType: !4539, size: 64, offset: 512)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{null, !4354, !4535}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !4363, file: !4356, line: 106, baseType: !4543, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!51, !4354, !4499, !4521, !4522}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !4355, file: !4356, line: 154, baseType: !49, size: 64, offset: 256)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4355, file: !4356, line: 155, baseType: !7, size: 32, offset: 320)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !4355, file: !4356, line: 156, baseType: !7, size: 32, offset: 352)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4355, file: !4356, line: 157, baseType: !340, size: 256, offset: 384)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4355, file: !4356, line: 158, baseType: !4354, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4355, file: !4356, line: 161, baseType: !4382, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !4355, file: !4356, line: 162, baseType: !221, size: 32, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4355, file: !4356, line: 163, baseType: !4554, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !4356, line: 117, flags: DIFlagFwdDecl)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4355, file: !4356, line: 164, baseType: !4090, size: 64, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "pm_dev", scope: !4355, file: !4356, line: 165, baseType: !4090, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4355, file: !4356, line: 167, baseType: !4354, size: 64, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "msi_parent_ops", scope: !4355, file: !4356, line: 170, baseType: !4560, size: 64, offset: 1088)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4562)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_parent_ops", file: !4356, line: 49, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !4355, file: !4356, line: 174, baseType: !4510, size: 64, offset: 1152)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !4355, file: !4356, line: 175, baseType: !7, size: 32, offset: 1216)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !4355, file: !4356, line: 176, baseType: !1085, size: 128, offset: 1280)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "revmap", scope: !4355, file: !4356, line: 177, baseType: !4567, offset: 1408)
!4567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4535, elements: !1827)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4351, file: !194, line: 532, baseType: !4569, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !194, line: 49, flags: DIFlagFwdDecl)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4086, file: !194, line: 738, baseType: !4572, size: 64, offset: 4416)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4574)
!4574 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !194, line: 738, flags: DIFlagFwdDecl)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4086, file: !194, line: 740, baseType: !4576, size: 64, offset: 4480)
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4086, file: !194, line: 741, baseType: !754, size: 64, offset: 4544)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4086, file: !194, line: 746, baseType: !754, size: 64, offset: 4608)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4086, file: !194, line: 747, baseType: !4580, size: 64, offset: 4672)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4582)
!4582 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !194, line: 747, flags: DIFlagFwdDecl)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4086, file: !194, line: 749, baseType: !4584, size: 64, offset: 4736)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !194, line: 428, size: 128, elements: !4586)
!4586 = !{!4587, !4588, !4589}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4585, file: !194, line: 433, baseType: !7, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4585, file: !194, line: 434, baseType: !7, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4585, file: !194, line: 435, baseType: !68, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4086, file: !194, line: 751, baseType: !126, size: 128, offset: 4800)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4086, file: !194, line: 762, baseType: !4592, size: 64, offset: 4928)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !194, line: 762, flags: DIFlagFwdDecl)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4086, file: !194, line: 770, baseType: !4595, offset: 4992)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4596, line: 5, elements: !882)
!4596 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4086, file: !194, line: 772, baseType: !4369, size: 64, offset: 4992)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4086, file: !194, line: 773, baseType: !4382, size: 64, offset: 5056)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4086, file: !194, line: 776, baseType: !51, size: 32, offset: 5120)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4086, file: !194, line: 778, baseType: !837, size: 32, offset: 5152)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4086, file: !194, line: 779, baseType: !477, size: 32, offset: 5184)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4086, file: !194, line: 781, baseType: !88, size: 32, offset: 5216)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4086, file: !194, line: 782, baseType: !126, size: 128, offset: 5248)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4086, file: !194, line: 784, baseType: !4605, size: 64, offset: 5376)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4608, line: 52, size: 768, elements: !4609)
!4608 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4609 = !{!4610, !4611, !4612, !4613, !4614, !4618, !4622, !4623, !4624, !4652, !4656, !4660}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4607, file: !4608, line: 53, baseType: !45, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4607, file: !4608, line: 55, baseType: !655, size: 64, offset: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4607, file: !4608, line: 56, baseType: !655, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4607, file: !4608, line: 58, baseType: !4103, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4607, file: !4608, line: 59, baseType: !4615, size: 64, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!609, !4106, !4112}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4607, file: !4608, line: 61, baseType: !4619, size: 64, offset: 320)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{null, !4605}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4607, file: !4608, line: 62, baseType: !4114, size: 64, offset: 384)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4607, file: !4608, line: 64, baseType: !4123, size: 64, offset: 448)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4607, file: !4608, line: 66, baseType: !4625, size: 64, offset: 512)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4627)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !241, line: 39, size: 384, elements: !4628)
!4628 = !{!4629, !4630, !4634, !4638, !4644, !4648}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4627, file: !241, line: 40, baseType: !240, size: 32)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4627, file: !241, line: 41, baseType: !4631, size: 64, offset: 64)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!1596}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4627, file: !241, line: 42, baseType: !4635, size: 64, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!49}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4627, file: !241, line: 43, baseType: !4639, size: 64, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64)
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!1525, !4642}
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !241, line: 19, flags: DIFlagFwdDecl)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4627, file: !241, line: 44, baseType: !4645, size: 64, offset: 256)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!1525}
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4627, file: !241, line: 45, baseType: !4649, size: 64, offset: 320)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{null, !49}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4607, file: !4608, line: 67, baseType: !4653, size: 64, offset: 576)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!1525, !4106}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4607, file: !4608, line: 69, baseType: !4657, size: 64, offset: 640)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !4106, !1775, !1776}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4607, file: !4608, line: 71, baseType: !4118, size: 64, offset: 704)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4086, file: !194, line: 785, baseType: !655, size: 64, offset: 5440)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4086, file: !194, line: 787, baseType: !4114, size: 64, offset: 5504)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4086, file: !194, line: 788, baseType: !4664, size: 64, offset: 5568)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !194, line: 46, flags: DIFlagFwdDecl)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4086, file: !194, line: 789, baseType: !4667, size: 64, offset: 5632)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !194, line: 48, flags: DIFlagFwdDecl)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4086, file: !194, line: 791, baseType: !4670, size: 64, offset: 5696)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !194, line: 597, size: 128, elements: !4672)
!4672 = !{!4673, !4674, !4675, !4676, !4677}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4671, file: !194, line: 598, baseType: !246, size: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4671, file: !194, line: 599, baseType: !255, size: 32, offset: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4671, file: !194, line: 600, baseType: !260, size: 32, offset: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4671, file: !194, line: 601, baseType: !1596, size: 8, offset: 96)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4671, file: !194, line: 602, baseType: !1596, size: 8, offset: 104)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4086, file: !194, line: 793, baseType: !265, size: 32, offset: 5760)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4086, file: !194, line: 795, baseType: !1596, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4086, file: !194, line: 796, baseType: !1596, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4086, file: !194, line: 797, baseType: !1596, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4086, file: !194, line: 798, baseType: !1596, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4086, file: !194, line: 799, baseType: !1596, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !833, file: !31, line: 1226, baseType: !4685, size: 64, offset: 1664)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !31, line: 1226, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !833, file: !31, line: 1227, baseType: !4688, size: 64, offset: 1728)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !272, line: 163, size: 6848, elements: !4690)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4747, !4748, !4749, !4750, !4751, !4752, !4753}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4689, file: !272, line: 164, baseType: !754, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !4689, file: !272, line: 165, baseType: !1145, size: 192, align: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !4689, file: !272, line: 166, baseType: !126, size: 128, offset: 256)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4689, file: !272, line: 167, baseType: !68, size: 64, offset: 384)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !4689, file: !272, line: 168, baseType: !68, size: 64, offset: 448)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4689, file: !272, line: 170, baseType: !4697, size: 32, offset: 512)
!4697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4698, line: 19, size: 32, elements: !4699)
!4698 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4699 = !{!4700}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4697, file: !4698, line: 20, baseType: !381, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !4689, file: !272, line: 171, baseType: !7, size: 32, offset: 544)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !4689, file: !272, line: 172, baseType: !7, size: 32, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !4689, file: !272, line: 173, baseType: !7, size: 32, offset: 608)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !4689, file: !272, line: 173, baseType: !7, size: 32, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !4689, file: !272, line: 179, baseType: !344, size: 64, offset: 704)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !4689, file: !272, line: 184, baseType: !68, size: 64, offset: 768)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !4689, file: !272, line: 186, baseType: !4708, size: 4672, offset: 832)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !272, line: 105, size: 4672, elements: !4709)
!4709 = !{!4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727, !4734, !4735, !4736, !4737, !4738, !4745, !4746}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !4708, file: !272, line: 106, baseType: !4688, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4708, file: !272, line: 108, baseType: !68, size: 64, offset: 64)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !4708, file: !272, line: 109, baseType: !68, size: 64, offset: 128)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !4708, file: !272, line: 111, baseType: !126, size: 128, offset: 192)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !4708, file: !272, line: 112, baseType: !126, size: 128, offset: 320)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !4708, file: !272, line: 113, baseType: !126, size: 128, offset: 448)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !4708, file: !272, line: 114, baseType: !126, size: 128, offset: 576)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !4708, file: !272, line: 115, baseType: !88, size: 32, offset: 704)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !4708, file: !272, line: 117, baseType: !78, size: 32, offset: 736)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4708, file: !272, line: 118, baseType: !1483, size: 1280, offset: 768)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !4708, file: !272, line: 120, baseType: !68, size: 64, offset: 2048)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !4708, file: !272, line: 121, baseType: !68, size: 64, offset: 2112)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !4708, file: !272, line: 122, baseType: !68, size: 64, offset: 2176)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !4708, file: !272, line: 123, baseType: !68, size: 64, offset: 2240)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !4708, file: !272, line: 124, baseType: !68, size: 64, offset: 2304)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !4708, file: !272, line: 132, baseType: !68, size: 64, offset: 2368)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !4708, file: !272, line: 133, baseType: !68, size: 64, offset: 2432)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !4708, file: !272, line: 135, baseType: !4728, size: 384, offset: 2496)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !4729, line: 76, size: 384, elements: !4730)
!4729 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!4730 = !{!4731, !4732, !4733}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4728, file: !4729, line: 78, baseType: !1484, size: 320)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4728, file: !4729, line: 80, baseType: !7, size: 32, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4728, file: !4729, line: 81, baseType: !353, size: 32, offset: 352)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !4708, file: !272, line: 136, baseType: !51, size: 32, offset: 2880)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !4708, file: !272, line: 137, baseType: !271, size: 32, offset: 2912)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !4708, file: !272, line: 139, baseType: !88, size: 32, offset: 2944)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !4708, file: !272, line: 140, baseType: !126, size: 128, offset: 3008)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !4708, file: !272, line: 141, baseType: !4739, size: 704, offset: 3136)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1712, line: 111, size: 704, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4739, file: !1712, line: 112, baseType: !1711, size: 256)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4739, file: !1712, line: 113, baseType: !2503, size: 320, offset: 256)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4739, file: !1712, line: 116, baseType: !2716, size: 64, offset: 576)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4739, file: !1712, line: 117, baseType: !51, size: 32, offset: 640)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !4708, file: !272, line: 142, baseType: !4739, size: 704, offset: 3840)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !4708, file: !272, line: 144, baseType: !126, size: 128, offset: 4544)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !4689, file: !272, line: 187, baseType: !126, size: 128, offset: 5504)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !4689, file: !272, line: 193, baseType: !83, size: 192, offset: 5632)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4689, file: !272, line: 195, baseType: !4090, size: 64, offset: 5824)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4689, file: !272, line: 196, baseType: !2542, size: 512, offset: 5888)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4689, file: !272, line: 197, baseType: !4090, size: 64, offset: 6400)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !4689, file: !272, line: 199, baseType: !2503, size: 320, offset: 6464)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !4689, file: !272, line: 202, baseType: !718, size: 64, offset: 6784)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !833, file: !31, line: 1228, baseType: !4755, size: 64, offset: 1792)
!4755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4756, size: 64)
!4756 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1228, flags: DIFlagFwdDecl)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !833, file: !31, line: 1229, baseType: !874, size: 128, offset: 1856)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !833, file: !31, line: 1230, baseType: !7, size: 32, offset: 1984)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !833, file: !31, line: 1231, baseType: !4760, size: 2496, offset: 2048)
!4760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !182, line: 521, size: 2496, elements: !4761)
!4761 = !{!4762, !4763, !4764, !4766, !4798}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4760, file: !182, line: 522, baseType: !7, size: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4760, file: !182, line: 523, baseType: !1446, size: 320, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4760, file: !182, line: 524, baseType: !4765, size: 192, offset: 384)
!4765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !683, size: 192, elements: !610)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4760, file: !182, line: 525, baseType: !4767, size: 1728, offset: 576)
!4767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4768, size: 1728, elements: !610)
!4768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !182, line: 222, size: 576, elements: !4769)
!4769 = !{!4770, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797}
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4768, file: !182, line: 223, baseType: !4771, size: 64)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4772, size: 64)
!4772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !182, line: 445, size: 256, elements: !4773)
!4773 = !{!4774, !4775, !4788, !4789}
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4772, file: !182, line: 446, baseType: !51, size: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4772, file: !182, line: 447, baseType: !4776, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4778)
!4778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !182, line: 312, size: 512, elements: !4779)
!4779 = !{!4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787}
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4778, file: !182, line: 313, baseType: !940, size: 64)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4778, file: !182, line: 314, baseType: !940, size: 64, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4778, file: !182, line: 315, baseType: !940, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4778, file: !182, line: 316, baseType: !940, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4778, file: !182, line: 317, baseType: !3904, size: 64, offset: 256)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4778, file: !182, line: 318, baseType: !3904, size: 64, offset: 320)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4778, file: !182, line: 319, baseType: !3904, size: 64, offset: 384)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4778, file: !182, line: 320, baseType: !3934, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4772, file: !182, line: 448, baseType: !556, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4772, file: !182, line: 449, baseType: !4771, size: 64, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4768, file: !182, line: 224, baseType: !51, size: 32, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4768, file: !182, line: 226, baseType: !126, size: 128, offset: 128)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4768, file: !182, line: 227, baseType: !68, size: 64, offset: 256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4768, file: !182, line: 228, baseType: !7, size: 32, offset: 320)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4768, file: !182, line: 229, baseType: !7, size: 32, offset: 352)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4768, file: !182, line: 230, baseType: !3872, size: 64, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4768, file: !182, line: 231, baseType: !3872, size: 64, offset: 448)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4768, file: !182, line: 232, baseType: !49, size: 64, offset: 512)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4760, file: !182, line: 526, baseType: !4799, size: 192, offset: 2304)
!4799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4776, size: 192, elements: !610)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !833, file: !31, line: 1233, baseType: !4801, size: 2368, offset: 4544)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1184, size: 2368, elements: !4802)
!4802 = !{!4803, !4804, !4805}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4801, file: !31, line: 1185, baseType: !55, size: 16)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4801, file: !31, line: 1186, baseType: !55, size: 16, offset: 16)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4801, file: !31, line: 1187, baseType: !4806, size: 2304, offset: 64)
!4806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4807, size: 2304, elements: !610)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4808, line: 12, size: 768, elements: !4809)
!4808 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4809 = !{!4810, !4818, !4819, !4824, !4825}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4807, file: !4808, line: 13, baseType: !4811, size: 384)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4812, line: 17, size: 384, elements: !4813)
!4812 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4813 = !{!4814, !4815, !4816, !4817}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4811, file: !4812, line: 18, baseType: !51, size: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4811, file: !4812, line: 19, baseType: !51, size: 32, offset: 32)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4811, file: !4812, line: 20, baseType: !83, size: 192, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4811, file: !4812, line: 22, baseType: !1018, size: 128, align: 64, offset: 256)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4807, file: !4808, line: 14, baseType: !4522, size: 64, offset: 384)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4807, file: !4808, line: 15, baseType: !4820, size: 64, offset: 448)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4821, line: 16, size: 64, elements: !4822)
!4821 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4822 = !{!4823}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4820, file: !4821, line: 17, baseType: !1096, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4807, file: !4808, line: 16, baseType: !83, size: 192, offset: 512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4807, file: !4808, line: 17, baseType: !78, size: 32, offset: 704)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !833, file: !31, line: 1240, baseType: !49, size: 64, offset: 6912)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !833, file: !31, line: 1243, baseType: !477, size: 32, offset: 6976)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !833, file: !31, line: 1245, baseType: !1622, size: 64, offset: 7040)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !833, file: !31, line: 1246, baseType: !1622, size: 64, offset: 7104)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !833, file: !31, line: 1248, baseType: !396, size: 32, offset: 7168)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !833, file: !31, line: 1249, baseType: !4832, size: 64, offset: 7232)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 634, flags: DIFlagFwdDecl)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !833, file: !31, line: 1252, baseType: !2884, size: 256, offset: 7296)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !833, file: !31, line: 1253, baseType: !4836, size: 128, offset: 7552)
!4836 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4837, line: 21, baseType: !4838)
!4837 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4837, line: 19, size: 128, elements: !4839)
!4839 = !{!4840}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4838, file: !4837, line: 20, baseType: !4191, size: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !833, file: !31, line: 1255, baseType: !7, size: 32, offset: 7680)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !833, file: !31, line: 1261, baseType: !340, size: 256, offset: 7744)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !833, file: !31, line: 1267, baseType: !45, size: 64, offset: 8000)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !833, file: !31, line: 1269, baseType: !779, size: 64, offset: 8064)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !833, file: !31, line: 1271, baseType: !4846, size: 448, offset: 8128)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3887, line: 63, size: 448, elements: !4847)
!4847 = !{!4848, !4853, !4854, !4855, !4856, !4857, !4858}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4846, file: !3887, line: 64, baseType: !4849, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!68, !4852, !3885}
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4846, file: !3887, line: 66, baseType: !4849, size: 64, offset: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4846, file: !3887, line: 69, baseType: !644, size: 64, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4846, file: !3887, line: 70, baseType: !51, size: 32, offset: 192)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4846, file: !3887, line: 71, baseType: !7, size: 32, offset: 224)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4846, file: !3887, line: 74, baseType: !126, size: 128, offset: 256)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4846, file: !3887, line: 85, baseType: !4859, size: 64, offset: 384)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !833, file: !31, line: 1274, baseType: !344, size: 64, offset: 8576)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !833, file: !31, line: 1280, baseType: !344, size: 64, offset: 8640)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !833, file: !31, line: 1283, baseType: !51, size: 32, offset: 8704)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !833, file: !31, line: 1286, baseType: !3819, size: 32, offset: 8736)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !833, file: !31, line: 1289, baseType: !2716, size: 64, offset: 8768)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !833, file: !31, line: 1290, baseType: !870, size: 64, offset: 8832)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !833, file: !31, line: 1297, baseType: !1551, size: 64, offset: 8896)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !833, file: !31, line: 1304, baseType: !4868, size: 64, offset: 8960)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4869, line: 49, size: 64, elements: !4870)
!4869 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4870 = !{!4871}
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4868, file: !4869, line: 50, baseType: !4872, size: 64)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4869, line: 41, size: 512, align: 512, elements: !4874)
!4874 = !{!4875, !4876, !4881}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4873, file: !4869, line: 43, baseType: !88, size: 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4873, file: !4869, line: 45, baseType: !4877, size: 192, offset: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4869, line: 29, size: 192, elements: !4878)
!4878 = !{!4879, !4880}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4877, file: !4869, line: 30, baseType: !126, size: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4877, file: !4869, line: 32, baseType: !644, size: 64, offset: 128)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4873, file: !4869, line: 46, baseType: !644, size: 64, offset: 256)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !833, file: !31, line: 1305, baseType: !4868, size: 64, offset: 9024)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !833, file: !31, line: 1306, baseType: !1018, size: 128, align: 64, offset: 9088)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !833, file: !31, line: 1307, baseType: !1711, size: 256, offset: 9216)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !833, file: !31, line: 1309, baseType: !340, size: 256, offset: 9472)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !833, file: !31, line: 1314, baseType: !51, size: 32, offset: 9728)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !833, file: !31, line: 1317, baseType: !88, size: 32, align: 512, offset: 10240)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !833, file: !31, line: 1318, baseType: !126, size: 128, offset: 10304)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !833, file: !31, line: 1320, baseType: !88, size: 32, offset: 10432)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !833, file: !31, line: 1321, baseType: !126, size: 128, offset: 10496)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !827, file: !828, line: 73, baseType: !51, size: 32, offset: 128)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !827, file: !828, line: 74, baseType: !4893, size: 64, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1980, line: 42, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !781, file: !720, line: 141, baseType: !4897, size: 64, offset: 704)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!51, !3947, !1596}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !781, file: !720, line: 142, baseType: !4901, size: 64, offset: 768)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!718, !718, !4904}
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !719, file: !720, line: 96, baseType: !832, size: 64, offset: 832)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !719, file: !720, line: 97, baseType: !68, size: 64, offset: 896)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !719, file: !720, line: 98, baseType: !49, size: 64, offset: 960)
!4909 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 100, baseType: !4910, size: 128, offset: 1024)
!4910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 100, size: 128, elements: !4911)
!4911 = !{!4912, !4913}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4910, file: !720, line: 101, baseType: !126, size: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4910, file: !720, line: 102, baseType: !4914, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !719, file: !720, line: 104, baseType: !126, size: 128, offset: 1152)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !719, file: !720, line: 105, baseType: !126, size: 128, offset: 1280)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !719, file: !720, line: 113, baseType: !4918, size: 128, offset: 1408)
!4918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 109, size: 128, elements: !4919)
!4919 = !{!4920, !4921, !4922}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4918, file: !720, line: 110, baseType: !874, size: 128)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4918, file: !720, line: 111, baseType: !734, size: 128)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4918, file: !720, line: 112, baseType: !1018, size: 128, align: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !712, file: !31, line: 1968, baseType: !4924, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!45, !718, !683, !4927}
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4929, line: 10, size: 128, elements: !4930)
!4929 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4930 = !{!4931, !4932}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4928, file: !4929, line: 11, baseType: !4649, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4928, file: !4929, line: 12, baseType: !49, size: 64, offset: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !712, file: !31, line: 1969, baseType: !4934, size: 64, offset: 128)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!51, !4893, !683, !51}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !712, file: !31, line: 1970, baseType: !4938, size: 64, offset: 192)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!706, !683, !51, !1596}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !712, file: !31, line: 1972, baseType: !4942, size: 64, offset: 256)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!51, !718, !609, !51}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !712, file: !31, line: 1974, baseType: !4946, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{!51, !4893, !683, !718, !53, !1596}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !712, file: !31, line: 1976, baseType: !4950, size: 64, offset: 384)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!51, !718, !683, !718}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !712, file: !31, line: 1977, baseType: !4954, size: 64, offset: 448)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!51, !683, !718}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !712, file: !31, line: 1978, baseType: !4958, size: 64, offset: 512)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4959, size: 64)
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!51, !4893, !683, !718, !45}
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !712, file: !31, line: 1980, baseType: !4962, size: 64, offset: 576)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!51, !4893, !683, !718, !53}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !712, file: !31, line: 1982, baseType: !4954, size: 64, offset: 640)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !712, file: !31, line: 1983, baseType: !4967, size: 64, offset: 704)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!51, !4893, !683, !718, !53, !837}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !712, file: !31, line: 1985, baseType: !4971, size: 64, offset: 768)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!51, !4893, !683, !718, !683, !718, !7}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !712, file: !31, line: 1987, baseType: !4975, size: 64, offset: 832)
!4975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!51, !4893, !718, !4978}
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 226, size: 640, elements: !4980)
!4980 = !{!4981, !4982, !4983, !4993, !5002, !5003, !5008, !5009, !5010}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4979, file: !31, line: 227, baseType: !7, size: 32)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4979, file: !31, line: 228, baseType: !53, size: 16, offset: 32)
!4983 = !DIDerivedType(tag: DW_TAG_member, scope: !4979, file: !31, line: 241, baseType: !4984, size: 32, offset: 64)
!4984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4979, file: !31, line: 241, size: 32, elements: !4985)
!4985 = !{!4986, !4987}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4984, file: !31, line: 242, baseType: !689, size: 32)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4984, file: !31, line: 243, baseType: !4988, size: 32)
!4988 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4989, line: 16, baseType: !4990)
!4989 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4990 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4989, line: 14, size: 32, elements: !4991)
!4991 = !{!4992}
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4990, file: !4989, line: 15, baseType: !694, size: 32)
!4993 = !DIDerivedType(tag: DW_TAG_member, scope: !4979, file: !31, line: 245, baseType: !4994, size: 32, offset: 96)
!4994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4979, file: !31, line: 245, size: 32, elements: !4995)
!4995 = !{!4996, !4997}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4994, file: !31, line: 246, baseType: !698, size: 32)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4994, file: !31, line: 247, baseType: !4998, size: 32)
!4998 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4989, line: 20, baseType: !4999)
!4999 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4989, line: 18, size: 32, elements: !5000)
!5000 = !{!5001}
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4999, file: !4989, line: 19, baseType: !702, size: 32)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4979, file: !31, line: 249, baseType: !70, size: 64, offset: 128)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4979, file: !31, line: 250, baseType: !5004, size: 128, offset: 192)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1623, line: 13, size: 128, elements: !5005)
!5005 = !{!5006, !5007}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5004, file: !1623, line: 14, baseType: !1622, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5004, file: !1623, line: 15, baseType: !644, size: 64, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4979, file: !31, line: 251, baseType: !5004, size: 128, offset: 320)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4979, file: !31, line: 252, baseType: !5004, size: 128, offset: 448)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4979, file: !31, line: 259, baseType: !1418, size: 64, offset: 576)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !712, file: !31, line: 1988, baseType: !5012, size: 64, offset: 896)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!51, !4893, !3947, !5015, !477, !7}
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5017, line: 22, size: 1280, elements: !5018)
!5017 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5016, file: !5017, line: 23, baseType: !477, size: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5016, file: !5017, line: 24, baseType: !53, size: 16, offset: 32)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5016, file: !5017, line: 25, baseType: !7, size: 32, offset: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5016, file: !5017, line: 26, baseType: !1630, size: 32, offset: 96)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5016, file: !5017, line: 27, baseType: !754, size: 64, offset: 128)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5016, file: !5017, line: 28, baseType: !754, size: 64, offset: 192)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5016, file: !5017, line: 41, baseType: !754, size: 64, offset: 256)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5016, file: !5017, line: 42, baseType: !837, size: 32, offset: 320)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5016, file: !5017, line: 43, baseType: !837, size: 32, offset: 352)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5016, file: !5017, line: 44, baseType: !689, size: 32, offset: 384)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5016, file: !5017, line: 45, baseType: !698, size: 32, offset: 416)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5016, file: !5017, line: 46, baseType: !70, size: 64, offset: 448)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5016, file: !5017, line: 47, baseType: !5004, size: 128, offset: 512)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5016, file: !5017, line: 48, baseType: !5004, size: 128, offset: 640)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5016, file: !5017, line: 49, baseType: !5004, size: 128, offset: 768)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5016, file: !5017, line: 50, baseType: !5004, size: 128, offset: 896)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5016, file: !5017, line: 51, baseType: !754, size: 64, offset: 1024)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5016, file: !5017, line: 52, baseType: !754, size: 64, offset: 1088)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5016, file: !5017, line: 53, baseType: !477, size: 32, offset: 1152)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5016, file: !5017, line: 54, baseType: !477, size: 32, offset: 1184)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5016, file: !5017, line: 55, baseType: !754, size: 64, offset: 1216)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !712, file: !31, line: 1990, baseType: !5041, size: 64, offset: 960)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = !DISubroutineType(types: !5043)
!5043 = !{!641, !718, !609, !64}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !712, file: !31, line: 1991, baseType: !5045, size: 64, offset: 1024)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!51, !683, !5048, !754, !754}
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 55, flags: DIFlagFwdDecl)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !712, file: !31, line: 1993, baseType: !5051, size: 64, offset: 1088)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!51, !683, !51}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !712, file: !31, line: 1994, baseType: !5055, size: 64, offset: 1152)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!51, !683, !718, !1418, !7, !53}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !712, file: !31, line: 1997, baseType: !5059, size: 64, offset: 1216)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!51, !4893, !683, !1418, !53}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !712, file: !31, line: 1999, baseType: !5063, size: 64, offset: 1280)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DISubroutineType(types: !5065)
!5065 = !{!706, !4893, !718, !51}
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !712, file: !31, line: 2001, baseType: !5067, size: 64, offset: 1344)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!51, !4893, !718, !706, !51}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !712, file: !31, line: 2003, baseType: !5071, size: 64, offset: 1408)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!51, !4893, !718, !5074}
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5075, size: 64)
!5075 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !31, line: 76, flags: DIFlagFwdDecl)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !712, file: !31, line: 2005, baseType: !5077, size: 64, offset: 1472)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!51, !718, !5074}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !712, file: !31, line: 2006, baseType: !5081, size: 64, offset: 1536)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!5084, !683}
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !31, line: 3192, size: 192, elements: !5086)
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5085, file: !31, line: 3193, baseType: !1085, size: 128)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5085, file: !31, line: 3194, baseType: !477, size: 32, offset: 128)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !684, file: !31, line: 655, baseType: !832, size: 64, offset: 448)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !684, file: !31, line: 656, baseType: !679, size: 64, offset: 512)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !684, file: !31, line: 659, baseType: !49, size: 64, offset: 576)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !684, file: !31, line: 663, baseType: !68, size: 64, offset: 640)
!5093 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !31, line: 671, baseType: !5094, size: 32, offset: 704)
!5094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !31, line: 671, size: 32, elements: !5095)
!5095 = !{!5096, !5098}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5094, file: !31, line: 672, baseType: !5097, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5094, file: !31, line: 673, baseType: !7, size: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !684, file: !31, line: 675, baseType: !837, size: 32, offset: 736)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !684, file: !31, line: 676, baseType: !70, size: 64, offset: 768)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !684, file: !31, line: 677, baseType: !5004, size: 128, offset: 832)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !684, file: !31, line: 678, baseType: !5004, size: 128, offset: 960)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !684, file: !31, line: 679, baseType: !5004, size: 128, offset: 1088)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !684, file: !31, line: 680, baseType: !88, size: 32, offset: 1216)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !684, file: !31, line: 681, baseType: !55, size: 16, offset: 1248)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !684, file: !31, line: 682, baseType: !112, size: 8, offset: 1264)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !684, file: !31, line: 683, baseType: !112, size: 8, offset: 1272)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !684, file: !31, line: 684, baseType: !4020, size: 64, offset: 1280)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !684, file: !31, line: 691, baseType: !68, size: 64, offset: 1344)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !684, file: !31, line: 692, baseType: !1446, size: 320, offset: 1408)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !684, file: !31, line: 694, baseType: !68, size: 64, offset: 1728)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !684, file: !31, line: 695, baseType: !68, size: 64, offset: 1792)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !684, file: !31, line: 697, baseType: !874, size: 128, offset: 1856)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !684, file: !31, line: 698, baseType: !126, size: 128, offset: 1984)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !684, file: !31, line: 707, baseType: !126, size: 128, offset: 2112)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !684, file: !31, line: 708, baseType: !126, size: 128, offset: 2240)
!5117 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !31, line: 709, baseType: !5118, size: 128, offset: 2368)
!5118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !31, line: 709, size: 128, elements: !5119)
!5119 = !{!5120, !5121}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5118, file: !31, line: 710, baseType: !870, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5118, file: !31, line: 711, baseType: !1018, size: 128, align: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !684, file: !31, line: 713, baseType: !346, size: 64, offset: 2496)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !684, file: !31, line: 714, baseType: !346, size: 64, offset: 2560)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !684, file: !31, line: 715, baseType: !78, size: 32, offset: 2624)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !684, file: !31, line: 716, baseType: !78, size: 32, offset: 2656)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !684, file: !31, line: 717, baseType: !78, size: 32, offset: 2688)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !684, file: !31, line: 719, baseType: !78, size: 32, offset: 2720)
!5128 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !31, line: 721, baseType: !5129, size: 64, offset: 2752)
!5129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !31, line: 721, size: 64, elements: !5130)
!5130 = !{!5131, !5132}
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5129, file: !31, line: 722, baseType: !3575, size: 64)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5129, file: !31, line: 723, baseType: !901, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !684, file: !31, line: 725, baseType: !5134, size: 64, offset: 2816)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 725, flags: DIFlagFwdDecl)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !684, file: !31, line: 726, baseType: !680, size: 1536, align: 64, offset: 2880)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !684, file: !31, line: 727, baseType: !126, size: 128, offset: 4416)
!5138 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !31, line: 728, baseType: !5139, size: 64, offset: 4544)
!5139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !31, line: 728, size: 64, elements: !5140)
!5140 = !{!5141, !5142, !5145, !5146}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5139, file: !31, line: 729, baseType: !3189, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5139, file: !31, line: 730, baseType: !5143, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5144, size: 64)
!5144 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 730, flags: DIFlagFwdDecl)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5139, file: !31, line: 731, baseType: !609, size: 64)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5139, file: !31, line: 732, baseType: !7, size: 32)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !684, file: !31, line: 735, baseType: !396, size: 32, offset: 4608)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !684, file: !31, line: 738, baseType: !396, size: 32, offset: 4640)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !684, file: !31, line: 739, baseType: !4832, size: 64, offset: 4672)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !684, file: !31, line: 750, baseType: !49, size: 64, offset: 4736)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !680, file: !31, line: 474, baseType: !1085, size: 128, offset: 64)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !680, file: !31, line: 475, baseType: !1446, size: 320, offset: 192)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !680, file: !31, line: 476, baseType: !325, size: 32, offset: 512)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !680, file: !31, line: 477, baseType: !78, size: 32, offset: 544)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !680, file: !31, line: 482, baseType: !1274, size: 128, offset: 576)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !680, file: !31, line: 483, baseType: !68, size: 64, offset: 704)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !680, file: !31, line: 484, baseType: !68, size: 64, offset: 768)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !680, file: !31, line: 485, baseType: !5159, size: 64, offset: 832)
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5161)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 404, size: 1280, elements: !5162)
!5162 = !{!5163, !5167, !5171, !5175, !5179, !5195, !5199, !5203, !5207, !5211, !5215, !5219, !5220, !5224, !5228, !5232, !5237, !5241, !5294, !5295}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5161, file: !31, line: 405, baseType: !5164, size: 64)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!51, !2288, !913}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5161, file: !31, line: 406, baseType: !5168, size: 64, offset: 64)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5169, size: 64)
!5169 = !DISubroutineType(types: !5170)
!5170 = !{!51, !1418, !3617}
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5161, file: !31, line: 409, baseType: !5172, size: 64, offset: 128)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5173, size: 64)
!5173 = !DISubroutineType(types: !5174)
!5174 = !{!51, !679, !913}
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5161, file: !31, line: 412, baseType: !5176, size: 64, offset: 192)
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5177, size: 64)
!5177 = !DISubroutineType(types: !5178)
!5178 = !{!1596, !679, !3617}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5161, file: !31, line: 414, baseType: !5180, size: 64, offset: 256)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = !DISubroutineType(types: !5182)
!5182 = !{null, !5183}
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !3614, line: 1276, size: 448, elements: !5185)
!5185 = !{!5186, !5187, !5188, !5190, !5191, !5192, !5193, !5194}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5184, file: !3614, line: 1277, baseType: !1418, size: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5184, file: !3614, line: 1278, baseType: !679, size: 64, offset: 64)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5184, file: !3614, line: 1279, baseType: !5189, size: 64, offset: 128)
!5189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5184, file: !3614, line: 1281, baseType: !68, size: 64, offset: 192)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5184, file: !3614, line: 1282, baseType: !7, size: 32, offset: 256)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5184, file: !3614, line: 1283, baseType: !7, size: 32, offset: 288)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5184, file: !3614, line: 1284, baseType: !1596, size: 8, offset: 320)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5184, file: !3614, line: 1285, baseType: !68, size: 64, offset: 384)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5161, file: !31, line: 416, baseType: !5196, size: 64, offset: 320)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!51, !1418, !679, !70, !7, !3298, !3784}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5161, file: !31, line: 419, baseType: !5200, size: 64, offset: 384)
!5200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5201, size: 64)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!51, !1418, !679, !70, !7, !7, !2288, !49}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5161, file: !31, line: 424, baseType: !5204, size: 64, offset: 448)
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DISubroutineType(types: !5206)
!5206 = !{!4051, !679, !4051}
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5161, file: !31, line: 425, baseType: !5208, size: 64, offset: 512)
!5208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5209, size: 64)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{null, !3617, !64, !64}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5161, file: !31, line: 426, baseType: !5212, size: 64, offset: 576)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DISubroutineType(types: !5214)
!5214 = !{!1596, !3617, !325}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5161, file: !31, line: 427, baseType: !5216, size: 64, offset: 640)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !3617}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5161, file: !31, line: 428, baseType: !3593, size: 64, offset: 704)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5161, file: !31, line: 433, baseType: !5221, size: 64, offset: 768)
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!51, !679, !3617, !3617, !283}
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5161, file: !31, line: 435, baseType: !5225, size: 64, offset: 832)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!51, !3617}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5161, file: !31, line: 436, baseType: !5229, size: 64, offset: 896)
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{!1596, !3617, !64, !64}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5161, file: !31, line: 438, baseType: !5233, size: 64, offset: 960)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !3617, !5236, !5236}
!5236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5161, file: !31, line: 439, baseType: !5238, size: 64, offset: 1024)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!51, !679, !2288}
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5161, file: !31, line: 442, baseType: !5242, size: 64, offset: 1088)
!5242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5243, size: 64)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!51, !5245, !1418, !5293}
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !3020, line: 282, size: 2176, elements: !5247)
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5254, !5255, !5257, !5264, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5246, file: !3020, line: 283, baseType: !2352, size: 128)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5246, file: !3020, line: 284, baseType: !68, size: 64, offset: 128)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5246, file: !3020, line: 285, baseType: !1544, size: 16, offset: 192)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5246, file: !3020, line: 286, baseType: !1383, size: 320, offset: 256)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5246, file: !3020, line: 287, baseType: !5253, size: 8, offset: 576)
!5253 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5246, file: !3020, line: 288, baseType: !7, size: 32, offset: 608)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5246, file: !3020, line: 289, baseType: !5256, size: 64, offset: 640)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5246, file: !3020, line: 290, baseType: !5258, size: 64, offset: 704)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !3020, line: 250, size: 64, elements: !5260)
!5260 = !{!5261, !5262, !5263}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5259, file: !3020, line: 251, baseType: !88, size: 32)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5259, file: !3020, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5259, file: !3020, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5246, file: !3020, line: 291, baseType: !5265, size: 128, offset: 768)
!5265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !3020, line: 274, size: 128, elements: !5266)
!5266 = !{!5267, !5268}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5265, file: !3020, line: 275, baseType: !5259, size: 64)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5265, file: !3020, line: 276, baseType: !5259, size: 64, offset: 64)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5246, file: !3020, line: 292, baseType: !7, size: 32, offset: 896)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5246, file: !3020, line: 293, baseType: !7, size: 32, offset: 928)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5246, file: !3020, line: 294, baseType: !7, size: 32, offset: 960)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5246, file: !3020, line: 295, baseType: !7, size: 32, offset: 992)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5246, file: !3020, line: 296, baseType: !7, size: 32, offset: 1024)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5246, file: !3020, line: 297, baseType: !7, size: 32, offset: 1056)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5246, file: !3020, line: 298, baseType: !4522, size: 64, offset: 1088)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5246, file: !3020, line: 299, baseType: !5277, size: 64, offset: 1152)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !3020, line: 269, size: 96, elements: !5279)
!5279 = !{!5280, !5281}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5278, file: !3020, line: 270, baseType: !5259, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5278, file: !3020, line: 271, baseType: !7, size: 32, offset: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5246, file: !3020, line: 300, baseType: !1277, size: 64, offset: 1216)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5246, file: !3020, line: 301, baseType: !4046, size: 64, offset: 1280)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5246, file: !3020, line: 302, baseType: !1418, size: 64, offset: 1344)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5246, file: !3020, line: 303, baseType: !7, size: 32, offset: 1408)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5246, file: !3020, line: 304, baseType: !1750, size: 256, offset: 1472)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5246, file: !3020, line: 305, baseType: !88, size: 32, offset: 1728)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5246, file: !3020, line: 318, baseType: !88, size: 32, offset: 1760)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5246, file: !3020, line: 322, baseType: !1711, size: 256, offset: 1792)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5246, file: !3020, line: 323, baseType: !5265, size: 128, offset: 2048)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5246, file: !3020, line: 324, baseType: !5292, offset: 2176)
!5292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, elements: !1827)
!5293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5161, file: !31, line: 444, baseType: !3776, size: 64, offset: 1152)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5161, file: !31, line: 445, baseType: !5296, size: 64, offset: 1216)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{!51, !3596, !3701}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !31, line: 486, baseType: !68, size: 64, offset: 896)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !680, file: !31, line: 487, baseType: !1446, size: 320, offset: 960)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !680, file: !31, line: 488, baseType: !3819, size: 32, offset: 1280)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !680, file: !31, line: 489, baseType: !88, size: 32, offset: 1312)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !680, file: !31, line: 490, baseType: !126, size: 128, offset: 1344)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !680, file: !31, line: 491, baseType: !49, size: 64, offset: 1472)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !670, file: !635, line: 180, baseType: !5306, size: 64, offset: 320)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DISubroutineType(types: !5308)
!5308 = !{!641, !1418, !574, !669, !609, !70, !64}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !670, file: !635, line: 182, baseType: !5306, size: 64, offset: 384)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !670, file: !635, line: 184, baseType: !5311, size: 64, offset: 448)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{!51, !1418, !574, !669, !2181}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !658, file: !635, line: 90, baseType: !5315, size: 64, offset: 192)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !658, file: !635, line: 91, baseType: !5317, size: 64, offset: 256)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !625, file: !304, line: 120, baseType: !5319, size: 64, offset: 192)
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!4625, !592}
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !625, file: !304, line: 121, baseType: !5323, size: 64, offset: 256)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!1525, !592}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !625, file: !304, line: 122, baseType: !5327, size: 64, offset: 320)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{null, !592, !1775, !1776}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !569, file: !304, line: 70, baseType: !2118, size: 64, offset: 384)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !569, file: !304, line: 71, baseType: !4697, size: 32, offset: 448)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !569, file: !304, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !569, file: !304, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !569, file: !304, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !569, file: !304, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !569, file: !304, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !566, file: !19, line: 47, baseType: !556, size: 64, offset: 512)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !566, file: !19, line: 48, baseType: !574, size: 64, offset: 576)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !566, file: !19, line: 49, baseType: !5340, size: 64, offset: 640)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !566, file: !19, line: 50, baseType: !1749, size: 64, offset: 704)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !557, file: !19, line: 418, baseType: !5344, size: 64, offset: 1408)
!5344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5345, size: 64)
!5345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !5346)
!5346 = !{!5347, !5348, !5353, !5357, !5361, !5365}
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5345, file: !19, line: 54, baseType: !646, size: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5345, file: !19, line: 55, baseType: !5349, size: 64, offset: 128)
!5349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5350, size: 64)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!641, !5344, !5352, !609}
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5345, file: !19, line: 57, baseType: !5354, size: 64, offset: 192)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DISubroutineType(types: !5356)
!5356 = !{!641, !5344, !5352, !45, !64}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5345, file: !19, line: 59, baseType: !5358, size: 64, offset: 256)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{null, !556, !45}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5345, file: !19, line: 60, baseType: !5362, size: 64, offset: 320)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!51, !556}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5345, file: !19, line: 61, baseType: !5366, size: 64, offset: 384)
!5366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5367, size: 64)
!5367 = !DISubroutineType(types: !5368)
!5368 = !{null, !556}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !557, file: !19, line: 419, baseType: !45, size: 64, offset: 1472)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !557, file: !19, line: 420, baseType: !45, size: 64, offset: 1536)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !557, file: !19, line: 421, baseType: !574, size: 64, offset: 1600)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !557, file: !19, line: 424, baseType: !5373, size: 64, offset: 1664)
!5373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5375)
!5375 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !557, file: !19, line: 425, baseType: !5377, size: 64, offset: 1728)
!5377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5378, size: 64)
!5378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1492)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !557, file: !19, line: 426, baseType: !7, size: 32, offset: 1792)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !557, file: !19, line: 435, baseType: !340, size: 256, offset: 1856)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !557, file: !19, line: 437, baseType: !5382, size: 64, offset: 2112)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5384, line: 69, size: 320, elements: !5385)
!5384 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5385 = !{!5386, !5387, !5388, !5405, !5407, !5410, !5411}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5383, file: !5384, line: 70, baseType: !45, size: 64)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5383, file: !5384, line: 71, baseType: !556, size: 64, offset: 64)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5383, file: !5384, line: 72, baseType: !5389, size: 64, offset: 128)
!5389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5390, size: 64)
!5390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5391)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5384, line: 47, size: 256, elements: !5392)
!5392 = !{!5393, !5394, !5400, !5404}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5391, file: !5384, line: 49, baseType: !7, size: 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5391, file: !5384, line: 51, baseType: !5395, size: 64, offset: 64)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!51, !45, !5398}
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5383)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5391, file: !5384, line: 53, baseType: !5401, size: 64, offset: 128)
!5401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5402, size: 64)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{!51, !609, !5398}
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5391, file: !5384, line: 55, baseType: !4649, size: 64, offset: 192)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5383, file: !5384, line: 73, baseType: !5406, size: 16, offset: 192)
!5406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5383, file: !5384, line: 74, baseType: !5408, size: 8, offset: 208)
!5408 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !113, line: 16, baseType: !5409)
!5409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !115, line: 20, baseType: !5253)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5383, file: !5384, line: 75, baseType: !112, size: 8, offset: 216)
!5411 = !DIDerivedType(tag: DW_TAG_member, scope: !5383, file: !5384, line: 76, baseType: !5412, size: 64, offset: 256)
!5412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5383, file: !5384, line: 76, size: 64, elements: !5413)
!5413 = !{!5414, !5415, !5422}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5412, file: !5384, line: 77, baseType: !49, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5412, file: !5384, line: 78, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5418)
!5418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5384, line: 86, size: 128, elements: !5419)
!5419 = !{!5420, !5421}
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5418, file: !5384, line: 87, baseType: !7, size: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5418, file: !5384, line: 88, baseType: !609, size: 64, offset: 64)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5412, file: !5384, line: 79, baseType: !5423, size: 64)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5425)
!5425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5384, line: 92, size: 256, elements: !5426)
!5426 = !{!5427, !5428, !5429, !5430, !5431}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5425, file: !5384, line: 94, baseType: !7, size: 32)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5425, file: !5384, line: 95, baseType: !7, size: 32, offset: 32)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5425, file: !5384, line: 96, baseType: !4522, size: 64, offset: 64)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5425, file: !5384, line: 97, baseType: !5389, size: 64, offset: 128)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5425, file: !5384, line: 98, baseType: !49, size: 64, offset: 192)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !557, file: !19, line: 438, baseType: !7, size: 32, offset: 2176)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !557, file: !19, line: 441, baseType: !7, size: 32, offset: 2208)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !557, file: !19, line: 442, baseType: !5373, size: 64, offset: 2240)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !557, file: !19, line: 443, baseType: !5377, size: 64, offset: 2304)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !557, file: !19, line: 444, baseType: !1596, size: 8, offset: 2368)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !557, file: !19, line: 451, baseType: !1596, size: 8, offset: 2376)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !557, file: !19, line: 454, baseType: !7, size: 32, offset: 2400)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !557, file: !19, line: 455, baseType: !5440, size: 64, offset: 2432)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5441, size: 64)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5442, line: 23, size: 96, elements: !5443)
!5442 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5443 = !{!5444, !5445, !5446}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5441, file: !5442, line: 24, baseType: !51, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5441, file: !5442, line: 24, baseType: !51, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5441, file: !5442, line: 24, baseType: !51, size: 32, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !557, file: !19, line: 458, baseType: !5448, size: 64, offset: 2496)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!51}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !557, file: !19, line: 460, baseType: !5452, size: 4032, align: 512, offset: 2560)
!5452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5453, size: 4032, elements: !5467)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !5454)
!5454 = !{!5455, !5456, !5457}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5453, file: !19, line: 363, baseType: !49, size: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5453, file: !19, line: 364, baseType: !7, size: 32, offset: 64)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5453, file: !19, line: 367, baseType: !5458, size: 448, offset: 128)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !5459)
!5459 = !{!5460, !5461}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5458, file: !19, line: 320, baseType: !556, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5458, file: !19, line: 321, baseType: !5462, size: 384, offset: 64)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5463, line: 40, size: 384, elements: !5464)
!5463 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5464 = !{!5465}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5462, file: !5463, line: 41, baseType: !5466, size: 384, align: 64)
!5466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1145, size: 384, align: 64, elements: !455)
!5467 = !{!5468}
!5468 = !DISubrange(count: 7)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !557, file: !19, line: 463, baseType: !5470, size: 192, offset: 6592)
!5470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5471, line: 8, size: 192, elements: !5472)
!5471 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5472 = !{!5473, !5474, !5475}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5470, file: !5471, line: 10, baseType: !7, size: 32)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5470, file: !5471, line: 11, baseType: !963, size: 64, offset: 64)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5470, file: !5471, line: 12, baseType: !5476, size: 64, offset: 128)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5478, line: 59, size: 48, elements: !5479)
!5478 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5479 = !{!5480, !5481, !5482, !5483, !5484, !5485}
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5477, file: !5478, line: 60, baseType: !1542, size: 16)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5477, file: !5478, line: 61, baseType: !1542, size: 16, offset: 16)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5477, file: !5478, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5477, file: !5478, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5477, file: !5478, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5477, file: !5478, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !557, file: !19, line: 465, baseType: !68, size: 64, offset: 6784)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !557, file: !19, line: 469, baseType: !7, size: 32, offset: 6848)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !557, file: !19, line: 470, baseType: !126, size: 128, offset: 6912)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !557, file: !19, line: 471, baseType: !5490, size: 64, offset: 7040)
!5490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5491, size: 64)
!5491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5492, line: 33, size: 96, elements: !5493)
!5492 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5493 = !{!5494, !5495, !5496, !5497}
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5491, file: !5492, line: 37, baseType: !51, size: 32)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5491, file: !5492, line: 43, baseType: !51, size: 32, offset: 32)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5491, file: !5492, line: 45, baseType: !55, size: 16, offset: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5491, file: !5492, line: 47, baseType: !55, size: 16, offset: 80)
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !557, file: !19, line: 476, baseType: !5499, size: 64, offset: 7104)
!5499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5500, size: 64)
!5500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !5501)
!5501 = !{!5502, !5518, !5519, !5520}
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5500, file: !19, line: 379, baseType: !5503, size: 64)
!5503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5504, size: 64)
!5504 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5505, line: 204, baseType: !5506)
!5505 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5505, line: 197, size: 192, elements: !5507)
!5507 = !{!5508, !5510, !5511, !5512, !5514, !5516}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5506, file: !5505, line: 198, baseType: !5509, size: 32)
!5509 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5505, line: 21, baseType: !396)
!5510 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5506, file: !5505, line: 199, baseType: !116, size: 8, offset: 32)
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5506, file: !5505, line: 200, baseType: !116, size: 8, offset: 40)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5506, file: !5505, line: 201, baseType: !5513, size: 16, offset: 48)
!5513 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5505, line: 17, baseType: !123)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5506, file: !5505, line: 202, baseType: !5515, size: 64, offset: 64)
!5515 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5505, line: 16, baseType: !755)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5506, file: !5505, line: 203, baseType: !5517, size: 64, offset: 128)
!5517 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5505, line: 22, baseType: !755)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5500, file: !19, line: 380, baseType: !7, size: 32, offset: 64)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5500, file: !19, line: 381, baseType: !609, size: 64, offset: 128)
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5500, file: !19, line: 382, baseType: !609, size: 64, offset: 192)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !557, file: !19, line: 477, baseType: !5500, size: 256, offset: 7168)
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !557, file: !19, line: 480, baseType: !5523, size: 64, offset: 7424)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !557, file: !19, line: 483, baseType: !5526, size: 64, offset: 7488)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !557, file: !19, line: 488, baseType: !609, size: 64, offset: 7552)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !557, file: !19, line: 492, baseType: !49, size: 64, offset: 7616)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !557, file: !19, line: 493, baseType: !7, size: 32, offset: 7680)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !557, file: !19, line: 495, baseType: !49, size: 64, offset: 7744)
!5532 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !557, file: !19, line: 496, baseType: !7, size: 32, offset: 7808)
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !557, file: !19, line: 499, baseType: !7, size: 32, offset: 7840)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !557, file: !19, line: 500, baseType: !5535, size: 64, offset: 7872)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5537, line: 45, baseType: !5538)
!5537 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !557, file: !19, line: 503, baseType: !7, size: 32, offset: 7936)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !557, file: !19, line: 504, baseType: !5541, size: 64, offset: 8000)
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5543, size: 64)
!5543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5544, line: 96, size: 192, elements: !5545)
!5544 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5545 = !{!5546, !5547, !5589, !5591}
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5543, file: !5544, line: 97, baseType: !7, size: 32)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5543, file: !5544, line: 98, baseType: !5548, size: 64, offset: 64)
!5548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5549, size: 64)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5544, line: 24, size: 3072, elements: !5550)
!5550 = !{!5551, !5553, !5554, !5555, !5556, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5586, !5587, !5588}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5549, file: !5544, line: 26, baseType: !5552, size: 128)
!5552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !455)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5549, file: !5544, line: 27, baseType: !5552, size: 128, offset: 128)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5549, file: !5544, line: 28, baseType: !51, size: 32, offset: 256)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5549, file: !5544, line: 31, baseType: !88, size: 32, align: 512, offset: 512)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5549, file: !5544, line: 32, baseType: !5557, size: 960, offset: 576)
!5557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5558, line: 206, size: 960, elements: !5559)
!5558 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5559 = !{!5560, !5561, !5564, !5566, !5567, !5568}
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5557, file: !5558, line: 207, baseType: !1021, size: 64)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5557, file: !5558, line: 208, baseType: !5562, size: 256, offset: 64)
!5562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5563, size: 256, elements: !431)
!5563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5557, file: !5558, line: 209, baseType: !5565, size: 256, offset: 320)
!5565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 256, elements: !431)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5557, file: !5558, line: 213, baseType: !644, size: 64, offset: 576)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5557, file: !5558, line: 215, baseType: !1810, size: 256, offset: 640)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5557, file: !5558, line: 216, baseType: !112, size: 8, offset: 896)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5549, file: !5544, line: 33, baseType: !68, size: 64, offset: 1536)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5549, file: !5544, line: 34, baseType: !68, size: 64, offset: 1600)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5549, file: !5544, line: 35, baseType: !1596, size: 8, offset: 1664)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5549, file: !5544, line: 36, baseType: !2503, size: 320, offset: 1728)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5549, file: !5544, line: 37, baseType: !1711, size: 256, offset: 2048)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5549, file: !5544, line: 38, baseType: !1018, size: 128, align: 64, offset: 2304)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5549, file: !5544, line: 39, baseType: !5576, size: 64, offset: 2432)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5577, size: 64)
!5577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5544, line: 49, size: 768, elements: !5578)
!5578 = !{!5579, !5580, !5581, !5582, !5583, !5584, !5585}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5577, file: !5544, line: 50, baseType: !88, size: 32)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5577, file: !5544, line: 51, baseType: !5565, size: 256, offset: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5577, file: !5544, line: 53, baseType: !5565, size: 256, offset: 320)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5577, file: !5544, line: 54, baseType: !68, size: 64, offset: 576)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5577, file: !5544, line: 55, baseType: !5576, size: 64, offset: 640)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5577, file: !5544, line: 56, baseType: !51, size: 32, offset: 704)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5577, file: !5544, line: 57, baseType: !51, size: 32, offset: 736)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5549, file: !5544, line: 40, baseType: !68, size: 64, offset: 2496)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5549, file: !5544, line: 42, baseType: !51, size: 32, offset: 2560)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5549, file: !5544, line: 43, baseType: !5542, size: 64, offset: 2624)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5543, file: !5544, line: 99, baseType: !5590, offset: 128)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !881, line: 211, elements: !882)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5543, file: !5544, line: 100, baseType: !5592, size: 64, offset: 128)
!5592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5593, size: 64)
!5593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5544, line: 63, size: 3008, elements: !5594)
!5594 = !{!5595, !5596, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609, !5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618}
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5593, file: !5544, line: 64, baseType: !5576, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5593, file: !5544, line: 65, baseType: !5597, size: 192, offset: 64)
!5597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5576, size: 192, elements: !610)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5593, file: !5544, line: 67, baseType: !51, size: 32, offset: 256)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5593, file: !5544, line: 68, baseType: !340, size: 256, offset: 320)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5593, file: !5544, line: 69, baseType: !88, size: 32, offset: 576)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5593, file: !5544, line: 70, baseType: !340, size: 256, offset: 640)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5593, file: !5544, line: 71, baseType: !68, size: 64, offset: 896)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5593, file: !5544, line: 72, baseType: !68, size: 64, offset: 960)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5593, file: !5544, line: 73, baseType: !68, size: 64, offset: 1024)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5593, file: !5544, line: 74, baseType: !68, size: 64, offset: 1088)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5593, file: !5544, line: 75, baseType: !68, size: 64, offset: 1152)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5593, file: !5544, line: 76, baseType: !68, size: 64, offset: 1216)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5593, file: !5544, line: 77, baseType: !68, size: 64, offset: 1280)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5593, file: !5544, line: 78, baseType: !68, size: 64, offset: 1344)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5593, file: !5544, line: 79, baseType: !1596, size: 8, offset: 1408)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5593, file: !5544, line: 80, baseType: !68, size: 64, offset: 1472)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5593, file: !5544, line: 81, baseType: !340, size: 256, offset: 1536)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5593, file: !5544, line: 82, baseType: !1750, size: 256, offset: 1792)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5593, file: !5544, line: 84, baseType: !78, size: 32, offset: 2048)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5593, file: !5544, line: 87, baseType: !68, size: 64, offset: 2112)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5593, file: !5544, line: 88, baseType: !68, size: 64, offset: 2176)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5593, file: !5544, line: 89, baseType: !4739, size: 704, offset: 2240)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5593, file: !5544, line: 90, baseType: !5542, size: 64, offset: 2944)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !557, file: !19, line: 515, baseType: !5620, size: 64, offset: 8064)
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5621, size: 64)
!5621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5622, line: 117, size: 128, elements: !5623)
!5622 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5623 = !{!5624, !5625, !5626}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5621, file: !5622, line: 118, baseType: !1492, size: 32)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5621, file: !5622, line: 119, baseType: !1492, size: 32, offset: 32)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5621, file: !5622, line: 120, baseType: !644, size: 64, offset: 64)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !557, file: !19, line: 516, baseType: !7, size: 32, offset: 8128)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !557, file: !19, line: 519, baseType: !7, size: 32, offset: 8160)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !557, file: !19, line: 520, baseType: !4423, size: 64, offset: 8192)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !557, file: !19, line: 523, baseType: !5631, size: 64, offset: 8256)
!5631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5632, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5633, size: 64)
!5633 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !557, file: !19, line: 524, baseType: !7, size: 32, offset: 8320)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !557, file: !19, line: 525, baseType: !5636, size: 64, offset: 8384)
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5638, size: 64)
!5638 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !557, file: !19, line: 526, baseType: !7, size: 32, offset: 8448)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !557, file: !19, line: 533, baseType: !49, size: 64, offset: 8512)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !557, file: !19, line: 534, baseType: !7, size: 32, offset: 8576)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !557, file: !19, line: 535, baseType: !4521, size: 64, offset: 8640)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !557, file: !19, line: 536, baseType: !7, size: 32, offset: 8704)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !557, file: !19, line: 539, baseType: !51, size: 32, offset: 8736)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !557, file: !19, line: 540, baseType: !5646, size: 64, offset: 8768)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5648, line: 32, size: 64, elements: !5649)
!5648 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5649 = !{!5650, !5651}
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5647, file: !5648, line: 33, baseType: !1492, size: 32)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5647, file: !5648, line: 34, baseType: !1492, size: 32, offset: 32)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !557, file: !19, line: 563, baseType: !126, size: 128, offset: 8832)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !557, file: !19, line: 565, baseType: !126, size: 128, offset: 8960)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !557, file: !19, line: 568, baseType: !2635, size: 64, offset: 9088)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !557, file: !19, line: 570, baseType: !78, size: 32, offset: 9152)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "fb_open", scope: !553, file: !378, line: 241, baseType: !5657, size: 64, offset: 64)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5658, size: 64)
!5658 = !DISubroutineType(types: !5659)
!5659 = !{!51, !376, !51}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "fb_release", scope: !553, file: !378, line: 242, baseType: !5657, size: 64, offset: 128)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "fb_read", scope: !553, file: !378, line: 247, baseType: !5662, size: 64, offset: 192)
!5662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5663, size: 64)
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!641, !376, !609, !64, !69}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "fb_write", scope: !553, file: !378, line: 249, baseType: !5666, size: 64, offset: 256)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{!641, !376, !45, !64, !69}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "fb_check_var", scope: !553, file: !378, line: 254, baseType: !5670, size: 64, offset: 320)
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!51, !5673, !376}
!5673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "fb_set_par", scope: !553, file: !378, line: 257, baseType: !5675, size: 64, offset: 384)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{!51, !376}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcolreg", scope: !553, file: !378, line: 260, baseType: !5679, size: 64, offset: 448)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DISubroutineType(types: !5681)
!5681 = !{!51, !7, !7, !7, !7, !7, !376}
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "fb_setcmap", scope: !553, file: !378, line: 264, baseType: !5683, size: 64, offset: 512)
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = !DISubroutineType(types: !5685)
!5685 = !{!51, !5686, !376}
!5686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "fb_blank", scope: !553, file: !378, line: 267, baseType: !5688, size: 64, offset: 576)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!51, !51, !376}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "fb_pan_display", scope: !553, file: !378, line: 270, baseType: !5670, size: 64, offset: 640)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "fb_fillrect", scope: !553, file: !378, line: 273, baseType: !5693, size: 64, offset: 704)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5694, size: 64)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{null, !376, !5696}
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5698)
!5698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_fillrect", file: !393, line: 351, size: 192, elements: !5699)
!5699 = !{!5700, !5701, !5702, !5703, !5704, !5705}
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5698, file: !393, line: 352, baseType: !396, size: 32)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5698, file: !393, line: 353, baseType: !396, size: 32, offset: 32)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5698, file: !393, line: 354, baseType: !396, size: 32, offset: 64)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5698, file: !393, line: 355, baseType: !396, size: 32, offset: 96)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5698, file: !393, line: 356, baseType: !396, size: 32, offset: 128)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !5698, file: !393, line: 357, baseType: !396, size: 32, offset: 160)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "fb_copyarea", scope: !553, file: !378, line: 275, baseType: !5707, size: 64, offset: 768)
!5707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5708, size: 64)
!5708 = !DISubroutineType(types: !5709)
!5709 = !{null, !376, !5710}
!5710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5711, size: 64)
!5711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5712)
!5712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_copyarea", file: !393, line: 342, size: 192, elements: !5713)
!5713 = !{!5714, !5715, !5716, !5717, !5718, !5719}
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5712, file: !393, line: 343, baseType: !396, size: 32)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5712, file: !393, line: 344, baseType: !396, size: 32, offset: 32)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5712, file: !393, line: 345, baseType: !396, size: 32, offset: 64)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5712, file: !393, line: 346, baseType: !396, size: 32, offset: 96)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "sx", scope: !5712, file: !393, line: 347, baseType: !396, size: 32, offset: 128)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "sy", scope: !5712, file: !393, line: 348, baseType: !396, size: 32, offset: 160)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "fb_imageblit", scope: !553, file: !378, line: 277, baseType: !5721, size: 64, offset: 832)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{null, !376, !5724}
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5726)
!5726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_image", file: !393, line: 360, size: 640, elements: !5727)
!5727 = !{!5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736}
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5726, file: !393, line: 361, baseType: !396, size: 32)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "dy", scope: !5726, file: !393, line: 362, baseType: !396, size: 32, offset: 32)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !5726, file: !393, line: 363, baseType: !396, size: 32, offset: 64)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !5726, file: !393, line: 364, baseType: !396, size: 32, offset: 96)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "fg_color", scope: !5726, file: !393, line: 365, baseType: !396, size: 32, offset: 128)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "bg_color", scope: !5726, file: !393, line: 366, baseType: !396, size: 32, offset: 160)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !5726, file: !393, line: 367, baseType: !114, size: 8, offset: 192)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5726, file: !393, line: 368, baseType: !45, size: 64, offset: 256)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "cmap", scope: !5726, file: !393, line: 369, baseType: !539, size: 320, offset: 320)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "fb_cursor", scope: !553, file: !378, line: 280, baseType: !5738, size: 64, offset: 896)
!5738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5739, size: 64)
!5739 = !DISubroutineType(types: !5740)
!5740 = !{!51, !376, !5741}
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_cursor", file: !393, line: 388, size: 832, elements: !5743)
!5743 = !{!5744, !5745, !5746, !5747, !5748, !5753}
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5742, file: !393, line: 389, baseType: !123, size: 16)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5742, file: !393, line: 390, baseType: !123, size: 16, offset: 16)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "rop", scope: !5742, file: !393, line: 391, baseType: !123, size: 16, offset: 32)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5742, file: !393, line: 392, baseType: !45, size: 64, offset: 64)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !5742, file: !393, line: 393, baseType: !5749, size: 32, offset: 128)
!5749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fbcurpos", file: !393, line: 384, size: 32, elements: !5750)
!5750 = !{!5751, !5752}
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5749, file: !393, line: 385, baseType: !123, size: 16)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5749, file: !393, line: 385, baseType: !123, size: 16, offset: 16)
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "image", scope: !5742, file: !393, line: 394, baseType: !5726, size: 640, offset: 192)
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "fb_sync", scope: !553, file: !378, line: 283, baseType: !5675, size: 64, offset: 960)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "fb_ioctl", scope: !553, file: !378, line: 286, baseType: !5756, size: 64, offset: 1024)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DISubroutineType(types: !5758)
!5758 = !{!51, !376, !7, !68}
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "fb_compat_ioctl", scope: !553, file: !378, line: 290, baseType: !5756, size: 64, offset: 1088)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "fb_mmap", scope: !553, file: !378, line: 294, baseType: !5761, size: 64, offset: 1152)
!5761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5762, size: 64)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!51, !376, !2181}
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "fb_get_caps", scope: !553, file: !378, line: 297, baseType: !5765, size: 64, offset: 1216)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{null, !376, !5768, !5673}
!5768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5769, size: 64)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fb_blit_caps", file: !378, line: 146, size: 128, elements: !5770)
!5770 = !{!5771, !5772, !5773, !5774}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5769, file: !378, line: 147, baseType: !477, size: 32)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5769, file: !378, line: 148, baseType: !477, size: 32, offset: 32)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5769, file: !378, line: 149, baseType: !477, size: 32, offset: 64)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5769, file: !378, line: 150, baseType: !477, size: 32, offset: 96)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "fb_destroy", scope: !553, file: !378, line: 301, baseType: !5776, size: 64, offset: 1280)
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5777, size: 64)
!5777 = !DISubroutineType(types: !5778)
!5778 = !{null, !376}
!5779 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_enter", scope: !553, file: !378, line: 304, baseType: !5675, size: 64, offset: 1344)
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "fb_debug_leave", scope: !553, file: !378, line: 305, baseType: !5675, size: 64, offset: 1408)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !377, file: !378, line: 482, baseType: !4090, size: 64, offset: 5184)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "class_flag", scope: !377, file: !378, line: 486, baseType: !51, size: 32, offset: 5248)
!5783 = !DIDerivedType(tag: DW_TAG_member, scope: !377, file: !378, line: 490, baseType: !5784, size: 64, offset: 5312)
!5784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !378, line: 490, size: 64, elements: !5785)
!5785 = !{!5786, !5787}
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "screen_base", scope: !5784, file: !378, line: 491, baseType: !609, size: 64)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "screen_buffer", scope: !5784, file: !378, line: 492, baseType: !609, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "screen_size", scope: !377, file: !378, line: 494, baseType: !68, size: 64, offset: 5376)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "pseudo_palette", scope: !377, file: !378, line: 495, baseType: !49, size: 64, offset: 5440)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !377, file: !378, line: 498, baseType: !477, size: 32, offset: 5504)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "fbcon_par", scope: !377, file: !378, line: 499, baseType: !49, size: 64, offset: 5568)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !377, file: !378, line: 501, baseType: !49, size: 64, offset: 5632)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "skip_vt_switch", scope: !377, file: !378, line: 503, baseType: !1596, size: 8, offset: 5696)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "fb_notif", scope: !327, file: !6, line: 317, baseType: !5795, size: 192, offset: 832)
!5795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5796, line: 54, size: 192, elements: !5797)
!5796 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5797 = !{!5798, !5804, !5805}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5795, file: !5796, line: 55, baseType: !5799, size: 64)
!5799 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5796, line: 51, baseType: !5800)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!51, !5803, !68, !49}
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5795, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5795, file: !5796, line: 56, baseType: !5803, size: 64, offset: 64)
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5795, file: !5796, line: 57, baseType: !51, size: 32, offset: 128)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !327, file: !6, line: 322, baseType: !126, size: 128, offset: 1024)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !327, file: !6, line: 327, baseType: !4086, size: 5824, offset: 1152)
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "fb_bl_on", scope: !327, file: !6, line: 335, baseType: !5809, size: 256, offset: 6976)
!5809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1596, size: 256, elements: !763)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !327, file: !6, line: 340, baseType: !51, size: 32, offset: 7232)
!5811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5812, size: 64)
!5812 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !129)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!5815 = !{!0, !5816, !5821, !5823, !5848, !5853, !5855, !5860, !5863, !5868, !5873, !5875, !5877, !5879, !5881, !5883, !5885, !5890, !5892, !5894, !5899, !5901, !5903, !5907, !5912, !5917, !5922, !5927, !5929, !5931, !5937, !5940, !5945, !5948, !5953, !5955, !5957, !5960, !5965, !5968, !5973, !5975, !5977, !5980, !5982, !5985, !5990, !6004, !6007, !6012, !6014, !6016, !6018, !6020, !6022, !6024, !6026, !6028, !6030, !6033, !6035, !6039, !6042, !6044, !6046, !6048, !6050, !6053}
!5816 = !DIGlobalVariableExpression(var: !5817, expr: !DIExpression())
!5817 = distinct !DIGlobalVariable(scope: null, file: !3, line: 395, type: !5818, isLocal: true, isDefinition: true)
!5818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 368, elements: !5819)
!5819 = !{!5820}
!5820 = !DISubrange(count: 46)
!5821 = !DIGlobalVariableExpression(var: !5822, expr: !DIExpression())
!5822 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_force_update351", scope: !2, file: !3, line: 402, type: !49, isLocal: true, isDefinition: true)
!5823 = !DIGlobalVariableExpression(var: !5824, expr: !DIExpression())
!5824 = distinct !DIGlobalVariable(name: "__key", scope: !5825, file: !3, line: 418, type: !880, isLocal: true, isDefinition: true)
!5825 = distinct !DISubprogram(name: "backlight_device_register", scope: !3, file: !3, line: 405, type: !5826, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5830)
!5826 = !DISubroutineType(types: !5827)
!5827 = !{!326, !45, !4090, !49, !362, !5828}
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!5830 = !{!5831, !5832, !5833, !5834, !5835, !5836, !5837, !5838, !5844}
!5831 = !DILocalVariable(name: "name", arg: 1, scope: !5825, file: !3, line: 405, type: !45)
!5832 = !DILocalVariable(name: "parent", arg: 2, scope: !5825, file: !3, line: 406, type: !4090)
!5833 = !DILocalVariable(name: "devdata", arg: 3, scope: !5825, file: !3, line: 406, type: !49)
!5834 = !DILocalVariable(name: "ops", arg: 4, scope: !5825, file: !3, line: 406, type: !362)
!5835 = !DILocalVariable(name: "props", arg: 5, scope: !5825, file: !3, line: 407, type: !5828)
!5836 = !DILocalVariable(name: "new_bd", scope: !5825, file: !3, line: 409, type: !326)
!5837 = !DILocalVariable(name: "rc", scope: !5825, file: !3, line: 410, type: !51)
!5838 = !DILocalVariable(name: "__ret_warn_on", scope: !5839, file: !3, line: 432, type: !51)
!5839 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 432, column: 4)
!5840 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 431, column: 62)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 431, column: 7)
!5842 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 428, column: 13)
!5843 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 428, column: 6)
!5844 = !DILocalVariable(name: "__flags", scope: !5845, file: !3, line: 432, type: !51)
!5845 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 432, column: 4)
!5846 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 432, column: 4)
!5847 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 432, column: 4)
!5848 = !DIGlobalVariableExpression(var: !5849, expr: !DIExpression())
!5849 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !5850, isLocal: true, isDefinition: true)
!5850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 168, elements: !5851)
!5851 = !{!5852}
!5852 = !DISubrange(count: 21)
!5853 = !DIGlobalVariableExpression(var: !5854, expr: !DIExpression())
!5854 = distinct !DIGlobalVariable(name: "__key", scope: !5825, file: !3, line: 419, type: !880, isLocal: true, isDefinition: true)
!5855 = !DIGlobalVariableExpression(var: !5856, expr: !DIExpression())
!5856 = distinct !DIGlobalVariable(scope: null, file: !3, line: 419, type: !5857, isLocal: true, isDefinition: true)
!5857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 144, elements: !5858)
!5858 = !{!5859}
!5859 = !DISubrange(count: 18)
!5860 = !DIGlobalVariableExpression(var: !5861, expr: !DIExpression())
!5861 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !5862, isLocal: true, isDefinition: true)
!5862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 24, elements: !610)
!5863 = !DIGlobalVariableExpression(var: !5864, expr: !DIExpression())
!5864 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !5865, isLocal: true, isDefinition: true)
!5865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 216, elements: !5866)
!5866 = !{!5867}
!5867 = !DISubrange(count: 27)
!5868 = !DIGlobalVariableExpression(var: !5869, expr: !DIExpression())
!5869 = distinct !DIGlobalVariable(scope: null, file: !3, line: 432, type: !5870, isLocal: true, isDefinition: true)
!5870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 288, elements: !5871)
!5871 = !{!5872}
!5872 = !DISubrange(count: 36)
!5873 = !DIGlobalVariableExpression(var: !5874, expr: !DIExpression())
!5874 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_device_register352", scope: !2, file: !3, line: 469, type: !49, isLocal: true, isDefinition: true)
!5875 = !DIGlobalVariableExpression(var: !5876, expr: !DIExpression())
!5876 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_device_get_by_type353", scope: !2, file: !3, line: 496, type: !49, isLocal: true, isDefinition: true)
!5877 = !DIGlobalVariableExpression(var: !5878, expr: !DIExpression())
!5878 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_device_get_by_name354", scope: !2, file: !3, line: 517, type: !49, isLocal: true, isDefinition: true)
!5879 = !DIGlobalVariableExpression(var: !5880, expr: !DIExpression())
!5880 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_device_unregister355", scope: !2, file: !3, line: 546, type: !49, isLocal: true, isDefinition: true)
!5881 = !DIGlobalVariableExpression(var: !5882, expr: !DIExpression())
!5882 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_register_notifier356", scope: !2, file: !3, line: 578, type: !49, isLocal: true, isDefinition: true)
!5883 = !DIGlobalVariableExpression(var: !5884, expr: !DIExpression())
!5884 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_backlight_unregister_notifier357", scope: !2, file: !3, line: 595, type: !49, isLocal: true, isDefinition: true)
!5885 = !DIGlobalVariableExpression(var: !5886, expr: !DIExpression())
!5886 = distinct !DIGlobalVariable(scope: null, file: !3, line: 621, type: !5887, isLocal: true, isDefinition: true)
!5887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 240, elements: !5888)
!5888 = !{!5889}
!5889 = !DISubrange(count: 30)
!5890 = !DIGlobalVariableExpression(var: !5891, expr: !DIExpression())
!5891 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_backlight_device_register358", scope: !2, file: !3, line: 637, type: !49, isLocal: true, isDefinition: true)
!5892 = !DIGlobalVariableExpression(var: !5893, expr: !DIExpression())
!5893 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_backlight_device_unregister359", scope: !2, file: !3, line: 657, type: !49, isLocal: true, isDefinition: true)
!5894 = !DIGlobalVariableExpression(var: !5895, expr: !DIExpression())
!5895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 739, type: !5896, isLocal: true, isDefinition: true)
!5896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 184, elements: !5897)
!5897 = !{!5898}
!5898 = !DISubrange(count: 23)
!5899 = !DIGlobalVariableExpression(var: !5900, expr: !DIExpression())
!5900 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_of_find_backlight360", scope: !2, file: !3, line: 745, type: !49, isLocal: true, isDefinition: true)
!5901 = !DIGlobalVariableExpression(var: !5902, expr: !DIExpression())
!5902 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_backlight__361_774_backlight_class_init2362", scope: !2, file: !3, line: 774, type: !49, isLocal: true, isDefinition: true)
!5903 = !DIGlobalVariableExpression(var: !5904, expr: !DIExpression())
!5904 = distinct !DIGlobalVariable(name: "__exitcall_backlight_class_exit", scope: !2, file: !3, line: 775, type: !5905, isLocal: true, isDefinition: true)
!5905 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5906, line: 120, baseType: !2635)
!5906 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5907 = !DIGlobalVariableExpression(var: !5908, expr: !DIExpression())
!5908 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file363", scope: !2, file: !3, line: 777, type: !5909, isLocal: true, isDefinition: true, align: 8)
!5909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 392, elements: !5910)
!5910 = !{!5911}
!5911 = !DISubrange(count: 49)
!5912 = !DIGlobalVariableExpression(var: !5913, expr: !DIExpression())
!5913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license364", scope: !2, file: !3, line: 777, type: !5914, isLocal: true, isDefinition: true, align: 8)
!5914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 176, elements: !5915)
!5915 = !{!5916}
!5916 = !DISubrange(count: 22)
!5917 = !DIGlobalVariableExpression(var: !5918, expr: !DIExpression())
!5918 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author365", scope: !2, file: !3, line: 778, type: !5919, isLocal: true, isDefinition: true, align: 8)
!5919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 688, elements: !5920)
!5920 = !{!5921}
!5921 = !DISubrange(count: 86)
!5922 = !DIGlobalVariableExpression(var: !5923, expr: !DIExpression())
!5923 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description366", scope: !2, file: !3, line: 779, type: !5924, isLocal: true, isDefinition: true, align: 8)
!5924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 488, elements: !5925)
!5925 = !{!5926}
!5926 = !DISubrange(count: 61)
!5927 = !DIGlobalVariableExpression(var: !5928, expr: !DIExpression())
!5928 = distinct !DIGlobalVariable(name: "backlight_dev_list", scope: !2, file: !3, line: 66, type: !126, isLocal: true, isDefinition: true)
!5929 = !DIGlobalVariableExpression(var: !5930, expr: !DIExpression())
!5930 = distinct !DIGlobalVariable(name: "backlight_dev_list_mutex", scope: !2, file: !3, line: 67, type: !340, isLocal: true, isDefinition: true)
!5931 = !DIGlobalVariableExpression(var: !5932, expr: !DIExpression())
!5932 = distinct !DIGlobalVariable(name: "backlight_notifier", scope: !2, file: !3, line: 68, type: !5933, isLocal: true, isDefinition: true)
!5933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !5796, line: 65, size: 384, elements: !5934)
!5934 = !{!5935, !5936}
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !5933, file: !5796, line: 66, baseType: !1446, size: 320)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5933, file: !5796, line: 67, baseType: !5803, size: 64, offset: 320)
!5937 = !DIGlobalVariableExpression(var: !5938, expr: !DIExpression())
!5938 = distinct !DIGlobalVariable(name: "backlight_class", scope: !2, file: !3, line: 320, type: !5939, isLocal: true, isDefinition: true)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!5940 = !DIGlobalVariableExpression(var: !5941, expr: !DIExpression())
!5941 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !5942, isLocal: true, isDefinition: true)
!5942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 104, elements: !5943)
!5943 = !{!5944}
!5944 = !DISubrange(count: 13)
!5945 = !DIGlobalVariableExpression(var: !5946, expr: !DIExpression())
!5946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !5947, isLocal: true, isDefinition: true)
!5947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 112, elements: !494)
!5948 = !DIGlobalVariableExpression(var: !5949, expr: !DIExpression())
!5949 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !5950, isLocal: true, isDefinition: true)
!5950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 120, elements: !5951)
!5951 = !{!5952}
!5952 = !DISubrange(count: 15)
!5953 = !DIGlobalVariableExpression(var: !5954, expr: !DIExpression())
!5954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !5857, isLocal: true, isDefinition: true)
!5955 = !DIGlobalVariableExpression(var: !5956, expr: !DIExpression())
!5956 = distinct !DIGlobalVariable(scope: null, file: !315, line: 480, type: !5850, isLocal: true, isDefinition: true)
!5957 = !DIGlobalVariableExpression(var: !5958, expr: !DIExpression())
!5958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 754, type: !5959, isLocal: true, isDefinition: true)
!5959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 80, elements: !1803)
!5960 = !DIGlobalVariableExpression(var: !5961, expr: !DIExpression())
!5961 = distinct !DIGlobalVariable(scope: null, file: !3, line: 756, type: !5962, isLocal: true, isDefinition: true)
!5962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 480, elements: !5963)
!5963 = !{!5964}
!5964 = !DISubrange(count: 60)
!5965 = !DIGlobalVariableExpression(var: !5966, expr: !DIExpression())
!5966 = distinct !DIGlobalVariable(name: "__key", scope: !5967, file: !3, line: 764, type: !880, isLocal: true, isDefinition: true)
!5967 = distinct !DISubprogram(name: "backlight_class_init", scope: !3, file: !3, line: 752, type: !5449, scopeLine: 753, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5968 = !DIGlobalVariableExpression(var: !5969, expr: !DIExpression())
!5969 = distinct !DIGlobalVariable(scope: null, file: !3, line: 764, type: !5970, isLocal: true, isDefinition: true)
!5970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 208, elements: !5971)
!5971 = !{!5972}
!5972 = !DISubrange(count: 26)
!5973 = !DIGlobalVariableExpression(var: !5974, expr: !DIExpression())
!5974 = distinct !DIGlobalVariable(name: "__key", scope: !5967, file: !3, line: 765, type: !880, isLocal: true, isDefinition: true)
!5975 = !DIGlobalVariableExpression(var: !5976, expr: !DIExpression())
!5976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 765, type: !5887, isLocal: true, isDefinition: true)
!5977 = !DIGlobalVariableExpression(var: !5978, expr: !DIExpression())
!5978 = distinct !DIGlobalVariable(name: "bl_device_groups", scope: !2, file: !3, line: 370, type: !5979, isLocal: true, isDefinition: true)
!5979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 128, elements: !455)
!5980 = !DIGlobalVariableExpression(var: !5981, expr: !DIExpression())
!5981 = distinct !DIGlobalVariable(name: "bl_device_group", scope: !2, file: !3, line: 370, type: !657, isLocal: true, isDefinition: true)
!5982 = !DIGlobalVariableExpression(var: !5983, expr: !DIExpression())
!5983 = distinct !DIGlobalVariable(name: "bl_device_attrs", scope: !2, file: !3, line: 361, type: !5984, isLocal: true, isDefinition: true)
!5984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 448, elements: !5467)
!5985 = !DIGlobalVariableExpression(var: !5986, expr: !DIExpression())
!5986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !5987, isLocal: true, isDefinition: true)
!5987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 72, elements: !5988)
!5988 = !{!5989}
!5989 = !DISubrange(count: 9)
!5990 = !DIGlobalVariableExpression(var: !5991, expr: !DIExpression())
!5991 = distinct !DIGlobalVariable(name: "dev_attr_bl_power", scope: !2, file: !3, line: 220, type: !5992, isLocal: true, isDefinition: true)
!5992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !194, line: 106, size: 256, elements: !5993)
!5993 = !{!5994, !5995, !6000}
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5992, file: !194, line: 107, baseType: !646, size: 128)
!5995 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5992, file: !194, line: 108, baseType: !5996, size: 64, offset: 128)
!5996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5997, size: 64)
!5997 = !DISubroutineType(types: !5998)
!5998 = !{!641, !4090, !5999, !609}
!5999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5992, size: 64)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5992, file: !194, line: 110, baseType: !6001, size: 64, offset: 192)
!6001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6002, size: 64)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!641, !4090, !5999, !45, !64}
!6004 = !DIGlobalVariableExpression(var: !6005, expr: !DIExpression())
!6005 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !6006, isLocal: true, isDefinition: true)
!6006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, elements: !431)
!6007 = !DIGlobalVariableExpression(var: !6008, expr: !DIExpression())
!6008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 268, type: !6009, isLocal: true, isDefinition: true)
!6009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 88, elements: !6010)
!6010 = !{!6011}
!6011 = !DISubrange(count: 11)
!6012 = !DIGlobalVariableExpression(var: !6013, expr: !DIExpression())
!6013 = distinct !DIGlobalVariable(name: "dev_attr_brightness", scope: !2, file: !3, line: 268, type: !5992, isLocal: true, isDefinition: true)
!6014 = !DIGlobalVariableExpression(var: !6015, expr: !DIExpression())
!6015 = distinct !DIGlobalVariable(name: "dev_attr_actual_brightness", scope: !2, file: !3, line: 306, type: !5992, isLocal: true, isDefinition: true)
!6016 = !DIGlobalVariableExpression(var: !6017, expr: !DIExpression())
!6017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !5950, isLocal: true, isDefinition: true)
!6018 = !DIGlobalVariableExpression(var: !6019, expr: !DIExpression())
!6019 = distinct !DIGlobalVariable(name: "dev_attr_max_brightness", scope: !2, file: !3, line: 286, type: !5992, isLocal: true, isDefinition: true)
!6020 = !DIGlobalVariableExpression(var: !6021, expr: !DIExpression())
!6021 = distinct !DIGlobalVariable(scope: null, file: !3, line: 318, type: !1650, isLocal: true, isDefinition: true)
!6022 = !DIGlobalVariableExpression(var: !6023, expr: !DIExpression())
!6023 = distinct !DIGlobalVariable(name: "dev_attr_scale", scope: !2, file: !3, line: 318, type: !5992, isLocal: true, isDefinition: true)
!6024 = !DIGlobalVariableExpression(var: !6025, expr: !DIExpression())
!6025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !5987, isLocal: true, isDefinition: true)
!6026 = !DIGlobalVariableExpression(var: !6027, expr: !DIExpression())
!6027 = distinct !DIGlobalVariable(scope: null, file: !3, line: 316, type: !6006, isLocal: true, isDefinition: true)
!6028 = !DIGlobalVariableExpression(var: !6029, expr: !DIExpression())
!6029 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !3096, isLocal: true, isDefinition: true)
!6030 = !DIGlobalVariableExpression(var: !6031, expr: !DIExpression())
!6031 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !6032, isLocal: true, isDefinition: true)
!6032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 56, elements: !5467)
!6033 = !DIGlobalVariableExpression(var: !6034, expr: !DIExpression())
!6034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !6009, isLocal: true, isDefinition: true)
!6035 = !DIGlobalVariableExpression(var: !6036, expr: !DIExpression())
!6036 = distinct !DIGlobalVariable(name: "backlight_scale_types", scope: !2, file: !3, line: 76, type: !6037, isLocal: true, isDefinition: true)
!6037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6038, size: 192, elements: !610)
!6038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!6039 = !DIGlobalVariableExpression(var: !6040, expr: !DIExpression())
!6040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 277, type: !6041, isLocal: true, isDefinition: true)
!6041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 40, elements: !1569)
!6042 = !DIGlobalVariableExpression(var: !6043, expr: !DIExpression())
!6043 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 277, type: !5992, isLocal: true, isDefinition: true)
!6044 = !DIGlobalVariableExpression(var: !6045, expr: !DIExpression())
!6045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !6006, isLocal: true, isDefinition: true)
!6046 = !DIGlobalVariableExpression(var: !6047, expr: !DIExpression())
!6047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !5987, isLocal: true, isDefinition: true)
!6048 = !DIGlobalVariableExpression(var: !6049, expr: !DIExpression())
!6049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !5987, isLocal: true, isDefinition: true)
!6050 = !DIGlobalVariableExpression(var: !6051, expr: !DIExpression())
!6051 = distinct !DIGlobalVariable(name: "backlight_types", scope: !2, file: !3, line: 70, type: !6052, isLocal: true, isDefinition: true)
!6052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6038, size: 256, elements: !431)
!6053 = !DIGlobalVariableExpression(var: !6054, expr: !DIExpression())
!6054 = distinct !DIGlobalVariable(name: "backlight_class_dev_pm_ops", scope: !2, file: !3, line: 352, type: !4119, isLocal: true, isDefinition: true)
!6055 = !{i32 7, !"Dwarf Version", i32 5}
!6056 = !{i32 2, !"Debug Info Version", i32 3}
!6057 = !{i32 1, !"wchar_size", i32 2}
!6058 = !{i32 8, !"cf-protection-branch", i32 1}
!6059 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6060 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6061 = !{i32 1, !"Code Model", i32 2}
!6062 = !{i32 1, !"override-stack-alignment", i32 8}
!6063 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6064 = distinct !DISubprogram(name: "backlight_device_set_brightness", scope: !3, file: !3, line: 230, type: !6065, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6067)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!51, !326, !68}
!6067 = !{!6068, !6069, !6070}
!6068 = !DILocalVariable(name: "bd", arg: 1, scope: !6064, file: !3, line: 230, type: !326)
!6069 = !DILocalVariable(name: "brightness", arg: 2, scope: !6064, file: !3, line: 231, type: !68)
!6070 = !DILocalVariable(name: "rc", scope: !6064, file: !3, line: 233, type: !51)
!6071 = !DILocation(line: 230, column: 62, scope: !6064)
!6072 = !DILocation(line: 231, column: 23, scope: !6064)
!6073 = !DILocation(line: 233, column: 2, scope: !6064)
!6074 = !DILocation(line: 233, column: 6, scope: !6064)
!6075 = !DILocation(line: 235, column: 14, scope: !6064)
!6076 = !DILocation(line: 235, column: 18, scope: !6064)
!6077 = !DILocation(line: 235, column: 2, scope: !6064)
!6078 = !DILocation(line: 236, column: 6, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6064, file: !3, line: 236, column: 6)
!6080 = !DILocation(line: 236, column: 10, scope: !6079)
!6081 = !DILocation(line: 236, column: 6, scope: !6064)
!6082 = !DILocation(line: 237, column: 7, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6084, file: !3, line: 237, column: 7)
!6084 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 236, column: 15)
!6085 = !DILocation(line: 237, column: 20, scope: !6083)
!6086 = !DILocation(line: 237, column: 24, scope: !6083)
!6087 = !DILocation(line: 237, column: 30, scope: !6083)
!6088 = !DILocation(line: 237, column: 18, scope: !6083)
!6089 = !DILocation(line: 237, column: 7, scope: !6084)
!6090 = !DILocation(line: 238, column: 7, scope: !6083)
!6091 = !DILocation(line: 238, column: 4, scope: !6083)
!6092 = !DILocation(line: 240, column: 4, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6094, file: !3, line: 240, column: 4)
!6094 = distinct !DILexicalBlock(scope: !6095, file: !3, line: 240, column: 4)
!6095 = distinct !DILexicalBlock(scope: !6083, file: !3, line: 239, column: 8)
!6096 = !DILocation(line: 240, column: 4, scope: !6094)
!6097 = !DILocation(line: 241, column: 27, scope: !6095)
!6098 = !DILocation(line: 241, column: 4, scope: !6095)
!6099 = !DILocation(line: 241, column: 8, scope: !6095)
!6100 = !DILocation(line: 241, column: 14, scope: !6095)
!6101 = !DILocation(line: 241, column: 25, scope: !6095)
!6102 = !DILocation(line: 242, column: 33, scope: !6095)
!6103 = !DILocation(line: 242, column: 9, scope: !6095)
!6104 = !DILocation(line: 242, column: 7, scope: !6095)
!6105 = !DILocation(line: 244, column: 2, scope: !6084)
!6106 = !DILocation(line: 245, column: 16, scope: !6064)
!6107 = !DILocation(line: 245, column: 20, scope: !6064)
!6108 = !DILocation(line: 245, column: 2, scope: !6064)
!6109 = !DILocation(line: 247, column: 27, scope: !6064)
!6110 = !DILocation(line: 247, column: 2, scope: !6064)
!6111 = !DILocation(line: 249, column: 9, scope: !6064)
!6112 = !DILocation(line: 250, column: 1, scope: !6064)
!6113 = !DILocation(line: 249, column: 2, scope: !6064)
!6114 = !DISubprogram(name: "mutex_lock", scope: !341, file: !341, line: 227, type: !6115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{null, !6117}
!6117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!6118 = distinct !DISubprogram(name: "backlight_update_status", scope: !6, file: !6, line: 347, type: !369, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6119)
!6119 = !{!6120, !6121}
!6120 = !DILocalVariable(name: "bd", arg: 1, scope: !6118, file: !6, line: 347, type: !326)
!6121 = !DILocalVariable(name: "ret", scope: !6118, file: !6, line: 349, type: !51)
!6122 = !DILocation(line: 347, column: 68, scope: !6118)
!6123 = !DILocation(line: 349, column: 2, scope: !6118)
!6124 = !DILocation(line: 349, column: 6, scope: !6118)
!6125 = !DILocation(line: 351, column: 14, scope: !6118)
!6126 = !DILocation(line: 351, column: 18, scope: !6118)
!6127 = !DILocation(line: 351, column: 2, scope: !6118)
!6128 = !DILocation(line: 352, column: 6, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6118, file: !6, line: 352, column: 6)
!6130 = !DILocation(line: 352, column: 10, scope: !6129)
!6131 = !DILocation(line: 352, column: 14, scope: !6129)
!6132 = !DILocation(line: 352, column: 17, scope: !6129)
!6133 = !DILocation(line: 352, column: 21, scope: !6129)
!6134 = !DILocation(line: 352, column: 26, scope: !6129)
!6135 = !DILocation(line: 352, column: 6, scope: !6118)
!6136 = !DILocation(line: 353, column: 9, scope: !6129)
!6137 = !DILocation(line: 353, column: 13, scope: !6129)
!6138 = !DILocation(line: 353, column: 18, scope: !6129)
!6139 = !DILocation(line: 353, column: 32, scope: !6129)
!6140 = !DILocation(line: 353, column: 7, scope: !6129)
!6141 = !DILocation(line: 353, column: 3, scope: !6129)
!6142 = !DILocation(line: 354, column: 16, scope: !6118)
!6143 = !DILocation(line: 354, column: 20, scope: !6118)
!6144 = !DILocation(line: 354, column: 2, scope: !6118)
!6145 = !DILocation(line: 356, column: 9, scope: !6118)
!6146 = !DILocation(line: 357, column: 1, scope: !6118)
!6147 = !DILocation(line: 356, column: 2, scope: !6118)
!6148 = !DISubprogram(name: "mutex_unlock", scope: !341, file: !341, line: 246, type: !6115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6149 = distinct !DISubprogram(name: "backlight_generate_event", scope: !3, file: !3, line: 160, type: !6150, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6152)
!6150 = !DISubroutineType(types: !6151)
!6151 = !{null, !326, !290}
!6152 = !{!6153, !6154, !6155}
!6153 = !DILocalVariable(name: "bd", arg: 1, scope: !6149, file: !3, line: 160, type: !326)
!6154 = !DILocalVariable(name: "reason", arg: 2, scope: !6149, file: !3, line: 161, type: !290)
!6155 = !DILocalVariable(name: "envp", scope: !6149, file: !3, line: 163, type: !6156)
!6156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 128, elements: !455)
!6157 = !DILocation(line: 160, column: 63, scope: !6149)
!6158 = !DILocation(line: 161, column: 39, scope: !6149)
!6159 = !DILocation(line: 163, column: 2, scope: !6149)
!6160 = !DILocation(line: 163, column: 8, scope: !6149)
!6161 = !DILocation(line: 165, column: 10, scope: !6149)
!6162 = !DILocation(line: 165, column: 2, scope: !6149)
!6163 = !DILocation(line: 167, column: 3, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 165, column: 18)
!6165 = !DILocation(line: 167, column: 11, scope: !6164)
!6166 = !DILocation(line: 168, column: 3, scope: !6164)
!6167 = !DILocation(line: 170, column: 3, scope: !6164)
!6168 = !DILocation(line: 170, column: 11, scope: !6164)
!6169 = !DILocation(line: 171, column: 3, scope: !6164)
!6170 = !DILocation(line: 173, column: 3, scope: !6164)
!6171 = !DILocation(line: 173, column: 11, scope: !6164)
!6172 = !DILocation(line: 174, column: 3, scope: !6164)
!6173 = !DILocation(line: 176, column: 2, scope: !6149)
!6174 = !DILocation(line: 176, column: 10, scope: !6149)
!6175 = !DILocation(line: 177, column: 22, scope: !6149)
!6176 = !DILocation(line: 177, column: 26, scope: !6149)
!6177 = !DILocation(line: 177, column: 30, scope: !6149)
!6178 = !DILocation(line: 177, column: 49, scope: !6149)
!6179 = !DILocation(line: 177, column: 2, scope: !6149)
!6180 = !DILocation(line: 178, column: 16, scope: !6149)
!6181 = !DILocation(line: 178, column: 20, scope: !6149)
!6182 = !DILocation(line: 178, column: 24, scope: !6149)
!6183 = !DILocation(line: 178, column: 2, scope: !6149)
!6184 = !DILocation(line: 179, column: 1, scope: !6149)
!6185 = distinct !DISubprogram(name: "backlight_force_update", scope: !3, file: !3, line: 384, type: !6150, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6186)
!6186 = !{!6187, !6188, !6189}
!6187 = !DILocalVariable(name: "bd", arg: 1, scope: !6185, file: !3, line: 384, type: !326)
!6188 = !DILocalVariable(name: "reason", arg: 2, scope: !6185, file: !3, line: 385, type: !290)
!6189 = !DILocalVariable(name: "brightness", scope: !6185, file: !3, line: 387, type: !51)
!6190 = !DILocation(line: 384, column: 54, scope: !6185)
!6191 = !DILocation(line: 385, column: 37, scope: !6185)
!6192 = !DILocation(line: 387, column: 2, scope: !6185)
!6193 = !DILocation(line: 387, column: 6, scope: !6185)
!6194 = !DILocation(line: 389, column: 14, scope: !6185)
!6195 = !DILocation(line: 389, column: 18, scope: !6185)
!6196 = !DILocation(line: 389, column: 2, scope: !6185)
!6197 = !DILocation(line: 390, column: 6, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 390, column: 6)
!6199 = !DILocation(line: 390, column: 10, scope: !6198)
!6200 = !DILocation(line: 390, column: 14, scope: !6198)
!6201 = !DILocation(line: 390, column: 17, scope: !6198)
!6202 = !DILocation(line: 390, column: 21, scope: !6198)
!6203 = !DILocation(line: 390, column: 26, scope: !6198)
!6204 = !DILocation(line: 390, column: 6, scope: !6185)
!6205 = !DILocation(line: 391, column: 16, scope: !6206)
!6206 = distinct !DILexicalBlock(scope: !6198, file: !3, line: 390, column: 42)
!6207 = !DILocation(line: 391, column: 20, scope: !6206)
!6208 = !DILocation(line: 391, column: 25, scope: !6206)
!6209 = !DILocation(line: 391, column: 40, scope: !6206)
!6210 = !DILocation(line: 391, column: 14, scope: !6206)
!6211 = !DILocation(line: 392, column: 7, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6206, file: !3, line: 392, column: 7)
!6213 = !DILocation(line: 392, column: 18, scope: !6212)
!6214 = !DILocation(line: 392, column: 7, scope: !6206)
!6215 = !DILocation(line: 393, column: 27, scope: !6212)
!6216 = !DILocation(line: 393, column: 4, scope: !6212)
!6217 = !DILocation(line: 393, column: 8, scope: !6212)
!6218 = !DILocation(line: 393, column: 14, scope: !6212)
!6219 = !DILocation(line: 393, column: 25, scope: !6212)
!6220 = !DILocation(line: 395, column: 4, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 395, column: 4)
!6222 = !DILocation(line: 395, column: 4, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6221, file: !3, line: 395, column: 4)
!6224 = !DILocation(line: 398, column: 2, scope: !6206)
!6225 = !DILocation(line: 399, column: 16, scope: !6185)
!6226 = !DILocation(line: 399, column: 20, scope: !6185)
!6227 = !DILocation(line: 399, column: 2, scope: !6185)
!6228 = !DILocation(line: 400, column: 27, scope: !6185)
!6229 = !DILocation(line: 400, column: 31, scope: !6185)
!6230 = !DILocation(line: 400, column: 2, scope: !6185)
!6231 = !DILocation(line: 401, column: 1, scope: !6185)
!6232 = !DISubprogram(name: "_dev_err", scope: !6233, file: !6233, line: 50, type: !6234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6233 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6234 = !DISubroutineType(types: !6235)
!6235 = !{null, !4106, !45, null}
!6236 = distinct !DISubprogram(name: "ERR_PTR", scope: !6237, file: !6237, line: 39, type: !6238, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6240)
!6237 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6238 = !DISubroutineType(types: !6239)
!6239 = !{!49, !644}
!6240 = !{!6241}
!6241 = !DILocalVariable(name: "error", arg: 1, scope: !6236, file: !6237, line: 39, type: !644)
!6242 = !DILocation(line: 39, column: 48, scope: !6236)
!6243 = !DILocation(line: 41, column: 18, scope: !6236)
!6244 = !DILocation(line: 41, column: 9, scope: !6236)
!6245 = !DILocation(line: 41, column: 2, scope: !6236)
!6246 = !DILocation(line: 405, column: 64, scope: !5825)
!6247 = !DILocation(line: 406, column: 17, scope: !5825)
!6248 = !DILocation(line: 406, column: 31, scope: !5825)
!6249 = !DILocation(line: 406, column: 68, scope: !5825)
!6250 = !DILocation(line: 407, column: 37, scope: !5825)
!6251 = !DILocation(line: 409, column: 2, scope: !5825)
!6252 = !DILocation(line: 409, column: 27, scope: !5825)
!6253 = !DILocation(line: 410, column: 2, scope: !5825)
!6254 = !DILocation(line: 410, column: 6, scope: !5825)
!6255 = !DILocation(line: 412, column: 2, scope: !6256)
!6256 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 412, column: 2)
!6257 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 412, column: 2)
!6258 = !DILocation(line: 412, column: 2, scope: !6257)
!6259 = !DILocation(line: 414, column: 11, scope: !5825)
!6260 = !DILocation(line: 414, column: 9, scope: !5825)
!6261 = !DILocation(line: 415, column: 7, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 415, column: 6)
!6263 = !DILocation(line: 415, column: 6, scope: !5825)
!6264 = !DILocation(line: 416, column: 10, scope: !6262)
!6265 = !DILocation(line: 416, column: 3, scope: !6262)
!6266 = !DILocation(line: 418, column: 2, scope: !5825)
!6267 = !DILocation(line: 418, column: 2, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 418, column: 2)
!6269 = !DILocation(line: 419, column: 2, scope: !5825)
!6270 = !DILocation(line: 419, column: 2, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 419, column: 2)
!6272 = !DILocation(line: 421, column: 22, scope: !5825)
!6273 = !DILocation(line: 421, column: 2, scope: !5825)
!6274 = !DILocation(line: 421, column: 10, scope: !5825)
!6275 = !DILocation(line: 421, column: 14, scope: !5825)
!6276 = !DILocation(line: 421, column: 20, scope: !5825)
!6277 = !DILocation(line: 422, column: 23, scope: !5825)
!6278 = !DILocation(line: 422, column: 2, scope: !5825)
!6279 = !DILocation(line: 422, column: 10, scope: !5825)
!6280 = !DILocation(line: 422, column: 14, scope: !5825)
!6281 = !DILocation(line: 422, column: 21, scope: !5825)
!6282 = !DILocation(line: 423, column: 2, scope: !5825)
!6283 = !DILocation(line: 423, column: 10, scope: !5825)
!6284 = !DILocation(line: 423, column: 14, scope: !5825)
!6285 = !DILocation(line: 423, column: 22, scope: !5825)
!6286 = !DILocation(line: 424, column: 16, scope: !5825)
!6287 = !DILocation(line: 424, column: 24, scope: !5825)
!6288 = !DILocation(line: 424, column: 35, scope: !5825)
!6289 = !DILocation(line: 424, column: 2, scope: !5825)
!6290 = !DILocation(line: 425, column: 19, scope: !5825)
!6291 = !DILocation(line: 425, column: 27, scope: !5825)
!6292 = !DILocation(line: 425, column: 32, scope: !5825)
!6293 = !DILocation(line: 425, column: 2, scope: !5825)
!6294 = !DILocation(line: 428, column: 6, scope: !5843)
!6295 = !DILocation(line: 428, column: 6, scope: !5825)
!6296 = !DILocation(line: 429, column: 11, scope: !5842)
!6297 = !DILocation(line: 429, column: 19, scope: !5842)
!6298 = !DILocation(line: 429, column: 26, scope: !5842)
!6299 = !DILocation(line: 429, column: 3, scope: !5842)
!6300 = !DILocation(line: 431, column: 7, scope: !5841)
!6301 = !DILocation(line: 431, column: 14, scope: !5841)
!6302 = !DILocation(line: 431, column: 19, scope: !5841)
!6303 = !DILocation(line: 431, column: 24, scope: !5841)
!6304 = !DILocation(line: 431, column: 27, scope: !5841)
!6305 = !DILocation(line: 431, column: 34, scope: !5841)
!6306 = !DILocation(line: 431, column: 39, scope: !5841)
!6307 = !DILocation(line: 431, column: 7, scope: !5842)
!6308 = !DILocation(line: 432, column: 4, scope: !5839)
!6309 = !DILocation(line: 432, column: 4, scope: !5847)
!6310 = !DILocation(line: 432, column: 4, scope: !5846)
!6311 = !DILocation(line: 432, column: 4, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 432, column: 4)
!6313 = !DILocation(line: 432, column: 4, scope: !5845)
!6314 = !DILocation(line: 432, column: 4, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 432, column: 4)
!6316 = !DILocation(line: 432, column: 4, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 432, column: 4)
!6318 = !{i64 2156560676, i64 2156560705, i64 2156560751, i64 2156560809, i64 2156560863, i64 2156560917, i64 2156560972, i64 2156561003, i64 2156561311, i64 2156561317, i64 2156561364, i64 2156561387, i64 2156561413}
!6319 = !DILocation(line: 432, column: 4, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 432, column: 4)
!6321 = !DILocation(line: 432, column: 4, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 432, column: 4)
!6323 = !DILocation(line: 432, column: 4, scope: !5840)
!6324 = !DILocation(line: 433, column: 4, scope: !5840)
!6325 = !DILocation(line: 433, column: 12, scope: !5840)
!6326 = !DILocation(line: 433, column: 18, scope: !5840)
!6327 = !DILocation(line: 433, column: 23, scope: !5840)
!6328 = !DILocation(line: 434, column: 3, scope: !5840)
!6329 = !DILocation(line: 435, column: 2, scope: !5842)
!6330 = !DILocation(line: 436, column: 3, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 435, column: 9)
!6332 = !DILocation(line: 436, column: 11, scope: !6331)
!6333 = !DILocation(line: 436, column: 17, scope: !6331)
!6334 = !DILocation(line: 436, column: 22, scope: !6331)
!6335 = !DILocation(line: 439, column: 24, scope: !5825)
!6336 = !DILocation(line: 439, column: 32, scope: !5825)
!6337 = !DILocation(line: 439, column: 7, scope: !5825)
!6338 = !DILocation(line: 439, column: 5, scope: !5825)
!6339 = !DILocation(line: 440, column: 6, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 440, column: 6)
!6341 = !DILocation(line: 440, column: 6, scope: !5825)
!6342 = !DILocation(line: 441, column: 15, scope: !6343)
!6343 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 440, column: 10)
!6344 = !DILocation(line: 441, column: 23, scope: !6343)
!6345 = !DILocation(line: 441, column: 3, scope: !6343)
!6346 = !DILocation(line: 442, column: 18, scope: !6343)
!6347 = !DILocation(line: 442, column: 10, scope: !6343)
!6348 = !DILocation(line: 442, column: 3, scope: !6343)
!6349 = !DILocation(line: 445, column: 29, scope: !5825)
!6350 = !DILocation(line: 445, column: 7, scope: !5825)
!6351 = !DILocation(line: 445, column: 5, scope: !5825)
!6352 = !DILocation(line: 446, column: 6, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 446, column: 6)
!6354 = !DILocation(line: 446, column: 6, scope: !5825)
!6355 = !DILocation(line: 447, column: 22, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 446, column: 10)
!6357 = !DILocation(line: 447, column: 30, scope: !6356)
!6358 = !DILocation(line: 447, column: 3, scope: !6356)
!6359 = !DILocation(line: 448, column: 18, scope: !6356)
!6360 = !DILocation(line: 448, column: 10, scope: !6356)
!6361 = !DILocation(line: 448, column: 3, scope: !6356)
!6362 = !DILocation(line: 451, column: 16, scope: !5825)
!6363 = !DILocation(line: 451, column: 2, scope: !5825)
!6364 = !DILocation(line: 451, column: 10, scope: !5825)
!6365 = !DILocation(line: 451, column: 14, scope: !5825)
!6366 = !DILocation(line: 460, column: 2, scope: !5825)
!6367 = !DILocation(line: 461, column: 12, scope: !5825)
!6368 = !DILocation(line: 461, column: 20, scope: !5825)
!6369 = !DILocation(line: 461, column: 2, scope: !5825)
!6370 = !DILocation(line: 462, column: 2, scope: !5825)
!6371 = !DILocation(line: 465, column: 32, scope: !5825)
!6372 = !DILocation(line: 464, column: 2, scope: !5825)
!6373 = !DILocation(line: 467, column: 9, scope: !5825)
!6374 = !DILocation(line: 467, column: 2, scope: !5825)
!6375 = !DILocation(line: 468, column: 1, scope: !5825)
!6376 = distinct !DISubprogram(name: "kzalloc", scope: !315, file: !315, line: 719, type: !6377, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6379)
!6377 = !DISubroutineType(types: !6378)
!6378 = !{!49, !64, !325}
!6379 = !{!6380, !6381}
!6380 = !DILocalVariable(name: "size", arg: 1, scope: !6376, file: !315, line: 719, type: !64)
!6381 = !DILocalVariable(name: "flags", arg: 2, scope: !6376, file: !315, line: 719, type: !325)
!6382 = !DILocation(line: 719, column: 52, scope: !6376)
!6383 = !DILocation(line: 719, column: 64, scope: !6376)
!6384 = !DILocation(line: 721, column: 17, scope: !6376)
!6385 = !DILocation(line: 721, column: 23, scope: !6376)
!6386 = !DILocation(line: 721, column: 29, scope: !6376)
!6387 = !DILocation(line: 721, column: 9, scope: !6376)
!6388 = !DILocation(line: 721, column: 2, scope: !6376)
!6389 = !DISubprogram(name: "__mutex_init", scope: !341, file: !341, line: 121, type: !6390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{null, !6117, !45, !6392}
!6392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!6393 = distinct !DISubprogram(name: "bl_device_release", scope: !3, file: !3, line: 355, type: !4115, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6394)
!6394 = !{!6395, !6396, !6397}
!6395 = !DILocalVariable(name: "dev", arg: 1, scope: !6393, file: !3, line: 355, type: !4090)
!6396 = !DILocalVariable(name: "bd", scope: !6393, file: !3, line: 357, type: !326)
!6397 = !DILocalVariable(name: "__mptr", scope: !6398, file: !3, line: 357, type: !49)
!6398 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 357, column: 32)
!6399 = !DILocation(line: 355, column: 46, scope: !6393)
!6400 = !DILocation(line: 357, column: 2, scope: !6393)
!6401 = !DILocation(line: 357, column: 27, scope: !6393)
!6402 = !DILocation(line: 357, column: 32, scope: !6398)
!6403 = !DILocation(line: 357, column: 32, scope: !6393)
!6404 = !DILocation(line: 358, column: 8, scope: !6393)
!6405 = !DILocation(line: 358, column: 2, scope: !6393)
!6406 = !DILocation(line: 359, column: 1, scope: !6393)
!6407 = !DISubprogram(name: "dev_set_name", scope: !194, file: !194, line: 879, type: !6408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{!51, !4090, !45, null}
!6410 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !194, file: !194, line: 921, type: !6411, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6413)
!6411 = !DISubroutineType(types: !6412)
!6412 = !{null, !4090, !49}
!6413 = !{!6414, !6415}
!6414 = !DILocalVariable(name: "dev", arg: 1, scope: !6410, file: !194, line: 921, type: !4090)
!6415 = !DILocalVariable(name: "data", arg: 2, scope: !6410, file: !194, line: 921, type: !49)
!6416 = !DILocation(line: 921, column: 51, scope: !6410)
!6417 = !DILocation(line: 921, column: 62, scope: !6410)
!6418 = !DILocation(line: 923, column: 21, scope: !6410)
!6419 = !DILocation(line: 923, column: 2, scope: !6410)
!6420 = !DILocation(line: 923, column: 7, scope: !6410)
!6421 = !DILocation(line: 923, column: 19, scope: !6410)
!6422 = !DILocation(line: 924, column: 1, scope: !6410)
!6423 = !DISubprogram(name: "__warn_printk", scope: !5492, file: !5492, line: 93, type: !6424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6424 = !DISubroutineType(types: !6425)
!6425 = !{null, !45, null}
!6426 = !DISubprogram(name: "device_register", scope: !194, file: !194, line: 1054, type: !4124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6427 = !DISubprogram(name: "put_device", scope: !194, file: !194, line: 1231, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6428 = distinct !DISubprogram(name: "backlight_register_fb", scope: !3, file: !3, line: 150, type: !369, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6429)
!6429 = !{!6430}
!6430 = !DILocalVariable(name: "bd", arg: 1, scope: !6428, file: !3, line: 150, type: !326)
!6431 = !DILocation(line: 150, column: 66, scope: !6428)
!6432 = !DILocation(line: 152, column: 2, scope: !6428)
!6433 = !DISubprogram(name: "device_unregister", scope: !194, file: !194, line: 1055, type: !4115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6434 = distinct !DISubprogram(name: "list_add", scope: !6435, file: !6435, line: 167, type: !6436, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6438)
!6435 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6436 = !DISubroutineType(types: !6437)
!6437 = !{null, !129, !129}
!6438 = !{!6439, !6440}
!6439 = !DILocalVariable(name: "new", arg: 1, scope: !6434, file: !6435, line: 167, type: !129)
!6440 = !DILocalVariable(name: "head", arg: 2, scope: !6434, file: !6435, line: 167, type: !129)
!6441 = !DILocation(line: 167, column: 47, scope: !6434)
!6442 = !DILocation(line: 167, column: 70, scope: !6434)
!6443 = !DILocation(line: 169, column: 13, scope: !6434)
!6444 = !DILocation(line: 169, column: 18, scope: !6434)
!6445 = !DILocation(line: 169, column: 24, scope: !6434)
!6446 = !DILocation(line: 169, column: 30, scope: !6434)
!6447 = !DILocation(line: 169, column: 2, scope: !6434)
!6448 = !DILocation(line: 170, column: 1, scope: !6434)
!6449 = !DISubprogram(name: "blocking_notifier_call_chain", scope: !5796, file: !5796, line: 171, type: !6450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6450 = !DISubroutineType(types: !6451)
!6451 = !{!51, !6452, !68, !49}
!6452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5933, size: 64)
!6453 = distinct !DISubprogram(name: "backlight_device_get_by_type", scope: !3, file: !3, line: 480, type: !6454, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6456)
!6454 = !DISubroutineType(types: !6455)
!6455 = !{!326, !5}
!6456 = !{!6457, !6458, !6459, !6460, !6463}
!6457 = !DILocalVariable(name: "type", arg: 1, scope: !6453, file: !3, line: 480, type: !5)
!6458 = !DILocalVariable(name: "found", scope: !6453, file: !3, line: 482, type: !1596)
!6459 = !DILocalVariable(name: "bd", scope: !6453, file: !3, line: 483, type: !326)
!6460 = !DILocalVariable(name: "__mptr", scope: !6461, file: !3, line: 486, type: !49)
!6461 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 486, column: 2)
!6462 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 486, column: 2)
!6463 = !DILocalVariable(name: "__mptr", scope: !6464, file: !3, line: 486, type: !49)
!6464 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 486, column: 2)
!6465 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 486, column: 2)
!6466 = !DILocation(line: 480, column: 75, scope: !6453)
!6467 = !DILocation(line: 482, column: 2, scope: !6453)
!6468 = !DILocation(line: 482, column: 7, scope: !6453)
!6469 = !DILocation(line: 483, column: 2, scope: !6453)
!6470 = !DILocation(line: 483, column: 27, scope: !6453)
!6471 = !DILocation(line: 485, column: 2, scope: !6453)
!6472 = !DILocation(line: 486, column: 2, scope: !6461)
!6473 = !DILocation(line: 486, column: 2, scope: !6462)
!6474 = !DILocation(line: 486, column: 2, scope: !6465)
!6475 = !DILocation(line: 487, column: 7, scope: !6476)
!6476 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 487, column: 7)
!6477 = distinct !DILexicalBlock(scope: !6465, file: !3, line: 486, column: 54)
!6478 = !DILocation(line: 487, column: 11, scope: !6476)
!6479 = !DILocation(line: 487, column: 17, scope: !6476)
!6480 = !DILocation(line: 487, column: 25, scope: !6476)
!6481 = !DILocation(line: 487, column: 22, scope: !6476)
!6482 = !DILocation(line: 487, column: 7, scope: !6477)
!6483 = !DILocation(line: 488, column: 10, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6476, file: !3, line: 487, column: 31)
!6485 = !DILocation(line: 489, column: 4, scope: !6484)
!6486 = !DILocation(line: 491, column: 2, scope: !6477)
!6487 = !DILocation(line: 486, column: 2, scope: !6464)
!6488 = distinct !{!6488, !6473, !6489, !6490, !6491}
!6489 = !DILocation(line: 491, column: 2, scope: !6462)
!6490 = !{!"llvm.loop.mustprogress"}
!6491 = !{!"llvm.loop.unroll.disable"}
!6492 = !DILocation(line: 492, column: 2, scope: !6453)
!6493 = !DILocation(line: 494, column: 9, scope: !6453)
!6494 = !{i8 0, i8 2}
!6495 = !DILocation(line: 494, column: 17, scope: !6453)
!6496 = !DILocation(line: 495, column: 1, scope: !6453)
!6497 = !DILocation(line: 494, column: 2, scope: !6453)
!6498 = distinct !DISubprogram(name: "backlight_device_get_by_name", scope: !3, file: !3, line: 509, type: !6499, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6501)
!6499 = !DISubroutineType(types: !6500)
!6500 = !{!326, !45}
!6501 = !{!6502, !6503, !6504}
!6502 = !DILocalVariable(name: "name", arg: 1, scope: !6498, file: !3, line: 509, type: !45)
!6503 = !DILocalVariable(name: "dev", scope: !6498, file: !3, line: 511, type: !4090)
!6504 = !DILocalVariable(name: "__mptr", scope: !6505, file: !3, line: 515, type: !49)
!6505 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 515, column: 15)
!6506 = !DILocation(line: 509, column: 67, scope: !6498)
!6507 = !DILocation(line: 511, column: 2, scope: !6498)
!6508 = !DILocation(line: 511, column: 17, scope: !6498)
!6509 = !DILocation(line: 513, column: 34, scope: !6498)
!6510 = !DILocation(line: 513, column: 51, scope: !6498)
!6511 = !DILocation(line: 513, column: 8, scope: !6498)
!6512 = !DILocation(line: 513, column: 6, scope: !6498)
!6513 = !DILocation(line: 515, column: 9, scope: !6498)
!6514 = !DILocation(line: 515, column: 15, scope: !6505)
!6515 = !DILocation(line: 515, column: 15, scope: !6498)
!6516 = !DILocation(line: 516, column: 1, scope: !6498)
!6517 = !DILocation(line: 515, column: 2, scope: !6498)
!6518 = distinct !DISubprogram(name: "class_find_device_by_name", scope: !4608, file: !4608, line: 108, type: !6519, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6521)
!6519 = !DISubroutineType(types: !6520)
!6520 = !{!4090, !4605, !45}
!6521 = !{!6522, !6523}
!6522 = !DILocalVariable(name: "class", arg: 1, scope: !6518, file: !4608, line: 108, type: !4605)
!6523 = !DILocalVariable(name: "name", arg: 2, scope: !6518, file: !4608, line: 109, type: !45)
!6524 = !DILocation(line: 108, column: 76, scope: !6518)
!6525 = !DILocation(line: 109, column: 26, scope: !6518)
!6526 = !DILocation(line: 111, column: 27, scope: !6518)
!6527 = !DILocation(line: 111, column: 40, scope: !6518)
!6528 = !DILocation(line: 111, column: 9, scope: !6518)
!6529 = !DILocation(line: 111, column: 2, scope: !6518)
!6530 = distinct !DISubprogram(name: "backlight_device_unregister", scope: !3, file: !3, line: 520, type: !6531, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6533)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{null, !326}
!6533 = !{!6534}
!6534 = !DILocalVariable(name: "bd", arg: 1, scope: !6530, file: !3, line: 520, type: !326)
!6535 = !DILocation(line: 520, column: 59, scope: !6530)
!6536 = !DILocation(line: 522, column: 7, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6530, file: !3, line: 522, column: 6)
!6538 = !DILocation(line: 522, column: 6, scope: !6530)
!6539 = !DILocation(line: 523, column: 3, scope: !6537)
!6540 = !DILocation(line: 525, column: 2, scope: !6530)
!6541 = !DILocation(line: 526, column: 12, scope: !6530)
!6542 = !DILocation(line: 526, column: 16, scope: !6530)
!6543 = !DILocation(line: 526, column: 2, scope: !6530)
!6544 = !DILocation(line: 527, column: 2, scope: !6530)
!6545 = !DILocation(line: 537, column: 34, scope: !6530)
!6546 = !DILocation(line: 536, column: 2, scope: !6530)
!6547 = !DILocation(line: 539, column: 14, scope: !6530)
!6548 = !DILocation(line: 539, column: 18, scope: !6530)
!6549 = !DILocation(line: 539, column: 2, scope: !6530)
!6550 = !DILocation(line: 540, column: 2, scope: !6530)
!6551 = !DILocation(line: 540, column: 6, scope: !6530)
!6552 = !DILocation(line: 540, column: 10, scope: !6530)
!6553 = !DILocation(line: 541, column: 16, scope: !6530)
!6554 = !DILocation(line: 541, column: 20, scope: !6530)
!6555 = !DILocation(line: 541, column: 2, scope: !6530)
!6556 = !DILocation(line: 543, column: 26, scope: !6530)
!6557 = !DILocation(line: 543, column: 2, scope: !6530)
!6558 = !DILocation(line: 544, column: 21, scope: !6530)
!6559 = !DILocation(line: 544, column: 25, scope: !6530)
!6560 = !DILocation(line: 544, column: 2, scope: !6530)
!6561 = !DILocation(line: 545, column: 1, scope: !6530)
!6562 = distinct !DISubprogram(name: "list_del", scope: !6435, file: !6435, line: 227, type: !6563, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6565)
!6563 = !DISubroutineType(types: !6564)
!6564 = !{null, !129}
!6565 = !{!6566}
!6566 = !DILocalVariable(name: "entry", arg: 1, scope: !6562, file: !6435, line: 227, type: !129)
!6567 = !DILocation(line: 227, column: 47, scope: !6562)
!6568 = !DILocation(line: 229, column: 19, scope: !6562)
!6569 = !DILocation(line: 229, column: 2, scope: !6562)
!6570 = !DILocation(line: 230, column: 2, scope: !6562)
!6571 = !DILocation(line: 230, column: 9, scope: !6562)
!6572 = !DILocation(line: 230, column: 14, scope: !6562)
!6573 = !DILocation(line: 231, column: 2, scope: !6562)
!6574 = !DILocation(line: 231, column: 9, scope: !6562)
!6575 = !DILocation(line: 231, column: 14, scope: !6562)
!6576 = !DILocation(line: 232, column: 1, scope: !6562)
!6577 = distinct !DISubprogram(name: "backlight_unregister_fb", scope: !3, file: !3, line: 155, type: !6531, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6578)
!6578 = !{!6579}
!6579 = !DILocalVariable(name: "bd", arg: 1, scope: !6577, file: !3, line: 155, type: !326)
!6580 = !DILocation(line: 155, column: 69, scope: !6577)
!6581 = !DILocation(line: 157, column: 1, scope: !6577)
!6582 = distinct !DISubprogram(name: "backlight_register_notifier", scope: !3, file: !3, line: 574, type: !6583, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6585)
!6583 = !DISubroutineType(types: !6584)
!6584 = !{!51, !5803}
!6585 = !{!6586}
!6586 = !DILocalVariable(name: "nb", arg: 1, scope: !6582, file: !3, line: 574, type: !5803)
!6587 = !DILocation(line: 574, column: 56, scope: !6582)
!6588 = !DILocation(line: 576, column: 63, scope: !6582)
!6589 = !DILocation(line: 576, column: 9, scope: !6582)
!6590 = !DILocation(line: 576, column: 2, scope: !6582)
!6591 = !DISubprogram(name: "blocking_notifier_chain_register", scope: !5796, file: !5796, line: 148, type: !6592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6592 = !DISubroutineType(types: !6593)
!6593 = !{!51, !6452, !5803}
!6594 = distinct !DISubprogram(name: "backlight_unregister_notifier", scope: !3, file: !3, line: 591, type: !6583, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6595)
!6595 = !{!6596}
!6596 = !DILocalVariable(name: "nb", arg: 1, scope: !6594, file: !3, line: 591, type: !5803)
!6597 = !DILocation(line: 591, column: 58, scope: !6594)
!6598 = !DILocation(line: 593, column: 65, scope: !6594)
!6599 = !DILocation(line: 593, column: 9, scope: !6594)
!6600 = !DILocation(line: 593, column: 2, scope: !6594)
!6601 = !DISubprogram(name: "blocking_notifier_chain_unregister", scope: !5796, file: !5796, line: 162, type: !6592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6602 = distinct !DISubprogram(name: "devm_backlight_device_register", scope: !3, file: !3, line: 614, type: !6603, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6605)
!6603 = !DISubroutineType(types: !6604)
!6604 = !{!326, !4090, !45, !4090, !49, !362, !5828}
!6605 = !{!6606, !6607, !6608, !6609, !6610, !6611, !6612, !6613}
!6606 = !DILocalVariable(name: "dev", arg: 1, scope: !6602, file: !3, line: 614, type: !4090)
!6607 = !DILocalVariable(name: "name", arg: 2, scope: !6602, file: !3, line: 615, type: !45)
!6608 = !DILocalVariable(name: "parent", arg: 3, scope: !6602, file: !3, line: 615, type: !4090)
!6609 = !DILocalVariable(name: "devdata", arg: 4, scope: !6602, file: !3, line: 615, type: !49)
!6610 = !DILocalVariable(name: "ops", arg: 5, scope: !6602, file: !3, line: 616, type: !362)
!6611 = !DILocalVariable(name: "props", arg: 6, scope: !6602, file: !3, line: 617, type: !5828)
!6612 = !DILocalVariable(name: "ptr", scope: !6602, file: !3, line: 619, type: !5813)
!6613 = !DILocalVariable(name: "backlight", scope: !6602, file: !3, line: 619, type: !326)
!6614 = !DILocation(line: 614, column: 72, scope: !6602)
!6615 = !DILocation(line: 615, column: 14, scope: !6602)
!6616 = !DILocation(line: 615, column: 35, scope: !6602)
!6617 = !DILocation(line: 615, column: 49, scope: !6602)
!6618 = !DILocation(line: 616, column: 30, scope: !6602)
!6619 = !DILocation(line: 617, column: 37, scope: !6602)
!6620 = !DILocation(line: 619, column: 2, scope: !6602)
!6621 = !DILocation(line: 619, column: 28, scope: !6602)
!6622 = !DILocation(line: 619, column: 34, scope: !6602)
!6623 = !DILocation(line: 621, column: 8, scope: !6602)
!6624 = !DILocation(line: 621, column: 6, scope: !6602)
!6625 = !DILocation(line: 623, column: 7, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 623, column: 6)
!6627 = !DILocation(line: 623, column: 6, scope: !6602)
!6628 = !DILocation(line: 624, column: 10, scope: !6626)
!6629 = !DILocation(line: 624, column: 3, scope: !6626)
!6630 = !DILocation(line: 626, column: 40, scope: !6602)
!6631 = !DILocation(line: 626, column: 46, scope: !6602)
!6632 = !DILocation(line: 626, column: 54, scope: !6602)
!6633 = !DILocation(line: 626, column: 63, scope: !6602)
!6634 = !DILocation(line: 627, column: 7, scope: !6602)
!6635 = !DILocation(line: 626, column: 14, scope: !6602)
!6636 = !DILocation(line: 626, column: 12, scope: !6602)
!6637 = !DILocation(line: 628, column: 14, scope: !6638)
!6638 = distinct !DILexicalBlock(scope: !6602, file: !3, line: 628, column: 6)
!6639 = !DILocation(line: 628, column: 7, scope: !6638)
!6640 = !DILocation(line: 628, column: 6, scope: !6602)
!6641 = !DILocation(line: 629, column: 10, scope: !6642)
!6642 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 628, column: 26)
!6643 = !DILocation(line: 629, column: 4, scope: !6642)
!6644 = !DILocation(line: 629, column: 8, scope: !6642)
!6645 = !DILocation(line: 630, column: 14, scope: !6642)
!6646 = !DILocation(line: 630, column: 19, scope: !6642)
!6647 = !DILocation(line: 630, column: 3, scope: !6642)
!6648 = !DILocation(line: 631, column: 2, scope: !6642)
!6649 = !DILocation(line: 632, column: 15, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 631, column: 9)
!6651 = !DILocation(line: 632, column: 3, scope: !6650)
!6652 = !DILocation(line: 635, column: 9, scope: !6602)
!6653 = !DILocation(line: 635, column: 2, scope: !6602)
!6654 = !DILocation(line: 636, column: 1, scope: !6602)
!6655 = !DISubprogram(name: "__devres_alloc_node", scope: !194, file: !194, line: 274, type: !6656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6656 = !DISubroutineType(types: !6657)
!6657 = !{!49, !6658, !64, !325, !51, !45}
!6658 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !194, line: 271, baseType: !6659)
!6659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6411, size: 64)
!6660 = distinct !DISubprogram(name: "devm_backlight_device_release", scope: !3, file: !3, line: 548, type: !6411, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6661)
!6661 = !{!6662, !6663, !6664}
!6662 = !DILocalVariable(name: "dev", arg: 1, scope: !6660, file: !3, line: 548, type: !4090)
!6663 = !DILocalVariable(name: "res", arg: 2, scope: !6660, file: !3, line: 548, type: !49)
!6664 = !DILocalVariable(name: "backlight", scope: !6660, file: !3, line: 550, type: !326)
!6665 = !DILocation(line: 548, column: 58, scope: !6660)
!6666 = !DILocation(line: 548, column: 69, scope: !6660)
!6667 = !DILocation(line: 550, column: 2, scope: !6660)
!6668 = !DILocation(line: 550, column: 27, scope: !6660)
!6669 = !DILocation(line: 550, column: 68, scope: !6660)
!6670 = !DILocation(line: 550, column: 39, scope: !6660)
!6671 = !DILocation(line: 552, column: 30, scope: !6660)
!6672 = !DILocation(line: 552, column: 2, scope: !6660)
!6673 = !DILocation(line: 553, column: 1, scope: !6660)
!6674 = distinct !DISubprogram(name: "IS_ERR", scope: !6237, file: !6237, line: 59, type: !6675, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6677)
!6675 = !DISubroutineType(types: !6676)
!6676 = !{!1596, !1525}
!6677 = !{!6678}
!6678 = !DILocalVariable(name: "ptr", arg: 1, scope: !6674, file: !6237, line: 59, type: !1525)
!6679 = !DILocation(line: 59, column: 60, scope: !6674)
!6680 = !DILocation(line: 61, column: 9, scope: !6674)
!6681 = !DILocation(line: 61, column: 2, scope: !6674)
!6682 = !DISubprogram(name: "devres_add", scope: !194, file: !194, line: 286, type: !6411, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = !DISubprogram(name: "devres_free", scope: !194, file: !194, line: 285, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6684 = distinct !DISubprogram(name: "devm_backlight_device_unregister", scope: !3, file: !3, line: 648, type: !6685, scopeLine: 650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6687)
!6685 = !DISubroutineType(types: !6686)
!6686 = !{null, !4090, !326}
!6687 = !{!6688, !6689, !6690, !6691, !6693}
!6688 = !DILocalVariable(name: "dev", arg: 1, scope: !6684, file: !3, line: 648, type: !4090)
!6689 = !DILocalVariable(name: "bd", arg: 2, scope: !6684, file: !3, line: 649, type: !326)
!6690 = !DILocalVariable(name: "rc", scope: !6684, file: !3, line: 651, type: !51)
!6691 = !DILocalVariable(name: "__ret_warn_on", scope: !6692, file: !3, line: 655, type: !51)
!6692 = distinct !DILexicalBlock(scope: !6684, file: !3, line: 655, column: 2)
!6693 = !DILocalVariable(name: "__flags", scope: !6694, file: !3, line: 655, type: !51)
!6694 = distinct !DILexicalBlock(scope: !6695, file: !3, line: 655, column: 2)
!6695 = distinct !DILexicalBlock(scope: !6692, file: !3, line: 655, column: 2)
!6696 = !DILocation(line: 648, column: 54, scope: !6684)
!6697 = !DILocation(line: 649, column: 30, scope: !6684)
!6698 = !DILocation(line: 651, column: 2, scope: !6684)
!6699 = !DILocation(line: 651, column: 6, scope: !6684)
!6700 = !DILocation(line: 653, column: 22, scope: !6684)
!6701 = !DILocation(line: 654, column: 34, scope: !6684)
!6702 = !DILocation(line: 653, column: 7, scope: !6684)
!6703 = !DILocation(line: 653, column: 5, scope: !6684)
!6704 = !DILocation(line: 655, column: 2, scope: !6692)
!6705 = !DILocation(line: 655, column: 2, scope: !6695)
!6706 = !DILocation(line: 655, column: 2, scope: !6694)
!6707 = !DILocation(line: 655, column: 2, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 655, column: 2)
!6709 = !DILocation(line: 655, column: 2, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 655, column: 2)
!6711 = !{i64 2156585563, i64 2156585592, i64 2156585638, i64 2156585696, i64 2156585750, i64 2156585804, i64 2156585859, i64 2156585890, i64 2156586198, i64 2156586204, i64 2156586251, i64 2156586274, i64 2156586300}
!6712 = !DILocation(line: 655, column: 2, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6694, file: !3, line: 655, column: 2)
!6714 = !DILocation(line: 655, column: 2, scope: !6684)
!6715 = !DILocation(line: 656, column: 1, scope: !6684)
!6716 = !DISubprogram(name: "devres_release", scope: !194, file: !194, line: 295, type: !6717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6717 = !DISubroutineType(types: !6718)
!6718 = !{!51, !4090, !6658, !6719, !49}
!6719 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_match_t", file: !194, line: 272, baseType: !6720)
!6720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6721, size: 64)
!6721 = !DISubroutineType(types: !6722)
!6722 = !{!51, !4090, !49, !49}
!6723 = distinct !DISubprogram(name: "devm_backlight_device_match", scope: !3, file: !3, line: 555, type: !6721, scopeLine: 557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6724)
!6724 = !{!6725, !6726, !6727, !6728}
!6725 = !DILocalVariable(name: "dev", arg: 1, scope: !6723, file: !3, line: 555, type: !4090)
!6726 = !DILocalVariable(name: "res", arg: 2, scope: !6723, file: !3, line: 555, type: !49)
!6727 = !DILocalVariable(name: "data", arg: 3, scope: !6723, file: !3, line: 556, type: !49)
!6728 = !DILocalVariable(name: "r", scope: !6723, file: !3, line: 558, type: !5813)
!6729 = !DILocation(line: 555, column: 55, scope: !6723)
!6730 = !DILocation(line: 555, column: 66, scope: !6723)
!6731 = !DILocation(line: 556, column: 12, scope: !6723)
!6732 = !DILocation(line: 558, column: 2, scope: !6723)
!6733 = !DILocation(line: 558, column: 28, scope: !6723)
!6734 = !DILocation(line: 558, column: 32, scope: !6723)
!6735 = !DILocation(line: 560, column: 10, scope: !6723)
!6736 = !DILocation(line: 560, column: 9, scope: !6723)
!6737 = !DILocation(line: 560, column: 15, scope: !6723)
!6738 = !DILocation(line: 560, column: 12, scope: !6723)
!6739 = !DILocation(line: 561, column: 1, scope: !6723)
!6740 = !DILocation(line: 560, column: 2, scope: !6723)
!6741 = distinct !DISubprogram(name: "devm_of_find_backlight", scope: !3, file: !3, line: 731, type: !6742, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6744)
!6742 = !DISubroutineType(types: !6743)
!6743 = !{!326, !4090}
!6744 = !{!6745, !6746, !6747}
!6745 = !DILocalVariable(name: "dev", arg: 1, scope: !6741, file: !3, line: 731, type: !4090)
!6746 = !DILocalVariable(name: "bd", scope: !6741, file: !3, line: 733, type: !326)
!6747 = !DILocalVariable(name: "ret", scope: !6741, file: !3, line: 734, type: !51)
!6748 = !DILocation(line: 731, column: 64, scope: !6741)
!6749 = !DILocation(line: 733, column: 2, scope: !6741)
!6750 = !DILocation(line: 733, column: 27, scope: !6741)
!6751 = !DILocation(line: 734, column: 2, scope: !6741)
!6752 = !DILocation(line: 734, column: 6, scope: !6741)
!6753 = !DILocation(line: 736, column: 25, scope: !6741)
!6754 = !DILocation(line: 736, column: 7, scope: !6741)
!6755 = !DILocation(line: 736, column: 5, scope: !6741)
!6756 = !DILocation(line: 737, column: 21, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6741, file: !3, line: 737, column: 6)
!6758 = !DILocation(line: 737, column: 6, scope: !6757)
!6759 = !DILocation(line: 737, column: 6, scope: !6741)
!6760 = !DILocation(line: 738, column: 10, scope: !6757)
!6761 = !DILocation(line: 738, column: 3, scope: !6757)
!6762 = !DILocation(line: 739, column: 8, scope: !6741)
!6763 = !DILocation(line: 739, column: 6, scope: !6741)
!6764 = !DILocation(line: 740, column: 6, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6741, file: !3, line: 740, column: 6)
!6766 = !DILocation(line: 740, column: 6, scope: !6741)
!6767 = !DILocation(line: 741, column: 18, scope: !6765)
!6768 = !DILocation(line: 741, column: 10, scope: !6765)
!6769 = !DILocation(line: 741, column: 3, scope: !6765)
!6770 = !DILocation(line: 743, column: 9, scope: !6741)
!6771 = !DILocation(line: 743, column: 2, scope: !6741)
!6772 = !DILocation(line: 744, column: 1, scope: !6741)
!6773 = distinct !DISubprogram(name: "of_find_backlight", scope: !3, file: !3, line: 688, type: !6742, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6774)
!6774 = !{!6775, !6776, !6777}
!6775 = !DILocalVariable(name: "dev", arg: 1, scope: !6773, file: !3, line: 688, type: !4090)
!6776 = !DILocalVariable(name: "bd", scope: !6773, file: !3, line: 690, type: !326)
!6777 = !DILocalVariable(name: "np", scope: !6773, file: !3, line: 691, type: !4369)
!6778 = !DILocation(line: 688, column: 66, scope: !6773)
!6779 = !DILocation(line: 690, column: 2, scope: !6773)
!6780 = !DILocation(line: 690, column: 27, scope: !6773)
!6781 = !DILocation(line: 691, column: 2, scope: !6773)
!6782 = !DILocation(line: 691, column: 22, scope: !6773)
!6783 = !DILocation(line: 693, column: 7, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6773, file: !3, line: 693, column: 6)
!6785 = !DILocation(line: 693, column: 6, scope: !6773)
!6786 = !DILocation(line: 694, column: 3, scope: !6784)
!6787 = !DILocation(line: 706, column: 9, scope: !6773)
!6788 = !DILocation(line: 706, column: 2, scope: !6773)
!6789 = !DILocation(line: 707, column: 1, scope: !6773)
!6790 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !6237, file: !6237, line: 70, type: !6675, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6791)
!6791 = !{!6792}
!6792 = !DILocalVariable(name: "ptr", arg: 1, scope: !6790, file: !6237, line: 70, type: !1525)
!6793 = !DILocation(line: 70, column: 68, scope: !6790)
!6794 = !DILocation(line: 72, column: 9, scope: !6790)
!6795 = !DILocation(line: 72, column: 24, scope: !6790)
!6796 = !DILocation(line: 72, column: 27, scope: !6790)
!6797 = !DILocation(line: 72, column: 2, scope: !6790)
!6798 = distinct !DISubprogram(name: "__devm_add_action_or_reset", scope: !194, file: !194, line: 395, type: !6799, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6801)
!6799 = !DISubroutineType(types: !6800)
!6800 = !{!51, !4090, !4649, !49, !45}
!6801 = !{!6802, !6803, !6804, !6805, !6806}
!6802 = !DILocalVariable(name: "dev", arg: 1, scope: !6798, file: !194, line: 395, type: !4090)
!6803 = !DILocalVariable(name: "action", arg: 2, scope: !6798, file: !194, line: 395, type: !4649)
!6804 = !DILocalVariable(name: "data", arg: 3, scope: !6798, file: !194, line: 396, type: !49)
!6805 = !DILocalVariable(name: "name", arg: 4, scope: !6798, file: !194, line: 396, type: !45)
!6806 = !DILocalVariable(name: "ret", scope: !6798, file: !194, line: 398, type: !51)
!6807 = !DILocation(line: 395, column: 61, scope: !6798)
!6808 = !DILocation(line: 395, column: 73, scope: !6798)
!6809 = !DILocation(line: 396, column: 17, scope: !6798)
!6810 = !DILocation(line: 396, column: 35, scope: !6798)
!6811 = !DILocation(line: 398, column: 2, scope: !6798)
!6812 = !DILocation(line: 398, column: 6, scope: !6798)
!6813 = !DILocation(line: 400, column: 26, scope: !6798)
!6814 = !DILocation(line: 400, column: 31, scope: !6798)
!6815 = !DILocation(line: 400, column: 39, scope: !6798)
!6816 = !DILocation(line: 400, column: 45, scope: !6798)
!6817 = !DILocation(line: 400, column: 8, scope: !6798)
!6818 = !DILocation(line: 400, column: 6, scope: !6798)
!6819 = !DILocation(line: 401, column: 6, scope: !6820)
!6820 = distinct !DILexicalBlock(scope: !6798, file: !194, line: 401, column: 6)
!6821 = !DILocation(line: 401, column: 6, scope: !6798)
!6822 = !DILocation(line: 402, column: 3, scope: !6820)
!6823 = !DILocation(line: 402, column: 10, scope: !6820)
!6824 = !DILocation(line: 404, column: 9, scope: !6798)
!6825 = !DILocation(line: 405, column: 1, scope: !6798)
!6826 = !DILocation(line: 404, column: 2, scope: !6798)
!6827 = distinct !DISubprogram(name: "devm_backlight_release", scope: !3, file: !3, line: 709, type: !4650, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6828)
!6828 = !{!6829, !6830}
!6829 = !DILocalVariable(name: "data", arg: 1, scope: !6827, file: !3, line: 709, type: !49)
!6830 = !DILocalVariable(name: "bd", scope: !6827, file: !3, line: 711, type: !326)
!6831 = !DILocation(line: 709, column: 42, scope: !6827)
!6832 = !DILocation(line: 711, column: 2, scope: !6827)
!6833 = !DILocation(line: 711, column: 27, scope: !6827)
!6834 = !DILocation(line: 711, column: 32, scope: !6827)
!6835 = !DILocation(line: 713, column: 14, scope: !6827)
!6836 = !DILocation(line: 713, column: 18, scope: !6827)
!6837 = !DILocation(line: 713, column: 2, scope: !6827)
!6838 = !DILocation(line: 714, column: 1, scope: !6827)
!6839 = distinct !DISubprogram(name: "backlight_class_exit", scope: !3, file: !3, line: 747, type: !2636, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6840 = !DILocation(line: 749, column: 16, scope: !6839)
!6841 = !DILocation(line: 749, column: 2, scope: !6839)
!6842 = !DILocation(line: 750, column: 1, scope: !6839)
!6843 = !DISubprogram(name: "class_destroy", scope: !4608, file: !4608, line: 231, type: !4620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6844 = distinct !DISubprogram(name: "__initstub__kmod_backlight__361_774_backlight_class_init2", scope: !3, file: !3, line: 774, type: !5449, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6845 = !DILocation(line: 774, column: 1, scope: !6844)
!6846 = !DILocation(line: 754, column: 20, scope: !5967)
!6847 = !DILocation(line: 754, column: 18, scope: !5967)
!6848 = !DILocation(line: 755, column: 13, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 755, column: 6)
!6850 = !DILocation(line: 755, column: 6, scope: !6849)
!6851 = !DILocation(line: 755, column: 6, scope: !5967)
!6852 = !DILocation(line: 756, column: 3, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6854, file: !3, line: 756, column: 3)
!6854 = distinct !DILexicalBlock(scope: !6849, file: !3, line: 755, column: 31)
!6855 = !DILocation(line: 756, column: 3, scope: !6856)
!6856 = distinct !DILexicalBlock(scope: !6853, file: !3, line: 756, column: 3)
!6857 = !DILocation(line: 758, column: 18, scope: !6854)
!6858 = !DILocation(line: 758, column: 10, scope: !6854)
!6859 = !DILocation(line: 758, column: 3, scope: !6854)
!6860 = !DILocation(line: 761, column: 2, scope: !5967)
!6861 = !DILocation(line: 761, column: 19, scope: !5967)
!6862 = !DILocation(line: 761, column: 30, scope: !5967)
!6863 = !DILocation(line: 762, column: 2, scope: !5967)
!6864 = !DILocation(line: 762, column: 19, scope: !5967)
!6865 = !DILocation(line: 762, column: 22, scope: !5967)
!6866 = !DILocation(line: 763, column: 2, scope: !5967)
!6867 = !DILocation(line: 764, column: 2, scope: !5967)
!6868 = !DILocation(line: 764, column: 2, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 764, column: 2)
!6870 = !DILocation(line: 765, column: 2, scope: !5967)
!6871 = !DILocation(line: 765, column: 2, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 765, column: 2)
!6873 = !DILocation(line: 765, column: 2, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6872, file: !3, line: 765, column: 2)
!6875 = !DILocation(line: 767, column: 2, scope: !5967)
!6876 = !DILocation(line: 768, column: 1, scope: !5967)
!6877 = !DISubprogram(name: "kobject_uevent_env", scope: !304, file: !304, line: 215, type: !6878, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6878 = !DISubroutineType(types: !6879)
!6879 = !{!51, !574, !303, !6880}
!6880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!6881 = !DISubprogram(name: "sysfs_notify", scope: !635, file: !635, line: 336, type: !6882, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6882 = !DISubroutineType(types: !6883)
!6883 = !{null, !574, !45, !45}
!6884 = distinct !DISubprogram(name: "kmalloc", scope: !315, file: !315, line: 591, type: !6377, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6885)
!6885 = !{!6886, !6887, !6888}
!6886 = !DILocalVariable(name: "size", arg: 1, scope: !6884, file: !315, line: 591, type: !64)
!6887 = !DILocalVariable(name: "flags", arg: 2, scope: !6884, file: !315, line: 591, type: !325)
!6888 = !DILocalVariable(name: "index", scope: !6889, file: !315, line: 594, type: !7)
!6889 = distinct !DILexicalBlock(scope: !6890, file: !315, line: 593, column: 42)
!6890 = distinct !DILexicalBlock(scope: !6884, file: !315, line: 593, column: 6)
!6891 = !DILocation(line: 591, column: 61, scope: !6884)
!6892 = !DILocation(line: 591, column: 73, scope: !6884)
!6893 = !DILocation(line: 593, column: 27, scope: !6890)
!6894 = !DILocation(line: 593, column: 6, scope: !6890)
!6895 = !DILocation(line: 593, column: 33, scope: !6890)
!6896 = !DILocation(line: 593, column: 36, scope: !6890)
!6897 = !DILocation(line: 593, column: 6, scope: !6884)
!6898 = !DILocation(line: 594, column: 3, scope: !6889)
!6899 = !DILocation(line: 594, column: 16, scope: !6889)
!6900 = !DILocation(line: 596, column: 7, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6889, file: !315, line: 596, column: 7)
!6902 = !DILocation(line: 596, column: 12, scope: !6901)
!6903 = !DILocation(line: 596, column: 7, scope: !6889)
!6904 = !DILocation(line: 597, column: 25, scope: !6901)
!6905 = !DILocation(line: 597, column: 31, scope: !6901)
!6906 = !DILocation(line: 597, column: 11, scope: !6901)
!6907 = !DILocation(line: 597, column: 4, scope: !6901)
!6908 = !DILocation(line: 599, column: 11, scope: !6889)
!6909 = !DILocation(line: 599, column: 9, scope: !6889)
!6910 = !DILocation(line: 601, column: 33, scope: !6889)
!6911 = !DILocation(line: 601, column: 40, scope: !6889)
!6912 = !DILocation(line: 601, column: 20, scope: !6889)
!6913 = !DILocation(line: 601, column: 5, scope: !6889)
!6914 = !DILocation(line: 601, column: 51, scope: !6889)
!6915 = !DILocation(line: 602, column: 5, scope: !6889)
!6916 = !DILocation(line: 602, column: 12, scope: !6889)
!6917 = !DILocation(line: 600, column: 10, scope: !6889)
!6918 = !DILocation(line: 600, column: 3, scope: !6889)
!6919 = !DILocation(line: 603, column: 2, scope: !6890)
!6920 = !DILocation(line: 604, column: 19, scope: !6884)
!6921 = !DILocation(line: 604, column: 25, scope: !6884)
!6922 = !DILocation(line: 604, column: 9, scope: !6884)
!6923 = !DILocation(line: 604, column: 2, scope: !6884)
!6924 = !DILocation(line: 605, column: 1, scope: !6884)
!6925 = !DISubprogram(name: "kmalloc_large", scope: !315, file: !315, line: 531, type: !6377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6926 = distinct !DISubprogram(name: "__kmalloc_index", scope: !315, file: !315, line: 444, type: !6927, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6929)
!6927 = !DISubroutineType(types: !6928)
!6928 = !{!7, !64, !1596}
!6929 = !{!6930, !6931}
!6930 = !DILocalVariable(name: "size", arg: 1, scope: !6926, file: !315, line: 444, type: !64)
!6931 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6926, file: !315, line: 445, type: !1596)
!6932 = !DILocation(line: 444, column: 60, scope: !6926)
!6933 = !DILocation(line: 445, column: 16, scope: !6926)
!6934 = !DILocation(line: 447, column: 7, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 447, column: 6)
!6936 = !DILocation(line: 447, column: 6, scope: !6926)
!6937 = !DILocation(line: 448, column: 3, scope: !6935)
!6938 = !DILocation(line: 450, column: 6, scope: !6939)
!6939 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 450, column: 6)
!6940 = !DILocation(line: 450, column: 11, scope: !6939)
!6941 = !DILocation(line: 450, column: 6, scope: !6926)
!6942 = !DILocation(line: 451, column: 3, scope: !6939)
!6943 = !DILocation(line: 453, column: 32, scope: !6944)
!6944 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 453, column: 6)
!6945 = !DILocation(line: 453, column: 37, scope: !6944)
!6946 = !DILocation(line: 453, column: 42, scope: !6944)
!6947 = !DILocation(line: 453, column: 45, scope: !6944)
!6948 = !DILocation(line: 453, column: 50, scope: !6944)
!6949 = !DILocation(line: 453, column: 6, scope: !6926)
!6950 = !DILocation(line: 454, column: 3, scope: !6944)
!6951 = !DILocation(line: 455, column: 32, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 455, column: 6)
!6953 = !DILocation(line: 455, column: 37, scope: !6952)
!6954 = !DILocation(line: 455, column: 43, scope: !6952)
!6955 = !DILocation(line: 455, column: 46, scope: !6952)
!6956 = !DILocation(line: 455, column: 51, scope: !6952)
!6957 = !DILocation(line: 455, column: 6, scope: !6926)
!6958 = !DILocation(line: 456, column: 3, scope: !6952)
!6959 = !DILocation(line: 457, column: 6, scope: !6960)
!6960 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 457, column: 6)
!6961 = !DILocation(line: 457, column: 11, scope: !6960)
!6962 = !DILocation(line: 457, column: 6, scope: !6926)
!6963 = !DILocation(line: 457, column: 26, scope: !6960)
!6964 = !DILocation(line: 458, column: 6, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 458, column: 6)
!6966 = !DILocation(line: 458, column: 11, scope: !6965)
!6967 = !DILocation(line: 458, column: 6, scope: !6926)
!6968 = !DILocation(line: 458, column: 26, scope: !6965)
!6969 = !DILocation(line: 459, column: 6, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 459, column: 6)
!6971 = !DILocation(line: 459, column: 11, scope: !6970)
!6972 = !DILocation(line: 459, column: 6, scope: !6926)
!6973 = !DILocation(line: 459, column: 26, scope: !6970)
!6974 = !DILocation(line: 460, column: 6, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 460, column: 6)
!6976 = !DILocation(line: 460, column: 11, scope: !6975)
!6977 = !DILocation(line: 460, column: 6, scope: !6926)
!6978 = !DILocation(line: 460, column: 26, scope: !6975)
!6979 = !DILocation(line: 461, column: 6, scope: !6980)
!6980 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 461, column: 6)
!6981 = !DILocation(line: 461, column: 11, scope: !6980)
!6982 = !DILocation(line: 461, column: 6, scope: !6926)
!6983 = !DILocation(line: 461, column: 26, scope: !6980)
!6984 = !DILocation(line: 462, column: 6, scope: !6985)
!6985 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 462, column: 6)
!6986 = !DILocation(line: 462, column: 11, scope: !6985)
!6987 = !DILocation(line: 462, column: 6, scope: !6926)
!6988 = !DILocation(line: 462, column: 26, scope: !6985)
!6989 = !DILocation(line: 463, column: 6, scope: !6990)
!6990 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 463, column: 6)
!6991 = !DILocation(line: 463, column: 11, scope: !6990)
!6992 = !DILocation(line: 463, column: 6, scope: !6926)
!6993 = !DILocation(line: 463, column: 26, scope: !6990)
!6994 = !DILocation(line: 464, column: 6, scope: !6995)
!6995 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 464, column: 6)
!6996 = !DILocation(line: 464, column: 11, scope: !6995)
!6997 = !DILocation(line: 464, column: 6, scope: !6926)
!6998 = !DILocation(line: 464, column: 26, scope: !6995)
!6999 = !DILocation(line: 465, column: 6, scope: !7000)
!7000 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 465, column: 6)
!7001 = !DILocation(line: 465, column: 11, scope: !7000)
!7002 = !DILocation(line: 465, column: 6, scope: !6926)
!7003 = !DILocation(line: 465, column: 26, scope: !7000)
!7004 = !DILocation(line: 466, column: 6, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 466, column: 6)
!7006 = !DILocation(line: 466, column: 11, scope: !7005)
!7007 = !DILocation(line: 466, column: 6, scope: !6926)
!7008 = !DILocation(line: 466, column: 26, scope: !7005)
!7009 = !DILocation(line: 467, column: 6, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 467, column: 6)
!7011 = !DILocation(line: 467, column: 11, scope: !7010)
!7012 = !DILocation(line: 467, column: 6, scope: !6926)
!7013 = !DILocation(line: 467, column: 26, scope: !7010)
!7014 = !DILocation(line: 468, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 468, column: 6)
!7016 = !DILocation(line: 468, column: 11, scope: !7015)
!7017 = !DILocation(line: 468, column: 6, scope: !6926)
!7018 = !DILocation(line: 468, column: 26, scope: !7015)
!7019 = !DILocation(line: 469, column: 6, scope: !7020)
!7020 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 469, column: 6)
!7021 = !DILocation(line: 469, column: 11, scope: !7020)
!7022 = !DILocation(line: 469, column: 6, scope: !6926)
!7023 = !DILocation(line: 469, column: 26, scope: !7020)
!7024 = !DILocation(line: 470, column: 6, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 470, column: 6)
!7026 = !DILocation(line: 470, column: 11, scope: !7025)
!7027 = !DILocation(line: 470, column: 6, scope: !6926)
!7028 = !DILocation(line: 470, column: 26, scope: !7025)
!7029 = !DILocation(line: 471, column: 6, scope: !7030)
!7030 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 471, column: 6)
!7031 = !DILocation(line: 471, column: 11, scope: !7030)
!7032 = !DILocation(line: 471, column: 6, scope: !6926)
!7033 = !DILocation(line: 471, column: 26, scope: !7030)
!7034 = !DILocation(line: 472, column: 6, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 472, column: 6)
!7036 = !DILocation(line: 472, column: 11, scope: !7035)
!7037 = !DILocation(line: 472, column: 6, scope: !6926)
!7038 = !DILocation(line: 472, column: 26, scope: !7035)
!7039 = !DILocation(line: 473, column: 6, scope: !7040)
!7040 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 473, column: 6)
!7041 = !DILocation(line: 473, column: 11, scope: !7040)
!7042 = !DILocation(line: 473, column: 6, scope: !6926)
!7043 = !DILocation(line: 473, column: 26, scope: !7040)
!7044 = !DILocation(line: 474, column: 6, scope: !7045)
!7045 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 474, column: 6)
!7046 = !DILocation(line: 474, column: 11, scope: !7045)
!7047 = !DILocation(line: 474, column: 6, scope: !6926)
!7048 = !DILocation(line: 474, column: 27, scope: !7045)
!7049 = !DILocation(line: 475, column: 6, scope: !7050)
!7050 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 475, column: 6)
!7051 = !DILocation(line: 475, column: 11, scope: !7050)
!7052 = !DILocation(line: 475, column: 6, scope: !6926)
!7053 = !DILocation(line: 475, column: 32, scope: !7050)
!7054 = !DILocation(line: 477, column: 50, scope: !7055)
!7055 = distinct !DILexicalBlock(scope: !6926, file: !315, line: 477, column: 6)
!7056 = !DILocation(line: 477, column: 6, scope: !6926)
!7057 = !DILocation(line: 478, column: 3, scope: !7055)
!7058 = !DILocation(line: 478, column: 3, scope: !7059)
!7059 = distinct !DILexicalBlock(scope: !7060, file: !315, line: 478, column: 3)
!7060 = distinct !DILexicalBlock(scope: !7055, file: !315, line: 478, column: 3)
!7061 = !{i32 -2141383982}
!7062 = !DILocation(line: 478, column: 3, scope: !7060)
!7063 = !DILocation(line: 480, column: 3, scope: !7055)
!7064 = !DILocation(line: 480, column: 3, scope: !7065)
!7065 = distinct !DILexicalBlock(scope: !7055, file: !315, line: 480, column: 3)
!7066 = !DILocation(line: 480, column: 3, scope: !7067)
!7067 = distinct !DILexicalBlock(scope: !7065, file: !315, line: 480, column: 3)
!7068 = !DILocation(line: 480, column: 3, scope: !7069)
!7069 = distinct !DILexicalBlock(scope: !7065, file: !315, line: 480, column: 3)
!7070 = !{i64 2153583517, i64 2153583546, i64 2153583592, i64 2153583650, i64 2153583704, i64 2153583758, i64 2153583813, i64 2153583844}
!7071 = !DILocation(line: 483, column: 2, scope: !6926)
!7072 = !DILocation(line: 484, column: 1, scope: !6926)
!7073 = !DISubprogram(name: "kmalloc_trace", scope: !315, file: !315, line: 525, type: !7074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7074 = !DISubroutineType(types: !7075)
!7075 = !{!49, !3540, !325, !64}
!7076 = distinct !DISubprogram(name: "kmalloc_type", scope: !315, file: !315, line: 401, type: !7077, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7079)
!7077 = !DISubroutineType(types: !7078)
!7078 = !{!314, !325, !68}
!7079 = !{!7080, !7081}
!7080 = !DILocalVariable(name: "flags", arg: 1, scope: !7076, file: !315, line: 401, type: !325)
!7081 = !DILocalVariable(name: "caller", arg: 2, scope: !7076, file: !315, line: 401, type: !68)
!7082 = !DILocation(line: 401, column: 67, scope: !7076)
!7083 = !DILocation(line: 401, column: 88, scope: !7076)
!7084 = !DILocation(line: 407, column: 6, scope: !7085)
!7085 = distinct !DILexicalBlock(scope: !7076, file: !315, line: 407, column: 6)
!7086 = !DILocation(line: 407, column: 6, scope: !7076)
!7087 = !DILocation(line: 413, column: 3, scope: !7085)
!7088 = !DILocation(line: 423, column: 38, scope: !7089)
!7089 = distinct !DILexicalBlock(scope: !7076, file: !315, line: 423, column: 6)
!7090 = !DILocation(line: 423, column: 44, scope: !7089)
!7091 = !DILocation(line: 423, column: 6, scope: !7076)
!7092 = !DILocation(line: 424, column: 3, scope: !7089)
!7093 = !DILocation(line: 426, column: 3, scope: !7094)
!7094 = distinct !DILexicalBlock(scope: !7076, file: !315, line: 425, column: 6)
!7095 = !DILocation(line: 429, column: 1, scope: !7076)
!7096 = !DISubprogram(name: "__kmalloc", scope: !315, file: !315, line: 488, type: !6377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7097 = !DISubprogram(name: "__compiletime_assert_231", scope: !315, file: !315, line: 478, type: !2636, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!7098 = !DISubprogram(name: "kfree", scope: !315, file: !315, line: 227, type: !7099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7099 = !DISubroutineType(types: !7100)
!7100 = !{null, !1525}
!7101 = distinct !DISubprogram(name: "__list_add", scope: !6435, file: !6435, line: 146, type: !7102, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7104)
!7102 = !DISubroutineType(types: !7103)
!7103 = !{null, !129, !129, !129}
!7104 = !{!7105, !7106, !7107}
!7105 = !DILocalVariable(name: "new", arg: 1, scope: !7101, file: !6435, line: 146, type: !129)
!7106 = !DILocalVariable(name: "prev", arg: 2, scope: !7101, file: !6435, line: 147, type: !129)
!7107 = !DILocalVariable(name: "next", arg: 3, scope: !7101, file: !6435, line: 148, type: !129)
!7108 = !DILocation(line: 146, column: 49, scope: !7101)
!7109 = !DILocation(line: 147, column: 28, scope: !7101)
!7110 = !DILocation(line: 148, column: 28, scope: !7101)
!7111 = !DILocation(line: 150, column: 24, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7101, file: !6435, line: 150, column: 6)
!7113 = !DILocation(line: 150, column: 29, scope: !7112)
!7114 = !DILocation(line: 150, column: 35, scope: !7112)
!7115 = !DILocation(line: 150, column: 7, scope: !7112)
!7116 = !DILocation(line: 150, column: 6, scope: !7101)
!7117 = !DILocation(line: 151, column: 3, scope: !7112)
!7118 = !DILocation(line: 153, column: 15, scope: !7101)
!7119 = !DILocation(line: 153, column: 2, scope: !7101)
!7120 = !DILocation(line: 153, column: 8, scope: !7101)
!7121 = !DILocation(line: 153, column: 13, scope: !7101)
!7122 = !DILocation(line: 154, column: 14, scope: !7101)
!7123 = !DILocation(line: 154, column: 2, scope: !7101)
!7124 = !DILocation(line: 154, column: 7, scope: !7101)
!7125 = !DILocation(line: 154, column: 12, scope: !7101)
!7126 = !DILocation(line: 155, column: 14, scope: !7101)
!7127 = !DILocation(line: 155, column: 2, scope: !7101)
!7128 = !DILocation(line: 155, column: 7, scope: !7101)
!7129 = !DILocation(line: 155, column: 12, scope: !7101)
!7130 = !DILocation(line: 156, column: 2, scope: !7101)
!7131 = !DILocation(line: 156, column: 2, scope: !7132)
!7132 = distinct !DILexicalBlock(scope: !7101, file: !6435, line: 156, column: 2)
!7133 = !DILocation(line: 156, column: 2, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !7132, file: !6435, line: 156, column: 2)
!7135 = !DILocation(line: 156, column: 2, scope: !7136)
!7136 = distinct !DILexicalBlock(scope: !7132, file: !6435, line: 156, column: 2)
!7137 = !DILocation(line: 157, column: 1, scope: !7101)
!7138 = distinct !DISubprogram(name: "__list_add_valid", scope: !6435, file: !6435, line: 128, type: !7139, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7141)
!7139 = !DISubroutineType(types: !7140)
!7140 = !{!1596, !129, !129, !129}
!7141 = !{!7142, !7143, !7144}
!7142 = !DILocalVariable(name: "new", arg: 1, scope: !7138, file: !6435, line: 128, type: !129)
!7143 = !DILocalVariable(name: "prev", arg: 2, scope: !7138, file: !6435, line: 129, type: !129)
!7144 = !DILocalVariable(name: "next", arg: 3, scope: !7138, file: !6435, line: 130, type: !129)
!7145 = !DILocation(line: 128, column: 55, scope: !7138)
!7146 = !DILocation(line: 129, column: 23, scope: !7138)
!7147 = !DILocation(line: 130, column: 23, scope: !7138)
!7148 = !DILocation(line: 132, column: 2, scope: !7138)
!7149 = !DISubprogram(name: "class_find_device", scope: !4608, file: !4608, line: 99, type: !7150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7150 = !DISubroutineType(types: !7151)
!7151 = !{!4090, !4605, !4106, !1525, !7152}
!7152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7153, size: 64)
!7153 = !DISubroutineType(types: !7154)
!7154 = !{!51, !4090, !1525}
!7155 = distinct !DISubprogram(name: "__list_del_entry", scope: !6435, file: !6435, line: 213, type: !6563, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7156)
!7156 = !{!7157}
!7157 = !DILocalVariable(name: "entry", arg: 1, scope: !7155, file: !6435, line: 213, type: !129)
!7158 = !DILocation(line: 213, column: 55, scope: !7155)
!7159 = !DILocation(line: 215, column: 30, scope: !7160)
!7160 = distinct !DILexicalBlock(scope: !7155, file: !6435, line: 215, column: 6)
!7161 = !DILocation(line: 215, column: 7, scope: !7160)
!7162 = !DILocation(line: 215, column: 6, scope: !7155)
!7163 = !DILocation(line: 216, column: 3, scope: !7160)
!7164 = !DILocation(line: 218, column: 13, scope: !7155)
!7165 = !DILocation(line: 218, column: 20, scope: !7155)
!7166 = !DILocation(line: 218, column: 26, scope: !7155)
!7167 = !DILocation(line: 218, column: 33, scope: !7155)
!7168 = !DILocation(line: 218, column: 2, scope: !7155)
!7169 = !DILocation(line: 219, column: 1, scope: !7155)
!7170 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6435, file: !6435, line: 134, type: !7171, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7173)
!7171 = !DISubroutineType(types: !7172)
!7172 = !{!1596, !129}
!7173 = !{!7174}
!7174 = !DILocalVariable(name: "entry", arg: 1, scope: !7170, file: !6435, line: 134, type: !129)
!7175 = !DILocation(line: 134, column: 61, scope: !7170)
!7176 = !DILocation(line: 136, column: 2, scope: !7170)
!7177 = distinct !DISubprogram(name: "__list_del", scope: !6435, file: !6435, line: 193, type: !6436, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7178)
!7178 = !{!7179, !7180}
!7179 = !DILocalVariable(name: "prev", arg: 1, scope: !7177, file: !6435, line: 193, type: !129)
!7180 = !DILocalVariable(name: "next", arg: 2, scope: !7177, file: !6435, line: 193, type: !129)
!7181 = !DILocation(line: 193, column: 50, scope: !7177)
!7182 = !DILocation(line: 193, column: 75, scope: !7177)
!7183 = !DILocation(line: 195, column: 15, scope: !7177)
!7184 = !DILocation(line: 195, column: 2, scope: !7177)
!7185 = !DILocation(line: 195, column: 8, scope: !7177)
!7186 = !DILocation(line: 195, column: 13, scope: !7177)
!7187 = !DILocation(line: 196, column: 2, scope: !7177)
!7188 = !DILocation(line: 196, column: 2, scope: !7189)
!7189 = distinct !DILexicalBlock(scope: !7177, file: !6435, line: 196, column: 2)
!7190 = !DILocation(line: 196, column: 2, scope: !7191)
!7191 = distinct !DILexicalBlock(scope: !7189, file: !6435, line: 196, column: 2)
!7192 = !DILocation(line: 196, column: 2, scope: !7193)
!7193 = distinct !DILexicalBlock(scope: !7189, file: !6435, line: 196, column: 2)
!7194 = !DILocation(line: 197, column: 1, scope: !7177)
!7195 = !DISubprogram(name: "__devm_add_action", scope: !194, file: !194, line: 391, type: !6799, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7196 = !DISubprogram(name: "class_create", scope: !4608, file: !4608, line: 230, type: !7197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7197 = !DISubroutineType(types: !7198)
!7198 = !{!5939, !45}
!7199 = !DISubprogram(name: "_printk", scope: !7200, file: !7200, line: 153, type: !7201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7200 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7201 = !DISubroutineType(types: !7202)
!7202 = !{!51, !45, null}
!7203 = distinct !DISubprogram(name: "PTR_ERR", scope: !6237, file: !6237, line: 49, type: !7204, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7206)
!7204 = !DISubroutineType(types: !7205)
!7205 = !{!644, !1525}
!7206 = !{!7207}
!7207 = !DILocalVariable(name: "ptr", arg: 1, scope: !7203, file: !6237, line: 49, type: !1525)
!7208 = !DILocation(line: 49, column: 61, scope: !7203)
!7209 = !DILocation(line: 51, column: 16, scope: !7203)
!7210 = !DILocation(line: 51, column: 9, scope: !7203)
!7211 = !DILocation(line: 51, column: 2, scope: !7203)
!7212 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6435, file: !6435, line: 35, type: !6563, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7213)
!7213 = !{!7214}
!7214 = !DILocalVariable(name: "list", arg: 1, scope: !7212, file: !6435, line: 35, type: !129)
!7215 = !DILocation(line: 35, column: 53, scope: !7212)
!7216 = !DILocation(line: 37, column: 2, scope: !7212)
!7217 = !DILocation(line: 37, column: 2, scope: !7218)
!7218 = distinct !DILexicalBlock(scope: !7212, file: !6435, line: 37, column: 2)
!7219 = !DILocation(line: 37, column: 2, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7218, file: !6435, line: 37, column: 2)
!7221 = !DILocation(line: 37, column: 2, scope: !7222)
!7222 = distinct !DILexicalBlock(scope: !7218, file: !6435, line: 37, column: 2)
!7223 = !DILocation(line: 38, column: 2, scope: !7212)
!7224 = !DILocation(line: 38, column: 2, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7212, file: !6435, line: 38, column: 2)
!7226 = !DILocation(line: 38, column: 2, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7225, file: !6435, line: 38, column: 2)
!7228 = !DILocation(line: 38, column: 2, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7225, file: !6435, line: 38, column: 2)
!7230 = !DILocation(line: 39, column: 1, scope: !7212)
!7231 = !DISubprogram(name: "__init_rwsem", scope: !1447, file: !1447, line: 104, type: !7232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7232 = !DISubroutineType(types: !7233)
!7233 = !{null, !7234, !45, !6392}
!7234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!7235 = distinct !DISubprogram(name: "bl_power_show", scope: !3, file: !3, line: 181, type: !5997, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7236)
!7236 = !{!7237, !7238, !7239, !7240, !7241}
!7237 = !DILocalVariable(name: "dev", arg: 1, scope: !7235, file: !3, line: 181, type: !4090)
!7238 = !DILocalVariable(name: "attr", arg: 2, scope: !7235, file: !3, line: 181, type: !5999)
!7239 = !DILocalVariable(name: "buf", arg: 3, scope: !7235, file: !3, line: 182, type: !609)
!7240 = !DILocalVariable(name: "bd", scope: !7235, file: !3, line: 184, type: !326)
!7241 = !DILocalVariable(name: "__mptr", scope: !7242, file: !3, line: 184, type: !49)
!7242 = distinct !DILexicalBlock(scope: !7235, file: !3, line: 184, column: 32)
!7243 = !DILocation(line: 181, column: 45, scope: !7235)
!7244 = !DILocation(line: 181, column: 75, scope: !7235)
!7245 = !DILocation(line: 182, column: 9, scope: !7235)
!7246 = !DILocation(line: 184, column: 2, scope: !7235)
!7247 = !DILocation(line: 184, column: 27, scope: !7235)
!7248 = !DILocation(line: 184, column: 32, scope: !7242)
!7249 = !DILocation(line: 184, column: 32, scope: !7235)
!7250 = !DILocation(line: 186, column: 17, scope: !7235)
!7251 = !DILocation(line: 186, column: 30, scope: !7235)
!7252 = !DILocation(line: 186, column: 34, scope: !7235)
!7253 = !DILocation(line: 186, column: 40, scope: !7235)
!7254 = !DILocation(line: 186, column: 9, scope: !7235)
!7255 = !DILocation(line: 187, column: 1, scope: !7235)
!7256 = !DILocation(line: 186, column: 2, scope: !7235)
!7257 = distinct !DISubprogram(name: "bl_power_store", scope: !3, file: !3, line: 189, type: !6002, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7258)
!7258 = !{!7259, !7260, !7261, !7262, !7263, !7264, !7265, !7267, !7268}
!7259 = !DILocalVariable(name: "dev", arg: 1, scope: !7257, file: !3, line: 189, type: !4090)
!7260 = !DILocalVariable(name: "attr", arg: 2, scope: !7257, file: !3, line: 189, type: !5999)
!7261 = !DILocalVariable(name: "buf", arg: 3, scope: !7257, file: !3, line: 190, type: !45)
!7262 = !DILocalVariable(name: "count", arg: 4, scope: !7257, file: !3, line: 190, type: !64)
!7263 = !DILocalVariable(name: "rc", scope: !7257, file: !3, line: 192, type: !51)
!7264 = !DILocalVariable(name: "bd", scope: !7257, file: !3, line: 193, type: !326)
!7265 = !DILocalVariable(name: "__mptr", scope: !7266, file: !3, line: 193, type: !49)
!7266 = distinct !DILexicalBlock(scope: !7257, file: !3, line: 193, column: 32)
!7267 = !DILocalVariable(name: "power", scope: !7257, file: !3, line: 194, type: !68)
!7268 = !DILocalVariable(name: "old_power", scope: !7257, file: !3, line: 194, type: !68)
!7269 = !DILocation(line: 189, column: 46, scope: !7257)
!7270 = !DILocation(line: 189, column: 76, scope: !7257)
!7271 = !DILocation(line: 190, column: 15, scope: !7257)
!7272 = !DILocation(line: 190, column: 27, scope: !7257)
!7273 = !DILocation(line: 192, column: 2, scope: !7257)
!7274 = !DILocation(line: 192, column: 6, scope: !7257)
!7275 = !DILocation(line: 193, column: 2, scope: !7257)
!7276 = !DILocation(line: 193, column: 27, scope: !7257)
!7277 = !DILocation(line: 193, column: 32, scope: !7266)
!7278 = !DILocation(line: 193, column: 32, scope: !7257)
!7279 = !DILocation(line: 194, column: 2, scope: !7257)
!7280 = !DILocation(line: 194, column: 16, scope: !7257)
!7281 = !DILocation(line: 194, column: 23, scope: !7257)
!7282 = !DILocation(line: 196, column: 16, scope: !7257)
!7283 = !DILocation(line: 196, column: 7, scope: !7257)
!7284 = !DILocation(line: 196, column: 5, scope: !7257)
!7285 = !DILocation(line: 197, column: 6, scope: !7286)
!7286 = distinct !DILexicalBlock(scope: !7257, file: !3, line: 197, column: 6)
!7287 = !DILocation(line: 197, column: 6, scope: !7257)
!7288 = !DILocation(line: 198, column: 10, scope: !7286)
!7289 = !DILocation(line: 198, column: 3, scope: !7286)
!7290 = !DILocation(line: 200, column: 5, scope: !7257)
!7291 = !DILocation(line: 201, column: 14, scope: !7257)
!7292 = !DILocation(line: 201, column: 18, scope: !7257)
!7293 = !DILocation(line: 201, column: 2, scope: !7257)
!7294 = !DILocation(line: 202, column: 6, scope: !7295)
!7295 = distinct !DILexicalBlock(scope: !7257, file: !3, line: 202, column: 6)
!7296 = !DILocation(line: 202, column: 10, scope: !7295)
!7297 = !DILocation(line: 202, column: 6, scope: !7257)
!7298 = !DILocation(line: 203, column: 3, scope: !7299)
!7299 = distinct !DILexicalBlock(scope: !7300, file: !3, line: 203, column: 3)
!7300 = distinct !DILexicalBlock(scope: !7301, file: !3, line: 203, column: 3)
!7301 = distinct !DILexicalBlock(scope: !7295, file: !3, line: 202, column: 15)
!7302 = !DILocation(line: 203, column: 3, scope: !7300)
!7303 = !DILocation(line: 204, column: 7, scope: !7304)
!7304 = distinct !DILexicalBlock(scope: !7301, file: !3, line: 204, column: 7)
!7305 = !DILocation(line: 204, column: 11, scope: !7304)
!7306 = !DILocation(line: 204, column: 17, scope: !7304)
!7307 = !DILocation(line: 204, column: 26, scope: !7304)
!7308 = !DILocation(line: 204, column: 23, scope: !7304)
!7309 = !DILocation(line: 204, column: 7, scope: !7301)
!7310 = !DILocation(line: 205, column: 16, scope: !7311)
!7311 = distinct !DILexicalBlock(scope: !7304, file: !3, line: 204, column: 33)
!7312 = !DILocation(line: 205, column: 20, scope: !7311)
!7313 = !DILocation(line: 205, column: 26, scope: !7311)
!7314 = !DILocation(line: 205, column: 14, scope: !7311)
!7315 = !DILocation(line: 206, column: 22, scope: !7311)
!7316 = !DILocation(line: 206, column: 4, scope: !7311)
!7317 = !DILocation(line: 206, column: 8, scope: !7311)
!7318 = !DILocation(line: 206, column: 14, scope: !7311)
!7319 = !DILocation(line: 206, column: 20, scope: !7311)
!7320 = !DILocation(line: 207, column: 33, scope: !7311)
!7321 = !DILocation(line: 207, column: 9, scope: !7311)
!7322 = !DILocation(line: 207, column: 7, scope: !7311)
!7323 = !DILocation(line: 208, column: 8, scope: !7324)
!7324 = distinct !DILexicalBlock(scope: !7311, file: !3, line: 208, column: 8)
!7325 = !DILocation(line: 208, column: 8, scope: !7311)
!7326 = !DILocation(line: 209, column: 23, scope: !7324)
!7327 = !DILocation(line: 209, column: 5, scope: !7324)
!7328 = !DILocation(line: 209, column: 9, scope: !7324)
!7329 = !DILocation(line: 209, column: 15, scope: !7324)
!7330 = !DILocation(line: 209, column: 21, scope: !7324)
!7331 = !DILocation(line: 211, column: 10, scope: !7324)
!7332 = !DILocation(line: 211, column: 8, scope: !7324)
!7333 = !DILocation(line: 212, column: 3, scope: !7311)
!7334 = !DILocation(line: 213, column: 9, scope: !7335)
!7335 = distinct !DILexicalBlock(scope: !7304, file: !3, line: 212, column: 10)
!7336 = !DILocation(line: 213, column: 7, scope: !7335)
!7337 = !DILocation(line: 215, column: 2, scope: !7301)
!7338 = !DILocation(line: 216, column: 16, scope: !7257)
!7339 = !DILocation(line: 216, column: 20, scope: !7257)
!7340 = !DILocation(line: 216, column: 2, scope: !7257)
!7341 = !DILocation(line: 218, column: 9, scope: !7257)
!7342 = !DILocation(line: 218, column: 2, scope: !7257)
!7343 = !DILocation(line: 219, column: 1, scope: !7257)
!7344 = !DISubprogram(name: "sprintf", scope: !7345, file: !7345, line: 10, type: !7346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7345 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7346 = !DISubroutineType(types: !7347)
!7347 = !{!51, !609, !45, null}
!7348 = distinct !DISubprogram(name: "kstrtoul", scope: !7349, file: !7349, line: 30, type: !7350, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7352)
!7349 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!7350 = !DISubroutineType(types: !7351)
!7351 = !{!51, !45, !7, !4521}
!7352 = !{!7353, !7354, !7355}
!7353 = !DILocalVariable(name: "s", arg: 1, scope: !7348, file: !7349, line: 30, type: !45)
!7354 = !DILocalVariable(name: "base", arg: 2, scope: !7348, file: !7349, line: 30, type: !7)
!7355 = !DILocalVariable(name: "res", arg: 3, scope: !7348, file: !7349, line: 30, type: !4521)
!7356 = !DILocation(line: 30, column: 53, scope: !7348)
!7357 = !DILocation(line: 30, column: 69, scope: !7348)
!7358 = !DILocation(line: 30, column: 90, scope: !7348)
!7359 = !DILocation(line: 38, column: 20, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7348, file: !7349, line: 36, column: 6)
!7361 = !DILocation(line: 38, column: 23, scope: !7360)
!7362 = !DILocation(line: 38, column: 51, scope: !7360)
!7363 = !DILocation(line: 38, column: 10, scope: !7360)
!7364 = !DILocation(line: 38, column: 3, scope: !7360)
!7365 = !DISubprogram(name: "kstrtoull", scope: !7349, file: !7349, line: 12, type: !7366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7366 = !DISubroutineType(types: !7367)
!7367 = !{!51, !45, !7, !5814}
!7368 = distinct !DISubprogram(name: "brightness_show", scope: !3, file: !3, line: 222, type: !5997, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7369)
!7369 = !{!7370, !7371, !7372, !7373, !7374}
!7370 = !DILocalVariable(name: "dev", arg: 1, scope: !7368, file: !3, line: 222, type: !4090)
!7371 = !DILocalVariable(name: "attr", arg: 2, scope: !7368, file: !3, line: 223, type: !5999)
!7372 = !DILocalVariable(name: "buf", arg: 3, scope: !7368, file: !3, line: 223, type: !609)
!7373 = !DILocalVariable(name: "bd", scope: !7368, file: !3, line: 225, type: !326)
!7374 = !DILocalVariable(name: "__mptr", scope: !7375, file: !3, line: 225, type: !49)
!7375 = distinct !DILexicalBlock(scope: !7368, file: !3, line: 225, column: 32)
!7376 = !DILocation(line: 222, column: 47, scope: !7368)
!7377 = !DILocation(line: 223, column: 28, scope: !7368)
!7378 = !DILocation(line: 223, column: 40, scope: !7368)
!7379 = !DILocation(line: 225, column: 2, scope: !7368)
!7380 = !DILocation(line: 225, column: 27, scope: !7368)
!7381 = !DILocation(line: 225, column: 32, scope: !7375)
!7382 = !DILocation(line: 225, column: 32, scope: !7368)
!7383 = !DILocation(line: 227, column: 17, scope: !7368)
!7384 = !DILocation(line: 227, column: 30, scope: !7368)
!7385 = !DILocation(line: 227, column: 34, scope: !7368)
!7386 = !DILocation(line: 227, column: 40, scope: !7368)
!7387 = !DILocation(line: 227, column: 9, scope: !7368)
!7388 = !DILocation(line: 228, column: 1, scope: !7368)
!7389 = !DILocation(line: 227, column: 2, scope: !7368)
!7390 = distinct !DISubprogram(name: "brightness_store", scope: !3, file: !3, line: 253, type: !6002, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7391)
!7391 = !{!7392, !7393, !7394, !7395, !7396, !7397, !7398, !7400}
!7392 = !DILocalVariable(name: "dev", arg: 1, scope: !7390, file: !3, line: 253, type: !4090)
!7393 = !DILocalVariable(name: "attr", arg: 2, scope: !7390, file: !3, line: 254, type: !5999)
!7394 = !DILocalVariable(name: "buf", arg: 3, scope: !7390, file: !3, line: 254, type: !45)
!7395 = !DILocalVariable(name: "count", arg: 4, scope: !7390, file: !3, line: 254, type: !64)
!7396 = !DILocalVariable(name: "rc", scope: !7390, file: !3, line: 256, type: !51)
!7397 = !DILocalVariable(name: "bd", scope: !7390, file: !3, line: 257, type: !326)
!7398 = !DILocalVariable(name: "__mptr", scope: !7399, file: !3, line: 257, type: !49)
!7399 = distinct !DILexicalBlock(scope: !7390, file: !3, line: 257, column: 32)
!7400 = !DILocalVariable(name: "brightness", scope: !7390, file: !3, line: 258, type: !68)
!7401 = !DILocation(line: 253, column: 48, scope: !7390)
!7402 = !DILocation(line: 254, column: 28, scope: !7390)
!7403 = !DILocation(line: 254, column: 46, scope: !7390)
!7404 = !DILocation(line: 254, column: 58, scope: !7390)
!7405 = !DILocation(line: 256, column: 2, scope: !7390)
!7406 = !DILocation(line: 256, column: 6, scope: !7390)
!7407 = !DILocation(line: 257, column: 2, scope: !7390)
!7408 = !DILocation(line: 257, column: 27, scope: !7390)
!7409 = !DILocation(line: 257, column: 32, scope: !7399)
!7410 = !DILocation(line: 257, column: 32, scope: !7390)
!7411 = !DILocation(line: 258, column: 2, scope: !7390)
!7412 = !DILocation(line: 258, column: 16, scope: !7390)
!7413 = !DILocation(line: 260, column: 16, scope: !7390)
!7414 = !DILocation(line: 260, column: 7, scope: !7390)
!7415 = !DILocation(line: 260, column: 5, scope: !7390)
!7416 = !DILocation(line: 261, column: 6, scope: !7417)
!7417 = distinct !DILexicalBlock(scope: !7390, file: !3, line: 261, column: 6)
!7418 = !DILocation(line: 261, column: 6, scope: !7390)
!7419 = !DILocation(line: 262, column: 10, scope: !7417)
!7420 = !DILocation(line: 262, column: 3, scope: !7417)
!7421 = !DILocation(line: 264, column: 39, scope: !7390)
!7422 = !DILocation(line: 264, column: 43, scope: !7390)
!7423 = !DILocation(line: 264, column: 7, scope: !7390)
!7424 = !DILocation(line: 264, column: 5, scope: !7390)
!7425 = !DILocation(line: 266, column: 9, scope: !7390)
!7426 = !DILocation(line: 266, column: 14, scope: !7390)
!7427 = !DILocation(line: 266, column: 19, scope: !7390)
!7428 = !DILocation(line: 266, column: 2, scope: !7390)
!7429 = !DILocation(line: 267, column: 1, scope: !7390)
!7430 = distinct !DISubprogram(name: "actual_brightness_show", scope: !3, file: !3, line: 288, type: !5997, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7431)
!7431 = !{!7432, !7433, !7434, !7435, !7436, !7437}
!7432 = !DILocalVariable(name: "dev", arg: 1, scope: !7430, file: !3, line: 288, type: !4090)
!7433 = !DILocalVariable(name: "attr", arg: 2, scope: !7430, file: !3, line: 289, type: !5999)
!7434 = !DILocalVariable(name: "buf", arg: 3, scope: !7430, file: !3, line: 289, type: !609)
!7435 = !DILocalVariable(name: "rc", scope: !7430, file: !3, line: 291, type: !51)
!7436 = !DILocalVariable(name: "bd", scope: !7430, file: !3, line: 292, type: !326)
!7437 = !DILocalVariable(name: "__mptr", scope: !7438, file: !3, line: 292, type: !49)
!7438 = distinct !DILexicalBlock(scope: !7430, file: !3, line: 292, column: 32)
!7439 = !DILocation(line: 288, column: 54, scope: !7430)
!7440 = !DILocation(line: 289, column: 28, scope: !7430)
!7441 = !DILocation(line: 289, column: 40, scope: !7430)
!7442 = !DILocation(line: 291, column: 2, scope: !7430)
!7443 = !DILocation(line: 291, column: 6, scope: !7430)
!7444 = !DILocation(line: 292, column: 2, scope: !7430)
!7445 = !DILocation(line: 292, column: 27, scope: !7430)
!7446 = !DILocation(line: 292, column: 32, scope: !7438)
!7447 = !DILocation(line: 292, column: 32, scope: !7430)
!7448 = !DILocation(line: 294, column: 14, scope: !7430)
!7449 = !DILocation(line: 294, column: 18, scope: !7430)
!7450 = !DILocation(line: 294, column: 2, scope: !7430)
!7451 = !DILocation(line: 295, column: 6, scope: !7452)
!7452 = distinct !DILexicalBlock(scope: !7430, file: !3, line: 295, column: 6)
!7453 = !DILocation(line: 295, column: 10, scope: !7452)
!7454 = !DILocation(line: 295, column: 14, scope: !7452)
!7455 = !DILocation(line: 295, column: 17, scope: !7452)
!7456 = !DILocation(line: 295, column: 21, scope: !7452)
!7457 = !DILocation(line: 295, column: 26, scope: !7452)
!7458 = !DILocation(line: 295, column: 6, scope: !7430)
!7459 = !DILocation(line: 296, column: 8, scope: !7460)
!7460 = distinct !DILexicalBlock(scope: !7452, file: !3, line: 295, column: 42)
!7461 = !DILocation(line: 296, column: 12, scope: !7460)
!7462 = !DILocation(line: 296, column: 17, scope: !7460)
!7463 = !DILocation(line: 296, column: 32, scope: !7460)
!7464 = !DILocation(line: 296, column: 6, scope: !7460)
!7465 = !DILocation(line: 297, column: 7, scope: !7466)
!7466 = distinct !DILexicalBlock(scope: !7460, file: !3, line: 297, column: 7)
!7467 = !DILocation(line: 297, column: 10, scope: !7466)
!7468 = !DILocation(line: 297, column: 7, scope: !7460)
!7469 = !DILocation(line: 298, column: 17, scope: !7466)
!7470 = !DILocation(line: 298, column: 30, scope: !7466)
!7471 = !DILocation(line: 298, column: 9, scope: !7466)
!7472 = !DILocation(line: 298, column: 7, scope: !7466)
!7473 = !DILocation(line: 298, column: 4, scope: !7466)
!7474 = !DILocation(line: 299, column: 2, scope: !7460)
!7475 = !DILocation(line: 300, column: 16, scope: !7476)
!7476 = distinct !DILexicalBlock(scope: !7452, file: !3, line: 299, column: 9)
!7477 = !DILocation(line: 300, column: 29, scope: !7476)
!7478 = !DILocation(line: 300, column: 33, scope: !7476)
!7479 = !DILocation(line: 300, column: 39, scope: !7476)
!7480 = !DILocation(line: 300, column: 8, scope: !7476)
!7481 = !DILocation(line: 300, column: 6, scope: !7476)
!7482 = !DILocation(line: 302, column: 16, scope: !7430)
!7483 = !DILocation(line: 302, column: 20, scope: !7430)
!7484 = !DILocation(line: 302, column: 2, scope: !7430)
!7485 = !DILocation(line: 304, column: 9, scope: !7430)
!7486 = !DILocation(line: 305, column: 1, scope: !7430)
!7487 = !DILocation(line: 304, column: 2, scope: !7430)
!7488 = distinct !DISubprogram(name: "max_brightness_show", scope: !3, file: !3, line: 279, type: !5997, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7489)
!7489 = !{!7490, !7491, !7492, !7493, !7494}
!7490 = !DILocalVariable(name: "dev", arg: 1, scope: !7488, file: !3, line: 279, type: !4090)
!7491 = !DILocalVariable(name: "attr", arg: 2, scope: !7488, file: !3, line: 280, type: !5999)
!7492 = !DILocalVariable(name: "buf", arg: 3, scope: !7488, file: !3, line: 280, type: !609)
!7493 = !DILocalVariable(name: "bd", scope: !7488, file: !3, line: 282, type: !326)
!7494 = !DILocalVariable(name: "__mptr", scope: !7495, file: !3, line: 282, type: !49)
!7495 = distinct !DILexicalBlock(scope: !7488, file: !3, line: 282, column: 32)
!7496 = !DILocation(line: 279, column: 51, scope: !7488)
!7497 = !DILocation(line: 280, column: 28, scope: !7488)
!7498 = !DILocation(line: 280, column: 40, scope: !7488)
!7499 = !DILocation(line: 282, column: 2, scope: !7488)
!7500 = !DILocation(line: 282, column: 27, scope: !7488)
!7501 = !DILocation(line: 282, column: 32, scope: !7495)
!7502 = !DILocation(line: 282, column: 32, scope: !7488)
!7503 = !DILocation(line: 284, column: 17, scope: !7488)
!7504 = !DILocation(line: 284, column: 30, scope: !7488)
!7505 = !DILocation(line: 284, column: 34, scope: !7488)
!7506 = !DILocation(line: 284, column: 40, scope: !7488)
!7507 = !DILocation(line: 284, column: 9, scope: !7488)
!7508 = !DILocation(line: 285, column: 1, scope: !7488)
!7509 = !DILocation(line: 284, column: 2, scope: !7488)
!7510 = distinct !DISubprogram(name: "scale_show", scope: !3, file: !3, line: 308, type: !5997, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7511)
!7511 = !{!7512, !7513, !7514, !7515, !7516, !7518, !7521}
!7512 = !DILocalVariable(name: "dev", arg: 1, scope: !7510, file: !3, line: 308, type: !4090)
!7513 = !DILocalVariable(name: "attr", arg: 2, scope: !7510, file: !3, line: 309, type: !5999)
!7514 = !DILocalVariable(name: "buf", arg: 3, scope: !7510, file: !3, line: 309, type: !609)
!7515 = !DILocalVariable(name: "bd", scope: !7510, file: !3, line: 311, type: !326)
!7516 = !DILocalVariable(name: "__mptr", scope: !7517, file: !3, line: 311, type: !49)
!7517 = distinct !DILexicalBlock(scope: !7510, file: !3, line: 311, column: 32)
!7518 = !DILocalVariable(name: "__ret_warn_on", scope: !7519, file: !3, line: 313, type: !51)
!7519 = distinct !DILexicalBlock(scope: !7520, file: !3, line: 313, column: 6)
!7520 = distinct !DILexicalBlock(scope: !7510, file: !3, line: 313, column: 6)
!7521 = !DILocalVariable(name: "__flags", scope: !7522, file: !3, line: 313, type: !51)
!7522 = distinct !DILexicalBlock(scope: !7523, file: !3, line: 313, column: 6)
!7523 = distinct !DILexicalBlock(scope: !7519, file: !3, line: 313, column: 6)
!7524 = !DILocation(line: 308, column: 42, scope: !7510)
!7525 = !DILocation(line: 309, column: 28, scope: !7510)
!7526 = !DILocation(line: 309, column: 40, scope: !7510)
!7527 = !DILocation(line: 311, column: 2, scope: !7510)
!7528 = !DILocation(line: 311, column: 27, scope: !7510)
!7529 = !DILocation(line: 311, column: 32, scope: !7517)
!7530 = !DILocation(line: 311, column: 32, scope: !7510)
!7531 = !DILocation(line: 313, column: 6, scope: !7519)
!7532 = !DILocation(line: 313, column: 6, scope: !7523)
!7533 = !DILocation(line: 313, column: 6, scope: !7522)
!7534 = !DILocation(line: 313, column: 6, scope: !7535)
!7535 = distinct !DILexicalBlock(scope: !7522, file: !3, line: 313, column: 6)
!7536 = !DILocation(line: 313, column: 6, scope: !7537)
!7537 = distinct !DILexicalBlock(scope: !7522, file: !3, line: 313, column: 6)
!7538 = !{i64 2156546637, i64 2156546666, i64 2156546712, i64 2156546770, i64 2156546824, i64 2156546878, i64 2156546933, i64 2156546964, i64 2156547272, i64 2156547278, i64 2156547325, i64 2156547348, i64 2156547374}
!7539 = !DILocation(line: 313, column: 6, scope: !7540)
!7540 = distinct !DILexicalBlock(scope: !7522, file: !3, line: 313, column: 6)
!7541 = !DILocation(line: 313, column: 6, scope: !7520)
!7542 = !DILocation(line: 313, column: 6, scope: !7510)
!7543 = !DILocation(line: 314, column: 18, scope: !7520)
!7544 = !DILocation(line: 314, column: 10, scope: !7520)
!7545 = !DILocation(line: 314, column: 3, scope: !7520)
!7546 = !DILocation(line: 316, column: 17, scope: !7510)
!7547 = !DILocation(line: 316, column: 52, scope: !7510)
!7548 = !DILocation(line: 316, column: 56, scope: !7510)
!7549 = !DILocation(line: 316, column: 62, scope: !7510)
!7550 = !DILocation(line: 316, column: 30, scope: !7510)
!7551 = !DILocation(line: 316, column: 9, scope: !7510)
!7552 = !DILocation(line: 316, column: 2, scope: !7510)
!7553 = !DILocation(line: 317, column: 1, scope: !7510)
!7554 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 270, type: !5997, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7555)
!7555 = !{!7556, !7557, !7558, !7559, !7560}
!7556 = !DILocalVariable(name: "dev", arg: 1, scope: !7554, file: !3, line: 270, type: !4090)
!7557 = !DILocalVariable(name: "attr", arg: 2, scope: !7554, file: !3, line: 270, type: !5999)
!7558 = !DILocalVariable(name: "buf", arg: 3, scope: !7554, file: !3, line: 271, type: !609)
!7559 = !DILocalVariable(name: "bd", scope: !7554, file: !3, line: 273, type: !326)
!7560 = !DILocalVariable(name: "__mptr", scope: !7561, file: !3, line: 273, type: !49)
!7561 = distinct !DILexicalBlock(scope: !7554, file: !3, line: 273, column: 32)
!7562 = !DILocation(line: 270, column: 41, scope: !7554)
!7563 = !DILocation(line: 270, column: 71, scope: !7554)
!7564 = !DILocation(line: 271, column: 9, scope: !7554)
!7565 = !DILocation(line: 273, column: 2, scope: !7554)
!7566 = !DILocation(line: 273, column: 27, scope: !7554)
!7567 = !DILocation(line: 273, column: 32, scope: !7561)
!7568 = !DILocation(line: 273, column: 32, scope: !7554)
!7569 = !DILocation(line: 275, column: 17, scope: !7554)
!7570 = !DILocation(line: 275, column: 46, scope: !7554)
!7571 = !DILocation(line: 275, column: 50, scope: !7554)
!7572 = !DILocation(line: 275, column: 56, scope: !7554)
!7573 = !DILocation(line: 275, column: 30, scope: !7554)
!7574 = !DILocation(line: 275, column: 9, scope: !7554)
!7575 = !DILocation(line: 276, column: 1, scope: !7554)
!7576 = !DILocation(line: 275, column: 2, scope: !7554)
!7577 = distinct !DISubprogram(name: "backlight_suspend", scope: !3, file: !3, line: 323, type: !4124, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7578)
!7578 = !{!7579, !7580, !7581}
!7579 = !DILocalVariable(name: "dev", arg: 1, scope: !7577, file: !3, line: 323, type: !4090)
!7580 = !DILocalVariable(name: "bd", scope: !7577, file: !3, line: 325, type: !326)
!7581 = !DILocalVariable(name: "__mptr", scope: !7582, file: !3, line: 325, type: !49)
!7582 = distinct !DILexicalBlock(scope: !7577, file: !3, line: 325, column: 32)
!7583 = !DILocation(line: 323, column: 45, scope: !7577)
!7584 = !DILocation(line: 325, column: 2, scope: !7577)
!7585 = !DILocation(line: 325, column: 27, scope: !7577)
!7586 = !DILocation(line: 325, column: 32, scope: !7582)
!7587 = !DILocation(line: 325, column: 32, scope: !7577)
!7588 = !DILocation(line: 327, column: 14, scope: !7577)
!7589 = !DILocation(line: 327, column: 18, scope: !7577)
!7590 = !DILocation(line: 327, column: 2, scope: !7577)
!7591 = !DILocation(line: 328, column: 6, scope: !7592)
!7592 = distinct !DILexicalBlock(scope: !7577, file: !3, line: 328, column: 6)
!7593 = !DILocation(line: 328, column: 10, scope: !7592)
!7594 = !DILocation(line: 328, column: 14, scope: !7592)
!7595 = !DILocation(line: 328, column: 17, scope: !7592)
!7596 = !DILocation(line: 328, column: 21, scope: !7592)
!7597 = !DILocation(line: 328, column: 26, scope: !7592)
!7598 = !DILocation(line: 328, column: 34, scope: !7592)
!7599 = !DILocation(line: 328, column: 6, scope: !7577)
!7600 = !DILocation(line: 329, column: 3, scope: !7601)
!7601 = distinct !DILexicalBlock(scope: !7592, file: !3, line: 328, column: 59)
!7602 = !DILocation(line: 329, column: 7, scope: !7601)
!7603 = !DILocation(line: 329, column: 13, scope: !7601)
!7604 = !DILocation(line: 329, column: 19, scope: !7601)
!7605 = !DILocation(line: 330, column: 27, scope: !7601)
!7606 = !DILocation(line: 330, column: 3, scope: !7601)
!7607 = !DILocation(line: 331, column: 2, scope: !7601)
!7608 = !DILocation(line: 332, column: 16, scope: !7577)
!7609 = !DILocation(line: 332, column: 20, scope: !7577)
!7610 = !DILocation(line: 332, column: 2, scope: !7577)
!7611 = !DILocation(line: 335, column: 1, scope: !7577)
!7612 = !DILocation(line: 334, column: 2, scope: !7577)
!7613 = distinct !DISubprogram(name: "backlight_resume", scope: !3, file: !3, line: 337, type: !4124, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7614)
!7614 = !{!7615, !7616, !7617}
!7615 = !DILocalVariable(name: "dev", arg: 1, scope: !7613, file: !3, line: 337, type: !4090)
!7616 = !DILocalVariable(name: "bd", scope: !7613, file: !3, line: 339, type: !326)
!7617 = !DILocalVariable(name: "__mptr", scope: !7618, file: !3, line: 339, type: !49)
!7618 = distinct !DILexicalBlock(scope: !7613, file: !3, line: 339, column: 32)
!7619 = !DILocation(line: 337, column: 44, scope: !7613)
!7620 = !DILocation(line: 339, column: 2, scope: !7613)
!7621 = !DILocation(line: 339, column: 27, scope: !7613)
!7622 = !DILocation(line: 339, column: 32, scope: !7618)
!7623 = !DILocation(line: 339, column: 32, scope: !7613)
!7624 = !DILocation(line: 341, column: 14, scope: !7613)
!7625 = !DILocation(line: 341, column: 18, scope: !7613)
!7626 = !DILocation(line: 341, column: 2, scope: !7613)
!7627 = !DILocation(line: 342, column: 6, scope: !7628)
!7628 = distinct !DILexicalBlock(scope: !7613, file: !3, line: 342, column: 6)
!7629 = !DILocation(line: 342, column: 10, scope: !7628)
!7630 = !DILocation(line: 342, column: 14, scope: !7628)
!7631 = !DILocation(line: 342, column: 17, scope: !7628)
!7632 = !DILocation(line: 342, column: 21, scope: !7628)
!7633 = !DILocation(line: 342, column: 26, scope: !7628)
!7634 = !DILocation(line: 342, column: 34, scope: !7628)
!7635 = !DILocation(line: 342, column: 6, scope: !7613)
!7636 = !DILocation(line: 343, column: 3, scope: !7637)
!7637 = distinct !DILexicalBlock(scope: !7628, file: !3, line: 342, column: 59)
!7638 = !DILocation(line: 343, column: 7, scope: !7637)
!7639 = !DILocation(line: 343, column: 13, scope: !7637)
!7640 = !DILocation(line: 343, column: 19, scope: !7637)
!7641 = !DILocation(line: 344, column: 27, scope: !7637)
!7642 = !DILocation(line: 344, column: 3, scope: !7637)
!7643 = !DILocation(line: 345, column: 2, scope: !7637)
!7644 = !DILocation(line: 346, column: 16, scope: !7613)
!7645 = !DILocation(line: 346, column: 20, scope: !7613)
!7646 = !DILocation(line: 346, column: 2, scope: !7613)
!7647 = !DILocation(line: 349, column: 1, scope: !7613)
!7648 = !DILocation(line: 348, column: 2, scope: !7613)
